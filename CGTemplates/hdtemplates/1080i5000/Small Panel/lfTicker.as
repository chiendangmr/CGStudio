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
		
	public class lfTicker extends CasparTemplate{
		
		public var myBar:MovieClip = new bar();
		private var txtGroup:MovieClip = new MovieClip();
		private var txt1:TextField = new TextField();
		private var txt2:TextField = new TextField();
		private var txt3:TextField = new TextField();
		private var txt4:TextField = new TextField();
		private var txt5:TextField = new TextField();
		
		public var topNumber1:TextField = new TextField();
		public var topNumber2:TextField = new TextField();
		public var topNumber3:TextField = new TextField();
		public var topNumber4:TextField = new TextField();
		public var topNumber5:TextField = new TextField();
		public var topNumber6:TextField = new TextField();
		public var topNumber7:TextField = new TextField();
				
		public var topS1:TextField = new TextField();
		public var topS2:TextField = new TextField();
		public var topS3:TextField = new TextField();
		public var topS4:TextField = new TextField();
		public var topS5:TextField = new TextField();
		public var topS6:TextField = new TextField();
		public var topS7:TextField = new TextField();
				
		public var topS11:TextField = new TextField();
		public var topS21:TextField = new TextField();
		public var topS31:TextField = new TextField();
		public var topS41:TextField = new TextField();
		public var topS51:TextField = new TextField();
		public var topS61:TextField = new TextField();
		public var topS71:TextField = new TextField();
		
		private var txtFormat:TextFormat = new TextFormat();
		private var txtFormat2:TextFormat = new TextFormat();
		private var txtFormat3:TextFormat = new TextFormat();
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
		
		public function lfTicker() {
			// constructor code
			super();
			
			this.addChild(myBar);
			this.myFilter.quality = -50;
			this.myFilter.strength = 1;
			
			this.txtFormat.size = 45;
			this.txtFormat.font = new RobotoBoldCondensed().fontName;
			this.txtFormat.color = 0xffffff;
						
			this.txtFormat2.size = 45;
			this.txtFormat2.font = new RobotoBoldCondensed().fontName;
			this.txtFormat2.color = 0x00cd00;
			
			this.txtFormat3.size = 45;
			this.txtFormat3.font = new RobotoMedium().fontName;
			this.txtFormat3.color = 0xfaddb5;
			
			this.topFormat.size = 55;
			this.topFormat.font = new RobotoBoldCondensed().fontName;
			this.topFormat.color = 0xffffff;
			
			this.topFormat2.size = 40;
			this.topFormat2.font = new RobotoBoldCondensed().fontName;
			this.topFormat2.color = 0xffffff;
												
			this.txt1.defaultTextFormat = txtFormat;
			this.txt1.alpha = 1;
			this.txt1.autoSize = "left";
			this.txt1.type = TextFieldType.DYNAMIC;
			this.txt1.text = "DARREN McAULLAY";
			this.txt1.x = 255;
			this.txt1.y = 605;
			this.txt1.filters = [myFilter];
			this.txtGroup.addChild(txt1);
						
			this.txt2.defaultTextFormat = txtFormat2;
			this.txt2.alpha = 1;
			this.txt2.type = TextFieldType.DYNAMIC;
			this.txt2.text = "08:07";
			this.txt2.x = this.txt1.x;
			this.txt2.y = 700;
			this.txt2.autoSize = "left";
			this.txt2.filters = [myFilter];
			this.txtGroup.addChild(txt2);
			
			this.txt3.defaultTextFormat = txtFormat3;
			this.txt3.alpha = 1;
			this.txt3.type = TextFieldType.DYNAMIC;
			this.txt3.text = "2";
			this.txt3.x = 720;
			this.txt3.y = this.txt2.y;
			this.txt3.autoSize = "left";
			this.txt3.filters = [myFilter];
			this.txtGroup.addChild(txt3);
			
			this.txtFormat.letterSpacing = 20;
			this.txt4.defaultTextFormat = txtFormat;
			this.txt4.alpha = 1;
			this.txt4.type = TextFieldType.DYNAMIC;
			this.txt4.text = "1563";
			this.txt4.x = 700;
			this.txt4.y = this.txt1.y;
			this.txt4.autoSize = "left";
			this.txt4.filters = [myFilter];
			this.txtGroup.addChild(txt4);
			
			this.txt5.defaultTextFormat = txtFormat3;
			this.txt5.alpha = 1;
			this.txt5.type = TextFieldType.DYNAMIC;
			this.txt5.text = "GOOD3";
			this.txt5.x = 1515;
			this.txt5.y = this.txt2.y;
			this.txt5.autoSize = "left";
			this.txt5.filters = [myFilter];
			this.txtGroup.addChild(txt5);
			
			this.topNumber1.defaultTextFormat = this.topNumber2.defaultTextFormat= this.topNumber3.defaultTextFormat= this.topNumber4.defaultTextFormat = this.topNumber5.defaultTextFormat =this.topNumber6.defaultTextFormat = this.topNumber7.defaultTextFormat = topFormat;
			this.topNumber1.type = this.topNumber2.type= this.topNumber3.type= this.topNumber4.type = this.topNumber5.type =this.topNumber6.type = this.topNumber7.type = TextFieldType.DYNAMIC;
			this.topNumber1.alpha = this.topNumber2.alpha= this.topNumber3.alpha= this.topNumber4.alpha = this.topNumber5.alpha =this.topNumber6.alpha = this.topNumber7.alpha  = 1;
			this.topNumber1.filters = this.topNumber2.filters= this.topNumber3.filters= this.topNumber4.filters = this.topNumber5.filters =this.topNumber6.filters = this.topNumber7.filters = [myFilter];
			this.topNumber1.y = this.topNumber2.y = this.topNumber3.y = this.topNumber4.y= this.topNumber5.y = this.topNumber6.y = this.topNumber7.y = 785;
			this.topNumber1.autoSize = this.topNumber2.autoSize= this.topNumber3.autoSize= this.topNumber4.autoSize = this.topNumber5.autoSize =this.topNumber6.autoSize = this.topNumber7.autoSize = "left";
			
			this.topNumber1.x = 540;
			this.topNumber2.x = this.topNumber1.x + 160;
			this.topNumber3.x = this.topNumber2.x + 160;
			this.topNumber4.x = this.topNumber3.x + 160;
			this.topNumber5.x = this.topNumber4.x + 160;
			this.topNumber6.x = this.topNumber5.x + 160;
			this.topNumber7.x = this.topNumber6.x + 160;
			
			this.topNumber1.text = "8";
			this.topNumber2.text = "8";
			this.topNumber3.text = "8";
			this.topNumber4.text = "8";
			this.topNumber5.text = "8";
			this.topNumber6.text = "8";
			this.topNumber7.text = "8";
			
			this.topS1.defaultTextFormat = this.topS2.defaultTextFormat = this.topS3.defaultTextFormat = this.topS4.defaultTextFormat= this.topS5.defaultTextFormat = this.topS6.defaultTextFormat = this.topS7.defaultTextFormat= topFormat2;
			this.topS1.type = this.topS2.type= this.topS3.type= this.topS4.type = this.topS5.type =this.topS6.type = this.topS7.type = TextFieldType.DYNAMIC;
			this.topS1.alpha = this.topS2.alpha= this.topS3.alpha= this.topS4.alpha = this.topS5.alpha =this.topS6.alpha = this.topS7.alpha = 1;
			this.topS1.filters = this.topS2.filters= this.topS3.filters= this.topS4.filters = this.topS5.filters =this.topS6.filters = this.topS7.filters = [myFilter];
			this.topS1.y = this.topS2.y = this.topS3.y = this.topS4.y= this.topS5.y = this.topS6.y = this.topS7.y = 845;
			this.topS1.autoSize = this.topS2.autoSize = this.topS3.autoSize = this.topS4.autoSize= this.topS5.autoSize = this.topS6.autoSize = this.topS7.autoSize = "left";
			
			this.topS1.text = "28.70";
			this.topS2.text = "28.70";
			this.topS3.text = "28.70";
			this.topS4.text = "28.70";
			this.topS5.text = "28.70";
			this.topS6.text = "28.70";
			this.topS7.text = "28.70";
			
			this.topS1.x = this.topNumber1.x - 10;
			this.topS2.x = this.topNumber2.x - 10;
			this.topS3.x = this.topNumber3.x - 10;
			this.topS4.x = this.topNumber4.x - 10;
			this.topS5.x = this.topNumber5.x - 10;
			this.topS6.x = this.topNumber6.x - 10;
			this.topS7.x = this.topNumber7.x - 10;
			
			this.topS11.defaultTextFormat = this.topS21.defaultTextFormat = this.topS31.defaultTextFormat = this.topS41.defaultTextFormat= this.topS51.defaultTextFormat = this.topS61.defaultTextFormat = this.topS71.defaultTextFormat= topFormat2;
			this.topS11.type = this.topS21.type= this.topS31.type= this.topS41.type = this.topS51.type =this.topS61.type = this.topS71.type = TextFieldType.DYNAMIC;
			this.topS11.alpha = this.topS21.alpha= this.topS31.alpha= this.topS41.alpha = this.topS51.alpha =this.topS61.alpha = this.topS71.alpha = 1;
			this.topS11.filters = this.topS21.filters= this.topS31.filters= this.topS41.filters = this.topS51.filters =this.topS61.filters = this.topS71.filters = [myFilter];
			this.topS11.y = this.topS21.y = this.topS31.y = this.topS41.y= this.topS51.y = this.topS61.y = this.topS71.y = 900;
			this.topS11.autoSize = this.topS21.autoSize = this.topS31.autoSize = this.topS41.autoSize= this.topS51.autoSize = this.topS61.autoSize = this.topS71.autoSize = "left";
			
			this.topS11.text = "8.70";
			this.topS21.text = "8.70";
			this.topS31.text = "8.70";
			this.topS41.text = "8.70";
			this.topS51.text = "8.70";
			this.topS61.text = "8.70";
			this.topS71.text = "8.70";
			
			this.topS11.x = this.topNumber1.x - 10;
			this.topS21.x = this.topNumber2.x - 10;
			this.topS31.x = this.topNumber3.x - 10;
			this.topS41.x = this.topNumber4.x - 10;
			this.topS51.x = this.topNumber5.x - 10;
			this.topS61.x = this.topNumber6.x - 10;
			this.topS71.x = this.topNumber7.x - 10;
			
			this.txtGroup.addChild(topNumber1);
			this.txtGroup.addChild(topNumber2);
			this.txtGroup.addChild(topNumber3);
			this.txtGroup.addChild(topNumber4);
			this.txtGroup.addChild(topNumber5);
			this.txtGroup.addChild(topNumber6);
			this.txtGroup.addChild(topNumber7);
			this.txtGroup.addChild(topS2);
			this.txtGroup.addChild(topS1);
			this.txtGroup.addChild(topS6);
			this.txtGroup.addChild(topS7);
			this.txtGroup.addChild(topS3);
			this.txtGroup.addChild(topS4);
			this.txtGroup.addChild(topS5);
			this.txtGroup.addChild(topS21);
			this.txtGroup.addChild(topS11);
			this.txtGroup.addChild(topS61);
			this.txtGroup.addChild(topS71);
			this.txtGroup.addChild(topS31);
			this.txtGroup.addChild(topS41);
			this.txtGroup.addChild(topS51);
			this.addChild(txtGroup);
			
			this.addChild(maskBar);
			this.maskBar.x = 195;
			this.maskBar.y = 585;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 400;
			this.rectWidth = 1600;
			this.drawShapes(maskBar, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.myBar.mask = this.maskBar;
			this.txtGroup.visible = false;
			this.myBar.visible = false;
			
		}
		override public function SetData(xml:XML):void{
			for each (var element:XML in xml.children())
			{
				var property:String = element.@id;
				var data:String = element.data.@value;
				switch(property.toLowerCase())
				{
					case "race".toLowerCase():
						this.txt3.text = data.toUpperCase();
						break;
					case "number".toLowerCase():
						this.txt4.text = data.toUpperCase();
						break;
					case "name".toLowerCase():
						this.txt1.text = data.toUpperCase();
						break;
					case "track".toLowerCase():
						this.txt5.text = data.toUpperCase();
						break;
					case "time".toLowerCase():
						this.txt2.text = data.toUpperCase();
						break;
					case "number1".toLowerCase():
						this.topNumber1.text = data.toUpperCase()+ ".";
						break;
					case "number2".toLowerCase():
						this.topNumber2.text = data.toUpperCase()+ ".";
						break;
					case "number3".toLowerCase():
						this.topNumber3.text = data.toUpperCase()+ ".";
						break;
					case "number4".toLowerCase():
						this.topNumber4.text = data.toUpperCase()+ ".";
						break;
					case "number5".toLowerCase():
						this.topNumber5.text = data.toUpperCase()+ ".";
						break;
					case "number6".toLowerCase():
						this.topNumber6.text = data.toUpperCase()+ ".";
						break;
					case "number7".toLowerCase():
						this.topNumber7.text = data.toUpperCase()+ ".";
						break;
					case "win1".toLowerCase():	
						this.topS1.text = data.toUpperCase();
						if (data == "scr"){
							setPro(this.topNumber1, this.topS1, this.topS11);
							this.topS1.text = data.toUpperCase();
						}
						break;
					case "win2".toLowerCase():
						this.topS2.text = data.toUpperCase();
						if (data == "scr"){
							setPro(this.topNumber2, this.topS2, this.topS21);
							this.topS2.text = data.toUpperCase();
						}
						break;
					case "win3".toLowerCase():
						this.topS3.text = data.toUpperCase();
						if (data == "scr"){
							setPro(this.topNumber3, this.topS3, this.topS31);
							this.topS3.text = data.toUpperCase();
						}
						break;
					case "win4".toLowerCase():
						this.topS4.text = data.toUpperCase();
						if (data == "scr"){
							setPro(this.topNumber4, this.topS4, this.topS41);
							this.topS4.text = data.toUpperCase();
						}
						break;
					case "win5".toLowerCase():
						this.topS5.text = data.toUpperCase();
						if (data == "scr"){
							setPro(this.topNumber5, this.topS5, this.topS51);
							this.topS5.text = data.toUpperCase();
						}
						break;
					case "win6".toLowerCase():
						this.topS6.text = data.toUpperCase();
						if (data == "scr"){
							setPro(this.topNumber6, this.topS6, this.topS61);
							this.topS6.text = data.toUpperCase();
						}
						break;
					case "win7".toLowerCase():
						this.topS7.text = data.toUpperCase();
						if (data == "scr"){
							setPro(this.topNumber7, this.topS7, this.topS71);
							this.topS7.text = data.toUpperCase();
						}
						break;
					case "place1".toLowerCase():
						this.topS11.text = data.toUpperCase();
						break;
					case "place2".toLowerCase():
						this.topS21.text = data.toUpperCase();
						break;
					case "place3".toLowerCase():
						this.topS31.text = data.toUpperCase();
						break;
					case "place4".toLowerCase():
						this.topS41.text = data.toUpperCase();
						break;
					case "place5".toLowerCase():
						this.topS51.text = data.toUpperCase();
						break;
					case "place6".toLowerCase():
						this.topS61.text = data.toUpperCase();
						break;
					case "place7".toLowerCase():
						this.topS71.text = data.toUpperCase();
						break;
				}
			}
		}
		public function setPro(c:TextField, d:TextField, e:TextField):void
		{			
			topFormat.color = 0x124089;
			topFormat.size = 65;
			topFormat.font = new RobotoBold().fontName;
			c.defaultTextFormat = topFormat;
			topFormat.size = 55;
			d.defaultTextFormat = topFormat;
			d.y = 870;
			e.text = " ";
		}
		private function comeIn():void{
			this.myBar.visible = true;
			this.singleTween = new Tween(myBar, "x", Regular.easeOut, -1500, 960, 0.5, true);
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
			this.singleTween = new Tween(myBar, "y", Regular.easeOut, 960, 1200, 1, true);
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
