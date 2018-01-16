package  {
	
	import flash.display.MovieClip;
	import se.svt.caspar.template.CasparTemplate;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.Font;
	import flash.text.TextFieldType;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import flash.display.Shape;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import fl.transitions.TweenEvent;
	import flash.events.Event;
	import flash.text.TextFormatAlign;
	import flash.filters.*;
	import flash.external.ExternalInterface;	
	import fl.containers.UILoader;
	import flash.net.URLRequest;
	
	public class lfUnofficialWinner extends CasparTemplate{
		
		public var eff:MovieClip = new light();
		public var singleLine:MovieClip = new unofficialWinner();
		private var txtGroup:MovieClip = new MovieClip();
		private var txt1:TextField = new TextField();
		private var txt:TextField = new TextField();
		private var txt2:TextField = new TextField();
		private var txt3:TextField = new TextField();
		private var txt4:TextField = new TextField();
		private var txt5:TextField = new TextField();
		private var txtFormat:TextFormat = new TextFormat();
		private var txtFormat2:TextFormat = new TextFormat();
		private var txtFormat3:TextFormat = new TextFormat();
		private var myFilter:DropShadowFilter = new DropShadowFilter();
		
		public var icon1:UILoader = new UILoader;
		private var request:URLRequest = null;
				
		private var maskBar:Shape = new Shape();
		private var rectWidth:Number = 900;
		private var rectHeight:Number = 160;
		private var rcolor:Array = new Array();
		private var alphas:Array = new Array();
		private var ratios:Array = new Array();
		
		private var singleTween:Tween = null;
		private var txtTween:Tween = null;
		
		public function lfUnofficialWinner() {
			// constructor code
			super();
			
			this.singleLine.y = 840;
			this.addChild(singleLine);
			
			this.txtFormat.size = 40;
			this.txtFormat.font = new RobotoBoldCondensed().fontName;
			this.txtFormat.color = 0xfaddb5;
			this.txtFormat.align = TextFormatAlign.CENTER;
			
			this.txtFormat2.size = 45;
			this.txtFormat2.font = new RobotoBoldCondensed().fontName;
			this.txtFormat2.color = 0xe89d22;
			this.txtFormat2.align = TextFormatAlign.CENTER;
			
			this.txtFormat3.size = 85;
			this.txtFormat3.font = new RobotoBoldCondensed().fontName;
			this.txtFormat3.color = 0xe89d22;
			this.txtFormat3.align = TextFormatAlign.CENTER;
			
			this.txt.defaultTextFormat = txtFormat;
			this.txt.alpha = 1;
			this.txt.autoSize = "left";
			this.txt.type = TextFieldType.INPUT;
			this.txt.text = "RACE 2";
			this.txt.x = 257;
			this.txt.y = 725;
			this.txt.filters = [myFilter];
			this.txtGroup.addChild(txt);
			
			setTxt(txt1, txtFormat, myFilter, "MADAGUI", this.txt.x + 150, this.txt.y);
			this.txtGroup.addChild(txt1);
			this.txt2.defaultTextFormat = txtFormat;
			this.txt2.alpha = 1;
			this.txt2.type = TextFieldType.INPUT;
			this.txt2.text = "PURE BLONDE HANDICAP";
			this.txt2.x = 500;
			this.txt2.y = this.txt.y;
			this.txt2.width = 900;
			this.txt2.height = 100;
			this.txt2.filters = [myFilter];
			this.txtGroup.addChild(txt2);
			
			this.txt3.defaultTextFormat = txtFormat2;
			this.txt3.alpha = 1;
			this.txt3.type = TextFieldType.INPUT;
			this.txt3.text = "UNOFFICIAL WINNER";
			this.txt3.x = 210;
			this.txt3.y = 800;
			this.txt3.width = 1500;
			this.txt3.height = 100;
			this.txt3.filters = [myFilter];
			this.txtGroup.addChild(txt3);
			
			this.txt4.defaultTextFormat = txtFormat3;
			this.txt4.alpha = 1;
			this.txt4.autoSize = "left";
			this.txt4.type = TextFieldType.INPUT;
			this.txt4.text = "7.";
			this.txt4.x = 615;
			this.txt4.y = 850;
			this.txt4.filters = [myFilter];
			this.txtGroup.addChild(txt4);
			
			this.txtFormat3.color = 0xffffff;
			this.txt5.defaultTextFormat = txtFormat3;
			this.txt5.alpha = 1;
			this.txt5.autoSize = "left";
			this.txt5.type = TextFieldType.INPUT;
			this.txt5.text = "VERSED REMEDY";
			this.txt5.x = this.txt4.x + 90;
			this.txt5.y = this.txt4.y;
			this.txt5.filters = [myFilter];
			this.txtGroup.addChild(txt5);
						
			this.txtGroup.addChild(icon1);
			this.addChild(txtGroup);
			
			this.addChild(maskBar);
			this.maskBar.x = 180;
			this.maskBar.y = 700;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 400;
			this.rectWidth = 1550;
			this.drawShapes(maskBar, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.singleLine.mask = this.maskBar;
			this.txtGroup.visible = false;
			this.singleLine.visible = false;
			this.addChild(eff);
			this.eff.visible = false;
			//Play();
			ExternalInterface.addCallback("UpdateData", UpdateData);
			ExternalInterface.addCallback("GetProperties", GetProperties);
			
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
		private function Add(xmlStr:String, str:String, txt:TextField){
			xmlStr='<'+ str + ' id="'+ str + '"><data value="' + txt.text + '"/></' + str +'>';
			return xmlStr;
		}
		function GetProperties()
		{
			var xmlStr:String = "<Track_Property>";
			xmlStr +=Add(xmlStr, "RaceNumber", txt);
			xmlStr +=Add(xmlStr, "PlaceName", txt1);
			xmlStr +=Add(xmlStr, "RaceName", txt2);
			xmlStr +=Add(xmlStr, "txt3", txt3);
			xmlStr +=Add(xmlStr, "UnofficialWinnerNumber", txt4);
			xmlStr +=Add(xmlStr, "UnofficialWinnerName", txt5);
			
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
					case "RaceNumber".toLowerCase():
						this.txt.text = data.toUpperCase();
						break;
					case "PlaceName".toLowerCase():
						this.txt1.text = data.toUpperCase();
						break;
					case "RaceName".toLowerCase():
						this.txt2.text = data.toUpperCase();
						break;
					case "txt3".toLowerCase():
						this.txt3.text = data.toUpperCase();
						break;
					case "UnofficialWinnerNumber".toLowerCase():
						this.txt4.text = data.toUpperCase();
						request = new URLRequest(getIcon(data));
						this.icon1.load(request);
						break;
					case "UnofficialWinnerName".toLowerCase():
						this.txt5.text = data.toUpperCase();
						break;					
				}
			}
		}
		private function comeIn():void{
			this.singleLine.visible = true;
			this.singleTween = new Tween(singleLine, "x", Regular.easeOut, -1500, 960, 0.5, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt);
		}
		private function comeInTxt(e:Event):void{
			this.txtGroup.visible = true;
			this.txtTween = new Tween(txtGroup, "alpha", Strong.easeIn, 0, 1, 0.1, true);
			this.eff.visible = true;
			this.singleTween = new Tween(eff, "x", None.easeOut, 221, 1705, 2, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, effOff);
		}
		private function effOff(e:Event):void{
			this.eff.visible = false;
			//this.txtTween = new Tween(eff, "alpha", Strong.easeOut, 1, 0, 0.1, true);
		}
		private function comeOut(){
			this.txtTween = new Tween(txtGroup, "alpha", Strong.easeIn, 1, 0, 0.1, true);
			this.txtTween.addEventListener(TweenEvent.MOTION_FINISH, comeOutBar);
		}
		private function comeOutBar(e:Event):void{
			this.singleTween = new Tween(singleLine, "y", Regular.easeOut, 840, 1200, 1, true);
		}
		public override function Play():void{
			comeIn();
		}
		public override function Stop():void{
			comeOut();
		}
		private function drawShapes(mrect:Shape, alphas:Array, ratios:Array, colors:Array, r:Number, rectWidth:Number, rectHeight:Number):void {
			var mat:Matrix;
			mat=new Matrix();
			mat.createGradientBox(rectWidth,rectHeight,r);
			mrect.graphics.lineStyle();
			mrect.graphics.beginGradientFill(GradientType.LINEAR,colors,alphas,ratios,mat);
			mrect.graphics.drawRect(0,0,rectWidth,rectHeight);
			mrect.graphics.endFill();
		}
		private function toRad(a:Number, b:Number):Number {
			return a*Math.PI/b;
		}
		private function getIcon(number:String):String
        {
            var iconUrl:String = "";
            switch (number)
            {
                case "1.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\01.png";
                    break;
                case "2.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\02.png";
                    break;
                case "3.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\03.png";
                    break;
                case "4.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\04.png";
                    break;
                case "5.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\05.png";
                    break;
                case "6.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\06.png";
                    break;
                case "7.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\07.png";
                    break;
                case "8.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\08.png";
                    break;
                case "9.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\09.png";
                    break;
                case "10.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\10.png";
                    break;
            }
            return iconUrl;
        }
	}
	
}
