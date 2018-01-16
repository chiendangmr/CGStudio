package  {
	
	import flash.display.MovieClip;
	import se.svt.caspar.template.CasparTemplate;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.Font;
	import flash.text.TextFieldType;
	import flash.filters.*;
	import flash.external.ExternalInterface;
	
	public class Selection extends CasparTemplate{
		
		private var replayPanel:MovieClip = new replayBar();
		private var txt:TextField = new TextField();
		private var txt1:TextField = new TextField();
		private var txtFormat:TextFormat = new TextFormat();
		private var txtFont:Font = new RobotoMedium();
		private var myFilter:DropShadowFilter = new DropShadowFilter();
		
		public function Selection() {
			// constructor code
			super();
			this.replayPanel.x = 605.5;
			this.replayPanel.y = 794.5;
			this.addChild(replayPanel);
			
			this.myFilter.quality = -100;
			this.myFilter.strength = 2;
			
			this.txtFormat.size = 45;
			this.txtFormat.font = txtFont.fontName;
			this.txtFormat.color = 0xffffff;
			
			this.txt.defaultTextFormat = txtFormat;
			this.txt.autoSize = "left";
			this.txt.alpha = 1;
			this.txt.type = TextFieldType.INPUT;
			this.txt.text = "DARREN McAULLAY  ";
			this.txt.x = 255;
			this.txt.y = 770;
			this.txt.filters = [myFilter];
			this.addChild(txt);
			
			this.txtFormat.letterSpacing = 10;
			
			setTxt(txt1, txtFormat, myFilter, "1 5 6 3", this.txt.x + 470, this.txt.y);
			this.addChild(txt1);
			
			ExternalInterface.addCallback("UpdateData", UpdateData);
			ExternalInterface.addCallback("GetProperties", GetProperties);
		}
		private function Add(xmlStr:String, str:String, txt:TextField){
			xmlStr='<'+ str + ' id="'+ str + '"><data value="' + txt.text + '"/></' + str +'>';
			return xmlStr;
		}
		private function setFormat(txtFormat:TextFormat, sizeN:Number, strColor:Number, strFont:Font){
			txtFormat.size = sizeN;
			txtFormat.color = strColor;
			txtFormat.font = strFont.fontName;
			
		}
		private function setTxt(txt:TextField, txtFormat:TextFormat, filterA:DropShadowFilter, str:String, xN:Number, yN:Number){
			txt.defaultTextFormat = txtFormat;
			txt.alpha = 1;
			txt.autoSize = "left";
			txt.type = TextFieldType.INPUT;
			txt.text = str;
			txt.x = xN;
			txt.y = yN;
			txt.filters = [filterA];
		}
		function GetProperties()
		{
			var xmlStr:String = "<Track_Property>";
			xmlStr +=Add(xmlStr, "SelectionName", txt);
			xmlStr +=Add(xmlStr, "SelectionNumber", txt1);
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
					case "SelectionName".toLowerCase():
						this.txt.text = data;
						break;
					case "SelectionNumber".toLowerCase():
						this.txt1.text = data;
						break;
				}
			}
		}
	}
	
}
