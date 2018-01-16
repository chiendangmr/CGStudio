package  {
	
	import flash.display.MovieClip;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFieldType;
	import se.svt.caspar.template.CasparTemplate;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.display.Shape;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.utils.setInterval;
	
	
	public class chartNumber extends CasparTemplate {
		
		private var txt:TextField = new TextField();
		private var txtFormat:TextFormat = new TextFormat();
		private var yTween:Tween = null;
		private var alphaTween:Tween = null;
		private var rectTween:Tween = null;
		private var rect:Shape=new Shape();
		private var newRect:Shape=new Shape();
		private var rectWidth:Number=300;
		private var rectHeight:Number=200;
		private var rcolor:Array = new Array();
		private var i:Number = 0;
		private var myFont = new FuturaMTVBoldItalic();
		
		public function chartNumber() {
			// constructor code
			super();
			this.addChild(rect);
			this.addChild(newRect);
			this.txtFormat.size = 120;
			this.txtFormat.color = 0xffffff;
			this.txtFormat.font = myFont.fontName;
			
			this.txt.autoSize = "left";
			this.txt.x = 100;
			this.txt.y = 350;
			this.txt.type = TextFieldType.DYNAMIC;
			this.txt.defaultTextFormat = txtFormat;
			this.txt.text = "40";
			this.txt.cacheAsBitmap = true;
			this.addChild(txt);
			
			this.rect.x = this.newRect.x = 10;
			this.rect.y = this.newRect.y = 350;
			this.rect.cacheAsBitmap = this.newRect.cacheAsBitmap = true;
			this.rcolor = [0xf70909,0xf7e309];
			this.drawShapes(rect, rcolor, toRad(-90, 90));
			
			this.rect.mask = txt;
			setInterval(changeColor, 100);
			this.addEventListener(MouseEvent.CLICK, zoomOut);
		}
		private var zoomAmount:Number = 0.5;
		private function zoomOut(e:MouseEvent):void
		{
			if(e.delta > 0) {
				this.removeChild(rect);
				this.txt.scaleX += zoomAmount;
				this.txt.scaleY += zoomAmount;
				this.rcolor = [0xffffff,0xffffff];
				this.drawShapes(newRect, rcolor, toRad(-90, 90));
				this.newRect.mask = txt;
				this.txt.x = 80;
				this.txt.y = 400;
			} else {
				this.removeChild(rect);
				this.txt.scaleX -= zoomAmount;
				this.txt.scaleY -= zoomAmount;
				this.rcolor = [0xffffff,0xffffff];
				this.drawShapes(newRect, rcolor, toRad(-90, 90));
				this.newRect.mask = txt;
				this.txt.x = 80;
				this.txt.y = 400;
			}
		}
		private function drawShapes(rect:Shape, colors:Array, r:Number):void {
			
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
				this.drawShapes(rect, rcolor, toRad(-90, 90));
				
			}else if(i==1){
				i++;				
				this.rcolor = [0xf7e309,0xf70909];
				this.drawShapes(rect, rcolor, toRad(-90, 90));
			}else if(i==2){
				i++;
				this.rcolor = [0x1409f7,0x45d0f3];
				this.drawShapes(rect, rcolor, toRad(-90, 90));
			}else if(i==3){
				i++;
				this.rcolor = [0x45d0f3,0x1409f7];
				this.drawShapes(rect, rcolor, toRad(-90, 90));
			}else if(i==4){
				i++;
				this.rcolor = [0x65f345,0xdcf345];
				this.drawShapes(rect, rcolor, toRad(-90, 360));
			}else if(i==5){
				i++;
				this.rcolor = [0xf7ef18,0xf7ca18];
				this.drawShapes(rect, rcolor, toRad(-90, 360));
			}else if(i==6){
				i=0;
				this.rcolor = [0xf70909,0xf7e309];
				this.drawShapes(rect, rcolor, toRad(-90, -90));
			}
		 }
	}
	
}
