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
	
	public class lfSingleLine extends CasparTemplate{
		public var eff:MovieClip = new light();
		private var singleLine:MovieClip = new singleLineBar();
		private var txt:TextField = new TextField();
		private var txtFormat:TextFormat = new TextFormat();
		private var txtFont:Font = new RobotoBold();
		
		private var maskBar:Shape = new Shape();
		private var rectWidth:Number=900;
		private var rectHeight:Number=80;
		private var rcolor:Array = new Array();
		private var alphas:Array = new Array();
		private var ratios:Array = new Array();
		
		private var singleTween:Tween = null;
		private var txtTween:Tween = null;
		
		public function lfSingleLine() {
			// constructor code
			super();
			this.singleLine.x = 950;
			this.singleLine.y = 840;
			this.addChild(singleLine);
			
			this.txtFormat.size = 55;
			this.txtFormat.font = txtFont.fontName;
			this.txtFormat.color = 0xfaddb5;
			
			this.txt.defaultTextFormat = txtFormat;
			this.txt.autoSize = "left";
			this.txt.alpha = 1;
			this.txt.type = TextFieldType.DYNAMIC;
			this.txt.text = "ADAM DURRANT";
			this.txt.x = 750;
			this.txt.y = 810;
			this.addChild(txt);
			
			this.addChild(maskBar);
			this.maskBar.x = 180;
			this.maskBar.y = 770;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 130;
			this.rectWidth = 1530;
			this.drawShapes(maskBar, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.singleLine.mask = this.maskBar;
			this.txt.visible = false;
			this.singleLine.visible = false;
			this.addChild(eff);
			this.eff.visible = false;
			//comeIn();
		}
		override public function SetData(xml:XML):void{
			for each (var element:XML in xml.children())
			{
				var property:String = element.@id;
				var data:String = element.data.@value;
				switch(property.toLowerCase())
				{
					case "name".toLowerCase():
						this.txt.text = data.toUpperCase();
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
			this.txt.visible = true;
			this.txtTween = new Tween(txt, "alpha", Strong.easeIn, 0, 1, 0.1, true);
			this.eff.visible = true;
			this.singleTween = new Tween(eff, "x", None.easeOut, 221, 1705, 5, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, effOff);
		}
		private function effOff(e:Event):void{
			this.eff.visible = false;
			//this.txtTween = new Tween(eff, "alpha", Strong.easeOut, 1, 0, 0.1, true);
		}
		private function comeOut(){
			this.txtTween = new Tween(txt, "alpha", Strong.easeIn, 1, 0, 0.1, true);
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
