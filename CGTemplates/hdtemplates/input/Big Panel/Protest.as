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
	import flash.filters.*;
	import flash.external.ExternalInterface;
	import flash.text.Font;
	
	public class Protest extends CasparTemplate {
		
		private var fMainFormat:TextFormat = new TextFormat();
		private var fMain:TextField = new TextField();
		private var fWin:TextField = new TextField();
		private var fPlace:TextField = new TextField();
		private var fProtest:TextField = new TextField();
		
		private var f1Name:TextField = new TextField();
		private var f1Win:TextField = new TextField();
		private var f1Value:TextField = new TextField();
		private var f1Money:TextField = new TextField();
		
		private var f2Name:TextField = new TextField();
		private var f2Win:TextField = new TextField();
		
		private var f3Name:TextField = new TextField();
		private var f3Win:TextField = new TextField();
		
		//F8 detail
		private var f8Number:TextField = new TextField();
		private var f8Name:TextField = new TextField();
		private var f8Win:TextField = new TextField();
		private var f8Place:TextField = new TextField();
		private var f1Format:TextFormat = new TextFormat();
		private var f8Value:TextField = new TextField();
		private var f8Money:TextField = new TextField();
		//F9 detail
		private var f9Number:TextField = new TextField();
		private var f9Name:TextField = new TextField();
		private var f9Win:TextField = new TextField();
		private var f9Place:TextField = new TextField();
		private var f2Format:TextFormat = new TextFormat();
		private var f9Value:TextField = new TextField();
		private var f9Money:TextField = new TextField();
		//F10 detail
		private var f10Number:TextField = new TextField();
		private var f10Name:TextField = new TextField();
		private var f10Win:TextField = new TextField();
		
		private var f3Format:TextFormat = new TextFormat();
			
		private var f11Number:TextField = new TextField();
		private var f11Name:TextField = new TextField();
		private var f11Win:TextField = new TextField();
						
		private var f12Name:TextField = new TextField();
		private var f12Win:TextField = new TextField();
		private var f12Place:TextField = new TextField();
		private var f12Value:TextField = new TextField();
		private var f12Money:TextField = new TextField();
		
		private var betFormat:TextFormat = new TextFormat();
		private var txt1:TextField = new TextField();
		
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
		
		private var bigPanel:MovieClip = new bodyBar();
		private var headPanel:MovieClip = new headBar();
		private var leftLight:MovieClip = new leftSpotLight();
		private var rightLight:MovieClip = new rightSpotLight();
		private var hideShape:MovieClip = new hideShapeB();
		
		private var myFilter:DropShadowFilter = new DropShadowFilter();
			
		public function Protest() {
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
			
			this.fMainFormat.size = 40;
			this.fMainFormat.color = 0xfaddb5;
			this.fMainFormat.font = new RobotoBold().fontName;
			
			this.fMain.defaultTextFormat = fMainFormat;
			this.fMain.type = TextFieldType.INPUT;
			this.fMain.autoSize = "left";
			this.fMain.x = 670;
			this.fMain.y = 140;
			this.fMain.text = "RACE 2 MADAGUI PURE BLONDE HANDICAP";
			this.fMain.filters = [myFilter];
			this.addChild(fMain);
			
			this.fMainFormat.size = 55;
			this.fProtest.defaultTextFormat = fMainFormat;
			this.fProtest.type = TextFieldType.INPUT;
			this.fProtest.autoSize = "left";
			this.fProtest.x = 415;
			this.fProtest.y = 127;
			this.fProtest.text = "PROTEST";
			this.fProtest.filters = [myFilter];
			this.addChild(fProtest);
			
			setFormat(betFormat, 60, 0xe89d22, new RobotoBold());
			setTxt(txt1, betFormat, myFilter, "MR12", 1500, this.fMain.y);
			this.f1Format.size = 50;
			this.f1Format.color = 0xe89d22;
			this.f1Format.font = new RobotoBold().fontName;
			
			this.f2Format.size = 50;
			this.f2Format.color = 0xffffff;
			this.f2Format.font = new RobotoBold().fontName;
						
			//F8 constructor
			this.f8Number.defaultTextFormat = f1Format;
			this.f8Number.type = TextFieldType.INPUT;
			this.f8Number.x = 475;
			this.f8Number.y = 265;
			this.f8Number.autoSize = "left";
			this.f8Number.text = "12.";
			this.f8Number.filters = [myFilter];
			this.addChild(f8Number);
			
			this.f8Name.defaultTextFormat = f2Format;
			this.f8Name.type = TextFieldType.INPUT;
			this.f8Name.autoSize = "left";
			this.f8Name.x = 585;
			this.f8Name.y = this.f8Number.y;
			this.f8Name.text = "PRETE A PARTIR";
			this.f8Name.filters = [myFilter];
			this.addChild(f8Name);
			
			this.f8Win.defaultTextFormat = f2Format;
			this.f8Win.type = TextFieldType.INPUT;
			this.f8Win.autoSize = "left";
			this.f8Win.x = 1395;
			this.f8Win.y = this.f8Number.y;
			this.f8Win.text = "3rd";
			this.f8Win.filters = [myFilter];
			this.addChild(f8Win);
						
			//F9 constructor
			this.f9Number.defaultTextFormat = f1Format;
			this.f9Number.type = TextFieldType.INPUT;
			this.f9Number.x = this.f8Number.x;
			this.f9Number.y = 385;
			this.f9Number.autoSize = "left";
			this.f9Number.text = "1.";
			this.f9Number.filters = [myFilter];
			this.addChild(f9Number);
			
			this.f9Name.defaultTextFormat = f2Format;
			this.f9Name.type = TextFieldType.INPUT;
			this.f9Name.autoSize = "left";
			this.f9Name.x = this.f8Name.x;
			this.f9Name.y = this.f9Number.y;
			this.f9Name.text = "STORM GOD";
			this.f9Name.filters = [myFilter];
			this.addChild(f9Name);
			
			this.f9Win.defaultTextFormat = f2Format;
			this.f9Win.type = TextFieldType.INPUT;
			this.f9Win.autoSize = "left";
			this.f9Win.x = this.f8Win.x;
			this.f9Win.y = this.f9Number.y;
			this.f9Win.text = "2nd";
			this.f9Win.filters = [myFilter];
			this.addChild(f9Win);
						
			//f2 add
			this.f2Name.defaultTextFormat = f1Format;
			this.f2Name.type = TextFieldType.INPUT;
			this.f2Name.autoSize = "left";
			this.f2Name.x = 930;
			this.f2Name.y = 515;
			this.f2Name.text = "versus";
			this.f2Name.filters = [myFilter];
			this.addChild(f2Name);
						
			//F10 constructor
			this.f10Number.defaultTextFormat = f1Format;
			this.f10Number.type = TextFieldType.INPUT;
			this.f10Number.x = this.f9Number.x;
			this.f10Number.y = 625;
			this.f10Number.autoSize = "left";
			this.f10Number.text = "7.";
			this.f10Number.filters = [myFilter];
			this.addChild(f10Number);
			
			this.f10Name.defaultTextFormat = f2Format;
			this.f10Name.type = TextFieldType.INPUT;
			this.f10Name.autoSize = "left";
			this.f10Name.x = this.f9Name.x;
			this.f10Name.y = this.f10Number.y;
			this.f10Name.text = "VERSED REMEDY";
			this.f10Name.filters = [myFilter];
			this.addChild(f10Name);
			
			this.f10Win.defaultTextFormat = f2Format;
			this.f10Win.type = TextFieldType.INPUT;
			this.f10Win.autoSize = "left";
			this.f10Win.x = this.f9Win.x;
			this.f10Win.y = this.f10Number.y;
			this.f10Win.text = "1st";
			this.f10Win.filters = [myFilter];
			this.addChild(f10Win);
					
						
			//F11 - DONG THU 11
			this.f11Number.defaultTextFormat = f1Format;
			this.f11Number.type = TextFieldType.INPUT;
			this.f11Number.x = this.f10Number.x;
			this.f11Number.y = 750;
			this.f11Number.autoSize = "left";
			this.f11Number.text = "3.";
			this.f11Number.filters = [myFilter];
			this.addChild(f11Number);
			
			this.f11Name.defaultTextFormat = f2Format;
			this.f11Name.type = TextFieldType.INPUT;
			this.f11Name.autoSize = "left";
			this.f11Name.x = this.f10Name.x;
			this.f11Name.y = this.f11Number.y;
			this.f11Name.text = "PRETE A PARTIR";
			this.f11Name.filters = [myFilter];
			this.addChild(f11Name);
			
			this.f11Win.defaultTextFormat = f2Format;
			this.f11Win.type = TextFieldType.INPUT;
			this.f11Win.autoSize = "left";
			this.f11Win.x = this.f10Win.x;
			this.f11Win.y = this.f11Number.y;
			this.f11Win.text = "4th";
			this.f11Win.filters = [myFilter];
			this.addChild(f11Win);
			
			//F12 - DONG CUOI CUNG
			this.f12Name.defaultTextFormat = f1Format;
			this.f12Name.type = TextFieldType.INPUT;
			this.f12Name.x = 355;
			this.f12Name.y = 875;
			this.f12Name.autoSize = "left";
			this.f12Name.text = "Alleged interfence between the 600m and 200m marks.";
			this.f12Name.filters = [myFilter];
			this.addChild(f12Name);
									
			this.addChild(groupElement);
			this.groupElement.addChild(bigPanel);
			this.groupElement.addChild(hideShape);
			
			this.groupElement.addChild(f8Number);
			this.groupElement.addChild(f8Name);
			this.groupElement.addChild(f8Win);
			
			this.groupElement.addChild(f2Name);
			this.groupElement.addChild(f2Win);
			
			this.groupElement.addChild(f9Number);
			this.groupElement.addChild(f9Name);
			this.groupElement.addChild(f9Win);
			
			this.groupElement.addChild(f10Number);
			this.groupElement.addChild(f10Name);
			this.groupElement.addChild(f10Win);
			
			this.groupElement.addChild(f11Number);
			this.groupElement.addChild(f11Name);
			this.groupElement.addChild(f11Win);
			this.groupElement.addChild(f12Name);
			
			this.addChild(group2);
			this.group2.addChild(headPanel);
			this.group2.addChild(fMain);
			this.group2.addChild(txt1);
							
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
			this.group2.addChild(fProtest);
			this.addChild(groupElement);
			this.addChild(group2);
			this.alpha = 1;
			this.visible = false;
			Play();
			
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
			xmlStr +=Add(xmlStr, "txt1", txt1);
						
			xmlStr +=Add(xmlStr, "f8Number", f8Number);
			xmlStr +=Add(xmlStr, "f8Name", f8Name);
			xmlStr +=Add(xmlStr, "f8Win", f8Win);
						
			xmlStr +=Add(xmlStr, "f9Number", f9Number);
			xmlStr +=Add(xmlStr, "f9Name", f9Name);
			xmlStr +=Add(xmlStr, "f9Win", f9Win);
			
			xmlStr +=Add(xmlStr, "f2Name", f2Name);
			xmlStr +=Add(xmlStr, "f2Win", f2Win);
						
			xmlStr +=Add(xmlStr, "f10Number", f10Number);
			xmlStr +=Add(xmlStr, "f10Name", f10Name);
			xmlStr +=Add(xmlStr, "f10Win", f10Win);
									
			xmlStr +=Add(xmlStr, "fMain", fMain);
			
			xmlStr +=Add(xmlStr, "f11Number", f11Number);
			xmlStr +=Add(xmlStr, "f11Name", f11Name);
			xmlStr +=Add(xmlStr, "f11Win", f11Win);
			
			xmlStr +=Add(xmlStr, "f12Name", f12Name);
			
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
					case "fMain".toLowerCase():
						this.fMain.text = data.toUpperCase();
						break;
						
					case "f8Name".toLowerCase():
						this.f8Name.text = data.toUpperCase();
						break;
					
					case "f8Number".toLowerCase():
						this.f8Number.text = data.toUpperCase();
						break;
					
					case "f8Win".toLowerCase():
						this.f8Win.text = data;
						break;
										
					case "f9Name".toLowerCase():
						this.f9Name.text = data.toUpperCase();
						break;
					
					case "f9Number".toLowerCase():
						this.f9Number.text = data.toUpperCase();
						break;
					
					case "f9Win".toLowerCase():
						this.f9Win.text = data;
						break;
					case "f2Name".toLowerCase():
						this.f2Name.text = data;
						break;
					case "f2Win".toLowerCase():
						this.f2Win.text = data.toUpperCase();
						break;
					
					case "f10Name".toLowerCase():
						this.f10Name.text = data.toUpperCase();
						break;
					
					case "f10Number".toLowerCase():
						this.f10Number.text = data.toUpperCase();
						break;
					
					case "f10Win".toLowerCase():
						this.f10Win.text = data;
						break;
							
					case "f11Name".toLowerCase():
						this.f11Name.text = data.toUpperCase();
						break;
					
					case "f11Name".toLowerCase():
						this.f11Name.text = data.toUpperCase();
						break;
					
					case "f11Win".toLowerCase():
						this.f11Win.text = data;
						break;
					
					case "f12Name".toLowerCase():
						this.f12Name.text = data;
						break;
					case "txt1".toLowerCase():
						this.txt1.text = data.toUpperCase();
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
	}
	
}
