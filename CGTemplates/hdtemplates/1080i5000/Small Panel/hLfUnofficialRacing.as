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
		
	public class hLfUnofficialRacing extends CasparTemplate{
		
		public var eff:MovieClip = new light();
		public var myBar:MovieClip = new bar();
		private var txtGroup:MovieClip = new MovieClip();
		
		private var raceNumber:TextField = new TextField();
		private var d1:TextField = new TextField();
		private var d2:TextField = new TextField();
		private var d3:TextField = new TextField();
		private var d4:TextField = new TextField();
		private var d5:TextField = new TextField();
		private var d6:TextField = new TextField();
		private var rFormat:TextFormat = new TextFormat();
		private var dFormat:TextFormat = new TextFormat();
		
		private var txt:TextField = new TextField();
		private var txt2:TextField = new TextField();
		private var txt3:TextField = new TextField();
		private var txt4:TextField = new TextField();
		private var txt5:TextField = new TextField();
		private var txt6:TextField = new TextField();
		private var txtWin1:TextField = new TextField();
		private var txtWin2:TextField = new TextField();
		private var txtWin3:TextField = new TextField();
		private var txtPlace1:TextField = new TextField();
		private var txtPlace2:TextField = new TextField();
		private var txtPlace3:TextField = new TextField();
		private var txtFormat:TextFormat = new TextFormat();
		private var txtFormat2:TextFormat = new TextFormat();
	
		private var myFilter:DropShadowFilter = new DropShadowFilter();
								
		private var maskBar:Shape = new Shape();
		private var rectWidth:Number = 900;
		private var rectHeight:Number = 160;
		private var rcolor:Array = new Array();
		private var alphas:Array = new Array();
		private var ratios:Array = new Array();
		
		private var singleTween:Tween = null;
		private var txtTween:Tween = null;
		
		public function hLfUnofficialRacing() {
			// constructor code
			super();
			
			this.addChild(myBar);
		
			this.rFormat.size = 40;
			this.rFormat.font = new RobotoBoldCondensed().fontName;
			this.rFormat.color = 0xfaddb5;
			
			this.dFormat.size = 25;
			this.dFormat.font = new RobotoBoldCondensed().fontName;
			this.dFormat.color = 0xffffff;
						
			this.txtFormat.size = 40;
			this.txtFormat.font = new RobotoBoldCondensed().fontName;
			this.txtFormat.color = 0xe89d22;
			this.txtFormat.align = TextFormatAlign.CENTER;
			
			this.txtFormat2.size = 45;
			this.txtFormat2.font = new RobotoBoldCondensed().fontName;
			this.txtFormat2.color = 0xffffff;
			this.txtFormat2.align = TextFormatAlign.CENTER;
				
			this.raceNumber.defaultTextFormat = rFormat;
			this.raceNumber.alpha = 1;
			this.raceNumber.autoSize = "left";
			this.raceNumber.type = TextFieldType.DYNAMIC;
			this.raceNumber.text = "10";
			this.raceNumber.x = 347;
			this.raceNumber.y = 719;
			this.raceNumber.filters = [myFilter];
			this.txtGroup.addChild(raceNumber);
									
			this.txt.defaultTextFormat = txtFormat;
			this.txt.alpha = 1;
			this.txt.autoSize = "left";
			this.txt.type = TextFieldType.DYNAMIC;
			this.txt.text = "7.";
			this.txt.x = 325;
			this.txt.y = 795;
			this.txt.filters = [myFilter];
			this.txtGroup.addChild(txt);
						
			this.txt2.defaultTextFormat = txtFormat2;
			this.txt2.alpha = 1;
			this.txt2.type = TextFieldType.DYNAMIC;
			this.txt2.text = "DOC CO CAU BAI";
			this.txt2.x = this.txt.x + 50;
			this.txt2.y = this.txt.y;
			this.txt2.autoSize = "left";
			this.txt2.filters = [myFilter];
			this.txtGroup.addChild(txt2);
			
			this.txt3.defaultTextFormat = txtFormat;
			this.txt3.alpha = 1;
			this.txt3.type = TextFieldType.DYNAMIC;
			this.txt3.text = "2.";
			this.txt3.x = this.txt.x;
			this.txt3.y = this.txt.y + 50;
			this.txt3.autoSize = "left";
			this.txt3.filters = [myFilter];
			this.txtGroup.addChild(txt3);
			
			this.txt4.defaultTextFormat = txtFormat2;
			this.txt4.alpha = 1;
			this.txt4.autoSize = "left";
			this.txt4.type = TextFieldType.DYNAMIC;
			this.txt4.text = "DONG TA";
			this.txt4.x = this.txt2.x;
			this.txt4.y = this.txt3.y ;
			this.txt4.filters = [myFilter];
			this.txtGroup.addChild(txt4);
						
			this.txt5.defaultTextFormat = txtFormat;
			this.txt5.alpha = 1;
			this.txt5.autoSize = "left";
			this.txt5.type = TextFieldType.DYNAMIC;
			this.txt5.text = "3.";
			this.txt5.x = this.txt3.x;
			this.txt5.y = this.txt4.y + 50;
			this.txt5.filters = [myFilter];
			this.txtGroup.addChild(txt5);
			
			this.txt6.defaultTextFormat = txtFormat2;
			this.txt6.alpha = 1;
			this.txt6.autoSize = "left";
			this.txt6.type = TextFieldType.DYNAMIC;
			this.txt6.text = "TAY DOC";
			this.txt6.x = this.txt5.x + 50;
			this.txt6.y = this.txt5.y ;
			this.txt6.filters = [myFilter];
			this.txtGroup.addChild(txt6);	
			
			
			this.d1.defaultTextFormat = dFormat;
			this.d1.alpha = 1;
			this.d1.autoSize = "left";
			this.d1.type = TextFieldType.DYNAMIC;
			this.d1.text = "đ";
			this.d1.x = 1300;
			this.d1.y = this.txt.y +5;
			this.d1.filters = [myFilter];
			this.txtGroup.addChild(d1);
			
			this.d2.defaultTextFormat = dFormat;
			this.d2.alpha = 1;
			this.d2.autoSize = "left";
			this.d2.type = TextFieldType.DYNAMIC;
			this.d2.text = "đ";
			this.d2.x = this.d1.x;
			this.d2.y = this.txt3.y +5;
			this.d2.filters = [myFilter];
			this.txtGroup.addChild(d2);
			
			this.d3.defaultTextFormat = dFormat;
			this.d3.alpha = 1;
			this.d3.autoSize = "left";
			this.d3.type = TextFieldType.DYNAMIC;
			this.d3.text = "đ";
			this.d3.x = this.d1.x;
			this.d3.y = this.txt5.y+5;
			this.d3.filters = [myFilter];
			this.txtGroup.addChild(d3);
			
			this.d4.defaultTextFormat = dFormat;
			this.d4.alpha = 1;
			this.d4.autoSize = "left";
			this.d4.type = TextFieldType.DYNAMIC;
			this.d4.text = "đ";
			this.d4.x = 1540;
			this.d4.y = this.d1.y;
			this.d4.filters = [myFilter];
			this.txtGroup.addChild(d4);
			
			this.d5.defaultTextFormat = dFormat;
			this.d5.alpha = 1;
			this.d5.autoSize = "left";
			this.d5.type = TextFieldType.DYNAMIC;
			this.d5.text = "đ";
			this.d5.x = this.d4.x;
			this.d5.y = this.d2.y;
			this.d5.filters = [myFilter];
			this.txtGroup.addChild(d5);
			
			this.d6.defaultTextFormat = dFormat;
			this.d6.alpha = 1;
			this.d6.autoSize = "left";
			this.d6.type = TextFieldType.DYNAMIC;
			this.d6.text = "đ";
			this.d6.x = this.d4.x;
			this.d6.y = this.d3.y;
			this.d6.filters = [myFilter];
			this.txtGroup.addChild(d6);
			
			this.txtWin1.defaultTextFormat = txtFormat2;
			this.txtWin1.alpha = 1;
			this.txtWin1.autoSize = "left";
			this.txtWin1.type = TextFieldType.DYNAMIC;
			this.txtWin1.text = "20.50";
			this.txtWin1.x = 1315;
			this.txtWin1.y = this.txt.y;
			this.txtWin1.filters = [myFilter];
			this.txtGroup.addChild(txtWin1);
			
			this.txtWin2.defaultTextFormat = txtFormat2;
			this.txtWin2.alpha = 1;
			this.txtWin2.autoSize = "left";
			this.txtWin2.type = TextFieldType.DYNAMIC;
			this.txtWin2.text = "20.50";
			this.txtWin2.x = this.txtWin1.x ;
			this.txtWin2.y = this.txt3.y;
			this.txtWin2.filters = [myFilter];
			this.txtGroup.addChild(txtWin2);
			
			this.txtWin3.defaultTextFormat = txtFormat2;
			this.txtWin3.alpha = 1;
			this.txtWin3.autoSize = "left";
			this.txtWin3.type = TextFieldType.DYNAMIC;
			this.txtWin3.text = "20.50";
			this.txtWin3.x = this.txtWin1.x ;
			this.txtWin3.y = this.txt5.y;
			this.txtWin3.filters = [myFilter];
			this.txtGroup.addChild(txtWin3);
			
			this.txtPlace1.defaultTextFormat = txtFormat2;
			this.txtPlace1.alpha = 1;
			this.txtPlace1.autoSize = "left";
			this.txtPlace1.type = TextFieldType.DYNAMIC;
			this.txtPlace1.text = "20.50";
			this.txtPlace1.x = 1540 +15;
			this.txtPlace1.y = this.txt.y;
			this.txtPlace1.filters = [myFilter];
			this.txtGroup.addChild(txtPlace1);
			
			this.txtPlace2.defaultTextFormat = txtFormat2;
			this.txtPlace2.alpha = 1;
			this.txtPlace2.autoSize = "left";
			this.txtPlace2.type = TextFieldType.DYNAMIC;
			this.txtPlace2.text = "20.50";
			this.txtPlace2.x = this.txtPlace1.x;
			this.txtPlace2.y = this.txt3.y;
			this.txtPlace2.filters = [myFilter];
			this.txtGroup.addChild(txtPlace2);
			
			this.txtPlace3.defaultTextFormat = txtFormat2;
			this.txtPlace3.alpha = 1;
			this.txtPlace3.autoSize = "left";
			this.txtPlace3.type = TextFieldType.DYNAMIC;
			this.txtPlace3.text = "20.50";
			this.txtPlace3.x = this.txtPlace1.x;
			this.txtPlace3.y = this.txt5.y;
			this.txtPlace3.filters = [myFilter];
			this.txtGroup.addChild(txtPlace3);

			this.addChild(txtGroup);
			
			this.addChild(maskBar);
			this.maskBar.x = 195;
			this.maskBar.y = 690;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 300;
			this.rectWidth = 1600;
			this.drawShapes(maskBar, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.myBar.mask = this.maskBar;
			this.txtGroup.visible = false;
			this.myBar.visible = false;
			this.addChild(eff);
			this.eff.visible = false;
			Play();
		}
		override public function SetData(xml:XML):void{
			for each (var element:XML in xml.children())
			{
				var property:String = element.@id;
				var data:String = element.data.@value;
				switch(property.toLowerCase())
				{
					case "race".toLowerCase():
						this.raceNumber.text = data;
						break;
					
					case "1stnumber".toLowerCase():
						this.txt.text = data;
						break;
					case "1stname".toLowerCase():
						this.txt2.text = data;						
						break;
					case "2ndnumber".toLowerCase():
						this.txt3.text = data;
						break;
					
					case "2ndname".toLowerCase():
						this.txt4.text = data;
						break;
					case "3rdnumber".toLowerCase():
						this.txt5.text = data;
						break;
					case "3rdname".toLowerCase():
						this.txt6.text = data;
						break;
					
					case "1stwin".toLowerCase():
						this.txtWin1.text = data;
						if (this.txtWin1.text==""){							
							this.d1.text = "";
						} else this.d1.text = "đ";
						break;
					case "2ndwin".toLowerCase():
						this.txtWin2.text = data;
						if (this.txtWin2.text==""){							
							this.d2.text = "";
						} else this.d2.text = "đ";
						break;
					case "3rdwin".toLowerCase():
						if (this.txtWin3.text==""){							
							this.d3.text = "";
						} else this.d3.text = "đ";
						break;
					
					case "1stplace".toLowerCase():
						this.txtPlace1.text = data;
						if (this.txtPlace1.text==""){							
							this.d4.text = "";
						} else this.d4.text = "đ";
						break;
					case "2ndplace".toLowerCase():
						this.txtPlace2.text = data;
						if (this.txtPlace2.text==""){							
							this.d5.text = "";
						} else this.d5.text = "đ";
						break;
					case "3rdplace".toLowerCase():
						this.txtPlace3.text = data;
						if (this.txtPlace3.text==""){							
							this.d6.text = "";
						} else this.d6.text = "đ";
						break;
															
				}
			}
		}
		private function comeIn():void{
			this.myBar.visible = true;
			this.singleTween = new Tween(myBar, "x", Regular.easeOut, -1500, 960, 0.5, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt);
		}
		private function comeInTxt(e:Event):void{
			this.txtGroup.visible = true;
			this.txtTween = new Tween(txtGroup, "alpha", Strong.easeIn, 0, 1, 0.1, true);
			this.eff.visible = true;
			this.singleTween = new Tween(eff, "x", None.easeOut, 221, 1705, 5, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, effOff);
		}
		private function effOff(e:Event):void{
			this.eff.visible = false;
			//this.txtTween = new Tween(eff, "alpha", Strong.easeOut, 1, 0, 0.1, true);
			
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
