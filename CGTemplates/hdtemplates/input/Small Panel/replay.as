package  {
	
	import flash.display.MovieClip;
	import se.svt.caspar.template.CasparTemplate;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.Font;
	import flash.text.TextFieldType;
	import flash.filters.*;
	import flash.external.ExternalInterface;
	
	public class replay extends CasparTemplate{
		
		private var replayPanel:MovieClip = new replayBar();
		private var txt:TextField = new TextField();
		private var txtFormat:TextFormat = new TextFormat();
		private var txtFont:Font = new RobotoBlack();
		private var myFilter:DropShadowFilter = new DropShadowFilter();
		
		public function replay() {
			// constructor code
			super();
			this.replayPanel.x = 1570;
			this.replayPanel.y = 290;
			this.addChild(replayPanel);
			
			this.myFilter.quality = -100;
			this.myFilter.strength = 2;
			
			this.txtFormat.size = 65;
			this.txtFormat.font = txtFont.fontName;
			this.txtFormat.color = 0xfaddb5;
			
			this.txt.defaultTextFormat = txtFormat;
			this.txt.autoSize = "left";
			this.txt.alpha = 1;
			this.txt.type = TextFieldType.INPUT;
			this.txt.text = "REPLAY";
			this.txt.x = 1450;
			this.txt.y = 250;
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
			xmlStr +=Add(xmlStr, "txt", txt);
			
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
					case "txt".toLowerCase():
						this.txt.text = data.toUpperCase();
						break;
				}
			}
		}
	}
	
}
