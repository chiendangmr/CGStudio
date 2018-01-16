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
		
	public class lfParadeRing extends CasparTemplate{
		
		public var eff:MovieClip = new light();
		public var myBar:MovieClip = new bar();
		private var txtGroup:MovieClip = new MovieClip();
		private var txt1:TextField = new TextField();
		private var txt2:TextField = new TextField();
		private var txt3:TextField = new TextField();
		private var txt4:TextField = new TextField();
		private var txt5:TextField = new TextField();
		private var txt6:TextField = new TextField();
		private var txt7:TextField = new TextField();
		private var txt8:TextField = new TextField();
		private var txt9:TextField = new TextField();
		private var txt10:TextField = new TextField();
		private var txt11:TextField = new TextField();
		private var txt12:TextField = new TextField();
		private var txt13:TextField = new TextField();
		private var d1:TextField = new TextField();
		private var d2:TextField = new TextField();
		
		private var dFormat:TextFormat = new TextFormat();
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
		
		public function lfParadeRing() {
			// constructor code
			super();
			
			this.addChild(myBar);
			this.myFilter.quality = -100;
			this.myFilter.strength = 2;
									
			this.txtFormat.size = 55;
			this.txtFormat.font = new RobotoBold().fontName;
			this.txtFormat.color = 0xe89d22;
						
			this.txtFormat2.size = 45;
			this.txtFormat2.font = new RobotoMedium().fontName;
			this.txtFormat2.color = 0x00cd00;
			
			this.txtFormat3.size = 45;
			this.txtFormat3.font = new RobotoMedium().fontName;
			this.txtFormat3.color = 0xfaddb5;
			
			this.topFormat.size = 30;
			this.topFormat.font = new RobotoMedium().fontName;
			this.topFormat.align = TextFormatAlign.RIGHT;
			this.topFormat.color = 0xffffff;
			
			this.topFormat2.size = 40;
			this.topFormat2.font = new RobotoBold().fontName;
			this.topFormat2.color = 0xffffff;
			this.topFormat2.align = TextFormatAlign.RIGHT;
			
			this.dFormat.size = 30;
			this.dFormat.font = new RobotoBoldCondensed().fontName;
			this.dFormat.color = 0xffffff;
						
			this.txt1.defaultTextFormat = txtFormat;
			this.txt1.alpha = 1;
			this.txt1.autoSize = "left";
			this.txt1.type = TextFieldType.DYNAMIC;
			this.txt1.text = "STORM GOD";
			this.txt1.x = 550;
			this.txt1.y = 745;
			this.txt1.filters = [myFilter];
			this.txtGroup.addChild(txt1);
						
			this.txt2.defaultTextFormat = txtFormat2;
			this.txt2.alpha = 1;
			this.txt2.type = TextFieldType.DYNAMIC;
			this.txt2.text = "08:07";
			this.txt2.x = 255;
			this.txt2.y = 667;
			this.txt2.autoSize = "left";
			this.txt2.filters = [myFilter];
			this.txtGroup.addChild(txt2);
			
			this.txt3.defaultTextFormat = txtFormat3;
			this.txt3.alpha = 1;
			this.txt3.type = TextFieldType.DYNAMIC;
			this.txt3.text = "2";
			this.txt3.x = 740;
			this.txt3.y = this.txt2.y;
			this.txt3.autoSize = "left";
			this.txt3.filters = [myFilter];
			this.txtGroup.addChild(txt3);
			
			this.txtFormat.color = 0xffffff;
			this.txt4.defaultTextFormat = txtFormat;
			this.txt4.alpha = 1;
			this.txt4.type = TextFieldType.DYNAMIC;
			this.txt4.text = "(23)";
			this.txt4.x = 880;
			this.txt4.y = this.txt1.y;
			this.txt4.autoSize = "left";
			this.txt4.filters = [myFilter];
			this.txtGroup.addChild(txt4);
			
			this.txtFormat.size = 40;
			this.txt5.defaultTextFormat = txtFormat;
			this.txt5.alpha = 1;
			this.txt5.type = TextFieldType.DYNAMIC;
			this.txt5.text = "NATASHA FAITHFULL";
			this.txt5.x = this.txt1.x;
			this.txt5.y = this.txt1.y + 60;
			this.txt5.autoSize = "left";
			this.txt5.filters = [myFilter];
			this.txtGroup.addChild(txt5);
						
			this.txtFormat.color = 0xe89d22;
			this.txt6.defaultTextFormat = txtFormat;
			this.txt6.alpha = 1;
			this.txt6.type = TextFieldType.DYNAMIC;
			this.txt6.text = "58.0kg";
			this.txt6.x = 970;
			this.txt6.y = this.txt5.y;
			this.txt6.autoSize = "left";
			this.txt6.filters = [myFilter];
			this.txtGroup.addChild(txt6);
			
			this.txtFormat.letterSpacing = 90;
			this.txt7.defaultTextFormat = txtFormat;
			this.txt7.alpha = 1;
			this.txt7.type = TextFieldType.DYNAMIC;
			this.txt7.text = "5100";
			this.txt7.x = 675;
			this.txt7.y = 856;
			this.txt7.autoSize = "left";
			this.txt7.filters = [myFilter];
			this.txtGroup.addChild(txt7);
			
			this.txtFormat.letterSpacing = 17;
			this.txt8.defaultTextFormat = txtFormat;
			this.txt8.alpha = 1;
			this.txt8.type = TextFieldType.DYNAMIC;
			this.txt8.text = "0X164";
			this.txt8.x = 655;
			this.txt8.y = 905;
			this.txt8.autoSize = "left";
			this.txt8.filters = [myFilter];
			this.txtGroup.addChild(txt8);
					
			this.txt9.defaultTextFormat = topFormat;
			this.txt9.alpha = 1;
			this.txt9.type = TextFieldType.DYNAMIC;
			this.txt9.text = "Ad Valorem";
			this.txt9.x = 1475;
			this.txt9.y = this.txt1.y;
			this.txt9.width = 200;
			this.txt9.filters = [myFilter];
			this.txtGroup.addChild(txt9);
			
			this.txt10.defaultTextFormat = topFormat;
			this.txt10.alpha = 1;
			this.txt10.type = TextFieldType.DYNAMIC;
			this.txt10.text = "Girl In A Storm (Metal Storm)";
			this.txt10.x = 1175;
			this.txt10.y = this.txt1.y + 30;
			this.txt10.width = 500;
			this.txt10.filters = [myFilter];
			this.txtGroup.addChild(txt10);
						
			this.txt11.defaultTextFormat = topFormat2;
			this.txt11.alpha = 1;
			this.txt11.type = TextFieldType.DYNAMIC;
			this.txt11.text = "RUSSELL STEWART";
			this.txt11.x = 1175;
			this.txt11.y = this.txt5.y;
			this.txt11.width = 500;
			this.txt11.filters = [myFilter];
			this.txtGroup.addChild(txt11);
			
			this.d1.defaultTextFormat = dFormat;
			this.d1.alpha = 1;
			this.d1.autoSize = "left";
			this.d1.type = TextFieldType.DYNAMIC;
			this.d1.text = "đ";
			this.d1.x = 1310;
			this.d1.y = 890;
			this.d1.filters = [myFilter];
			this.txtGroup.addChild(d1);
			
			this.d2.defaultTextFormat = dFormat;
			this.d2.alpha = 1;
			this.d2.autoSize = "left";
			this.d2.type = TextFieldType.DYNAMIC;
			this.d2.text = "đ";
			this.d2.x = 1545;
			this.d2.y = this.d1.y;
			this.d2.filters = [myFilter];
			this.txtGroup.addChild(d2);
			
			this.topFormat2.size = 55;
			this.topFormat2.font = new RobotoMedium().fontName;
			this.txt12.defaultTextFormat = topFormat2;
			this.txt12.alpha = 1;
			this.txt12.type = TextFieldType.DYNAMIC;
			this.txt12.text = "13.9";
			this.txt12.x = 1325;
			this.txt12.y = 890;
			this.txt12.autoSize = "left";
			this.txt12.filters = [myFilter];
			this.txtGroup.addChild(txt12);
		
			this.txt13.defaultTextFormat = topFormat2;
			this.txt13.alpha = 1;
			this.txt13.type = TextFieldType.DYNAMIC;
			this.txt13.text = "3.80";
			this.txt13.x = 1560;
			this.txt13.autoSize = "left";
			this.txt13.y = this.txt12.y ;
			this.txt13.filters = [myFilter];
			this.txtGroup.addChild(txt13);
						
			this.addChild(txtGroup);
			
			this.addChild(maskBar);
			this.maskBar.x = 195;
			this.maskBar.y = 640;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 400;
			this.rectWidth = 1600;
			this.drawShapes(maskBar, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.myBar.mask = this.maskBar;
			this.txtGroup.visible = false;
			this.myBar.visible = false;
			this.addChild(eff);
			this.eff.visible = false;
			//Play();
			
		}
		override public function SetData(xml:XML):void{
			for each (var element:XML in xml.children())
			{
				var property:String = element.@id;
				var data:String = element.data.@value;
				switch(property.toLowerCase())
				{
					case "time".toLowerCase():
						this.txt2.text = data.toUpperCase();
						break;
					case "race".toLowerCase():
						this.txt3.text = data.toUpperCase();
						break;
					case "position".toLowerCase():
						this.txt7.text = data.toUpperCase();
						break;
					case "form".toLowerCase():
						this.txt8.text = data.toUpperCase();
						break;
					case "playername".toLowerCase():
						this.txt5.text = data.toUpperCase();
						break;
					case "dogname".toLowerCase():
						this.txt1.text = data.toUpperCase();
						break;
					case "ad".toLowerCase():
						this.txt9.text = data;
						break;
					case "songname".toLowerCase():
						this.txt10.text = data;
						break;
					case "singer".toLowerCase():
						this.txt11.text = data.toUpperCase();
						break;
					case "w".toLowerCase():
						this.txt12.text = data.toUpperCase();
						break;
					case "p".toLowerCase():
						this.txt13.text = data.toUpperCase();
						break;
					case "age".toLowerCase():
						this.txt4.text = "("+ data.toUpperCase() + ")";
						break;
					case "kg".toLowerCase():
						this.txt6.text = data.toUpperCase() + "kg";
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
