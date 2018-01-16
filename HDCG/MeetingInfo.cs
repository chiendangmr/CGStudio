using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;
using System.Xml.XPath;
using System.Web;
using HDControl;
using System.Threading;
using System.IO;
using System.Net;
using System.Text.RegularExpressions;

namespace HDCGStudio
{
    public partial class MeetingInfo : Form
    {
        public MeetingInfo()
        {
            InitializeComponent();
        }


        private String PrintXML(String XML)
        {
            String Result = "";

            MemoryStream mStream = new MemoryStream();
            XmlTextWriter writer = new XmlTextWriter(mStream, Encoding.Unicode);
            XmlDocument document = new XmlDocument();

            try
            {
                // Load the XmlDocument with the XML.
                document.LoadXml(XML);

                writer.Formatting = Formatting.Indented;

                // Write the XML into a formatting XmlTextWriter
                document.WriteContentTo(writer);
                writer.Flush();
                mStream.Flush();

                // Have to rewind the MemoryStream in order to read
                // its contents.
                mStream.Position = 0;

                // Read MemoryStream contents into a StreamReader.
                StreamReader sReader = new StreamReader(mStream);

                // Extract the text from the StreamReader.
                String FormattedXML = sReader.ReadToEnd();

                Result = FormattedXML;
            }
            catch (XmlException)
            {
            }

            mStream.Close();
            writer.Close();

            return Result;
        }
        bool isFirstRequest = true;
        private string getXml(string urn, string method)
        {
            string kq = "";
            string uri = "https://10.0.2.5:3944/";
            //string userName = "graphics";
            //string userPassword = "graphics";
            string host = "dtx";
            string accept = "application/vnd.datatote.dtx.v2.0.0+xml";
            string authInfo = "graphics:graphics";
            HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(uri + urn);
            try
            {
                var auth = Convert.ToBase64String(Encoding.Default.GetBytes(authInfo));
                ServicePointManager.ServerCertificateValidationCallback +=
                    (sender, cert, chain, sslPolicyErrors) => true;
                request.Method = method;
                request.Host = host;
                if (isFirstRequest)
                {
                    request.Accept = accept;
                    request.Headers["Authorization"] = "Basic " + auth;
                }
                request.Timeout = 5000;
                request.ServicePoint.ConnectionLeaseTimeout = 5000;
                request.ServicePoint.MaxIdleTime = 5000;

                var response = request.GetResponse();
                Stream resStream = response.GetResponseStream();
                StreamReader reader = new StreamReader(resStream);

                var result = reader.ReadToEnd();

                if (result != null) kq = PrintXML(result);
                response.Close();
                reader.Close();
                resStream.Close();
            }
            catch (Exception e)
            {
                HDMessageBox.Show(e.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            finally
            {
                request.Abort();
            }

            return kq;
        }
        public string getProgram()
        {
            return getXml("meetings/", "GET");
        }
        public string getDailyProgram(string date)
        {
            return getXml("meetings/" + date + "/", "GET");
        }
        public string getMeetingInfo(string date, string meetingNumber)
        {
            return getXml("meetings/" + date + "/" + meetingNumber, "GET");
        }
        //updates/yyyymmdd/n
        public string getUpdates(string date, string updateNumber)
        {
            return getXml("updates/" + date + "/" + updateNumber, "GET");
        }

        private List<string> getValue(string xmlStr, string urn, string att)
        {
            List<string> categories = new List<string>();
            try
            {
                XmlDocument doc = new XmlDocument();
                doc.LoadXml(xmlStr);

                XmlNodeList nodes = doc.DocumentElement.GetElementsByTagName(urn);

                foreach (XmlNode node in nodes)
                {
                    categories.Add(node.Attributes[att].Value);
                }

            }
            catch
            {
                //HDMessageBox.Show("404 - Not Found", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            return categories;
        }
        private List<string> getRaceInfo(string xmlStr, string val, string urn, string att)
        {
            List<string> categories = new List<string>();
            try
            {
                XmlDocument doc = new XmlDocument();
                doc.LoadXml(xmlStr);
                XmlNodeList nodes = doc.DocumentElement.GetElementsByTagName(urn);

                foreach (XmlNode node in nodes)
                {
                    if (node.Attributes["race"].Value == val)
                    {
                        if (node.HasChildNodes)
                        {
                            for (int i = 0; i < node.ChildNodes.Count; i++)
                            {
                                if (node.ChildNodes[i].Attributes[att] != null)
                                {
                                    categories.Add(node.ChildNodes[i].Attributes[att].Value);
                                }
                            }
                        }
                    }

                }

            }
            catch
            {
                // HDMessageBox.Show("404 - Not Found", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            return categories;
        }
        bool isUpdate = false;
        private void MeetingInfo_Load(object sender, EventArgs e)
        {
            try
            {
                lbDate.Items.Clear();
                xmlStr = getProgram();
                foreach (var i in getValue(xmlStr, "program", "date"))
                {
                    lbDate.Items.Add(i);
                }
            }
            catch
            {
                HDMessageBox.Show("404 - Not Found", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
        string xmlStr = "";

        private void lbDate_SelectedValueChanged(object sender, EventArgs e)
        {
            try
            {
                lbDailyProgram.Items.Clear();
                if (lbDate.SelectedItem != null)
                {
                    xmlStr = getDailyProgram(lbDate.SelectedItem.ToString());
                    List<string> kq = new List<string>();
                    List<string> kq2 = new List<string>();
                    foreach (var i in getValue(xmlStr, "meeting", "meeting"))
                    {
                        kq.Add(i);
                    }
                    int k = 0;
                    foreach (var j in getValue(xmlStr, "meeting", "code3"))
                    {
                        kq2.Add(j);
                        lbDailyProgram.Items.Add(kq[k] + " - " + j);
                        k++;
                    }
                }
            }
            catch
            {

            }
        }

        bool startAsync = false;
        string xml = "";
        //<Track_Property><fMain id="fMain"><data value="RACE 2 MADAGUI"/></fMain>
        //<Track_Property><fMain id="fMain"><data value="Vung Tau - Race 1"/></fMain>
        public bool getBegin()
        {
            return isBegin;
        }
        private void btnDone_Click(object sender, EventArgs e)
        {
            try
            {
                isBegin = false;
                //isFirstRequest = false;
                bindingSource1.List.Add(new View.MeetingsInfo()
                {
                    mObj = new Object.MeetingsInfo()
                    {
                        Date = lbDate.SelectedItem.ToString(),
                        DailyProgram = lbDailyProgram.SelectedItem.ToString(),
                        Race = lbRace.SelectedItem.ToString()
                    }
                });
                isUpdate = true;
                meetingNumber = lbDailyProgram.SelectedItem.ToString();
                raceNumber = lbRace.SelectedItem.ToString();
          
                string race = getNumber(lbRace.SelectedItem.ToString());
                xml += Add(xml, "RaceNumber", "race " + race);
                xml += Add(xml, "PlaceName", placeName);
                xml += Add(xml, "RaceName", raceName);
                xml += Add(xml, "Track", type);
                xml += Add(xml, "Distance", distance.ToUpper() + "m");
                xml += Add(xml, "BettingCode", bettingCode);

                xmlStr = getMeetingInfo(lbDate.SelectedItem.ToString(), lbDailyProgram.SelectedItem.ToString());
                List<string> runners = getRaceInfo(xmlStr, race, "race", "runner");
                int i = 1;

                foreach (var j in runners)
                {
                    xml += Add(xml, "f" + i.ToString() + "Number", j + ".");
                    i++;
                }
                i = 1;

                foreach (var j in getRaceInfo(xmlStr, race, "race", "name"))
                {
                    xml += Add(xml, "f" + i.ToString() + "Name", j);
                    i++;
                    if (i > runners.Count)
                    {
                        while (i <= 10)
                        {
                            xml += Add(xml, "f" + i.ToString() + "Number", "");
                            xml += Add(xml, "f" + i.ToString() + "Name", "");
                            xml += Add(xml, "f" + i.ToString() + "Win", "");
                            xml += Add(xml, "f" + i.ToString() + "Place", "");
                            xml += Add(xml, "f" + i.ToString() + "Time", "");
                            i++;
                        }
                        break;
                    }
                }
                this.btnDone.Enabled = false;                
            }
            catch
            {
                HDMessageBox.Show("404 - Not Found", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
        string placeName = "";
        string raceName = "";
        string type = "";
        string distance = "";
        string bettingCode = "";
        private void lbDailyProgram_SelectedValueChanged(object sender, EventArgs e)
        {
            try
            {
                lbRace.Items.Clear();
                if (lbDate.SelectedItem != null && lbDailyProgram.SelectedItem != null)
                {
                    xmlStr = getMeetingInfo(lbDate.SelectedItem.ToString(), lbDailyProgram.SelectedItem.ToString());

                    foreach (var i in getValue(xmlStr, "meeting", "name"))
                    {

                        placeName = i;
                    }
                    foreach (var i in getValue(xmlStr, "race", "name"))
                    {
                        raceName = i;
                    }
                    foreach (var i in getValue(xmlStr, "race", "type"))
                    {
                        type = i;
                    }
                    foreach (var i in getValue(xmlStr, "race", "distance"))
                    {
                        distance = i;
                    }
                    foreach (var j in getValue(xmlStr, "race", "race"))
                    {
                        lbRace.Items.Add("Race " + j + " " + placeName);
                    }
                    foreach (var j in getValue(xmlStr, "pool", "code"))
                    {
                        bettingCode = j;
                    }
                }
            }

            catch
            {
                //HDMessageBox.Show("404 - Not Found", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
        bool isBegin = false;
        private void btnRefresh_Click(object sender, EventArgs e)
        {
            try
            {
                isBegin = true;
                //xml = "";
                //isFirstRequest = true;                
                startAsync = false;
                this.btnDone.Enabled = true;
                bindingSource1.List.Remove(gridView1.GetFocusedRow());
                lbDate.Items.Clear();

                xmlStr = getProgram();
                var xmlVal = getValue(xmlStr, "program", "date");
                foreach (var i in xmlVal)
                {
                    lbDate.Items.Add(i);
                }

            }
            catch (Exception ex)
            {

                HDMessageBox.Show(ex.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
        private string Add(string xmlStr, string id, string val)
        {
            xmlStr = "<" + id + " id=\"" + id + "\"><data value=\"" + val + "\"/></" + id + ">";
            return xmlStr;
        }
        public string getXml()
        {
            return xml.Replace("&lt;", "<").Replace("&gt;", ">").Replace("&quot;", "\"").Replace("<string>", "").Replace("</string>", "").Replace("<Track_Property>", "");
        }
        public bool Exit = false;
        public bool getUpdated()
        {
            return isUpdate;
        }
        public string getDay()
        {
            string result = "";
            lbDailyProgram.Invoke((Action)(() =>
            {
                result = lbDate.SelectedItem.ToString();
            }));
            return result;            
        }
        string meetingNumber = "";
        string raceNumber = "";
        public string getMeeting()
        {            
            return meetingNumber;
        }
        public string getRace()
        {            
            return raceNumber;            
        }
        private void MeetingInfo_FormClosing(object sender, FormClosingEventArgs e)
        {

            //this.Parent = null;
            //this.Exit = true;
            //this.Close();                
            this.Hide();
            e.Cancel = true;
            //isFirstRequest = false;
            //startAsync = true;

        }
        private string getNumber(string str)
        {
            var number = Regex.Match(str, @"\d+").Value;
                       
            return number;
        }
        public string getMeetingsNumber()
        {
            return getNumber(getMeeting());
        }
        public string getRaceNumber()
        {
            return getNumber(getRace());
        }
        public bool getStartAsync()
        {
            return startAsync;
        }

        private void MeetingInfo_Shown(object sender, EventArgs e)
        {
            //isFirstRequest = false;
        }

    }
}
