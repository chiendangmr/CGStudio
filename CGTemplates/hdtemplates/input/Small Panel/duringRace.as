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
		
	public class duringRace extends CasparTemplate{
		
		public var myBar1:MovieClip = new bar1();
			
		private var txt3Bar:MovieClip = new MovieClip();
		private var txtGroup:MovieClip = new MovieClip();
		private var txtGroup1:MovieClip = new MovieClip();
		private var txtGroup2:MovieClip = new MovieClip();
		private var txtGroup3:MovieClip = new MovieClip();
		private var txtGroup4:MovieClip = new MovieClip();
		private var txt1:TextField = new TextField();
		private var txt2:TextField = new TextField();
		private var txt3:TextField = new TextField();
		private var txt4:TextField = new TextField();
		private var txt5:TextField = new TextField();
		private var txt6:TextField = new TextField();
		private var txt7:TextField = new TextField();
		private var txt8:TextField = new TextField();
		private var txt9:TextField = new TextField();		
		public var txt10:TextField = new TextField();
		public var txt11:TextField = new TextField();
		public var txt12:TextField = new TextField();
		public var txt13:TextField = new TextField();
		public var t1:TextField = new TextField();
								
		private var txtFormat:TextFormat = new TextFormat();
		private var txtFormat2:TextFormat = new TextFormat();
		private var txtFormat3:TextFormat = new TextFormat();
		
		private var myFilter:DropShadowFilter = new DropShadowFilter();
								
		private var maskBar1:Shape = new Shape();
		private var maskBar2:Shape = new Shape();
		private var maskBar3:Shape = new Shape();
		private var maskBar4:Shape = new Shape();
		private var maskBar5:Shape = new Shape();
		private var rectWidth:Number = 900;
		private var rectHeight:Number = 160;
		private var rcolor:Array = new Array();
		private var alphas:Array = new Array();
		private var ratios:Array = new Array();
		
		private var singleTween:Tween = null;
		private var txtTween:Tween = null;	
		public var eff:MovieClip = new light();
		
		public function duringRace() {
			// constructor code
			super();			
			this.addChild(myBar1);
			
			this.myFilter.quality = -100;
			this.myFilter.strength = 2;
						
			this.txtFormat.size = 40;
			this.txtFormat.font = new RobotoBold().fontName;
			this.txtFormat.color = 0xffffff;
			
			this.txtFormat3.size = 55;
			this.txtFormat3.font = new RobotoBold().fontName;
			this.txtFormat3.color = 0xfaddb5;
			
			this.txt3.defaultTextFormat = txtFormat3;
			this.txt3.alpha = 1;
			this.txt3.type = TextFieldType.INPUT;
			this.txt3.text = "RACE 2";
			this.txt3.x = 250;
			this.txt3.y = 129;
			this.txt3.autoSize = "left";
			this.txt3.filters = [myFilter];
			
			setTxt(t1, txtFormat, myFilter, "MADAGUI", this.txt3.x, 225);
			
			this.maskBar1.x = 105;
			this.maskBar1.y = 100;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 200;
			this.rectWidth = 450;
			this.drawShapes(maskBar1, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
						
			this.myBar1.mask = this.maskBar1;
			
			this.txt3Bar.addChild(txt3);
			this.txt3Bar.addChild(t1);
						
			this.txtGroup.addChild(txt3Bar);
			this.txtGroup.addChild(txtGroup1);
			this.txtGroup.addChild(txtGroup2);
			this.txtGroup.addChild(txtGroup3);
			this.txtGroup.addChild(txtGroup4);
						
			this.addChild(txt3Bar);
			this.addChild(txtGroup1);
			this.addChild(txtGroup2);
			this.addChild(txtGroup3);
			this.addChild(txtGroup4);
			this.addChild(txtGroup);
			this.addChild(eff);
			this.eff.visible = false;
			this.txt3Bar.visible = false;
			this.txtGroup1.visible = false;
			this.txtGroup2.visible = false;
			this.txtGroup3.visible = false;
			this.txtGroup4.visible = false;
			this.txtGroup.visible = false;
			this.myBar1.visible = false;			
			
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
			xmlStr +=Add(xmlStr, "PlaceName", t1);
			xmlStr +=Add(xmlStr, "RaceNumber", txt3);			
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
						this.txt3.text = data.toUpperCase();
						break;
					case "PlaceName".toLowerCase():
						this.t1.text = data.toUpperCase();						
						break;													
				}
			}
		}
		public function comeIn1():void{
			this.myBar1.visible = true;
			this.singleTween = new Tween(myBar1, "x", Regular.easeOut, -1500, 351, 0.2, true);			
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt1);
		}
		private function comeInTxt1(e:Event):void{
			this.txt3Bar.visible = true;
			this.txtTween = new Tween(txt3Bar, "alpha", Strong.easeOut, 0, 1, 0.1, true);
			
		}		
		
		///////////////////////////////////////////////////////////////////////////////////
		public function comeIn11():void{
			this.txt3Bar.visible = false;
			this.myBar1.visible = true;
			this.singleTween = new Tween(myBar1, "x", Regular.easeOut, -1500, 351, 0.2, true);			
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt11);
		}
		private function comeInTxt11(e:Event):void{
			this.txt3Bar.visible = true;
			this.txtTween = new Tween(txt3Bar, "alpha", Strong.easeOut, 0, 1, 0.1, true);
		}
				
		public function comeOut(){
			this.txt3.visible = false;
			this.txtGroup1.visible = false;
			this.txtGroup2.visible = false;
			this.txtGroup3.visible = false;
			this.txtGroup4.visible = false;
			//this.txtGroup.visible = false;
			this.myBar1.visible = false;			
			this.txtTween = new Tween(txtGroup, "alpha", Strong.easeIn, 1, 0, 0.1, true);
			this.txtTween.addEventListener(TweenEvent.MOTION_FINISH, comeOutBar);
		}
		private function comeOutBar(e:Event):void{
			this.singleTween = new Tween(myBar1, "y", Regular.easeOut, 960, 1200, 0.5, true);
		}
		public override function Play():void{
			comeIn1();			
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
