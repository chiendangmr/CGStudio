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

	public class clipTitle extends CasparTemplate {
		
		private var nameNext :TextField = new TextField();
		private var txt1:TextField = new TextField();
		private var txt2:TextField = new TextField();
		private var nextFormat:TextFormat = new TextFormat();
		private var myFont = new FuturaMTVBoldItalic();
		private var i:Number = 0;
		private var isIn:Boolean = true;
		private var isOut:Boolean = false;
		private var yTween:Tween = null;
		private var alphaTween:Tween = null;
		private var rectTween:Tween = null;
		private var rect:Shape=new Shape();
		private var rectWidth:Number=600;
		private var rectHeight:Number=300;
		private var rcolor:Array = new Array();
		// new ColorTransform object
		private var obj_color:ColorTransform = new ColorTransform();
		private var maskingShape:Shape = new Shape();
			
		public function clipTitle() {
			// constructor code
			super();
			
			this.addChild(rect);
			this.nextFormat.align = TextFormatAlign.LEFT;
			this.nextFormat.size = 90;
			this.nextFormat.bold = true;
			this.nextFormat.leading = -30;
			this.nextFormat.font = myFont.fontName;
			
			this.nameNext.y = 150;
			this.nameNext.type = TextFieldType.DYNAMIC;
			this.nameNext.defaultTextFormat=nextFormat;
			this.nameNext.multiline = true;
			this.nameNext.wordWrap = true;
			this.nameNext.width = 500;
			this.nameNext.height = 500;
			this.txt1.text = "Let me go";
			this.txt2.text = "Avril Lavigne"
			this.nameNext.htmlText = '<font color="#0000ff">'+ txt1.text + '</font><font color="#00ff00">' + txt2.text +'</font>';
			this.addChild(nameNext);
			
			this.rect.x =73;
			this.rect.y =120;
			this.rcolor = [0xf70909,0xf7e309];
			this.drawShapes(rcolor, toRad(-90, 90));
			
			this.addChild(maskingShape);
			this.maskingShape.x = 73;
			this.maskingShape.y = 120;
			this.drawInMask();
			this.rect.mask=maskingShape;
			
			if (isIn) comeIn();
			setInterval(changeColor, 100);
			this.addEventListener(MouseEvent.CLICK, comeOut);
			//this.rectTween.looping = true;
			

		}
		override public function SetData(xml:XML):void
		{
			
		}
		private function drawInMask():void {
			maskingShape.graphics.lineStyle();
			maskingShape.graphics.beginFill(0xFFFFFF,1);
			maskingShape.graphics.drawRect(0,0,700,500);
			maskingShape.graphics.endFill();
		}
		
		private function comeIn():void
		{
			yTween = new Tween(nameNext, "x", Bounce.easeOut, 100, 150, 1, true);
			rectTween = new Tween(rect, "x", Bounce.easeOut, -400, 73, 1, true);			
			
		}
		private function comeOut(e:Event):void
		{	
			alphaTween = new Tween(nameNext, "alpha", None.easeNone, 1, 0, 0.1, true);
			//yTween = new Tween(nameNext, "x", Bounce.easeOut, 150, -150, 1, true);
			rectTween = new Tween(rect, "x", Bounce.easeOut, 73, -600, 1, true);		
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
