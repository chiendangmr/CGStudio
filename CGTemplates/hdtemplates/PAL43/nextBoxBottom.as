package
{
	import se.svt.caspar.template.CasparTemplate;
	import flash.display.MovieClip;
	import flash.text.*;
	import flash.events.Event;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.display.Shape;
	import flash.display.Shader;
	import flash.events.MouseEvent;
	
	public class nextBoxBottom extends CasparTemplate
	{
		private const frameRate:int = 50;
		
		private var _DurationMax:Number = 0; // frame, thoi gian chay toi da
		
		private var _FadeUp:int = 0; // millisecond, Thoi gian fade up
		private var _FadeDown:int = 0; // millisecond, Thoi gian fade down
						
		private var txtLine1:TextField = new TextField();
		private var txtLine2:TextField = new TextField();
		private var line1Format:TextFormat = new TextFormat();
		private var line2Format:TextFormat = new TextFormat();
		private var myFont = new FuturaMTVBoldItalic();
		
		private var x1Tween:Tween = null;
		private var x2Tween:Tween = null;
		private var rectTween:Tween = null;
		private var rectTween2:Tween = null;
		private var mrect:Shape = new Shape();
		private var rrect:Shape = new Shape();
		private var maskRect:Shape = new Shape();
		private var maskRect2:Shape = new Shape();
		private var textMask:Shape = new Shape();
		private var textMask2:Shape = new Shape();
		private var rectWidth:Number=900;
		private var rectHeight:Number=80;
		private var rcolor:Array = new Array();
		private var alphas:Array = new Array();
		private var ratios:Array = new Array();
		
		public function nextBoxBottom()
		{
			super();
			this.addChild(mrect);
			this.addChild(rrect);
			this.addChild(maskRect);
			this.addChild(maskRect2);
			this.addChild(textMask);
			this.addChild(textMask2);
			this.line1Format.color = 0x00ff00;
			this.line1Format.size = 20;
			this.line1Format.font = myFont.fontName;
			
			this.txtLine1.defaultTextFormat = line1Format;
			//this.txtLine1.x = 80;
			this.txtLine1.y = 460;
			this.txtLine1.type = TextFieldType.DYNAMIC;
			this.txtLine1.text = "Next video";
			this.txtLine1.autoSize = "left";
			this.addChild(txtLine1);
			
			this.line2Format.color = 0xff0000;
			this.line2Format.size = 20;
			this.line2Format.font = myFont.fontName;
			
			this.txtLine2.defaultTextFormat = line2Format;
			//this.txtLine2.x = 80;
			this.txtLine2.y = 490;
			this.txtLine2.type = TextFieldType.DYNAMIC;
			this.txtLine2.autoSize = "left";
			this.txtLine2.text = "apologize - Timbaland ft OneRepublic";
			this.addChild(txtLine2);
			
			this.mrect.cacheAsBitmap = true;
			this.mrect.x = this.rrect.x = this.maskRect.x = this.maskRect2.x = 40;
			this.mrect.y = this.rrect.y = this.maskRect.y = this.maskRect2.y = 450;
			this.textMask.x = this.textMask2.x = 60;
			this.textMask.y = this.textMask2.y = 450;
			
			this.alphas=[1,1];
			this.ratios=[0,255];
			this.rcolor = [0xFFFF00, 0xFFFF00];			
			this.drawShapes(mrect, alphas, ratios, rcolor, toRad(-90, 90), 500, 80);
			
			this.alphas=[0.5, 1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 1];
			this.ratios=[0,15,45, 60, 75, 90, 110, 120, 140, 190, 200, 220, 240,255];
			this.rcolor = [ 0x00FF00, 0xFFFFFF, 0xFFCCFF, 0xFF0000, 0xFFCCFF, 0xFFFFFF, 0xCCFFFF, 0x0000FF, 0xCCFFFF, 0xFFFFFF,0xFFFFCC, 0xFF0000, 0xFFFFCC, 0xFFFFFF];
			this.drawShapes(rrect, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 80;
			this.rectWidth = 500;
			this.drawShapes(maskRect, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			this.drawShapes(maskRect2, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			this.drawShapes(textMask, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			this.drawShapes(textMask2, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.txtLine1.cacheAsBitmap = true;
			this.txtLine2.cacheAsBitmap = true;
			//this.textMask.cacheAsBitmap = true;
			this.rrect.mask =  maskRect;
			this.mrect.mask = maskRect2;
			this.txtLine1.mask = textMask;
			this.txtLine2.mask = textMask2;
			
			if (!_IsRun) comeIn();
			this.addEventListener(MouseEvent.CLICK, comeOut);
			
		}
		
		
		override public function SetData(xml:XML):void
		{
			
		}
		
		public function comeIn():void
		{
			x1Tween = new Tween(txtLine1, "x", Bounce.easeOut, 0, 60, 1, true);
			x2Tween = new Tween(txtLine2, "x", Bounce.easeOut, 0, 60, 1, true);
			rectTween = new Tween(rrect, "x", Bounce.easeOut, -1000, 1150, 5, true);
			rectTween2 = new Tween(mrect, "x", Bounce.easeOut, -500, 40, 1, true);
			//this.rectTween2.looping =true;
			
		}
		public function comeOut(e:Event):void
		{
			//alphaTween = new Tween(txtLogo, "alpha", None.easeNone, 1, 0, 1, true);
			x1Tween = new Tween(txtLine1, "x", Bounce.easeOut, 60, -500, 1, true);
			x2Tween = new Tween(txtLine2, "x", Bounce.easeOut, 60, -500, 1, true);
			rectTween = new Tween(rrect, "x", Bounce.easeOut, 500, -1450, 2, true);
			rectTween2 = new Tween(mrect, "x", Bounce.easeOut, 40, -740, 2, true);
			/*this.x1Tween.looping = true;
			this.x2Tween.looping = true;*/
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
		private var _IsRun:Boolean = false;
		private var _State:int = 0; // 0: Đang dừng, 1: Fade Up, 2: Cut Up
		private var _StateOut:int = 1; // 1: Fade Down, 2: Cut Down
		
		/*public function fadeUp():void
		{
			this._State = 1;
			if(!this._IsRun)
				StartTemplate();
		}
		
		public function cutUp():void
		{
			this._State = 2;
			if(!this._IsRun)
				StartTemplate();
		}
		
		public function fadeDown():void
		{
			this._StateOut = 1;
			if(this._IsRun)
				this.StopTemplate();
		}
		
		public function cutDown():void
		{
			this._StateOut = 2;
			if(this._IsRun)
				this.StopTemplate();
		}
		
		private function StartTemplate():void
		{
			this._IsRun = true;
			comeIn();				
			if(this._DurationMax > 0)
			{
				this.curFrame = 0;
				this.addEventListener(Event.ENTER_FRAME, onEnterFrame);
			}
		}
		
		private var curFrame:int = 0;
		private function onEnterFrame(e:Event)
		{
			this.curFrame++;
			if(this.curFrame >= this._DurationMax)
			{
				cutDown();
			}
		}
		
		public var haveStop:Boolean = false;
		private function StopTemplate()
		{
			this.removeEventListener(Event.ENTER_FRAME, onEnterFrame);
			
			if(this._StateOut == 1 && this._FadeDown > 0)
			{
				if(!haveStop)
					comeOut();
			}
			else
				comeOut();
			
			this._IsRun = false;
		}*/
	}
}
