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
		
	public class lfUnofficialWinner extends CasparTemplate{
		
		private var singleLine:MovieClip = new unofficialWinner();
		private var txtGroup:MovieClip = new MovieClip();
		private var txt:TextField = new TextField();
		private var txt2:TextField = new TextField();
		private var txt3:TextField = new TextField();
		private var txt4:TextField = new TextField();
		private var txt5:TextField = new TextField();
		private var txtFormat:TextFormat = new TextFormat();
		private var txtFormat2:TextFormat = new TextFormat();
		private var txtFormat3:TextFormat = new TextFormat();
		private var myFilter:DropShadowFilter = new DropShadowFilter();
		
		private var winnerLogo:MovieClip = new logo();
				
		private var maskBar:Shape = new Shape();
		private var rectWidth:Number = 900;
		private var rectHeight:Number = 160;
		private var rcolor:Array = new Array();
		private var alphas:Array = new Array();
		private var ratios:Array = new Array();
		
		private var singleTween:Tween = null;
		private var txtTween:Tween = null;
		
		public function lfUnofficialWinner() {
			// constructor code
			super();
			//this.singleLine.x = 990;
			this.singleLine.y = 840;
			this.addChild(singleLine);
			
			this.txtFormat.size = 40;
			this.txtFormat.font = new RobotoBoldCondensed().fontName;
			this.txtFormat.color = 0xfaddb5;
			this.txtFormat.align = TextFormatAlign.CENTER;
			
			this.txtFormat2.size = 45;
			this.txtFormat2.font = new RobotoBoldCondensed().fontName;
			this.txtFormat2.color = 0xe89d22;
			this.txtFormat2.align = TextFormatAlign.CENTER;
			
			this.txtFormat3.size = 85;
			this.txtFormat3.font = new RobotoBoldCondensed().fontName;
			this.txtFormat3.color = 0xe89d22;
			this.txtFormat3.align = TextFormatAlign.CENTER;
			
			this.txt.defaultTextFormat = txtFormat;
			this.txt.alpha = 1;
			this.txt.autoSize = "left";
			this.txt.type = TextFieldType.DYNAMIC;
			this.txt.text = "RACE 2 MADAGUI";
			this.txt.x = 257;
			this.txt.y = 725;
			this.txt.filters = [myFilter];
			this.txtGroup.addChild(txt);
						
			this.txt2.defaultTextFormat = txtFormat;
			this.txt2.alpha = 1;
			this.txt2.type = TextFieldType.DYNAMIC;
			this.txt2.text = "PURE BLONDE HANDICAP";
			this.txt2.x = 500;
			this.txt2.y = this.txt.y;
			this.txt2.width = 900;
			this.txt2.height = 100;
			this.txt2.filters = [myFilter];
			this.txtGroup.addChild(txt2);
			
			this.txt3.defaultTextFormat = txtFormat2;
			this.txt3.alpha = 1;
			this.txt3.type = TextFieldType.DYNAMIC;
			this.txt3.text = "UNOFFICIAL WINNER";
			this.txt3.x = 210;
			this.txt3.y = 800;
			this.txt3.width = 1500;
			this.txt3.height = 100;
			this.txt3.filters = [myFilter];
			this.txtGroup.addChild(txt3);
			
			this.txt4.defaultTextFormat = txtFormat3;
			this.txt4.alpha = 1;
			this.txt4.autoSize = "left";
			this.txt4.type = TextFieldType.DYNAMIC;
			this.txt4.text = "7.";
			this.txt4.x = 615;
			this.txt4.y = 850;
			this.txt4.filters = [myFilter];
			this.txtGroup.addChild(txt4);
			
			this.txtFormat3.color = 0xffffff;
			this.txt5.defaultTextFormat = txtFormat3;
			this.txt5.alpha = 1;
			this.txt5.autoSize = "left";
			this.txt5.type = TextFieldType.DYNAMIC;
			this.txt5.text = "VERSED REMEDY";
			this.txt5.x = this.txt4.x + 90;
			this.txt5.y = this.txt4.y;
			this.txt5.filters = [myFilter];
			this.txtGroup.addChild(txt5);
			
			this.winnerLogo.x = 350;
			this.winnerLogo.y = 870;
			this.winnerLogo.width = 193;
			this.winnerLogo.height = 152;
			this.txtGroup.addChild(winnerLogo);
			this.addChild(txtGroup);
			
			this.addChild(maskBar);
			this.maskBar.x = 180;
			this.maskBar.y = 700;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 400;
			this.rectWidth = 1530;
			this.drawShapes(maskBar, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.singleLine.mask = this.maskBar;
			this.txtGroup.visible = false;
			this.singleLine.visible = false;
			
		}
		override public function SetData(xml:XML):void{
			for each (var element:XML in xml.children())
			{
				var property:String = element.@id;
				var data:String = element.data.@value;
				switch(property.toLowerCase())
				{
					case "race".toLowerCase():
						this.txt.text = "RACE "+ data.toUpperCase()+ " MADAGUI";
						break;
					
					case "number".toLowerCase():
						this.txt4.text = data.toUpperCase() + ".";
						break;
					case "name".toLowerCase():
						this.txt5.text = data.toUpperCase();
						break;
				}
			}
		}
		private function comeIn():void{
			this.singleLine.visible = true;
			this.singleTween = new Tween(singleLine, "x", Regular.easeOut, -1500, 960, 0.5, true);
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
			this.singleTween = new Tween(singleLine, "y", Regular.easeOut, 840, 1200, 1, true);
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
