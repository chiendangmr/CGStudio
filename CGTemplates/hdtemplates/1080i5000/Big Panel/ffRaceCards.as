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
	
	public class ffRaceCards extends CasparTemplate {
		
		private var fMainFormat:TextFormat = new TextFormat();		
		private var fMainTitle:TextField = new TextField();
		
		private var p1Name:TextField = new TextField();
		private var p1Age:TextField = new TextField();
		private var dog1Name:TextField = new TextField();
		private var dog1Age:TextField = new TextField();
		
		private var p2Name:TextField = new TextField();
		private var p2Age:TextField = new TextField();
		private var dog2Name:TextField = new TextField();
		private var dog2Age:TextField = new TextField();
		
		private var p3Name:TextField = new TextField();
		private var p3Age:TextField = new TextField();
		private var dog3Name:TextField = new TextField();
		private var dog3Age:TextField = new TextField();
		
		private var p4Name:TextField = new TextField();
		private var p4Age:TextField = new TextField();
		private var dog4Name:TextField = new TextField();
		private var dog4Age:TextField = new TextField();
		
		//F1 detail		
		private var f1Number:TextField = new TextField();
		private var f1Name:TextField = new TextField();
		private var f1Logo:UILoader = null;
		private var f1Detail:TextField = new TextField();
		private var f1Prize:UILoader = null;
		private var f1Format:TextFormat = new TextFormat();
		
		//F2 detail
		private var f2Number:TextField = new TextField();
		private var f2Name:TextField = new TextField();
		private var f2Logo:UILoader = null;
		private var f2Detail:TextField = new TextField();
		private var f2Prize:UILoader = null;
		private var f2Format:TextFormat = new TextFormat();
						
		//F3 detail
		private var f3Number:TextField = new TextField();
		private var f3Name:TextField = new TextField();
		private var f3Logo:UILoader = null;
		private var f3Detail:TextField = new TextField();
		private var f3Prize:UILoader = null;
		private var f3Format:TextFormat = new TextFormat();
		
		//F4 detail
		private var f4Number:TextField = new TextField();
		private var f4Name:TextField = new TextField();
		private var f4Logo:UILoader = null;
		private var f4Detail:TextField = new TextField();
		private var f4Prize:UILoader = null;
		private var f4Format:TextFormat = new TextFormat();
								
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
		private var hideShape:MovieClip = new hiddenShape();
			
		public function ffRaceCards() {
			// constructor code
			super();
			p1Name.text = p2Name.text = p3Name.text = p4Name.text = "STORM GOD";
			p1Age.text = p2Age.text = p3Age.text = p4Age.text = " (23)";
			dog1Name.text = dog2Name.text = dog3Name.text = dog4Name.text = "NATASHA FAITHFULL";
			dog1Age.text = dog2Age.text = dog3Age.text = dog4Age.text = "58.0kg";
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
			
			this.fMainFormat.size = 55;
			this.fMainFormat.color = 0xfaddb5;
			this.fMainFormat.font = new RobotoBold().fontName;
						
			this.fMainTitle.defaultTextFormat = fMainFormat;
			this.fMainTitle.type = TextFieldType.DYNAMIC;
			this.fMainTitle.autoSize = "left";
			this.fMainTitle.x = 300;
			this.fMainTitle.y = 127;
			this.fMainTitle.text = "RACE 2 MADAGUI PURE BLONDE HANDICAP 1100m";
			this.addChild(fMainTitle);
						
			//F1 constructor
			this.f1Format.size = 110;
			this.f1Format.color = 0xffffff;
			this.f1Format.font = new RobotoBold().fontName;
			
			this.f1Number.defaultTextFormat = f1Format;
			this.f1Number.type = TextFieldType.DYNAMIC;
			this.f1Number.x = 440;
			this.f1Number.y = 270;
			this.f1Number.autoSize = "left";
			this.f1Number.text = "1.";
			this.addChild(f1Number);
			
			this.f1Name.defaultTextFormat = f2Format;
			this.f1Name.type = TextFieldType.DYNAMIC;
			this.f1Name.autoSize = "left";
			this.f1Name.x = 570;
			this.f1Name.y = this.f1Number.y;
			this.f1Name.htmlText = '<font face="Roboto Bold" size="55" color="#e89d22">'+ p1Name.text + " " + '</font><font face="Roboto Bold" size="55" color="#ffffff">' + p1Age.text +'</font>';
			this.addChild(f1Name);
			
			this.f1Detail.type = TextFieldType.DYNAMIC;
			this.f1Detail.autoSize = "left";
			this.f1Detail.x = this.f1Name.x;
			this.f1Detail.y = this.f1Name.y + 65;
			this.f1Detail.htmlText = '<font face="Roboto Bold" size="45" color="#ffffff">'+ dog1Name.text + " " + '</font><font face="Roboto Bold" size="45" color="#e89d22">' + dog1Age.text +'</font>';
			this.addChild(f1Detail);
			//F2 constructor
			this.f2Format.size = 55;
			this.f2Format.color = 0xe89d22;
			this.f2Format.font = new RobotoBold().fontName;
			
			this.f2Number.defaultTextFormat = f1Format;
			this.f2Number.type = TextFieldType.DYNAMIC;
			this.f2Number.x = this.f1Number.x;
			this.f2Number.y = 455;
			this.f2Number.autoSize = "left";
			this.f2Number.text = "2.";
			this.addChild(f2Number);
			
			this.f2Name.defaultTextFormat = f2Format;
			this.f2Name.type = TextFieldType.DYNAMIC;
			this.f2Name.autoSize = "left";
			this.f2Name.x = this.f1Name.x;
			this.f2Name.y = this.f2Number.y;
			this.f2Name.htmlText = '<font face="Roboto Bold" size="55" color="#e89d22">'+ p2Name.text + '</font><font face="Roboto Bold" size="55" color="#ffffff">' + p2Age.text +'</font>';
			this.addChild(f2Name);
			
			this.f2Detail.type = TextFieldType.DYNAMIC;
			this.f2Detail.autoSize = "left";
			this.f2Detail.x = this.f2Name.x;
			this.f2Detail.y = this.f2Name.y + 65;
			this.f2Detail.htmlText = '<font face="Roboto Bold" size="45" color="#ffffff">'+ dog2Name.text + " " + '</font><font face="Roboto Bold" size="45" color="#e89d22">' + dog2Age.text +'</font>';
			this.addChild(f2Detail);
			//F3 constructor
			this.f3Format.size = 45;
			this.f3Format.color = 0xe89d22;
			this.f3Format.font = new RobotoBold().fontName;
			
			this.f3Number.defaultTextFormat = f1Format;
			this.f3Number.type = TextFieldType.DYNAMIC;
			this.f3Number.x = this.f1Number.x;
			this.f3Number.y = 640;
			this.f3Number.autoSize = "left";
			this.f3Number.text = "3.";
			this.addChild(f3Number);
			
			this.f3Name.defaultTextFormat = f3Format;
			this.f3Name.type = TextFieldType.DYNAMIC;
			this.f3Name.autoSize = "left";
			this.f3Name.x = this.f1Name.x;
			this.f3Name.y = this.f3Number.y;
			this.f3Name.htmlText = '<font face="Roboto Bold" size="55" color="#e89d22">'+ p3Name.text + '</font><font face="Roboto Bold" size="55" color="#ffffff">' + p3Age.text +'</font>';
			this.addChild(f3Name);
			
			this.f3Detail.type = TextFieldType.DYNAMIC;
			this.f3Detail.autoSize = "left";
			this.f3Detail.x = this.f3Name.x;
			this.f3Detail.y = this.f3Name.y + 65;
			this.f3Detail.htmlText = '<font face="Roboto Bold" size="45" color="#ffffff">'+ dog3Name.text + " " + '</font><font face="Roboto Bold" size="45" color="#e89d22">' + dog3Age.text +'</font>';
			this.addChild(f3Detail);
									
			//F4 constructor
			this.f4Format.size = 55;
			this.f4Format.color = 0xffffff;
			this.f4Format.font = new RobotoBold().fontName;
			
			this.f4Number.defaultTextFormat = f1Format;
			this.f4Number.type = TextFieldType.DYNAMIC;
			this.f4Number.x = this.f1Number.x;
			this.f4Number.y = 825;
			this.f4Number.autoSize = "left";
			this.f4Number.text = "4.";
			this.addChild(f4Number);
			
			this.f4Name.defaultTextFormat = f4Format;
			this.f4Name.type = TextFieldType.DYNAMIC;
			this.f4Name.autoSize = "left";
			this.f4Name.x = this.f1Name.x;
			this.f4Name.y = this.f4Number.y;
			this.f4Name.htmlText = '<font face="Roboto Bold" size="55" color="#e89d22">'+ p4Name.text + '</font><font face="Roboto Bold" size="55" color="#ffffff">' + p4Age.text +'</font>';
			this.addChild(f4Name);
			
			this.f4Detail.type = TextFieldType.DYNAMIC;
			this.f4Detail.autoSize = "left";
			this.f4Detail.x = this.f4Name.x;
			this.f4Detail.y = this.f4Name.y + 65;
			this.f4Detail.htmlText = '<font face="Roboto Bold" size="45" color="#ffffff">'+ dog4Name.text + " " + '</font><font face="Roboto Bold" size="45" color="#e89d22">' + dog4Age.text +'</font>';
			this.addChild(f4Detail);
						
			this.addChild(groupElement);
			this.groupElement.addChild(bigPanel);
			this.groupElement.addChild(hideShape);
			this.groupElement.addChild(f1Number);
			this.groupElement.addChild(f1Name);
			this.groupElement.addChild(f1Detail);
			this.groupElement.addChild(f2Number);
			this.groupElement.addChild(f2Name);
			this.groupElement.addChild(f2Detail);
			this.groupElement.addChild(f3Number);
			this.groupElement.addChild(f3Name);
			this.groupElement.addChild(f3Detail);
			this.groupElement.addChild(f4Number);
			this.groupElement.addChild(f4Name);
			this.groupElement.addChild(f4Detail);									
			this.addChild(group2);
			this.group2.addChild(headPanel);
			this.group2.addChild(fMainTitle);
								
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
			comeIn();
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
		override public function SetData(xml:XML):void{
			
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
