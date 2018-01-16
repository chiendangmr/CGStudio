package  {
	
	import flash.display.MovieClip;
	import se.svt.caspar.template.CasparTemplate;
	import flash.text.*;
	import fl.containers.UILoader;
	import flash.net.URLRequest;
	import flash.events.*;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import flash.net.drm.VoucherAccessInfo;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Shape;
	import flash.geom.Matrix;
	import flash.display.GradientType;	
	import fl.transitions.TweenEvent;
	
	public class weather extends CasparTemplate {
		
		private var forecast:TextField = new TextField();
		private var fcFormat:TextFormat = new TextFormat();
		
		private var currentTem:TextField = new TextField();
		private var expected:TextField = new TextField();
		private var rainfall:TextField = new TextField();
		private var wtrack:TextField = new TextField();
		private var rail:TextField = new TextField();
		private var weatherFormat:TextFormat = new TextFormat();
		
		private var wImg:UILoader = new UILoader;
		
		private var xTween:Tween = null;
		private var yTween:Tween = null;
		private var maskTween1:Tween = null;
		private var maskTween2:Tween = null;
		private var lightTween1:Tween = null;
		private var lightTween2:Tween = null;
				
		private var groupElement:MovieClip = new MovieClip();
		private var group2:MovieClip = new MovieClip();
		
		private var titleFormat:TextFormat = new TextFormat();
		private var fcName:TextField = new TextField();
		private var currentTitle:TextField = new TextField();
		private var expectedTitle:TextField = new TextField();
		private var rainfallTitle:TextField = new TextField();
		private var trackTitle:TextField = new TextField();
		private var railTitle:TextField = new TextField();
		private var mainTitle:TextField = new TextField();
		private var myFont:Font = new RobotoBlack();
		
		private var maskX:Shape = new Shape();
		private var maskY:Shape = new Shape();
		private var rectWidth:Number=900;
		private var rectHeight:Number=80;
		private var rcolor:Array = new Array();
		private var alphas:Array = new Array();
		private var ratios:Array = new Array();
		
		private var bigPanel:MovieClip = new bodyBar();
		private var headPanel:MovieClip = new headBar();
		private var leftLight:MovieClip = new leftSpotLight();
		private var rightLight:MovieClip = new rightSpotLight();
		private var hideShape:MovieClip = new hiddenShape();
		
		public function weather() {
			// constructor code
			super();
			this.bigPanel.x = 960;
			this.bigPanel.y = 544.5;
			//this.addChild(bigPanel);
			this.headPanel.x = 960;
			this.headPanel.y = 147;
			this.hideShape.x = 1000;
			this.hideShape.y = 600;
			//this.addChild(headPanel);
			this.leftLight.x = 200;
			this.rightLight.y = 100;
			this.leftLight.y = -200;
			this.rightLight.x = -100;
								
			this.titleFormat.size = 50;
			this.titleFormat.font = myFont.fontName;
			//Title Region
			this.mainTitle.defaultTextFormat = titleFormat;
			this.mainTitle.type = TextFieldType.DYNAMIC;
			this.mainTitle.text = "MADAGUI WEATHER, TRACK & RAIL";
			this.mainTitle.x = 593;
			this.mainTitle.y = 129;
			this.mainTitle.autoSize = "left";
			this.mainTitle.textColor = 0xB2ECF9;
			//this.addChild(mainTitle);
			
			this.titleFormat.size = 55;
			this.fcName.defaultTextFormat = titleFormat;
			this.fcName.type = TextFieldType.DYNAMIC;
			this.fcName.text = "FORECAST";
			this.fcName.x = 820;
			this.fcName.y = 244;
			this.fcName.autoSize = "left";
			this.fcName.textColor = 0xE89D22;
			//this.addChild(fcName);
			
			this.currentTitle.defaultTextFormat = titleFormat;
			this.currentTitle.type = TextFieldType.DYNAMIC;
			this.currentTitle.text = "CURRENT:";
			this.currentTitle.x = 840;
			this.currentTitle.y = 475;
			this.currentTitle.autoSize = "right";
			this.currentTitle.textColor = 0xE89D22;
			//this.addChild(currentTitle);
			
			this.expectedTitle.defaultTextFormat = titleFormat;
			this.expectedTitle.type = TextFieldType.DYNAMIC;
			this.expectedTitle.text = "EXPECTED:";
			this.expectedTitle.x = 840;
			this.expectedTitle.y = 545;
			this.expectedTitle.autoSize = "right";
			this.expectedTitle.textColor = 0xE89D22;
			//this.addChild(expectedTitle);
			
			this.rainfallTitle.defaultTextFormat = titleFormat;
			this.rainfallTitle.type = TextFieldType.DYNAMIC;
			this.rainfallTitle.text = "RAINFALL:";
			this.rainfallTitle.x = 840;
			this.rainfallTitle.y = 615;
			this.rainfallTitle.autoSize = "right";
			this.rainfallTitle.textColor = 0xE89D22;
			//this.addChild(rainfallTitle);
			
			this.trackTitle.defaultTextFormat = titleFormat;
			this.trackTitle.type = TextFieldType.DYNAMIC;
			this.trackTitle.text = "TRACK:";
			this.trackTitle.x = 840;
			this.trackTitle.y = 779;
			this.trackTitle.autoSize = "right";
			this.trackTitle.textColor = 0xE89D22;
			//this.addChild(trackTitle);
			
			this.railTitle.defaultTextFormat = titleFormat;
			this.railTitle.type = TextFieldType.DYNAMIC;
			this.railTitle.text = "RAIL:";
			this.railTitle.x = 840;
			this.railTitle.y = 843;
			this.railTitle.autoSize = "right";
			this.railTitle.textColor = 0xE89D22;
			//this.addChild(railTitle);
			//Forecast Region
			this.fcFormat.align = TextFormatAlign.CENTER;
			this.fcFormat.size = 40;
			this.fcFormat.color = 0xffffff;
			//this.fcFormat.bold = true;
			
			this.forecast.defaultTextFormat = this.fcFormat;
			this.forecast.width = 1000;
			this.forecast.height = 100;
			this.forecast.x = 400;
			this.forecast.y = 340;
			this.forecast.multiline = true;
			this.forecast.wordWrap = true;
			this.forecast.type = TextFieldType.DYNAMIC;
			this.forecast.text = "The weather today is perfect for a football match. Good luck for the HDVN team!";
			//this.addChild(forecast);
			
			//Weather, track & rail
			this.weatherFormat.align = TextFormatAlign.LEFT;
			this.weatherFormat.size = 55;
			this.weatherFormat.color = 0xffffff;
			this.weatherFormat.bold = true;
			
			this.currentTem.defaultTextFormat = weatherFormat;
			this.currentTem.width = 100;
			this.currentTem.height = 60;
			this.currentTem.x = 940;
			this.currentTem.y = 475;
			this.currentTem.type = TextFieldType.DYNAMIC;
			this.currentTem.text = "21°";
			//this.addChild(currentTem);
			
			this.expected.defaultTextFormat = weatherFormat;
			this.expected.width = 100;
			this.expected.height = 60;
			this.expected.x = 940;
			this.expected.y = 545;
			this.expected.type = TextFieldType.DYNAMIC;
			this.expected.text = "24°";
			//this.addChild(expected);
			
			this.rainfall.defaultTextFormat = weatherFormat;
			this.rainfall.width = 480;
			this.rainfall.height = 130;
			this.rainfall.x = 940;
			this.rainfall.y = 615;
			this.rainfall.type = TextFieldType.DYNAMIC;
			this.rainfall.text = "0mm (last 24 hrs) 10mm (last 7 days)";
			this.rainfall.multiline = true;
			this.rainfall.wordWrap = true;
			//this.addChild(rainfall);
			
			this.wtrack.defaultTextFormat = weatherFormat;
			this.wtrack.width = 200;
			this.wtrack.height = 60;
			this.wtrack.x = 940;
			this.wtrack.y = 779;
			this.wtrack.type = TextFieldType.DYNAMIC;
			this.wtrack.text = "GOOD3";
			//this.addChild(wtrack);
			
			this.rail.defaultTextFormat = weatherFormat;
			this.rail.width = 200;
			this.rail.height = 60;
			this.rail.x = 940;
			this.rail.y = 843;
			this.rail.type = TextFieldType.DYNAMIC;
			this.rail.text = "Inside";
			//this.addChild(rail);
			
			//UILoader
			this.wImg.x = 0;
			this.wImg.y = 0;
			this.wImg.width = 1920;
			this.wImg.height = 1080;
			this.wImg.addEventListener(MouseEvent.MOUSE_DOWN,handleDrag);
			this.wImg.addEventListener(MouseEvent.MOUSE_UP,handleDrop);
			this.wImg.load(request);
			//this.addChild(wImg);
			
			//this.addChild(groupElement);
			this.groupElement.addChild(bigPanel);
			this.groupElement.addChild(hideShape);
			this.groupElement.addChild(fcName);
			this.groupElement.addChild(currentTitle);
			this.groupElement.addChild(expectedTitle);
			this.groupElement.addChild(rainfallTitle);
			this.groupElement.addChild(trackTitle);
			this.groupElement.addChild(railTitle);
			this.groupElement.addChild(forecast);
			this.groupElement.addChild(currentTem);
			this.groupElement.addChild(expected);
			this.groupElement.addChild(rainfall);
			this.groupElement.addChild(wtrack);
			this.groupElement.addChild(rail);
			this.groupElement.addChild(wImg);
			
			//this.addChild(group2);
			this.group2.addChild(headPanel);
			this.group2.addChild(mainTitle);
			//this.addEventListener(MouseEvent.CLICK, comeIn);
			//this.addEventListener(MouseEvent.MOUSE_WHEEL, disappear);
			
			//mask region
			//this.addChild(maskX);
			//this.addChild(maskY);
			this.maskX.x = this.maskY.x = 200;
			this.maskY.y = this.maskX.y = 102;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 885;
			this.rectWidth = 1520;
			this.drawShapes(maskX, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			this.drawShapes(maskY, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			this.bigPanel.cacheAsBitmap = true;
			this.group2.mask = maskX;
			this.groupElement.mask = maskY;
			comeIn();
			this.groupElement.addChild(leftLight);
			this.group2.addChild(rightLight);
			this.addChild(groupElement);
			this.addChild(group2);
			this.alpha = 1;
			this.visible = false;
			//lightTween();
		}
		
		private function lightTween(e:Event):void
		{				
			this.lightTween1 = new Tween(leftLight, "y", Regular.easeOut, 200, 930, 1.5, true);
			this.lightTween2 = new Tween(rightLight, "x", Regular.easeOut, 300, 1620, 1.5, true);
			this.xTween = new Tween(hideShape, "x", None.easeOut, 1200, 800, 20, true);
			this.xTween.looping = true;
			/*this.lightTween1.looping = true;
			this.lightTween2.looping = true;*/
			this.lightTween1.addEventListener(TweenEvent.MOTION_FINISH, lightTweenOff);
		}
				
		private function lightTweenOff(e:Event):void
		{
			this.lightTween1 = new Tween(leftLight, "alpha", None.easeOut, 1, 0, 0.5, true);
			this.lightTween2 = new Tween(rightLight, "alpha", None.easeOut, 1, 0, 0.5, true);
		}
		public override function Play():void
		{
			comeIn();			
		}
		public override function Stop():void
		{
			disappear();			
		}
		override public function SetData(xml:XML):void
		{
			for each (var element:XML in xml.children())
			{
				var property:String = element.@id;
				var data:String = element.data.@value;
				switch(property.toLowerCase())
				{
					//Forecast
					case "ForecastFont".toLowerCase():
						switch(data.toLowerCase())
						{
							case "Roboto Black".toLowerCase():
								this.fcFormat.font = new RobotoBlack().fontName;
								break;
							case "Roboto Black Italic".toLowerCase():
								this.fcFormat.font = new RobotoBlackItalic().fontName;
								break;
							case "Roboto Bold".toLowerCase():
								this.fcFormat.font = new RobotoBold().fontName;
								break;
							case "Roboto Bold Condensed".toLowerCase():
								this.fcFormat.font = new RobotoBoldCondensed().fontName;
								break;
							case "Roboto Bold Italic".toLowerCase():
								this.fcFormat.font = new RobotoBoldItalic().fontName;
								break;
							case "Roboto Condensed".toLowerCase():
								this.fcFormat.font = new RobotoCondensed().fontName;
								break;
							case "Roboto Condensed Italic".toLowerCase():
								this.fcFormat.font = new RobotoCondensedItalic().fontName;
								break;
							case "Roboto Italic".toLowerCase():
								this.fcFormat.font = new RobotoItalic().fontName;
								break;
							case "Roboto Light".toLowerCase():
								this.fcFormat.font = new RobotoLight().fontName;
								break;
							case "Roboto Light Italic".toLowerCase():
								this.fcFormat.font = new RobotoLightItalic().fontName;
								break;
							case "Roboto Medium".toLowerCase():
								this.fcFormat.font = new RobotoMedium().fontName;
								break;
							case "Roboto Medium Italic".toLowerCase():
								this.fcFormat.font = new RobotoMediumItalic().fontName;
								break;
							case "Roboto Regular".toLowerCase():
								this.fcFormat.font = new RobotoRegular().fontName;
								break;
						}
						this.forecast.defaultTextFormat = this.fcFormat;
						this.forecast.htmlText = this.forecast.htmlText;
						break;
					case "ForecastSize".toLowerCase():
						this.fcFormat.size = new Number(data);
						this.forecast.defaultTextFormat = this.fcFormat;
						this.forecast.htmlText = this.forecast.htmlText;
						break;
					case "ForecastText".toLowerCase():
						this.forecast.htmlText = data;
						break;
						
					//Weather detail
					case "WeatherFont".toLowerCase():
						switch(data.toLowerCase())
						{
							case "Roboto Black".toLowerCase():
								this.weatherFormat.font = new RobotoBlack().fontName;
								break;
							case "Roboto Black Italic".toLowerCase():
								this.weatherFormat.font = new RobotoBlackItalic().fontName;
								break;
							case "Roboto Bold".toLowerCase():
								this.weatherFormat.font = new RobotoBold().fontName;
								break;
							case "Roboto Bold Condensed".toLowerCase():
								this.weatherFormat.font = new RobotoBoldCondensed().fontName;
								break;
							case "Roboto Bold Italic".toLowerCase():
								this.weatherFormat.font = new RobotoBoldItalic().fontName;
								break;
							case "Roboto Condensed".toLowerCase():
								this.weatherFormat.font = new RobotoCondensed().fontName;
								break;
							case "Roboto Condensed Italic".toLowerCase():
								this.weatherFormat.font = new RobotoCondensedItalic().fontName;
								break;
							case "Roboto Italic".toLowerCase():
								this.weatherFormat.font = new RobotoItalic().fontName;
								break;
							case "Roboto Light".toLowerCase():
								this.weatherFormat.font = new RobotoLight().fontName;
								break;
							case "Roboto Light Italic".toLowerCase():
								this.weatherFormat.font = new RobotoLightItalic().fontName;
								break;
							case "Roboto Medium".toLowerCase():
								this.weatherFormat.font = new RobotoMedium().fontName;
								break;
							case "Roboto Medium Italic".toLowerCase():
								this.weatherFormat.font = new RobotoMediumItalic().fontName;
								break;
							case "Roboto Regular".toLowerCase():
								this.weatherFormat.font = new RobotoRegular().fontName;
								break;
						}
						this.currentTem.defaultTextFormat = this.weatherFormat;
						this.currentTem.htmlText = this.currentTem.htmlText;
						this.expected.defaultTextFormat = this.weatherFormat;
						this.expected.htmlText = this.expected.htmlText;
						this.rainfall.defaultTextFormat = this.weatherFormat;
						this.rainfall.htmlText = this.rainfall.htmlText;
						this.wtrack.defaultTextFormat = this.weatherFormat;
						this.wtrack.htmlText = this.wtrack.htmlText;
						this.rail.defaultTextFormat = this.weatherFormat;
						this.rail.htmlText = this.rail.htmlText;
						break;
					case "WeatherSize".toLowerCase():
						this.weatherFormat.size = new Number(data);
						this.currentTem.defaultTextFormat = this.weatherFormat;
						this.currentTem.htmlText = this.currentTem.htmlText;
						this.expected.defaultTextFormat = this.weatherFormat;
						this.expected.htmlText = this.expected.htmlText;
						this.rainfall.defaultTextFormat = this.weatherFormat;
						this.rainfall.htmlText = this.rainfall.htmlText;
						this.wtrack.defaultTextFormat = this.weatherFormat;
						this.wtrack.htmlText = this.wtrack.htmlText;
						this.rail.defaultTextFormat = this.weatherFormat;
						this.rail.htmlText = this.rail.htmlText;
						break;
					case "TextCurrentTem".toLowerCase():
						this.currentTem.htmlText = data;
						break;
					case "TextExpectedTem".toLowerCase():
						this.expected.htmlText = data;
						break;
					case "TextRainfall".toLowerCase():
						this.rainfall.htmlText = data;
						break;
					case "TextTrack".toLowerCase():
						this.wtrack.htmlText = data;
						break;
					case "TextRail".toLowerCase():
						this.rail.htmlText = data;
						break;
					case "UrlRequest".toLowerCase():
						this.request = new URLRequest(data);
				}
			}
		}
		private var request:URLRequest = null;//new URLRequest("D:\\OneDrive\\WORK\\HCMCity\\assets\\Big Panel\\weather\\sunny\\sunnyImg.png");
		
		public function comeIn():void
		{	
			this.visible = true;
			this.maskTween1 = new Tween(group2, "scaleX", Strong.easeOut, 0, 1, 0.5, true);
			this.yTween = new Tween(groupElement, "scaleY", Strong.easeOut, -10, 1, 0.5, true);
			this.yTween.addEventListener(TweenEvent.MOTION_FINISH,lightTween);
		}
		private function comeOut(e:Event):void
		{
			this.yTween = new Tween(groupElement, "y", None.easeOut, 0, 1000, 1, true);
		}
		public function disappear():void
		{
			this.yTween = new Tween(group2, "alpha", None.easeOut, 1, 0, 0.5, true);
			this.maskTween1 = new Tween(groupElement, "alpha", None.easeOut, 1, 0, 0.5, true);
		}
		private function handleDrag(event : Event) : void
		{
			event.currentTarget.startDrag();
		}
		private function handleDrop(event : Event) : void
		{
			  event.currentTarget.stopDrag();
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