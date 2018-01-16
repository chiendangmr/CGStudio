package  {
	
	import flash.display.MovieClip;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import flash.events.*;
	import se.svt.caspar.template.CasparTemplate;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.display.Shape;

	public class StationBug extends CasparTemplate {
		private const frameRate:int = 50;
		
		private var _DurationMax:Number = 0; // frame, thoi gian chay toi da
		
		private var _FadeUp:int = 0; // millisecond, Thoi gian fade up
		private var _FadeDown:int = 0; // millisecond, Thoi gian fade down
		private var myLogo:MovieClip = null;
		private var isIn:Boolean = true;
		private var isOut:Boolean = false;
		private var alphaTween:Tween = null;
		private var yTween:Tween = null;
		private var mrect:Shape=new Shape();
		private var rectWidth:Number=45;
		private var rectHeight:Number=35;
		private var rcolor:Array = new Array();
		
		public function StationBug() {
			// constructor code
			super();
			this.addChild(mrect);
			this.myLogo = new logo();
			this.myLogo.cacheAsBitmap = true;
			this.addChild(myLogo);
			
			this.mrect.cacheAsBitmap = true;
			this.mrect.x =55;
			this.mrect.y =62;
			this.rcolor = [0xffffff, 0xFFFFFF];
			this.drawShapes(rcolor, toRad(-90, 90));
			this.mrect.mask = myLogo;
			this.visible = false;
			//if (!_State) comeIn();
			//this.addEventListener(KeyboardEvent.KEY_DOWN, comeOut);*/
							
		}
		override public function SetData(xml:XML):void
		{
			for each (var element:XML in xml.children())
			{
				var property:String = element.@id;
				var data:String = element.data.@value;
				switch(property.toLowerCase())
				{
					case "DurationMax".toLowerCase():
						this._DurationMax = new Number(data) * this.frameRate / 1000;
						break;
					case "FadeUp".toLowerCase():
						this._FadeUp = new int(data);
						break;
					case "FadeDown".toLowerCase():
						this._FadeDown = new int(data);
						break;
				}
			}
		}
		public override function Play():void{
			
			comeIn();
			
		}
		public override function Stop():void{
			comeOut();
		}
		private function comeIn():void
		{
			this.visible = true;
			//alphaTween = new Tween(myLogo, "alpha", None.easeNone, 0, 1, 0.5, true);
			yTween = new Tween(myLogo, "y", Bounce.easeOut, -50, 5, 1, true);
		}
		private function comeOut():void
		{
			//alphaTween = new Tween(myLogo, "alpha", None.easeNone, 1, 0, 0.5, true);
			yTween = new Tween(myLogo, "y", Bounce.easeIn, 5, 100, 1, true);			
		}
		private function comeBackIn():void
		{
			//alphaTween = new Tween(myLogo, "alpha", None.easeNone, 0, 1, 1, true);
			yTween = new Tween(myLogo, "y", Bounce.easeOut, 10, 5, 1, true);
		}
		private function comeBackOut():void
		{
			//alphaTween = new Tween(myLogo, "alpha", None.easeNone, 1, 0, 1, true);
			yTween = new Tween(myLogo, "y", Bounce.easeOut, 5, 0, 1, true);
		}
		private function drawShapes(colors:Array, r:Number):void {
			var mat:Matrix;
			var alphas:Array;
			var ratios:Array;
			mat=new Matrix();
			alphas=[1,1];
			ratios=[0,255];
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
		
		public function fadeUp():void
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
			
			if(this._State == 1 && this._FadeUp > 0)
				comeIn();
			else
				comeBackIn();
				
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
				//comeOut();
			}
		}
		
		private function StopTemplate()
		{
			this.removeEventListener(Event.ENTER_FRAME, onEnterFrame);
			
			if(this._StateOut == 1 && this._FadeDown > 0)
			{
				
					//comeOut();
			}
			else
				comeBackOut();
			
			this._IsRun = false;
		}
	}
	
}
