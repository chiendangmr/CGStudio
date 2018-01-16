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
			
		public function Protest() {
			// constructor code
			super();
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
			this.fMain.type = TextFieldType.DYNAMIC;
			this.fMain.autoSize = "left";
			this.fMain.x = 670;
			this.fMain.y = 140;
			this.fMain.text = "RACE 2 MADAGUI PURE BLONDE HANDICAP";
			this.addChild(fMain);
			
			this.fMainFormat.size = 55;
			this.fProtest.defaultTextFormat = fMainFormat;
			this.fProtest.type = TextFieldType.DYNAMIC;
			this.fProtest.autoSize = "left";
			this.fProtest.x = 415;
			this.fProtest.y = 127;
			this.fProtest.text = "PROTEST";
			this.addChild(fProtest);
			
			this.f1Format.size = 50;
			this.f1Format.color = 0x9b6917;
			this.f1Format.font = new RobotoBold().fontName;
			
			this.f2Format.size = 50;
			this.f2Format.color = 0xffffff;
			this.f2Format.font = new RobotoBold().fontName;
						
			//F8 constructor
			this.f8Number.defaultTextFormat = f1Format;
			this.f8Number.type = TextFieldType.DYNAMIC;
			this.f8Number.x = 475;
			this.f8Number.y = 265;
			this.f8Number.autoSize = "left";
			this.f8Number.text = "12.";
			this.addChild(f8Number);
			
			this.f8Name.defaultTextFormat = f2Format;
			this.f8Name.type = TextFieldType.DYNAMIC;
			this.f8Name.autoSize = "left";
			this.f8Name.x = 585;
			this.f8Name.y = this.f8Number.y;
			this.f8Name.text = "PRETE A PARTIR";
			this.addChild(f8Name);
			
			this.f8Win.defaultTextFormat = f2Format;
			this.f8Win.type = TextFieldType.DYNAMIC;
			this.f8Win.autoSize = "left";
			this.f8Win.x = 1395;
			this.f8Win.y = this.f8Number.y;
			this.f8Win.text = "3rd";
			this.addChild(f8Win);
						
			//F9 constructor
			this.f9Number.defaultTextFormat = f1Format;
			this.f9Number.type = TextFieldType.DYNAMIC;
			this.f9Number.x = this.f8Number.x;
			this.f9Number.y = 385;
			this.f9Number.autoSize = "left";
			this.f9Number.text = "1.";
			this.addChild(f9Number);
			
			this.f9Name.defaultTextFormat = f2Format;
			this.f9Name.type = TextFieldType.DYNAMIC;
			this.f9Name.autoSize = "left";
			this.f9Name.x = this.f8Name.x;
			this.f9Name.y = this.f9Number.y;
			this.f9Name.text = "STORM GOD";
			this.addChild(f9Name);
			
			this.f9Win.defaultTextFormat = f2Format;
			this.f9Win.type = TextFieldType.DYNAMIC;
			this.f9Win.autoSize = "left";
			this.f9Win.x = this.f8Win.x;
			this.f9Win.y = this.f9Number.y;
			this.f9Win.text = "2nd";
			this.addChild(f9Win);
						
			//f2 add
			this.f2Name.defaultTextFormat = f1Format;
			this.f2Name.type = TextFieldType.DYNAMIC;
			this.f2Name.autoSize = "left";
			this.f2Name.x = 930;
			this.f2Name.y = 515;
			this.f2Name.text = "versus";
			this.addChild(f2Name);
						
			//F10 constructor
			this.f10Number.defaultTextFormat = f1Format;
			this.f10Number.type = TextFieldType.DYNAMIC;
			this.f10Number.x = this.f9Number.x;
			this.f10Number.y = 625;
			this.f10Number.autoSize = "left";
			this.f10Number.text = "7.";
			this.addChild(f10Number);
			
			this.f10Name.defaultTextFormat = f2Format;
			this.f10Name.type = TextFieldType.DYNAMIC;
			this.f10Name.autoSize = "left";
			this.f10Name.x = this.f9Name.x;
			this.f10Name.y = this.f10Number.y;
			this.f10Name.text = "VERSED REMEDY";
			this.addChild(f10Name);
			
			this.f10Win.defaultTextFormat = f2Format;
			this.f10Win.type = TextFieldType.DYNAMIC;
			this.f10Win.autoSize = "left";
			this.f10Win.x = this.f9Win.x;
			this.f10Win.y = this.f10Number.y;
			this.f10Win.text = "1st";
			this.addChild(f10Win);
					
						
			//F11 - DONG THU 11
			this.f11Number.defaultTextFormat = f1Format;
			this.f11Number.type = TextFieldType.DYNAMIC;
			this.f11Number.x = this.f10Number.x;
			this.f11Number.y = 750;
			this.f11Number.autoSize = "left";
			this.f11Number.text = "3.";
			this.addChild(f11Number);
			
			this.f11Name.defaultTextFormat = f2Format;
			this.f11Name.type = TextFieldType.DYNAMIC;
			this.f11Name.autoSize = "left";
			this.f11Name.x = this.f10Name.x;
			this.f11Name.y = this.f11Number.y;
			this.f11Name.text = "PRETE A PARTIR";
			this.addChild(f11Name);
			
			this.f11Win.defaultTextFormat = f2Format;
			this.f11Win.type = TextFieldType.DYNAMIC;
			this.f11Win.autoSize = "left";
			this.f11Win.x = this.f10Win.x;
			this.f11Win.y = this.f11Number.y;
			this.f11Win.text = "4th";
			this.addChild(f11Win);
			
			//F12 - DONG CUOI CUNG
			this.f12Name.defaultTextFormat = f1Format;
			this.f12Name.type = TextFieldType.DYNAMIC;
			this.f12Name.x = 355;
			this.f12Name.y = 875;
			this.f12Name.autoSize = "left";
			this.f12Name.text = "Alleged interfence between the 600m and 200m marks.";
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
