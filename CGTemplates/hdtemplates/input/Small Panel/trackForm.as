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
	import flash.display.MorphShape;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.external.ExternalInterface;
		
	public class trackForm extends CasparTemplate{
		
		public var myBar:MovieClip = new bar();
		public var eff:MovieClip = new light();
		private var txtGroup:MovieClip = new MovieClip();
		private var txt:TextField = new TextField();
		private var txt2:TextField = new TextField();
		private var txt3:TextField = new TextField();
		private var txt4:TextField = new TextField();
		private var txt5:TextField = new TextField();
		private var txt6:TextField = new TextField();
				
		private var txtFormat:TextFormat = new TextFormat();
		private var txtFormat2:TextFormat = new TextFormat();
		private var betFormat:TextFormat = new TextFormat();
	
		private var myFilter:DropShadowFilter = new DropShadowFilter();
								
		private var maskBar:Shape = new Shape();
		private var rectWidth:Number = 900;
		private var rectHeight:Number = 160;
		private var rcolor:Array = new Array();
		private var alphas:Array = new Array();
		private var ratios:Array = new Array();
		
		private var singleTween:Tween = null;
		private var txtTween:Tween = null;
		
		public function trackForm() {
			// constructor code
			super();
			
			this.addChild(myBar);
			
			this.txtFormat.size = 150;
			this.txtFormat.font = new RobotoBoldCondensed().fontName;
			this.txtFormat.color = 0xe89d22;
						
			this.txtFormat2.size = 65;
			this.txtFormat2.font = new RobotoBold().fontName;
			this.txtFormat2.color = 0xfaddb5;
									
			this.txt.defaultTextFormat = txtFormat;
			this.txt.alpha = 1;
			this.txt.autoSize = "left";
			this.txt.type = TextFieldType.INPUT;
			this.txt.text = "RACE 10";
			this.txt.x = 230;
			this.txt.y = 100;
			this.txt.filters = [myFilter];
			this.txtGroup.addChild(txt);
						
			this.txt2.defaultTextFormat = txtFormat2;
			this.txt2.alpha = 1;
			this.txt2.type = TextFieldType.INPUT;
			this.txt2.text = "MADAGUI";
			this.txt2.x = 825;
			this.txt2.y = this.txt.y + 20;
			this.txt2.autoSize = "left";
			this.txt2.filters = [myFilter];
			this.txtGroup.addChild(txt2);
			
			this.txt3.defaultTextFormat = txtFormat2;
			this.txt3.alpha = 1;
			this.txt3.type = TextFieldType.INPUT;
			this.txt3.text = "1100m";
			this.txt3.x = 1265;
			this.txt3.y = this.txt2.y;
			this.txt3.autoSize = "left";
			this.txt3.filters = [myFilter];
			this.txtGroup.addChild(txt3);
			
			this.txtFormat2.size = 45;
			this.txtFormat2.font = new RobotoBoldCondensed().fontName;
			this.txt4.defaultTextFormat = txtFormat2;
			this.txt4.alpha = 1;
			this.txt4.autoSize = "left";
			this.txt4.type = TextFieldType.INPUT;
			this.txt4.text = "PURE BLONDE HANDICAP";
			this.txt4.x = this.txt2.x;
			this.txt4.y = 200;
			this.txt4.filters = [myFilter];
			this.txtGroup.addChild(txt4);
			
			setFormat(betFormat, 70, 0xe89d22, new RobotoBold());
			setTxt(txt6, betFormat, myFilter, "MR12", this.txt3.x + 230, this.txt2.y);
			this.txtGroup.addChild(txt6);
			this.txt5.defaultTextFormat = txtFormat2;
			this.txt5.alpha = 1;
			this.txt5.autoSize = "left";
			this.txt5.type = TextFieldType.INPUT;
			this.txt5.text = "GOOD3";
			this.txt5.x = 1520;
			this.txt5.y = this.txt4.y;
			this.txt5.filters = [myFilter];
			this.txtGroup.addChild(txt5);
			
			this.addChild(txtGroup);
			
			this.addChild(maskBar);
			this.maskBar.x = 180;
			this.maskBar.y = 105;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 200;
			this.rectWidth = 1600;
			this.drawShapes(maskBar, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.myBar.mask = this.maskBar;
			this.txtGroup.visible = false;
			this.myBar.visible = false;
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
			xmlStr += '<RaceNumber id="RaceNumber"><data value="' + this.txt.text + '"/></RaceNumber>';
			xmlStr += '<PlaceName id="PlaceName"><data value="' + this.txt2.text + '"/></PlaceName>';
			xmlStr += '<Distance id="Distance"><data value="' + this.txt3.text + '"/></Distance>';
			xmlStr += '<RaceName id="RaceName"><data value="' + this.txt4.text + '"/></RaceName>';
			xmlStr += '<TrackName id="TrackName"><data value="' + this.txt5.text + '"/></TrackName>';
			xmlStr += Add(xmlStr, "BettingCode", txt6);
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
					case "Distance".toLowerCase():
						this.txt3.text = data;
						break;
					case "Track".toLowerCase():
						this.txt5.text = data.toUpperCase();
						break;
					case "PlaceName".toLowerCase():
						this.txt2.text = data.toUpperCase();
						break;
					case "RaceName".toLowerCase():
						this.txt4.text = data.toUpperCase();
						break;
					case "BettingCode".toLowerCase():
						this.txt6.text = data.toUpperCase();
						break;
				}
			}
		}
		private function comeIn():void{
			this.myBar.visible = true;
			this.singleTween = new Tween(myBar, "x", Regular.easeOut, -1500, 960, 0.5, true);
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
		}
		private function comeOut(){
			this.txtTween = new Tween(txtGroup, "alpha", Strong.easeIn, 1, 0, 0.1, true);
			this.txtTween.addEventListener(TweenEvent.MOTION_FINISH, comeOutBar);
		}
		private function comeOutBar(e:Event):void{
			this.singleTween = new Tween(myBar, "y", Regular.easeOut, 840, 1200, 1, true);
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
	}
	
}
