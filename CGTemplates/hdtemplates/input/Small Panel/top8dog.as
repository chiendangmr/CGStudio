package  {
	
	import flash.display.MovieClip;
	import se.svt.caspar.template.CasparTemplate;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.Font;
	import flash.text.TextFieldType;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import flash.display.Shape;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import fl.transitions.TweenEvent;
	import flash.events.Event;
	import flash.text.TextFormatAlign;
	import flash.filters.*;
		
	public class top8dog extends CasparTemplate{
		
		public var myBar:MovieClip = new bar();
		private var txtGroup:MovieClip = new MovieClip();
		private var txt:TextField = new TextField();
		private var txt2:TextField = new TextField();
		
		public var topNumber1:TextField = new TextField();
		public var topNumber2:TextField = new TextField();
		public var topNumber3:TextField = new TextField();
		public var topNumber4:TextField = new TextField();
		public var topNumber5:TextField = new TextField();
		public var topNumber6:TextField = new TextField();
		public var topNumber7:TextField = new TextField();
		public var topNumber8:TextField = new TextField();
		
		public var topS1:TextField = new TextField();
		public var topS2:TextField = new TextField();
		public var topS3:TextField = new TextField();
		public var topS4:TextField = new TextField();
		public var topS5:TextField = new TextField();
		public var topS6:TextField = new TextField();
		public var topS7:TextField = new TextField();
		public var topS8:TextField = new TextField();
						
		private var txtFormat:TextFormat = new TextFormat();
		private var txtFormat2:TextFormat = new TextFormat();
		private var topFormat:TextFormat = new TextFormat();
		private var topFormat2:TextFormat = new TextFormat();
	
		private var myFilter:DropShadowFilter = new DropShadowFilter();
								
		private var maskBar:Shape = new Shape();
		private var rectWidth:Number = 900;
		private var rectHeight:Number = 160;
		private var rcolor:Array = new Array();
		private var alphas:Array = new Array();
		private var ratios:Array = new Array();
		
		private var singleTween:Tween = null;
		private var txtTween:Tween = null;
		
		public function top8dog() {
			// constructor code
			super();
			
			this.addChild(myBar);
			
			this.txtFormat.size = 40;
			this.txtFormat.font = new RobotoBoldCondensed().fontName;
			this.txtFormat.color = 0xfaddb5;
						
			this.txtFormat2.size = 40;
			this.txtFormat2.font = new RobotoBold().fontName;
			this.txtFormat2.color = 0x00cd00;
			
			this.topFormat.size = 55;
			this.topFormat.font = new RobotoBoldCondensed().fontName;
			this.topFormat.color = 0xE89D22;
			
			this.topFormat2.size = 55;
			this.topFormat2.font = new RobotoBoldCondensed().fontName;
			this.topFormat2.color = 0xffffff;
												
			this.txt.defaultTextFormat = txtFormat;
			this.txt.alpha = 1;
			this.txt.autoSize = "left";
			this.txt.type = TextFieldType.INPUT;
			this.txt.text = "10";
			this.txt.x = 335;
			this.txt.y = 180;
			this.txt.filters = [myFilter];
			this.txtGroup.addChild(txt);
						
			this.txt2.defaultTextFormat = txtFormat2;
			this.txt2.alpha = 1;
			this.txt2.type = TextFieldType.INPUT;
			this.txt2.text = "00:07";
			this.txt2.x = 500;
			this.txt2.y = this.txt.y;
			this.txt2.autoSize = "left";
			this.txt2.filters = [myFilter];
			this.txtGroup.addChild(txt2);
			
			this.topNumber1.defaultTextFormat = this.topNumber2.defaultTextFormat= this.topNumber3.defaultTextFormat= this.topNumber4.defaultTextFormat = this.topNumber5.defaultTextFormat =this.topNumber6.defaultTextFormat = this.topNumber7.defaultTextFormat = this.topNumber8.defaultTextFormat = topFormat;
			this.topNumber1.type = this.topNumber2.type= this.topNumber3.type= this.topNumber4.type = this.topNumber5.type =this.topNumber6.type = this.topNumber7.type = this.topNumber8.type = TextFieldType.INPUT;
			this.topNumber1.alpha = this.topNumber2.alpha= this.topNumber3.alpha= this.topNumber4.alpha = this.topNumber5.alpha =this.topNumber6.alpha = this.topNumber7.alpha = this.topNumber8.alpha = 1;
			this.topNumber1.filters = this.topNumber2.filters= this.topNumber3.filters= this.topNumber4.filters = this.topNumber5.filters =this.topNumber6.filters = this.topNumber7.filters = this.topNumber8.filters = [myFilter];
			this.topNumber1.x = this.topNumber2.x = this.topNumber3.x = this.topNumber4.x= this.topNumber5.x = this.topNumber6.x = this.topNumber7.x = this.topNumber8.x = 365;
			this.topNumber1.autoSize = this.topNumber2.autoSize= this.topNumber3.autoSize= this.topNumber4.autoSize = this.topNumber5.autoSize =this.topNumber6.autoSize = this.topNumber7.autoSize = this.topNumber8.autoSize = "left";
			
			
			this.topS1.defaultTextFormat = this.topS2.defaultTextFormat = this.topS3.defaultTextFormat = this.topS4.defaultTextFormat= this.topS5.defaultTextFormat = this.topS6.defaultTextFormat = this.topS7.defaultTextFormat = this.topS8.defaultTextFormat = topFormat2;
			this.topS1.type = this.topS2.type= this.topS3.type= this.topS4.type = this.topS5.type =this.topS6.type = this.topS7.type = this.topS8.type = TextFieldType.INPUT;
			this.topS1.alpha = this.topS2.alpha= this.topS3.alpha= this.topS4.alpha = this.topS5.alpha =this.topS6.alpha = this.topS7.alpha = this.topS8.alpha = 1;
			this.topS1.filters = this.topS2.filters= this.topS3.filters= this.topS4.filters = this.topS5.filters =this.topS6.filters = this.topS7.filters = this.topS8.filters = [myFilter];
			this.topS1.x = this.topS2.x = this.topS3.x = this.topS4.x= this.topS5.x = this.topS6.x = this.topS7.x = this.topS8.x = 475;
			this.topS1.autoSize = this.topS2.autoSize = this.topS3.autoSize = this.topS4.autoSize= this.topS5.autoSize = this.topS6.autoSize = this.topS7.autoSize = this.topS8.autoSize = "left";

			this.topNumber1.y = this.topS1.y = 246;
			this.topNumber2.y = this.topS2.y = this.topNumber1.y + 60;
			this.topNumber3.y = this.topS3.y = this.topNumber2.y + 61;
			this.topNumber4.y = this.topS4.y = this.topNumber3.y + 62;
			this.topNumber5.y = this.topS5.y = this.topNumber4.y + 63;
			this.topNumber6.y = this.topS6.y = this.topNumber5.y + 60;
			this.topNumber7.y = this.topS7.y = this.topNumber6.y + 60;
			this.topNumber8.y = this.topS8.y = this.topNumber7.y + 60;
			this.topNumber1.text = "8";
			this.topNumber8.text = "8";
			this.topNumber2.text = "8";
			this.topNumber3.text = "8";
			this.topNumber4.text = "8";
			this.topNumber5.text = "8";
			this.topNumber6.text = "8";
			this.topNumber7.text = "8";
			
			this.topS1.text = "8";
			this.topS8.text = "8";
			this.topS2.text = "8";
			this.topS3.text = "8";
			this.topS4.text = "8";
			this.topS5.text = "8";
			this.topS6.text = "8";
			this.topS7.text = "8";
			
			this.txtGroup.addChild(topNumber1);
			this.txtGroup.addChild(topNumber2);
			this.txtGroup.addChild(topNumber3);
			this.txtGroup.addChild(topNumber4);
			this.txtGroup.addChild(topNumber5);
			this.txtGroup.addChild(topNumber6);
			this.txtGroup.addChild(topNumber7);
			this.txtGroup.addChild(topNumber8);
			this.txtGroup.addChild(topS2);
			this.txtGroup.addChild(topS1);
			this.txtGroup.addChild(topS6);
			this.txtGroup.addChild(topS7);
			this.txtGroup.addChild(topS8);
			this.txtGroup.addChild(topS3);
			this.txtGroup.addChild(topS4);
			this.txtGroup.addChild(topS5);
			this.addChild(txtGroup);
			
			this.addChild(maskBar);
			this.maskBar.x = 195;
			this.maskBar.y = 105;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 900;
			this.rectWidth = 500;
			this.drawShapes(maskBar, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.myBar.mask = this.maskBar;
			this.txtGroup.visible = false;
			this.myBar.visible = false;
			comeIn();
		}
		override public function SetData(xml:XML):void{
			for each (var element:XML in xml.children())
			{
				var property:String = element.@id;
				var data:String = element.data.@value;
				switch(property.toLowerCase())
				{
					case "race".toLowerCase():
						this.txt.text = data.toUpperCase();
						break;
					case "time".toLowerCase():
						this.txt2.text = data.toUpperCase();
						break;
					case "1stnumber".toLowerCase():
						this.topNumber1.text = data.toUpperCase() + ".";
						break;
					case "1sttime".toLowerCase():
						this.topS1.text = data.toUpperCase();
						break;
					case "2ndnumber".toLowerCase():
						this.topNumber2.text = data.toUpperCase() + ".";
						break;
					case "2ndtime".toLowerCase():
						this.topS2.text = data.toUpperCase();
						break;
					case "3rdnumber".toLowerCase():
						this.topNumber3.text = data.toUpperCase() + ".";
						break;
					case "3rdtime".toLowerCase():
						this.topS3.text = data.toUpperCase();
						break;
					case "4thnumber".toLowerCase():
						this.topNumber4.text = data.toUpperCase() + ".";
						break;
					case "4thtime".toLowerCase():
						this.topS4.text = data.toUpperCase();
						break;
					case "5thnumber".toLowerCase():
						this.topNumber5.text = data.toUpperCase() + ".";
						break;
					case "5thtime".toLowerCase():
						this.topS5.text = data.toUpperCase();
						break;
					case "6thnumber".toLowerCase():
						this.topNumber6.text = data.toUpperCase() + ".";
						break;
					case "6thtime".toLowerCase():
						this.topS6.text = data.toUpperCase();
						break;
					case "7thnumber".toLowerCase():
						this.topNumber7.text = data.toUpperCase() + ".";
						break;
					case "7thtime".toLowerCase():
						this.topS7.text = data.toUpperCase();
						break;
					case "8thnumber".toLowerCase():
						this.topNumber8.text = data.toUpperCase() + ".";
						break;
					case "8thtime".toLowerCase():
						this.topS8.text = data.toUpperCase();
						break;
				}
			}
		}
		private function comeIn():void{
			this.myBar.visible = true;
			this.singleTween = new Tween(myBar, "x", Regular.easeOut, -1500, 431, 0.5, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt);
		}
		private function comeInTxt(e:Event):void{
			this.txtGroup.visible = true;
			this.txtTween = new Tween(txtGroup, "alpha", Strong.easeIn, 0, 1, 0.1, true);
		}
		private function comeOut(){
			this.txtTween = new Tween(txtGroup, "alpha", Strong.easeIn, 1, 0, 0.1, true);
			this.txtTween.addEventListener(TweenEvent.MOTION_FINISH, comeOutBar);
		}
		private function comeOutBar(e:Event):void{
			this.singleTween = new Tween(myBar, "y", Regular.easeOut, 840, 1200, 1, true);
		}
		public override function Play():void{
			comeIn();
		}
		public override function Stop():void{
			comeOut();
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
