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
	import flash.filters.*;
	import flash.external.ExternalInterface;
	
	public class PoolsBigPhase2 extends CasparTemplate{
		public var eff:MovieClip = new light();
		public var singleLine:MovieClip = new singleLineBar();
		private var txtGroup:MovieClip = new MovieClip();
		private var txt1:TextField = new TextField();
		private var txt2:TextField = new TextField();
		private var txt3:TextField = new TextField();
		private var txt4:TextField = new TextField();
		private var txt5:TextField = new TextField();
		private var txt6:TextField = new TextField();
		private var txt7:TextField = new TextField();
		private var txt8:TextField = new TextField();
		private var txt9:TextField = new TextField();
		private var txt10:TextField = new TextField();
		private var txt11:TextField = new TextField();
		private var txt12:TextField = new TextField();
		private var txt13:TextField = new TextField();
		private var txt14:TextField = new TextField();
		private var txt15:TextField = new TextField();
		private var txt16:TextField = new TextField();
		private var txt17:TextField = new TextField();
		private var txt18:TextField = new TextField();
		private var txt19:TextField = new TextField();
		private var txtFormat:TextFormat = new TextFormat();
				
		private var maskBar:Shape = new Shape();
		private var rectWidth:Number=900;
		private var rectHeight:Number=80;
		private var rcolor:Array = new Array();
		private var alphas:Array = new Array();
		private var ratios:Array = new Array();
		
		private var singleTween:Tween = null;
		private var txtTween:Tween = null;
		private var myFilter:DropShadowFilter = new DropShadowFilter();
		
		public function PoolsBigPhase2() {
			// constructor code
			super();
			
			this.addChild(singleLine);
			
			this.myFilter.quality = -100;
			this.myFilter.strength = 2;
					
			setFormat(txtFormat, 30, 0xe89d22, new RobotoBold());
			setTxt(txt1, txtFormat, myFilter, "WIN:", 435, 853);
			setTxt(txt2, txtFormat, myFilter, "PLACE:", 710, this.txt1.y);
			setTxt(txt3, txtFormat, myFilter, "QUINELLA:", 1055, this.txt1.y);
			setTxt(txt4, txtFormat, myFilter, "EXACTA:", 1420, this.txt1.y);
			setTxt(txt5, txtFormat, myFilter, "TRIO:", this.txt1.x, this.txt1.y + 40);
			setTxt(txt6, txtFormat, myFilter, "TRIFECTA:", this.txt2.x, this.txt5.y);
			setTxt(txt7, txtFormat, myFilter, "QUARTET:", this.txt3.x, this.txt5.y);
			setTxt(txt8, txtFormat, myFilter, "SUPERFECTA 6:", this.txt1.x, this.txt5.y + 40);
			setTxt(txt9, txtFormat, myFilter, "PICKX JACKPOT:", this.txt3.x, this.txt8.y);
			
			this.txtFormat.color = 0xffffff;
			setTxt(txt10, txtFormat, myFilter, "POOLS -", this.txt1.x - 170, this.txt1.y);
			setTxt(txt11, txtFormat, myFilter, "2061.35", this.txt1.x + 70, this.txt1.y);
			setTxt(txt12, txtFormat, myFilter, "1421.46", this.txt2.x + 110, this.txt1.y);
			setTxt(txt13, txtFormat, myFilter, "283.50", this.txt3.x + 160, this.txt1.y);
			setTxt(txt14, txtFormat, myFilter, "147.00", this.txt4.x + 130, this.txt1.y);
			setTxt(txt15, txtFormat, myFilter, "256.20", this.txt1.x + 80, this.txt1.y + 40);
			setTxt(txt16, txtFormat, myFilter, "911.50", this.txt2.x + 150, this.txt5.y);
			setTxt(txt17, txtFormat, myFilter, "253.50", this.txt3.x + 150, this.txt5.y);
			setTxt(txt18, txtFormat, myFilter, "3562.40", this.txt1.x + 225, this.txt5.y + 40);
			setTxt(txt19, txtFormat, myFilter, "4532.70", this.txt3.x + 240, this.txt8.y);
			this.txtGroup.addChild(txt1);
			this.txtGroup.addChild(txt2);
			this.txtGroup.addChild(txt3);
			this.txtGroup.addChild(txt4);
			this.txtGroup.addChild(txt5);
			this.txtGroup.addChild(txt6);
			this.txtGroup.addChild(txt7);
			this.txtGroup.addChild(txt8);
			this.txtGroup.addChild(txt9);
			this.txtGroup.addChild(txt10);
			this.txtGroup.addChild(txt11);
			this.txtGroup.addChild(txt12);
			this.txtGroup.addChild(txt13);
			this.txtGroup.addChild(txt14);
			this.txtGroup.addChild(txt15);
			this.txtGroup.addChild(txt16);
			this.txtGroup.addChild(txt17);
			this.txtGroup.addChild(txt18);
			this.txtGroup.addChild(txt19);
			
			this.addChild(maskBar);
			this.maskBar.x = 190;
			this.maskBar.y = 830;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 160;
			this.rectWidth = 1540;
			this.drawShapes(maskBar, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.singleLine.mask = this.maskBar;
			this.txtGroup.visible = false;
			this.singleLine.visible = false;
			this.addChild(eff);
			this.addChild(txtGroup);
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
			xmlStr +=Add(xmlStr, "txt1", txt1);
			xmlStr +=Add(xmlStr, "txt2", txt2);
			xmlStr +=Add(xmlStr, "txt3", txt3);
			xmlStr +=Add(xmlStr, "txt4", txt4);
			xmlStr +=Add(xmlStr, "txt5", txt5);
			xmlStr +=Add(xmlStr, "txt6", txt6);
			xmlStr +=Add(xmlStr, "txt7", txt7);
			xmlStr +=Add(xmlStr, "txt8", txt8);
			xmlStr +=Add(xmlStr, "txt9", txt9);
			xmlStr +=Add(xmlStr, "txt10", txt10);
			xmlStr +=Add(xmlStr, "txt11", txt11);
			xmlStr +=Add(xmlStr, "txt12", txt12);
			xmlStr +=Add(xmlStr, "txt13", txt13);
			xmlStr +=Add(xmlStr, "txt14", txt14);
			xmlStr +=Add(xmlStr, "txt15", txt15);
			xmlStr +=Add(xmlStr, "txt16", txt16);
			xmlStr +=Add(xmlStr, "txt17", txt17);
			xmlStr +=Add(xmlStr, "txt18", txt18);
			xmlStr +=Add(xmlStr, "txt19", txt19);
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
					case "txt1".toLowerCase():
						this.txt1.text = data.toUpperCase();
						break;
					case "txt2".toLowerCase():
						this.txt2.text = data.toUpperCase();
						break;
					case "txt3".toLowerCase():
						this.txt3.text = data.toUpperCase();
						break;
					case "txt4".toLowerCase():
						this.txt4.text = data.toUpperCase();
						break;
					case "txt5".toLowerCase():
						this.txt5.text = data.toUpperCase();
						break;
					case "txt6".toLowerCase():
						this.txt6.text = data.toUpperCase();
						break;
					case "txt7".toLowerCase():
						this.txt7.text = data.toUpperCase();
						break;
					case "txt8".toLowerCase():
						this.txt8.text = data.toUpperCase();
						break;
					case "txt9".toLowerCase():
						this.txt9.text = data.toUpperCase();
						break;
					case "txt10".toLowerCase():
						this.txt10.text = data.toUpperCase();
						break;
					case "txt11".toLowerCase():
						this.txt11.text = data.toUpperCase();
						break;
					case "txt12".toLowerCase():
						this.txt12.text = data.toUpperCase();
						break;
					case "txt13".toLowerCase():
						this.txt13.text = data.toUpperCase();
						break;
					case "txt14".toLowerCase():
						this.txt14.text = data.toUpperCase();
						break;
					case "txt15".toLowerCase():
						this.txt15.text = data.toUpperCase();
						break;
					case "txt16".toLowerCase():
						this.txt16.text = data.toUpperCase();
						break;
					case "txt17".toLowerCase():
						this.txt17.text = data.toUpperCase();
						break;
					case "txt18".toLowerCase():
						this.txt18.text = data.toUpperCase();
						break;
					case "txt19".toLowerCase():
						this.txt19.text = data.toUpperCase();
						break;
				}
			}
		}
		private function comeIn():void{
			this.singleLine.visible = true;
			this.singleTween = new Tween(singleLine, "x", Regular.easeOut, -1500, 950, 0.5, true);
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
	}
	
}
