package  {
	
	import flash.display.MovieClip;
	import se.svt.caspar.template.CasparTemplate;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFieldType;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import flash.events.*;
	import flash.display.Shape;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import fl.transitions.TweenEvent;
	import fl.containers.UILoader;
	import flash.text.Font;
	import flash.filters.*;
	import flash.external.ExternalInterface;
	import flash.net.URLRequest;
	
	public class ffRaceCards extends CasparTemplate {
						
		public var fMainTitle:TextField = new TextField();
				
		//F1 detail		
		public var f1Number:TextField = new TextField();
		public var f1Name:TextField = new TextField();
		public var icon1:UILoader = null;		
		
		//F2 detail
		public var f2Number:TextField = new TextField();
		public var f2Name:TextField = new TextField();
		public var icon2:UILoader = null;
		
		//F3 detail
		public var f3Number:TextField = new TextField();
		public var f3Name:TextField = new TextField();
		public var icon3:UILoader = null;
		
		//F4 detail
		public var f4Number:TextField = new TextField();
		public var f4Name:TextField = new TextField();
		public var icon4:UILoader = null;
		
		private var request:URLRequest = null;
		private var xTween:Tween = null;
		private var yTween:Tween = null;
		private var maskTween1:Tween = null;
		private var maskTween2:Tween = null;
		private var lightTween1:Tween = null;
		private var lightTween2:Tween = null;
		
		private var groupElement:MovieClip = new MovieClip();
		private var group2:MovieClip = new MovieClip();
		
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
		public var rect:MovieClip = new recShape();
		
		private var myFilter:DropShadowFilter = new DropShadowFilter();
		public var txt1:TextField = new TextField();
		public var txt2:TextField = new TextField();
		public var txt3:TextField = new TextField();
		public var txt4:TextField = new TextField();
		public var txt5:TextField = new TextField();
		public var txt6:TextField = new TextField();
		public var txt7:TextField = new TextField();
		public var txt8:TextField = new TextField();
		public var txt9:TextField = new TextField();
		public var txt10:TextField = new TextField();
		public var txt11:TextField = new TextField();
		public var txt12:TextField = new TextField();
		public var txt13:TextField = new TextField();
		public var txt14:TextField = new TextField();
		public var txt15:TextField = new TextField();
		public var txt16:TextField = new TextField();
		public var txt17:TextField = new TextField();
		public var txt18:TextField = new TextField();
		public var txt19:TextField = new TextField();
		public var txt20:TextField = new TextField();
		public var txt21:TextField = new TextField();
		public var txt22:TextField = new TextField();
		public var txt23:TextField = new TextField();
		public var txt24:TextField = new TextField();
		public var txt25:TextField = new TextField();
		public var txt26:TextField = new TextField();
		public var txt27:TextField = new TextField();
		public var txt28:TextField = new TextField();
		public var txt29:TextField = new TextField();
		public var txt30:TextField = new TextField();
		public var txt31:TextField = new TextField();
		public var txt32:TextField = new TextField();
		public var txt33:TextField = new TextField();
		public var txt34:TextField = new TextField();
		public var txt35:TextField = new TextField();
		public var txt36:TextField = new TextField();

		public var t1:TextField = new TextField();
		public var t2:TextField = new TextField();
		public var t3:TextField = new TextField();
		public var t4:TextField = new TextField();
		public var t5:TextField = new TextField();
		public var t6:TextField = new TextField();
		public var t7:TextField = new TextField();
		public var t8:TextField = new TextField();
		public var t9:TextField = new TextField();
		public var t10:TextField = new TextField();
		public var t11:TextField = new TextField();
		public var t12:TextField = new TextField();
		public var t13:TextField = new TextField();
		public var t14:TextField = new TextField();
		public var t15:TextField = new TextField();
		public var t16:TextField = new TextField();
		public var t17:TextField = new TextField();
		public var t18:TextField = new TextField();
		public var t19:TextField = new TextField();
		public var t20:TextField = new TextField();
		public var t21:TextField = new TextField();
		public var t22:TextField = new TextField();
		public var t23:TextField = new TextField();
		public var t24:TextField = new TextField();
		public var t25:TextField = new TextField();
		public var t26:TextField = new TextField();
		public var t27:TextField = new TextField();
		public var t28:TextField = new TextField();
		public var t29:TextField = new TextField();
		public var t30:TextField = new TextField();
		public var t31:TextField = new TextField();
		public var t32:TextField = new TextField();
		public var t33:TextField = new TextField();
		public var t34:TextField = new TextField();
		public var t35:TextField = new TextField();
		public var t36:TextField = new TextField();
		public var placeName:TextField = new TextField();
		public var raceName:TextField = new TextField();
		public var distance:TextField = new TextField();
		
		public function ffRaceCards() {
			// constructor code
			super();
			this.myFilter.quality = -50;
			this.myFilter.strength = 1;
						
			this.bigPanel.x = 960;
			this.bigPanel.y = 544.5;
			this.addChild(bigPanel);
			this.headPanel.x = 960;
			this.headPanel.y = 147;
			this.hideShape.x = 1000;
			this.hideShape.y = 600;
			this.addChild(headPanel);
			this.leftLight.x = 200;
			this.rightLight.y = 100;
			this.leftLight.y = -200;
			this.rightLight.x = -100;
						
			this.fMainTitle.filters = [myFilter];
			this.placeName.filters = [myFilter];
			this.raceName.filters = [myFilter];
			this.distance.filters = [myFilter];
							
			//F2 constructor
			this.txt1.autoSize = this.txt3.autoSize = this.txt5.autoSize = this.txt7.autoSize = this.txt9.autoSize = this.txt11.autoSize = this.txt13.autoSize = this.txt15.autoSize = this.txt17.autoSize = "left";
									
			this.f1Name.autoSize = "left";
				
			this.f2Name.autoSize = "left";			
				
			this.f3Name.autoSize = "left";			
					
			this.f4Name.autoSize = "left";
			
		
			this.addChild(groupElement);
			this.groupElement.addChild(bigPanel);
			this.groupElement.addChild(hideShape);
			this.groupElement.addChild(rect);
			this.groupElement.addChild(icon1);
			this.groupElement.addChild(icon2);
			this.groupElement.addChild(icon3);
			this.groupElement.addChild(icon4);
			this.groupElement.addChild(f1Number);
			this.groupElement.addChild(f1Name);
			
			this.groupElement.addChild(f2Number);
			this.groupElement.addChild(f2Name);
			
			this.groupElement.addChild(f3Number);
			this.groupElement.addChild(f3Name);
			
			this.groupElement.addChild(f4Number);
			this.groupElement.addChild(f4Name);
			
			this.groupElement.addChild(txt2);
			this.groupElement.addChild(txt3);
			this.groupElement.addChild(txt4);
			this.groupElement.addChild(txt5);
			this.groupElement.addChild(txt6);
			this.groupElement.addChild(txt7);
			this.groupElement.addChild(txt8);
			this.groupElement.addChild(txt9);
			this.groupElement.addChild(txt10);
			this.groupElement.addChild(txt11);
			this.groupElement.addChild(txt12);
			this.groupElement.addChild(txt13);
			this.groupElement.addChild(txt14);
			this.groupElement.addChild(txt15);
			this.groupElement.addChild(txt16);
			this.groupElement.addChild(txt17);
			this.groupElement.addChild(txt18);
			this.groupElement.addChild(txt19);
			this.groupElement.addChild(txt20);
			this.groupElement.addChild(txt21);
			this.groupElement.addChild(txt22);
			this.groupElement.addChild(txt23);
			this.groupElement.addChild(txt24);
			this.groupElement.addChild(txt25);
			this.groupElement.addChild(txt26);
			this.groupElement.addChild(txt27);
			this.groupElement.addChild(txt28);
			this.groupElement.addChild(txt29);
			this.groupElement.addChild(txt30);
			this.groupElement.addChild(txt31);
			this.groupElement.addChild(txt32);
			this.groupElement.addChild(txt33);
			this.groupElement.addChild(txt34);
			this.groupElement.addChild(txt35);
			this.groupElement.addChild(txt36);
			this.groupElement.addChild(txt37);
			this.groupElement.addChild(txt38);
			this.groupElement.addChild(txt39);
			this.groupElement.addChild(txt40);
			this.groupElement.addChild(txt41);
			this.groupElement.addChild(txt42);
			this.groupElement.addChild(txt43);
			this.groupElement.addChild(txt44);
			this.groupElement.addChild(txt45);
			this.groupElement.addChild(txt46);
			this.groupElement.addChild(txt47);
			this.groupElement.addChild(txt48);
			this.groupElement.addChild(txt49);
			this.groupElement.addChild(txt50);
			this.groupElement.addChild(txt51);
			this.groupElement.addChild(txt52);
			this.groupElement.addChild(txt53);
			this.groupElement.addChild(t1);
			this.groupElement.addChild(t2);
			this.groupElement.addChild(t3);
			this.groupElement.addChild(t4);
			this.groupElement.addChild(t5);
			this.groupElement.addChild(t6);
			this.groupElement.addChild(t7);
			this.groupElement.addChild(t8);
			this.groupElement.addChild(t9);
			this.groupElement.addChild(t10);
			this.groupElement.addChild(t11);
			this.groupElement.addChild(t12);			
			this.groupElement.addChild(t13);
			this.groupElement.addChild(t14);
			this.groupElement.addChild(t15);
			this.groupElement.addChild(t16);
			this.groupElement.addChild(t17);
			this.groupElement.addChild(t18);
			this.groupElement.addChild(t19);
			this.groupElement.addChild(t20);
			this.groupElement.addChild(t21);
			this.groupElement.addChild(t22);
			this.groupElement.addChild(t23);
			this.groupElement.addChild(t24);
			this.groupElement.addChild(t25);
			this.groupElement.addChild(t26);
			this.groupElement.addChild(t27);
			this.groupElement.addChild(t28);
			this.groupElement.addChild(t29);
			this.groupElement.addChild(t30);
			this.groupElement.addChild(t31);
			this.groupElement.addChild(t32);
			this.groupElement.addChild(t33);
			this.groupElement.addChild(t34);
			this.groupElement.addChild(t35);
			this.groupElement.addChild(t36);
			this.addChild(group2);
			this.group2.addChild(headPanel);
			this.group2.addChild(fMainTitle);
			this.group2.addChild(txt1);
			this.group2.addChild(placeName);
			this.group2.addChild(raceName);
			this.group2.addChild(distance);
								
			//mask region
			this.addChild(maskX);
			this.addChild(maskY);
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
			xmlStr +=Add(xmlStr, "raceNumber", fMainTitle);
			xmlStr +=Add(xmlStr, "placeName", placeName);
			xmlStr +=Add(xmlStr, "raceName", raceName);
			xmlStr +=Add(xmlStr, "distance", distance);
			xmlStr +=Add(xmlStr, "bettingCode", txt1);
			
			xmlStr +=Add(xmlStr, "txt3", txt3);
		
			xmlStr +=Add(xmlStr, "txt5", txt5);
			
			xmlStr +=Add(xmlStr, "txt7", txt7);
			
			xmlStr +=Add(xmlStr, "txt9", txt9);
			
			xmlStr +=Add(xmlStr, "txt11", txt11);
			
			xmlStr +=Add(xmlStr, "txt13", txt13);
			
			xmlStr +=Add(xmlStr, "txt15", txt15);
			
			xmlStr +=Add(xmlStr, "txt17", txt17);
			xmlStr +=Add(xmlStr, "txt18", txt18);
			xmlStr +=Add(xmlStr, "txt19", txt19);
			xmlStr +=Add(xmlStr, "txt20", txt20);
			xmlStr +=Add(xmlStr, "txt21", txt21);
			xmlStr +=Add(xmlStr, "txt22", txt22);
			xmlStr +=Add(xmlStr, "txt23", txt23);
			xmlStr +=Add(xmlStr, "txt24", txt24);
			xmlStr +=Add(xmlStr, "txt25", txt25);
			xmlStr +=Add(xmlStr, "txt26", txt26);
			xmlStr +=Add(xmlStr, "txt27", txt27);
			xmlStr +=Add(xmlStr, "txt28", txt28);
			xmlStr +=Add(xmlStr, "txt29", txt29);
			xmlStr +=Add(xmlStr, "txt30", txt30);
			xmlStr +=Add(xmlStr, "txt31", txt31);
			xmlStr +=Add(xmlStr, "txt32", txt32);
			xmlStr +=Add(xmlStr, "txt33", txt33);
			xmlStr +=Add(xmlStr, "txt34", txt34);
			xmlStr +=Add(xmlStr, "txt35", txt35);
			xmlStr +=Add(xmlStr, "txt36", txt36);
			xmlStr +=Add(xmlStr, "txt37", txt37);
			xmlStr +=Add(xmlStr, "txt38", txt38);
			xmlStr +=Add(xmlStr, "txt39", txt39);
			xmlStr +=Add(xmlStr, "txt40", txt40);
			xmlStr +=Add(xmlStr, "txt41", txt41);
			xmlStr +=Add(xmlStr, "txt42", txt42);
			xmlStr +=Add(xmlStr, "txt43", txt43);
			xmlStr +=Add(xmlStr, "txt44", txt44);
			xmlStr +=Add(xmlStr, "txt45", txt45);
			xmlStr +=Add(xmlStr, "txt46", txt46);
			xmlStr +=Add(xmlStr, "txt47", txt47);
			xmlStr +=Add(xmlStr, "txt48", txt48);
			xmlStr +=Add(xmlStr, "txt49", txt49);
			xmlStr +=Add(xmlStr, "txt50", txt50);
			xmlStr +=Add(xmlStr, "txt51", txt51);
			xmlStr +=Add(xmlStr, "txt52", txt52);
			xmlStr +=Add(xmlStr, "txt53", txt53);
			xmlStr +=Add(xmlStr, "f1Number", f1Number);
			xmlStr +=Add(xmlStr, "f1Name", f1Name);
			
			xmlStr +=Add(xmlStr, "f2Number", f2Number);
			xmlStr +=Add(xmlStr, "f2Name", f2Name);
			
			xmlStr +=Add(xmlStr, "f3Number", f3Number);
			xmlStr +=Add(xmlStr, "f3Name", f3Name);
			
			xmlStr +=Add(xmlStr, "f4Number", f4Number);
			xmlStr +=Add(xmlStr, "f4Name", f4Name);
						
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
					case "raceNumber".toLowerCase():
						this.fMainTitle.text = data.toUpperCase();
						break;
					case "placeName".toLowerCase():
						this.placeName.text = data.toUpperCase();
						break;
					case "raceName".toLowerCase():
						this.raceName.text = data.toUpperCase();
						break;
					case "distance".toLowerCase():
						this.distance.text = data.toUpperCase();
						break;
					case "txt3".toLowerCase():
						this.txt3.text = data.toUpperCase();
						break;					
					case "bettingCode".toLowerCase():
						this.txt1.text = data.toUpperCase();
						break;
					case "txt5".toLowerCase():
						this.txt5.text = data.toUpperCase();
						break;					
					case "txt7".toLowerCase():
						this.txt7.text = data.toUpperCase();
						break;					
					case "txt9".toLowerCase():
						this.txt9.text = data.toUpperCase();
						break;					
					case "txt11".toLowerCase():
						this.txt11.text = data.toUpperCase();
						break;					
					case "txt13".toLowerCase():
						this.txt13.text = data.toUpperCase();						
						break;					
					case "txt15".toLowerCase():
						this.txt15.text = data.toUpperCase();
						break;					
					case "txt17".toLowerCase():
						this.txt17.text = data.toUpperCase();
						break;
					case "txt18".toLowerCase():
						this.txt18.text = data.toUpperCase();
						break;
					case "txt19".toLowerCase():
						this.txt19.text = data.toUpperCase();
						break;
					case "txt20".toLowerCase():
						this.txt20.text = data.toUpperCase();						
						break;
					case "txt21".toLowerCase():
						this.txt21.text = data.toUpperCase();
						break;
					case "txt22".toLowerCase():
						this.txt22.text = data.toUpperCase();
						break;
					case "txt23".toLowerCase():
						this.txt23.text = data.toUpperCase();
						break;
					case "txt24".toLowerCase():
						this.txt24.text = data.toUpperCase();
						break;
					case "txt25".toLowerCase():
						this.txt25.text = data.toUpperCase();
						break;
					case "txt26".toLowerCase():
						this.txt26.text = data.toUpperCase();
						break;
					case "txt27".toLowerCase():
						this.txt27.text = data.toUpperCase();
						break;
					case "txt28".toLowerCase():
						this.txt28.text = data.toUpperCase();
						break;
					case "txt29".toLowerCase():
						this.txt29.text = data.toUpperCase();						
						break;
					case "txt30".toLowerCase():
						this.txt30.text = data.toUpperCase();
						break;
					case "txt31".toLowerCase():
						this.txt31.text = data.toUpperCase();
						break;
					case "txt32".toLowerCase():
						this.txt32.text = data.toUpperCase();
						break;
					case "txt33".toLowerCase():
						this.txt33.text = data.toUpperCase();
						break;
					case "txt34".toLowerCase():
						this.txt34.text = data.toUpperCase();
						break;
					case "txt35".toLowerCase():
						this.txt35.text = data.toUpperCase();
						break;
					case "txt36".toLowerCase():
						this.txt36.text = data.toUpperCase();
						break;
					case "txt37".toLowerCase():
						this.txt37.text = data.toUpperCase();
						break;
					case "txt38".toLowerCase():
						this.txt38.text = data.toUpperCase();
						break;
					case "txt39".toLowerCase():
						this.txt39.text = data.toUpperCase();
						break;
					case "txt40".toLowerCase():
						this.txt40.text = data.toUpperCase();
						break;
					case "txt41".toLowerCase():
						this.txt41.text = data.toUpperCase();
						break;
					case "txt42".toLowerCase():
						this.txt42.text = data.toUpperCase();
						break;
					case "txt43".toLowerCase():
						this.txt43.text = data.toUpperCase();						
						break;
					case "txt44".toLowerCase():
						this.txt44.text = data.toUpperCase();
						break;
					case "txt45".toLowerCase():
						this.txt45.text = data.toUpperCase();
						break;
					case "txt46".toLowerCase():
						this.txt46.text = data.toUpperCase();
						break;
					case "txt47".toLowerCase():
						this.txt47.text = data.toUpperCase();
						break;
					case "txt48".toLowerCase():
						this.txt48.text = data.toUpperCase();
						break;
					case "txt49".toLowerCase():
						this.txt49.text = data.toUpperCase();
						break;
					case "txt50".toLowerCase():
						this.txt50.text = data.toUpperCase();
						break;
					case "txt51".toLowerCase():
						this.txt51.text = data.toUpperCase();
						break;
					case "txt52".toLowerCase():
						this.txt52.text = data.toUpperCase();
						break;
					case "txt53".toLowerCase():
						this.txt53.text = data.toUpperCase();
						break;
					case "f1Number".toLowerCase():
						this.f1Number.text = data.toUpperCase();
						request = new URLRequest(getIcon(data));
						this.icon1.load(request);
						break;
					case "f2Number".toLowerCase():
						this.f2Number.text = data.toUpperCase();
						request = new URLRequest(getIcon(data));
						this.icon2.load(request);
						break;
					case "f3Number".toLowerCase():
						this.f3Number.text = data.toUpperCase();
						request = new URLRequest(getIcon(data));
						this.icon3.load(request);
						break;
					case "f4Number".toLowerCase():
						this.f4Number.text = data.toUpperCase();
						request = new URLRequest(getIcon(data));
						this.icon4.load(request);
						break;
					case "f1Name".toLowerCase():
						this.f1Name.text = data.toUpperCase();
						break;
					case "f2Name".toLowerCase():
						this.f2Name.text = data.toUpperCase();
						break;
					case "f3Name".toLowerCase():
						this.f3Name.text = data.toUpperCase();
						break;
					case "f4Name".toLowerCase():
						this.f4Name.text = data.toUpperCase();
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
		private function getIcon(number:String):String
        {
            var iconUrl:String = "";
            switch (number)
            {
                case "1.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\01.png";
                    break;
                case "2.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\02.png";
                    break;
                case "3.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\03.png";
                    break;
                case "4.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\04.png";
                    break;
                case "5.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\05.png";
                    break;
                case "6.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\06.png";
                    break;
                case "7.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\07.png";
                    break;
                case "8.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\08.png";
                    break;
                case "9.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\09.png";
                    break;
                case "10.":
                    iconUrl = "D:\\HDCGStudio\\CGServer\\Server\\media\\Icons\\10.png";
                    break;
            }
            return iconUrl;
        }
	}
	
}
