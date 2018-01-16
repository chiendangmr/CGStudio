package  {
	
	import flash.display.MovieClip;
	import flash.display.Shape;
	import flash.display.GradientType;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.events.Event;
	import flash.utils.setInterval;
	import flash.text.TextFormatAlign;
	import flash.text.TextFieldType;
	import flash.external.ExternalInterface;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import se.svt.caspar.template.CasparTemplate;
	import flash.geom.ColorTransform;
	import flash.geom.Matrix;
	import flash.events.MouseEvent;
	//import flash.display.Shader;

	public class subtitleSafe extends CasparTemplate {
		
		private var txt1:TextField = new TextField();
		private var txt2:TextField = new TextField();
		private var txt2Format:TextFormat = new TextFormat();
		private var nextFormat:TextFormat = new TextFormat();
		
		private var myFont = new FuturaMTVBoldItalic();
		private var i:Number = 0;
		private var isIn:Boolean = true;
		private var isOut:Boolean = false;
		
		private var yTween:Tween = null;
		private var alphaTween:Tween = null;
		private var rectTween:Tween = null;
		
		private var rect:Shape=new Shape();
		private var txt1Mask:Shape = new Shape();
		private var txt2Mask:Shape = new Shape();
		private var rectWidth:Number=600;
		private var rectHeight:Number=80;
		private var rcolor:Array = new Array();
		// new ColorTransform object
		private var obj_color:ColorTransform = new ColorTransform();
		private var maskingShape:Shape = new Shape();
			
		public function subtitleSafe() {
			// constructor code
			super();
			
			this.addChild(rect);
			this.nextFormat.align = TextFormatAlign.LEFT;
			this.nextFormat.size = 25;
			this.nextFormat.bold = true;
			this.nextFormat.leading = -30;
			this.nextFormat.color = 0xffff00;
			this.nextFormat.font = myFont.fontName;
			
			this.txt2Format.align = TextFormatAlign.LEFT;
			this.txt2Format.size = 25;
			this.txt2Format.bold = true;
			this.txt2Format.leading = -30;
			this.txt2Format.color = 0xffffff;
			this.txt2Format.font = myFont.fontName;
			
			this.txt1.x = 100;
			this.txt1.y = 390;
			this.txt1.type = TextFieldType.DYNAMIC;
			this.txt1.defaultTextFormat=nextFormat;
			this.txt1.width = 300;
			this.txt1.height = 50;
			this.txt1.text = "THU 21:00";
			this.addChild(txt1);

			this.txt2.y = 410;
			this.txt2.type = TextFieldType.DYNAMIC;
			this.txt2.defaultTextFormat=txt2Format;
			this.txt2.width = 500;
			this.txt2.height = 50;
			this.txt2.text = "the hard times of rj berger";
			this.addChild(txt2);
			
			this.rect.x =73;
			this.rect.y =380;
			this.rcolor = [0xf70909,0xf7e309];
			this.drawShapes(rcolor, toRad(-90, 90));
			
			this.addChild(maskingShape);
			this.maskingShape.x = 73;
			this.maskingShape.y = 120;
			this.drawInMask(maskingShape);
			this.rect.mask=maskingShape;
			
			this.addChild(txt1Mask);
			this.txt1Mask.x = 83;
			this.txt1Mask.y = 120;
			this.drawInMask(txt1Mask);
			this.txt1.mask = txt1Mask;
			
			this.addChild(txt2Mask);
			this.txt2Mask.x = 83;
			this.txt2Mask.y = 120;
			this.drawInMask(txt2Mask);
			this.txt2.mask = txt2Mask;
			
			if (isIn) comeIn();
			setInterval(changeColor, 100);
			this.addEventListener(MouseEvent.CLICK, comeOut);
			//this.rectTween.looping = true;
			

		}
		override public function SetData(xml:XML):void
		{
			
		}
		private function drawInMask(maskingShape:Shape):void {
			maskingShape.graphics.lineStyle();
			maskingShape.graphics.beginFill(0xFFFFFF,1);
			maskingShape.graphics.drawRect(0,0,700,500);
			maskingShape.graphics.endFill();
		}
		
		private function comeIn():void
		{
			yTween = new Tween(txt1, "x", Bounce.easeOut, 0, 100, 1, true);
			alphaTween = new Tween(txt2, "x", Bounce.easeOut, 0, 100, 1, true);
			rectTween = new Tween(rect, "x", Bounce.easeOut, -400, 73, 1, true);			
			
		}
		private function comeOut(e:Event):void
		{	
			alphaTween = new Tween(txt1, "x", None.easeNone, 100, -500, 0.5, true);
			yTween = new Tween(txt2, "x", Bounce.easeOut, 100, -500, 0.5, true);
			rectTween = new Tween(rect, "x", Bounce.easeOut, 73, -600, 0.5, true);		
		}
		
		
		private function drawShapes(colors:Array, r:Number):void {
			
			var mat:Matrix;
			var alphas:Array;
			var ratios:Array;
			mat=new Matrix();
			alphas=[0.5,1];
			ratios=[0,255];
			mat.createGradientBox(rectWidth,rectHeight,r);
			rect.graphics.lineStyle();
			rect.graphics.beginGradientFill(GradientType.LINEAR,colors,alphas,ratios,mat);
			rect.graphics.drawRect(0,0,rectWidth,rectHeight);
			rect.graphics.endFill();
		}
		private function toRad(a:Number, b:Number):Number {
			return a*Math.PI/b;
		}
		
		private function changeColor()
		{
			
			if (i==0) {
				i++;				
				this.rcolor = [0xf70909,0xf7e309];
				this.drawShapes(rcolor, toRad(-90, 90));
				
			}else if(i==1){
				i++;				
				this.rcolor = [0xf7e309,0xf70909];
				this.drawShapes(rcolor, toRad(-90, 90));
			}else if(i==2){
				i++;
				this.rcolor = [0x1409f7,0x45d0f3];
				this.drawShapes(rcolor, toRad(-90, 90));
			}else if(i==3){
				i++;
				this.rcolor = [0x45d0f3,0x1409f7];
				this.drawShapes(rcolor, toRad(-90, 90));
			}else if(i==4){
				i++;
				this.rcolor = [0x65f345,0xdcf345];
				this.drawShapes(rcolor, toRad(-90, 360));
			}else if(i==5){
				i++;
				this.rcolor = [0xf7ef18,0xf7ca18];
				this.drawShapes(rcolor, toRad(-90, 360));
			}else if(i==6){
				i=0;
				this.rcolor = [0xf70909,0xf7e309];
				this.drawShapes(rcolor, toRad(-90, -90));
			}
		 }
	}
	
}
