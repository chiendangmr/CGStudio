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
	import flash.filters.*;
	import flash.external.ExternalInterface;
	import flash.text.Font;
	
	public class weather extends CasparTemplate {
		
		private var forecast:TextField = new TextField();
		private var fcFormat:TextFormat = new TextFormat();
		
		private var currentTem:TextField = new TextField();
		private var expected:TextField = new TextField();
		private var rainfall:TextField = new TextField();
		private var wtrack:TextField = new TextField();
		private var rail:TextField = new TextField();
		private var weatherFormat:TextFormat = new TextFormat();
		
		public var icon1:UILoader = new UILoader;
		
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
		private var txt1:TextField = new TextField();
		private var txt2:TextField = new TextField();
		private var txt3:TextField = new TextField();
		private var txt4:TextField = new TextField();
		private var dFormat:TextFormat = new TextFormat();
		private var myFont:Font = new RobotoBold();
		
		private var maskX:Shape = new Shape();
		private var maskY:Shape = new Shape();
		private var rectWidth:Number=900;
		private var rectHeight:Number=80;
		private var rcolor:Array = new Array();
		private var alphas:Array = new Array();
		private var ratios:Array = new Array();
		
		public var bigPanel:MovieClip = new bodyBar();
		public var headPanel:MovieClip = new headBar();
		private var leftLight:MovieClip = new leftSpotLight();
		private var rightLight:MovieClip = new rightSpotLight();
		private var hideShape:MovieClip = new hideShapeB();
		
		private var myFilter:DropShadowFilter = new DropShadowFilter();
		
		public function weather() {
			// constructor code
			super();
			this.myFilter.quality = -50;
			this.myFilter.strength = 1;
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
			this.mainTitle.type = TextFieldType.INPUT;
			this.mainTitle.text = "MADAGUI WEATHER, TRACK & RAIL";
			this.mainTitle.x = 593;
			this.mainTitle.y = 129;
			this.mainTitle.autoSize = "left";
			this.mainTitle.textColor = 0xB2ECF9;
			this.mainTitle.filters = [myFilter];
			//this.addChild(mainTitle);
			
			this.titleFormat.size = 55;
			this.fcName.defaultTextFormat = titleFormat;
			this.fcName.type = TextFieldType.INPUT;
			this.fcName.text = "FORECAST";
			this.fcName.x = 820;
			this.fcName.y = 244;
			this.fcName.autoSize = "left";
			this.fcName.textColor = 0xE89D22;
			this.fcName.filters = [myFilter];
			//this.addChild(fcName);
			
			this.currentTitle.defaultTextFormat = titleFormat;
			this.currentTitle.type = TextFieldType.INPUT;
			this.currentTitle.text = "CURRENT:";
			this.currentTitle.x = 840;
			this.currentTitle.y = 475;
			this.currentTitle.autoSize = "right";
			this.currentTitle.textColor = 0xE89D22;
			this.currentTitle.filters = [myFilter];
			//this.addChild(currentTitle);
			
			this.expectedTitle.defaultTextFormat = titleFormat;
			this.expectedTitle.type = TextFieldType.INPUT;
			this.expectedTitle.text = "EXPECTED:";
			this.expectedTitle.x = 840;
			this.expectedTitle.y = 545;
			this.expectedTitle.autoSize = "right";
			this.expectedTitle.textColor = 0xE89D22;
			this.expectedTitle.filters = [myFilter];
			//this.addChild(expectedTitle);
			
			this.rainfallTitle.defaultTextFormat = titleFormat;
			this.rainfallTitle.type = TextFieldType.INPUT;
			this.rainfallTitle.text = "RAINFALL:";
			this.rainfallTitle.x = 840;
			this.rainfallTitle.y = 615;
			this.rainfallTitle.autoSize = "right";
			this.rainfallTitle.textColor = 0xE89D22;
			this.rainfallTitle.filters = [myFilter];
			//this.addChild(rainfallTitle);
			
			this.trackTitle.defaultTextFormat = titleFormat;
			this.trackTitle.type = TextFieldType.INPUT;
			this.trackTitle.text = "TRACK:";
			this.trackTitle.x = 840;
			this.trackTitle.y = 779;
			this.trackTitle.autoSize = "right";
			this.trackTitle.textColor = 0xE89D22;
			this.trackTitle.filters = [myFilter];
			//this.addChild(trackTitle);
			
			this.railTitle.defaultTextFormat = titleFormat;
			this.railTitle.type = TextFieldType.INPUT;
			this.railTitle.text = "RAIL:";
			this.railTitle.x = 840;
			this.railTitle.y = 843;
			this.railTitle.autoSize = "right";
			this.railTitle.textColor = 0xE89D22;
			this.railTitle.filters = [myFilter];
			//this.addChild(railTitle);
			//Forecast Region
			this.fcFormat.align = TextFormatAlign.CENTER;
			this.fcFormat.size = 45;
			this.fcFormat.color = 0xffffff;
			this.fcFormat.font = new RobotoBold().fontName;
			
			this.dFormat.size = 30;
			this.dFormat.color = 0xffffff;
			this.dFormat.font = new RobotoBold().fontName;
			
			this.forecast.defaultTextFormat = this.fcFormat;
			this.forecast.autoSize = "left";
			this.forecast.x = 400;
			this.forecast.y = 340;
			this.forecast.type = TextFieldType.INPUT;
			this.forecast.text = "The weather today is perfect for a football match.";
			this.forecast.filters = [myFilter];
			//this.addChild(forecast);
			setTxt(txt2, fcFormat, myFilter, "Good luck for the HDVN team!", this.forecast.x, this.forecast.y + 50); 
			//Weather, track & rail
			this.weatherFormat.size = 55;
			this.weatherFormat.color = 0xffffff;
			this.weatherFormat.bold = true;
			
			this.currentTem.defaultTextFormat = weatherFormat;
			this.currentTem.autoSize = "left";
			this.currentTem.x = 940;
			this.currentTem.y = 475;
			this.currentTem.type = TextFieldType.INPUT;
			this.currentTem.text = "21";
			this.currentTem.filters = [myFilter];
			//this.addChild(currentTem);
			setTxt(txt3, dFormat, myFilter, "0", this.currentTem.x + 60, this.currentTem.y );
			
			this.expected.defaultTextFormat = weatherFormat;
			this.expected.autoSize = "left";
			this.expected.x = 940;
			this.expected.y = 545;
			this.expected.type = TextFieldType.INPUT;
			this.expected.text = "24";
			this.expected.filters = [myFilter];
			//this.addChild(expected);
			setTxt(txt4, dFormat, myFilter, "0", this.expected.x + 60, this.expected.y );
			
			this.rainfall.defaultTextFormat = weatherFormat;
			this.rainfall.autoSize = "left";
			this.rainfall.x = 940;
			this.rainfall.y = 615;
			this.rainfall.type = TextFieldType.INPUT;
			this.rainfall.text = "0mm (last 24 hrs)";
			this.rainfall.filters = [myFilter];
			//this.addChild(rainfall);
			setTxt(txt1, weatherFormat, myFilter, "10mm (last 7 days)", 940, this.rainfall.y + 60);
			this.wtrack.defaultTextFormat = weatherFormat;
			this.wtrack.autoSize = "left";
			this.wtrack.x = 940;
			this.wtrack.y = 779;
			this.wtrack.type = TextFieldType.INPUT;
			this.wtrack.text = "GOOD3";
			this.wtrack.filters = [myFilter];
			//this.addChild(wtrack);
			
			this.rail.defaultTextFormat = weatherFormat;
			this.rail.autoSize = "left";
			this.rail.x = 940;
			this.rail.y = 843;
			this.rail.type = TextFieldType.INPUT;
			this.rail.text = "Inside";
			this.rail.filters = [myFilter];
			
			this.icon1.addEventListener(MouseEvent.MOUSE_DOWN,handleDrag);
			this.icon1.addEventListener(MouseEvent.MOUSE_UP,handleDrop);
			this.icon1.load(request);
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
			this.groupElement.addChild(txt1);
			this.groupElement.addChild(txt2);
			this.groupElement.addChild(txt3);
			this.groupElement.addChild(txt4);
			this.groupElement.addChild(wtrack);
			this.groupElement.addChild(rail);
			this.groupElement.addChild(icon1);
			
			//this.addChild(group2);
			this.group2.addChild(headPanel);
			this.group2.addChild(mainTitle);
						
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
			
			this.groupElement.addChild(leftLight);
			this.group2.addChild(rightLight);
			this.addChild(groupElement);
			this.addChild(group2);
			this.alpha = 1;
			this.visible = false;
			//lightTween();
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
			xmlStr +=Add(xmlStr, "fcName", fcName);
			xmlStr +=Add(xmlStr, "PlaceName", mainTitle);
			xmlStr +=Add(xmlStr, "currentTitle", currentTitle);
			xmlStr +=Add(xmlStr, "expectedTitle", expectedTitle);
			xmlStr +=Add(xmlStr, "rainfallTitle", rainfallTitle);
			xmlStr +=Add(xmlStr, "trackTitle", trackTitle);
			xmlStr +=Add(xmlStr, "railTitle", railTitle);
			xmlStr +=Add(xmlStr, "forecast", forecast);
			xmlStr +=Add(xmlStr, "currentTem", currentTem);
			xmlStr +=Add(xmlStr, "expected", expected);
			xmlStr +=Add(xmlStr, "rainfall", rainfall);
			xmlStr +=Add(xmlStr, "wtrack", wtrack);			
			xmlStr +=Add(xmlStr, "rail", rail);
			xmlStr +=Add(xmlStr, "txt1", txt1);	
			xmlStr +=Add(xmlStr, "txt2", txt2);	
			xmlStr +=Add(xmlStr, "txt3", txt3);	
			xmlStr +=Add(xmlStr, "txt4", txt4);	
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
					case "PlaceName".toLowerCase():
						this.mainTitle.text = data.toUpperCase();
						break;
					case "icon1".toLowerCase():
						request = new URLRequest(data);
						this.icon1.load(request);
						break;
					case "fcName".toLowerCase():
						this.fcName.text = data.toUpperCase();
						break;					
					case "currentTitle".toLowerCase():
						this.currentTitle.text = data.toUpperCase();
						break;
					case "expectedTitle".toLowerCase():
						this.expectedTitle.text = data.toUpperCase();
						break;
					case "rainfallTitle".toLowerCase():
						this.expectedTitle.text = data.toUpperCase();
						break;
					case "trackTitle".toLowerCase():
						this.trackTitle.text = data.toUpperCase();
						break;
					case "railTitle".toLowerCase():
						this.railTitle.text = data.toUpperCase();
						break;
					case "txt1".toLowerCase():
						this.txt1.text = data;
						break;
					case "txt2".toLowerCase():
						this.txt2.text = data;
						break;
					case "txt3".toLowerCase():
						this.txt3.text = data;
						break;
					case "txt4".toLowerCase():
						this.txt4.text = data;
						break;
					case "forecast".toLowerCase():
						this.forecast.text = data;
						break;
					case "currentTem".toLowerCase():
						this.currentTem.text = data.toUpperCase();
						break;
					case "expected".toLowerCase():
						this.expected.text = data.toUpperCase();
						break;
					case "rainfall".toLowerCase():
						this.rainfall.text = data;
						break;
					case "wtrack".toLowerCase():
						this.wtrack.text = data.toUpperCase();
						break;
					case "rail".toLowerCase():
						this.rail.text = data;
						break;
				}
			}
		}
		
		private function lightTween(e:Event):void
		{				
			this.lightTween1 = new Tween(leftLight, "y", Regular.easeOut, 200, 930, 1.5, true);
			this.lightTween2 = new Tween(rightLight, "x", Regular.easeOut, 300, 1620, 1.5, true);
			this.xTween = new Tween(hideShape, "x", None.easeOut, 1790, 240, 30, true);
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
		
		private var request:URLRequest = null;
		
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