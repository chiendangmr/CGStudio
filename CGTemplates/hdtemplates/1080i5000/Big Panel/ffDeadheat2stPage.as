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
	
	public class ffDeadheat2stPage extends CasparTemplate {
		
		private var fMainFormat:TextFormat = new TextFormat();
		private var fMain:TextField = new TextField();
		private var fWin:TextField = new TextField();
		private var fPlace:TextField = new TextField();
		
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
		private var f10Place:TextField = new TextField();
		private var f3Format:TextFormat = new TextFormat();
		private var f10Value:TextField = new TextField();
		private var f10Money:TextField = new TextField();
		
		private var f4Format:TextFormat = new TextFormat();
		private var f11Name:TextField = new TextField();
		private var f11Value:TextField = new TextField();
				
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
			
		public function ffDeadheat2stPage() {
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
			
			this.fMainFormat.size = 55;
			this.fMainFormat.color = 0xfaddb5;
			this.fMainFormat.font = new RobotoBold().fontName;
			
			this.fMain.defaultTextFormat = fMainFormat;
			this.fMain.type = TextFieldType.DYNAMIC;
			this.fMain.autoSize = "left";
			this.fMain.x = 257;
			this.fMain.y = 127;
			this.fMain.text = "RACE 2 MADAGUI PURE BLONDE HANDICAP";
			this.addChild(fMain);
			
			this.f1Format.size = 55;
			this.f1Format.color = 0x9b6917;
			this.f1Format.font = new RobotoBold().fontName;
			
			this.f2Format.size = 55;
			this.f2Format.color = 0xffffff;
			this.f2Format.font = new RobotoBold().fontName;
			
			this.f3Format.size = 40;
			this.f3Format.color = 0x9b6917;
			this.f3Format.font = new RobotoBoldCondensed().fontName;
			
			this.f4Format.size = 40;
			this.f4Format.color = 0xffffff;
			this.f4Format.font = new RobotoBoldCondensed().fontName;
			//F8 constructor
			this.f8Number.defaultTextFormat = f1Format;
			this.f8Number.type = TextFieldType.DYNAMIC;
			this.f8Number.x = 255;
			this.f8Number.y = 245;
			this.f8Number.autoSize = "left";
			this.f8Number.text = "QUINELLA:";
			this.addChild(f8Number);
			
			this.f8Name.defaultTextFormat = f2Format;
			this.f8Name.type = TextFieldType.DYNAMIC;
			this.f8Name.autoSize = "left";
			this.f8Name.x = 540;
			this.f8Name.y = this.f8Number.y;
			this.f8Name.text = "1-7";
			this.addChild(f8Name);
			
			this.f8Win.defaultTextFormat = f2Format;
			this.f8Win.type = TextFieldType.DYNAMIC;
			this.f8Win.autoSize = "left";
			this.f8Win.x = 715;
			this.f8Win.y = this.f8Number.y;
			this.f8Win.text = "đ106.40";
			this.addChild(f8Win);
			
			this.f8Place.defaultTextFormat = f1Format;
			this.f8Place.type = TextFieldType.DYNAMIC;
			this.f8Place.autoSize = "left";
			this.f8Place.x = 970;
			this.f8Place.y = this.f8Number.y;
			this.f8Place.text = "FIRST:";
			this.addChild(f8Place);
			
			this.f8Value.defaultTextFormat = f2Format;
			this.f8Value.type = TextFieldType.DYNAMIC;
			this.f8Value.autoSize = "left";
			this.f8Value.x = 1215;
			this.f8Value.y = this.f8Number.y;
			this.f8Value.text = "1-7-3-6";
			this.addChild(f8Value);
			
			this.f8Money.defaultTextFormat = f2Format;
			this.f8Money.type = TextFieldType.DYNAMIC;
			this.f8Money.autoSize = "left";
			this.f8Money.x = 1470;
			this.f8Money.y = this.f8Number.y;
			this.f8Money.text = "đ9634.20";
			this.addChild(f8Money);
			
			//f1 add
			this.f1Name.defaultTextFormat = f2Format;
			this.f1Name.type = TextFieldType.DYNAMIC;
			this.f1Name.autoSize = "left";
			this.f1Name.x = 540;
			this.f1Name.y = this.f8Number.y + 60;
			this.f1Name.text = "1-7";
			this.addChild(f1Name);
			
			this.f1Win.defaultTextFormat = f2Format;
			this.f1Win.type = TextFieldType.DYNAMIC;
			this.f1Win.autoSize = "left";
			this.f1Win.x = 715;
			this.f1Win.y = this.f8Number.y + 60;
			this.f1Win.text = "đ106.40";
			this.addChild(f1Win);
						
			this.f1Value.defaultTextFormat = f2Format;
			this.f1Value.type = TextFieldType.DYNAMIC;
			this.f1Value.autoSize = "left";
			this.f1Value.x = 1215;
			this.f1Value.y = this.f8Number.y + 60;
			this.f1Value.text = "1-7-3-6";
			this.addChild(f1Value);
			
			this.f1Money.defaultTextFormat = f2Format;
			this.f1Money.type = TextFieldType.DYNAMIC;
			this.f1Money.autoSize = "left";
			this.f1Money.x = 1470;
			this.f1Money.y = this.f8Number.y + 60;
			this.f1Money.text = "đ9634.20";
			this.addChild(f1Money);
						
			//F9 constructor
			this.f9Number.defaultTextFormat = f1Format;
			this.f9Number.type = TextFieldType.DYNAMIC;
			this.f9Number.x = this.f8Number.x;
			this.f9Number.y = 415;
			this.f9Number.autoSize = "left";
			this.f9Number.text = "EXACTA:";
			this.addChild(f9Number);
			
			this.f9Name.defaultTextFormat = f2Format;
			this.f9Name.type = TextFieldType.DYNAMIC;
			this.f9Name.autoSize = "left";
			this.f9Name.x = this.f8Name.x;
			this.f9Name.y = this.f9Number.y;
			this.f9Name.text = "1-7";
			this.addChild(f9Name);
			
			this.f9Win.defaultTextFormat = f2Format;
			this.f9Win.type = TextFieldType.DYNAMIC;
			this.f9Win.autoSize = "left";
			this.f9Win.x = this.f8Win.x;
			this.f9Win.y = this.f9Number.y;
			this.f9Win.text = "đ520.40";
			this.addChild(f9Win);
			
			this.f9Place.defaultTextFormat = f1Format;
			this.f9Place.type = TextFieldType.DYNAMIC;
			this.f9Place.autoSize = "left";
			this.f9Place.x = this.f8Place.x;
			this.f9Place.y = this.f9Number.y;
			this.f9Place.text = "DOUBLE:";
			this.addChild(f9Place);
			
			this.f9Value.defaultTextFormat = f2Format;
			this.f9Value.type = TextFieldType.DYNAMIC;
			this.f9Value.autoSize = "left";
			this.f9Value.x = this.f8Value.x;
			this.f9Value.y = this.f9Number.y;
			this.f9Value.text = "2-7";
			this.addChild(f9Value);
			
			this.f9Money.defaultTextFormat = f2Format;
			this.f9Money.type = TextFieldType.DYNAMIC;
			this.f9Money.autoSize = "left";
			this.f9Money.x = 1475;
			this.f9Money.y = this.f9Number.y;
			this.f9Money.text = "đ27.20";
			this.addChild(f9Money);
			
			//f2 add
			this.f2Name.defaultTextFormat = f2Format;
			this.f2Name.type = TextFieldType.DYNAMIC;
			this.f2Name.autoSize = "left";
			this.f2Name.x = 540;
			this.f2Name.y = this.f9Number.y + 65;
			this.f2Name.text = "1-7";
			this.addChild(f2Name);
			
			this.f2Win.defaultTextFormat = f2Format;
			this.f2Win.type = TextFieldType.DYNAMIC;
			this.f2Win.autoSize = "left";
			this.f2Win.x = 715;
			this.f2Win.y = this.f9Number.y + 65;
			this.f2Win.text = "đ106.40";
			this.addChild(f2Win);
			
			//F10 constructor
			this.f10Number.defaultTextFormat = f1Format;
			this.f10Number.type = TextFieldType.DYNAMIC;
			this.f10Number.x = this.f9Number.x;
			this.f10Number.y = 585;
			this.f10Number.autoSize = "left";
			this.f10Number.text = "TRIFECTA:";
			this.addChild(f10Number);
			
			this.f10Name.defaultTextFormat = f2Format;
			this.f10Name.type = TextFieldType.DYNAMIC;
			this.f10Name.autoSize = "left";
			this.f10Name.x = this.f9Name.x;
			this.f10Name.y = this.f10Number.y;
			this.f10Name.text = "7-1-3";
			this.addChild(f10Name);
			
			this.f10Win.defaultTextFormat = f2Format;
			this.f10Win.type = TextFieldType.DYNAMIC;
			this.f10Win.autoSize = "left";
			this.f10Win.x = this.f9Win.x;
			this.f10Win.y = this.f10Number.y;
			this.f10Win.text = "đ712.40";
			this.addChild(f10Win);
			
			//f3 add
			this.f3Name.defaultTextFormat = f2Format;
			this.f3Name.type = TextFieldType.DYNAMIC;
			this.f3Name.autoSize = "left";
			this.f3Name.x = 540;
			this.f3Name.y = this.f10Number.y + 65;
			this.f3Name.text = "1-7";
			this.addChild(f3Name);
			
			this.f3Win.defaultTextFormat = f2Format;
			this.f3Win.type = TextFieldType.DYNAMIC;
			this.f3Win.autoSize = "left";
			this.f3Win.x = 715;
			this.f3Win.y = this.f10Number.y + 65;
			this.f3Win.text = "đ106.40";
			this.addChild(f3Win);
						
			//F11 - DONG THU 11
			this.f11Name.defaultTextFormat = f3Format;
			this.f11Name.type = TextFieldType.DYNAMIC;
			this.f11Name.x = this.f10Number.x;
			this.f11Name.y = 870;
			this.f11Name.autoSize = "left";
			this.f11Name.text = "SCRATCHINGS:";
			this.addChild(f11Name);
			
			this.f11Value.defaultTextFormat = f4Format;
			this.f11Value.type = TextFieldType.DYNAMIC;
			this.f11Value.autoSize = "left";
			this.f11Value.x = 510;
			this.f11Value.y = this.f11Name.y;
			this.f11Value.text = "NIL";
			this.addChild(f11Value);
			
			//F12 - DONG CUOI CUNG
			this.f12Name.defaultTextFormat = f3Format;
			this.f12Name.type = TextFieldType.DYNAMIC;
			this.f12Name.x = this.f11Name.x;
			this.f12Name.y = this.f11Name.y + 45;
			this.f12Name.autoSize = "left";
			this.f12Name.text = "MARGINS:";
			this.addChild(f12Name);
			
			this.f12Win.defaultTextFormat = f4Format;
			this.f12Win.type = TextFieldType.DYNAMIC;
			this.f12Win.autoSize = "left";
			this.f12Win.x = 430;
			this.f12Win.y = this.f12Name.y;
			this.f12Win.text = "3/4 LGTTH, 1/2 HEAD, DH";
			this.addChild(f12Win);
									
			this.f12Place.defaultTextFormat = f3Format;
			this.f12Place.type = TextFieldType.DYNAMIC;
			this.f12Place.autoSize = "left";
			this.f12Place.x = 1225;
			this.f12Place.y = this.f12Name.y;
			this.f12Place.text = "TIME:";
			this.addChild(f12Place);
			
			this.f12Value.defaultTextFormat = f4Format;
			this.f12Value.type = TextFieldType.DYNAMIC;
			this.f12Value.autoSize = "left";
			this.f12Value.x = 1325;
			this.f12Value.y = this.f12Name.y;
			this.f12Value.text = "58.89";
			this.addChild(f12Value);
			
			this.f12Money.defaultTextFormat = f4Format;
			this.f12Money.type = TextFieldType.DYNAMIC;
			this.f12Money.autoSize = "left";
			this.f12Money.x = 1430;
			this.f12Money.y = this.f12Name.y;
			this.f12Money.text = "(35.56)";
			this.addChild(f12Money);
			
			this.addChild(groupElement);
			this.groupElement.addChild(bigPanel);
			this.groupElement.addChild(hideShape);
			
			this.groupElement.addChild(f8Number);
			this.groupElement.addChild(f8Name);
			this.groupElement.addChild(f8Win);
			this.groupElement.addChild(f8Place);
			this.groupElement.addChild(f8Value);
			this.groupElement.addChild(f8Money);
			
			this.groupElement.addChild(f1Name);
			this.groupElement.addChild(f1Win);
			this.groupElement.addChild(f1Value);
			this.groupElement.addChild(f1Money);
			
			this.groupElement.addChild(f2Name);
			this.groupElement.addChild(f2Win);
			this.groupElement.addChild(f3Name);
			this.groupElement.addChild(f3Win);
			
			this.groupElement.addChild(f9Number);
			this.groupElement.addChild(f9Name);
			this.groupElement.addChild(f9Win);
			this.groupElement.addChild(f9Place);
			this.groupElement.addChild(f9Value);
			this.groupElement.addChild(f9Money);
			this.groupElement.addChild(f10Number);
			this.groupElement.addChild(f10Name);
			this.groupElement.addChild(f10Win);
				
			this.groupElement.addChild(f11Name);
			this.groupElement.addChild(f11Value);
			this.groupElement.addChild(f12Name);
			this.groupElement.addChild(f12Win);
			this.groupElement.addChild(f12Place);
			this.groupElement.addChild(f12Value);
			this.groupElement.addChild(f12Money);
						
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
