package  {
	
	import flash.display.MovieClip;
	import se.svt.caspar.template.CasparTemplate;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.Font;
	import flash.text.TextFieldType;
	import flash.filters.*;
	import flash.external.ExternalInterface;
	
	public class bettingCode extends CasparTemplate{
		
		private var replayPanel:MovieClip = new replayBar();
		private var txt:TextField = new TextField();
		private var txtFormat:TextFormat = new TextFormat();
		private var txtFont:Font = new RobotoBlack();
		private var myFilter:DropShadowFilter = new DropShadowFilter();
		
		public function bettingCode() {
			// constructor code
			super();
			this.replayPanel.x = 1620;
			this.replayPanel.y = 170;
			this.addChild(replayPanel);
			
			this.myFilter.quality = -100;
			this.myFilter.strength = 2;
			
			this.txtFormat.size = 65;
			this.txtFormat.font = txtFont.fontName;
			this.txtFormat.color = 0xe89d22;
			
			this.txt.defaultTextFormat = txtFormat;
			this.txt.autoSize = "left";
			this.txt.alpha = 1;
			this.txt.type = TextFieldType.INPUT;
			this.txt.text = "MR12";
			this.txt.x = 1535;
			this.txt.y = 130;
			this.txt.filters = [myFilter];
			this.addChild(txt);
			ExternalInterface.addCallback("UpdateData", UpdateData);
			ExternalInterface.addCallback("GetProperties", GetProperties);
		}
		private function Add(xmlStr:String, str:String, txt:TextField){
			xmlStr='<'+ str + ' id="'+ str + '"><data value="' + txt.text + '"/></' + str +'>';
			return xmlStr;
		}
		function GetProperties()
		{
			var xmlStr:String = "<Track_Property>";
			xmlStr +=Add(xmlStr, "BettingCode", txt);
			
			xmlStr += "</Track_Property>";
			
			ExternalInterface.call("Properties", xmlStr);
			return xmlStr;
		}
		function UpdateData(str:String)
		{
			var xml:XML = new XML(str);
			this.SetData(xml);
		}
		override public function SetData(xml:XML):void{
			for each (var element:XML in xml.children())
			{
				var property:String = element.@id;
				var data:String = element.data.@value;
				switch(property.toLowerCase())
				{
					case "BettingCode".toLowerCase():
						this.txt.text = data.toUpperCase();
						break;
				}
			}
		}
	}
	
}
