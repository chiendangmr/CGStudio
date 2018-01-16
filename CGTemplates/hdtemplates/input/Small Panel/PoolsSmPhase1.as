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
	
	public class PoolsSmPhase1 extends CasparTemplate{
		public var eff:MovieClip = new light();
		public var singleLine:MovieClip = new replayBar();
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
		
		public function PoolsSmPhase1() {
			// constructor code
			super();
			
			this.addChild(singleLine);
			
			this.myFilter.quality = -100;
			this.myFilter.strength = 2;
					
			setFormat(txtFormat, 40, 0xffffff, new RobotoMedium());
			setTxt(txt1, txtFormat, myFilter, "POOLS -", 240, 855);
			setTxt(txt2, txtFormat, myFilter, "2061.35", 495, 855);
			setTxt(txt3, txtFormat, myFilter, "1421.46", 810, 855);
			setTxt(txt4, txtFormat, myFilter, "283.50", 1195, 855);
			setTxt(txt5, txtFormat, myFilter, "911.50", 1550, 855);
			this.txtFormat.color = 0xe89d22;
			setTxt(txt6, txtFormat, myFilter, "WIN:", 405, 855);
			setTxt(txt7, txtFormat, myFilter, "PLACE:", 680, 855);
			setTxt(txt8, txtFormat, myFilter, "QUINELLA:", 990, 855);
			setTxt(txt9, txtFormat, myFilter, "TRIFECTA:", 1355, 855);
			this.txtGroup.addChild(txt1);
			this.txtGroup.addChild(txt2);
			this.txtGroup.addChild(txt3);
			this.txtGroup.addChild(txt4);
			this.txtGroup.addChild(txt5);
			this.txtGroup.addChild(txt6);
			this.txtGroup.addChild(txt7);
			this.txtGroup.addChild(txt8);
			this.txtGroup.addChild(txt9);
						
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
			xmlStr +=Add(xmlStr, "pool1", txt2);
			xmlStr +=Add(xmlStr, "pool2", txt3);
			xmlStr +=Add(xmlStr, "pool3", txt4);
			xmlStr +=Add(xmlStr, "pool4", txt5);						
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
					case "pool1".toLowerCase():
						this.txt2.text = data.toUpperCase();
						break;
					case "pool2".toLowerCase():
						this.txt3.text = data.toUpperCase();
						break;
					case "pool3".toLowerCase():
						this.txt4.text = data.toUpperCase();
						break;
					case "pool4".toLowerCase():
						this.txt5.text = data.toUpperCase();
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
