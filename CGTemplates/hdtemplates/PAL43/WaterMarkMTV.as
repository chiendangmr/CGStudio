package
{
	import se.svt.caspar.template.CasparTemplate;
	import flash.text.TextFormat;
	import flash.text.TextField;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.utils.setInterval;
	
	public class WaterMarkMTV extends CasparTemplate
	{
		private const frameRate:int = 50;
		
		private var _DurationMax:Number = 0; // frame, thoi gian chay toi da
		
		private var _FadeUp:int = 0; // millisecond, Thoi gian fade up
		private var _FadeDown:int = 0; // millisecond, Thoi gian fade down
		
		private var watermark:TextField = null;
		private var wmFormat:TextFormat= null;
		private var Watermark:TextField = null;
		private var WmFormat:TextFormat = null;
		private var isIn:Boolean = true;
		private var isOut:Boolean = false;
		private var isBackIn:Boolean = false;
		private var isBackOut:Boolean = false;
		private var AlphawTween:Tween = null;
		private var AlphaWTween:Tween = null;
		private var YwTween:Tween = null;
		private var YWTween:Tween = null;
		private var days:Array = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"];
		private var mins:Array = ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09"];
		
		public function WaterMarkMTV(){
			super();		
			this.wmFormat = new TextFormat();
			this.wmFormat.size = 19;
			this.wmFormat.leading = 17;
			this.wmFormat.color = 0xffff00;
			this.wmFormat.font = new FuturaMTVBoldItalic().fontName;
			
			this.watermark = new TextField();
			this.watermark.x = 550;
			this.watermark.defaultTextFormat = wmFormat;
			this.watermark.multiline = true;
			this.watermark.wordWrap = true;						
			this.watermark.width = 150;
			this.watermark.height = 25;
			this.addChild(this.watermark);
					
			this.WmFormat = new TextFormat();
			this.WmFormat.size = 19;
			this.WmFormat.leading = 17;
			this.WmFormat.color = 0xffffff;
			this.WmFormat.font = new FuturaMTVBoldItalic().fontName;

			this.Watermark = new TextField();
			this.Watermark.x = 550;
			this.Watermark.defaultTextFormat = WmFormat;
			this.Watermark.multiline = true;
			this.Watermark.wordWrap = true;
			this.Watermark.text = "watermark";
			this.Watermark.width = 150;
			this.Watermark.height = 25;
			this.addChild(this.Watermark);
			setInterval(setTime, 500);
			if (isIn) comeIn();
			/*isOut = true;
			if (isOut) stage.addEventListener(MouseEvent.CLICK, comeOut);
			isBackIn = true;
			if (isBackIn) stage.addEventListener(MouseEvent.MOUSE_DOWN, comeBackIn);
			isBackOut = true;
			if (isBackOut) stage.addEventListener(KeyboardEvent.KEY_DOWN, comeBackOut);*/
			
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
						
					case "Text".toLowerCase():
						var lstStr:Array = data.split("\n");
						if(lstStr.length > 0)
						{
							Watermark.htmlText = lstStr[0];
						}
						if(lstStr.length > 1)
						{
							watermark.htmlText = lstStr[1];
						}
						break;
				}
			}
		}
		private function comeIn():void
		{
			AlphawTween = new Tween(watermark, "alpha", None.easeNone, 0, 1, 1, true);
			AlphaWTween = new Tween(Watermark, "alpha", None.easeNone, 0, 1, 1, true);
			YwTween = new Tween(watermark, "y", Bounce.easeOut, 30, 70, 1, true);
			YWTween = new Tween(Watermark, "y", Bounce.easeOut, 10, 50, 1, true);
		}
		private function comeOut():void
		{
			AlphawTween = new Tween(watermark, "alpha", None.easeNone, 1, 0, 1, true);
			AlphaWTween = new Tween(Watermark, "alpha", None.easeNone, 1, 0, 1, true);
			YwTween = new Tween(watermark, "y", Bounce.easeOut, 70, 100, 1, true);
			YWTween = new Tween(Watermark, "y", Bounce.easeOut, 50, 80, 1, true);
		}
		private function comeBackIn():void
		{
			AlphawTween = new Tween(watermark, "alpha", None.easeNone, 0, 1, 1, true);
			AlphaWTween = new Tween(Watermark, "alpha", None.easeNone, 0, 1, 1, true);
			YwTween = new Tween(watermark, "y", Bounce.easeOut, 100, 70, 1, true);
			YWTween = new Tween(Watermark, "y", Bounce.easeOut, 80, 50, 1, true);
		}
		private function comeBackOut():void
		{
			AlphawTween = new Tween(watermark, "alpha", None.easeNone, 1, 0, 1, true);
			AlphaWTween = new Tween(Watermark, "alpha", None.easeNone, 1, 0, 1, true);
			YwTween = new Tween(watermark, "y", Bounce.easeOut, 70, 30, 1, true);
			YWTween = new Tween(Watermark, "y", Bounce.easeOut, 50, 10, 1, true);
		}
		private function setTime():void{
			var hm:Date = new Date();
			if (hm.minutes<10){
				watermark.text = days[hm.day]+" "+ hm.hours + ":" + mins[hm.minutes]; 
			} else watermark.text = days[hm.day]+" "+ hm.hours + ":" + hm.minutes; 
			hm = null;
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
				cutDown();
			}
		}
		
		private function StopTemplate()
		{
			this.removeEventListener(Event.ENTER_FRAME, onEnterFrame);
			
			if(this._StateOut == 1 && this._FadeDown > 0)
				comeOut();
			else
				comeBackOut();
			
			this._IsRun = false;
		}
	}
}