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
	import flash.external.ExternalInterface;
			
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
		private var txt14:TextField = new TextField();
		private var txt15:TextField = new TextField();
		private var txt16:TextField = new TextField();
		private var txt17:TextField = new TextField();
		private var d1:TextField = new TextField();
		private var d2:TextField = new TextField();
		private var t1:TextField = new TextField();
		private var t2:TextField = new TextField();
		private var t3:TextField = new TextField();
		private var t4:TextField = new TextField();
		private var t5:TextField = new TextField();
		private var t6:TextField = new TextField();
		private var t7:TextField = new TextField();
		private var t8:TextField = new TextField();
		private var t9:TextField = new TextField();
		
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
			this.txt1.type = TextFieldType.INPUT;
			this.txt1.text = "STORM GOD";
			this.txt1.x = 550;
			this.txt1.y = 745;
			this.txt1.filters = [myFilter];
			this.txtGroup.addChild(txt1);
						
			this.txt2.defaultTextFormat = txtFormat2;
			this.txt2.alpha = 1;
			this.txt2.type = TextFieldType.INPUT;
			this.txt2.text = "08:07";
			this.txt2.x = 255;
			this.txt2.y = 667;
			this.txt2.autoSize = "left";
			this.txt2.filters = [myFilter];
			this.txtGroup.addChild(txt2);
			
			this.txt3.defaultTextFormat = txtFormat3;
			this.txt3.alpha = 1;
			this.txt3.type = TextFieldType.INPUT;
			this.txt3.text = "MADAGUI RACE 2";
			this.txt3.x = 400;
			this.txt3.y = this.txt2.y;
			this.txt3.autoSize = "left";
			this.txt3.filters = [myFilter];
			this.txtGroup.addChild(txt3);
			
			setTxt(txt14, txtFormat3, myFilter, "PURE BLONDE HANDICAP", 1150, this.txt2.y);
			this.txtGroup.addChild(txt14);
			
			this.txtFormat.color = 0xffffff;
			this.txt4.defaultTextFormat = txtFormat;
			this.txt4.alpha = 1;
			this.txt4.type = TextFieldType.INPUT;
			this.txt4.text = "(23)";
			this.txt4.x = 880;
			this.txt4.y = this.txt1.y;
			this.txt4.autoSize = "left";
			this.txt4.filters = [myFilter];
			this.txtGroup.addChild(txt4);
			
			setFormat(txtFormat, 150, 0xffffff, new RobotoMedium());
			setTxt(txt15, txtFormat, myFilter, "1.", 350, 750);
			this.txtGroup.addChild(txt15);
			
			this.txtFormat.size = 40;
			this.txt5.defaultTextFormat = txtFormat;
			this.txt5.alpha = 1;
			this.txt5.type = TextFieldType.INPUT;
			this.txt5.text = "NATASHA FAITHFULL";
			this.txt5.x = this.txt1.x;
			this.txt5.y = this.txt1.y + 60;
			this.txt5.autoSize = "left";
			this.txt5.filters = [myFilter];
			this.txtGroup.addChild(txt5);
						
			this.txtFormat.color = 0xe89d22;
			this.txt6.defaultTextFormat = txtFormat;
			this.txt6.alpha = 1;
			this.txt6.type = TextFieldType.INPUT;
			this.txt6.text = "58.0kg";
			this.txt6.x = 970;
			this.txt6.y = this.txt5.y;
			this.txt6.autoSize = "left";
			this.txt6.filters = [myFilter];
			this.txtGroup.addChild(txt6);
			
			this.txtFormat.letterSpacing = 90;
			this.txt7.defaultTextFormat = txtFormat;
			this.txt7.alpha = 1;
			this.txt7.type = TextFieldType.INPUT;
			this.txt7.text = "5100";
			this.txt7.x = 675;
			this.txt7.y = 856;
			this.txt7.autoSize = "left";
			this.txt7.filters = [myFilter];
			this.txtGroup.addChild(txt7);
			
			this.txtFormat.letterSpacing =0;
			this.txtFormat.color = 0xffffff;
			setTxt(txt16, txtFormat, myFilter, "Start: ", this.txt5.x, this.txt7.y);
			this.txtGroup.addChild(txt16);
			
			this.txtFormat.color = 0xe89d22;
			this.txtFormat.letterSpacing = 17;
			this.txt8.defaultTextFormat = txtFormat;
			this.txt8.alpha = 1;
			this.txt8.type = TextFieldType.INPUT;
			this.txt8.text = "0X164";
			this.txt8.x = 675;
			this.txt8.y = 905;
			this.txt8.autoSize = "left";
			this.txt8.filters = [myFilter];
			this.txtGroup.addChild(txt8);
			
			this.txtFormat.color = 0xffffff;
			this.txtFormat.letterSpacing = 0;
			setTxt(txt17, txtFormat, myFilter, "Form:", this.txt5.x, this.txt8.y);
			this.txtGroup.addChild(txt17);
			
			setTxt(t1, txtFormat, myFilter, "1st:", this.txt5.x + 165, this.txt7.y);
			this.txtGroup.addChild(t1);
			
			setTxt(t2, txtFormat, myFilter, "2nd:", this.txt5.x+ 270, this.txt7.y);
			this.txtGroup.addChild(t2);
			
			setTxt(t3, txtFormat, myFilter, "3rd:", this.txt5.x + 390, this.txt7.y);
			this.txtGroup.addChild(t3);
			
			setTxt(t4, txtFormat, myFilter, "-", this.txt5.x + 150, this.txt8.y);
			this.txtGroup.addChild(t4);
			
			setTxt(t5, txtFormat, myFilter, "-", this.txt5.x + 190, this.txt8.y);
			this.txtGroup.addChild(t5);
			
			setTxt(t6, txtFormat, myFilter, "-", this.txt5.x + 230, this.txt8.y);
			this.txtGroup.addChild(t6);
			
			setTxt(t7, txtFormat, myFilter, "-", this.txt5.x + 270, this.txt8.y);
			this.txtGroup.addChild(t7);
					
			this.txt9.defaultTextFormat = topFormat;
			this.txt9.alpha = 1;
			this.txt9.type = TextFieldType.INPUT;
			this.txt9.text = "Ad Valorem";
			this.txt9.x = 1475;
			this.txt9.y = this.txt1.y;
			this.txt9.width = 200;
			this.txt9.filters = [myFilter];
			this.txtGroup.addChild(txt9);
			
			this.txt10.defaultTextFormat = topFormat;
			this.txt10.alpha = 1;
			this.txt10.type = TextFieldType.INPUT;
			this.txt10.text = "Girl In A Storm (Metal Storm)";
			this.txt10.x = 1175;
			this.txt10.y = this.txt1.y + 30;
			this.txt10.width = 500;
			this.txt10.filters = [myFilter];
			this.txtGroup.addChild(txt10);
						
			this.txt11.defaultTextFormat = topFormat2;
			this.txt11.alpha = 1;
			this.txt11.type = TextFieldType.INPUT;
			this.txt11.text = "RUSSELL STEWART";
			this.txt11.x = 1175;
			this.txt11.y = this.txt5.y;
			this.txt11.width = 500;
			this.txt11.filters = [myFilter];
			this.txtGroup.addChild(txt11);
			
			this.d1.defaultTextFormat = dFormat;
			this.d1.alpha = 1;
			this.d1.autoSize = "left";
			this.d1.type = TextFieldType.INPUT;
			this.d1.text = "đ";
			this.d1.x = 1305;
			this.d1.y = 890;
			this.d1.filters = [myFilter];
			this.txtGroup.addChild(d1);
			
			this.d2.defaultTextFormat = dFormat;
			this.d2.alpha = 1;
			this.d2.autoSize = "left";
			this.d2.type = TextFieldType.INPUT;
			this.d2.text = "đ";
			this.d2.x = 1535;
			this.d2.y = this.d1.y;
			this.d2.filters = [myFilter];
			this.txtGroup.addChild(d2);
			
			this.topFormat2.size = 55;
			this.topFormat2.font = new RobotoMedium().fontName;
			this.txt12.defaultTextFormat = topFormat2;
			this.txt12.alpha = 1;
			this.txt12.type = TextFieldType.INPUT;
			this.txt12.text = "13.9";
			this.txt12.x = 1305;
			this.txt12.y = 890;
			this.txt12.autoSize = "left";
			this.txt12.filters = [myFilter];
			this.txtGroup.addChild(txt12);
		
			this.txt13.defaultTextFormat = topFormat2;
			this.txt13.alpha = 1;
			this.txt13.type = TextFieldType.INPUT;
			this.txt13.text = "3.80";
			this.txt13.x = 1535;
			this.txt13.autoSize = "left";
			this.txt13.y = this.txt12.y ;
			this.txt13.filters = [myFilter];
			this.txtGroup.addChild(txt13);
			
			setTxt(t8, topFormat2, myFilter, "W", 1220, this.txt12.y);
			this.txtGroup.addChild(t8);
			
			setTxt(t9, topFormat2, myFilter, "P", 1470, this.txt12.y);
			this.txtGroup.addChild(t9);
			
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
			xmlStr +=Add(xmlStr, "txt2", txt2);
			xmlStr +=Add(xmlStr, "txt3", txt3);
			xmlStr +=Add(xmlStr, "txt4", txt4);
			xmlStr +=Add(xmlStr, "txt5", txt5);
			xmlStr +=Add(xmlStr, "txt6", txt6);
			xmlStr +=Add(xmlStr, "txt7", txt7);
			xmlStr +=Add(xmlStr, "txt8", txt8);
			xmlStr +=Add(xmlStr, "txt9", txt9);
			xmlStr +=Add(xmlStr, "txt10", txt10);
			xmlStr +=Add(xmlStr, "txt11", txt11);
			xmlStr +=Add(xmlStr, "txt12", txt12);
			xmlStr +=Add(xmlStr, "txt13", txt13);
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
					case "txt2".toLowerCase():
						this.txt2.text = data.toUpperCase();
						break;
					case "txt3".toLowerCase():
						this.txt3.text = data.toUpperCase();
						break;
					case "txt7".toLowerCase():
						this.txt7.text = data.toUpperCase();
						break;
					case "txt8".toLowerCase():
						this.txt8.text = data.toUpperCase();
						break;
					case "txt5".toLowerCase():
						this.txt5.text = data.toUpperCase();
						break;
					case "txt1".toLowerCase():
						this.txt1.text = data.toUpperCase();
						break;
					case "txt9".toLowerCase():
						this.txt9.text = data;
						break;
					case "txt10".toLowerCase():
						this.txt10.text = data;
						break;
					case "txt11".toLowerCase():
						this.txt11.text = data.toUpperCase();
						break;
					case "txt12".toLowerCase():
						this.txt12.text = data.toUpperCase();
						break;
					case "txt13".toLowerCase():
						this.txt13.text = data.toUpperCase();
						break;
					case "txt4".toLowerCase():
						this.txt4.text = data.toUpperCase();
						break;
					case "txt6".toLowerCase():
						this.txt6.text = data.toUpperCase();
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
			this.singleTween = new Tween(eff, "x", None.easeOut, 221, 1705, 2, true);
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
