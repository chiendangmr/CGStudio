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
	import fl.containers.UILoader;
	import flash.net.URLRequest;
		
	public class runningNumbers extends CasparTemplate{
		
		public var myBar1:MovieClip = new bar1();
		public var myBar2:MovieClip = new bar2();
		public var myBar3:MovieClip = new bar2();
		public var myBar4:MovieClip = new bar2();
		public var myBar5:MovieClip = new bar3();
		public var icon1:UILoader = new UILoader;
		public var icon2:UILoader = new UILoader;
		public var icon3:UILoader = new UILoader;
		public var icon4:UILoader = new UILoader;
		private var request:URLRequest = null;
				
		public var d1:TextField = new TextField();
		public var d2:TextField = new TextField();
		public var d3:TextField = new TextField();
		public var d4:TextField = new TextField();
		private var dFormat:TextFormat = new TextFormat();
		
		private var txt3Bar:MovieClip = new MovieClip();
		private var txtGroup:MovieClip = new MovieClip();
		private var txtGroup1:MovieClip = new MovieClip();
		private var txtGroup2:MovieClip = new MovieClip();
		private var txtGroup3:MovieClip = new MovieClip();
		private var txtGroup4:MovieClip = new MovieClip();
		private var txt1:TextField = new TextField();
		private var txt2:TextField = new TextField();
		private var txt3:TextField = new TextField();
		private var txt4:TextField = new TextField();
		private var txt5:TextField = new TextField();
		private var txt6:TextField = new TextField();
		private var txt7:TextField = new TextField();
		private var txt8:TextField = new TextField();
		private var txt9:TextField = new TextField();		
		public var txt10:TextField = new TextField();
		public var txt11:TextField = new TextField();
		public var txt12:TextField = new TextField();
		public var txt13:TextField = new TextField();
		public var t1:TextField = new TextField();
								
		private var txtFormat:TextFormat = new TextFormat();
		private var txtFormat2:TextFormat = new TextFormat();
		private var txtFormat3:TextFormat = new TextFormat();
		
		private var myFilter:DropShadowFilter = new DropShadowFilter();
								
		private var maskBar1:Shape = new Shape();
		private var maskBar2:Shape = new Shape();
		private var maskBar3:Shape = new Shape();
		private var maskBar4:Shape = new Shape();
		private var maskBar5:Shape = new Shape();
		private var rectWidth:Number = 900;
		private var rectHeight:Number = 160;
		private var rcolor:Array = new Array();
		private var alphas:Array = new Array();
		private var ratios:Array = new Array();
		
		private var singleTween:Tween = null;
		private var txtTween:Tween = null;	
		public var eff:MovieClip = new light();
		
		public function runningNumbers() {
			// constructor code
			super();			
			this.addChild(myBar1);
			this.addChild(myBar4);
			this.addChild(myBar3);			
			this.addChild(myBar2);
			this.addChild(myBar5);
			/*this.addChild(d2);
			this.addChild(d3);
			this.addChild(d4);
			this.addChild(d1);*/
			this.myFilter.quality = -100;
			this.myFilter.strength = 2;
			
			this.dFormat.size = 20;
			this.dFormat.font = new RobotoBold().fontName;
			this.dFormat.color = 0xffffff;
			
			this.txtFormat.size = 40;
			this.txtFormat.font = new RobotoBold().fontName;
			this.txtFormat.color = 0xffffff;
									
			this.txtFormat2.size = 55;
			this.txtFormat2.font = new RobotoBoldCondensed().fontName;
			this.txtFormat2.color = 0xffffff;
			
			this.txtFormat3.size = 55;
			this.txtFormat3.font = new RobotoBold().fontName;
			this.txtFormat3.color = 0xfaddb5;
				
			this.d1.defaultTextFormat = dFormat;
			this.d1.alpha = 1;
			this.d1.autoSize = "left";
			this.d1.type = TextFieldType.INPUT;
			this.d1.text = "đ";
			this.d1.x = 433;
			this.d1.y = 765;
			this.d1.filters = [myFilter];
			
			this.d2.defaultTextFormat = dFormat;
			this.d2.alpha = 1;
			this.d2.autoSize = "left";
			this.d2.type = TextFieldType.INPUT;
			this.d2.text = "đ";
			this.d2.x = 809;
			this.d2.y = 765;
			this.d2.filters = [myFilter];			
			
			this.d3.defaultTextFormat = dFormat;
			this.d3.alpha = 1;
			this.d3.autoSize = "left";
			this.d3.type = TextFieldType.INPUT;
			this.d3.text = "đ";
			this.d3.x = 1189;
			this.d3.y = 765;
			this.d3.filters = [myFilter];
			
			this.d4.defaultTextFormat = dFormat;
			this.d4.alpha = 1;
			this.d4.autoSize = "left";
			this.d4.type = TextFieldType.INPUT;
			this.d4.text = "đ";
			this.d4.x = 1563;
			this.d4.y = 765;
			this.d4.filters = [myFilter];
			
			this.txt1.defaultTextFormat = txtFormat;
			this.txt1.alpha = 1;
			this.txt1.autoSize = "left";
			this.txt1.type = TextFieldType.INPUT;
			this.txt1.text = "1";
			this.txt1.x = 375;
			this.txt1.y = 760;
			this.txt1.filters = [myFilter];
									
			this.txt2.defaultTextFormat = txtFormat;
			this.txt2.alpha = 1;
			this.txt2.type = TextFieldType.INPUT;
			this.txt2.text = "13.90";
			this.txt2.x = this.txt1.x + 70;
			this.txt2.y = this.txt1.y;
			this.txt2.autoSize = "left";
			this.txt2.filters = [myFilter];
						
			this.txt3.defaultTextFormat = txtFormat3;
			this.txt3.alpha = 1;
			this.txt3.type = TextFieldType.INPUT;
			this.txt3.text = "RACE 2";
			this.txt3.x = 250;
			this.txt3.y = 129;
			this.txt3.autoSize = "left";
			this.txt3.filters = [myFilter];
			
			setTxt(t1, txtFormat, myFilter, "MADAGUI", this.txt3.x, 225);
												
			this.txt4.defaultTextFormat = txtFormat;
			this.txt4.alpha = 1;
			this.txt4.type = TextFieldType.INPUT;
			this.txt4.text = "1";
			this.txt4.x = 750;
			this.txt4.y = this.txt1.y;
			this.txt4.autoSize = "left";
			this.txt4.filters = [myFilter];
						
			this.txt5.defaultTextFormat = txtFormat;
			this.txt5.alpha = 1;
			this.txt5.type = TextFieldType.INPUT;
			this.txt5.text = "13.90";
			this.txt5.x = this.txt4.x + 70;
			this.txt5.y = this.txt1.y;
			this.txt5.autoSize = "left";
			this.txt5.filters = [myFilter];
						
			this.txt6.defaultTextFormat = txtFormat;
			this.txt6.alpha = 1;
			this.txt6.type = TextFieldType.INPUT;
			this.txt6.text = "1";
			this.txt6.x = this.txt5.x + 310;
			this.txt6.y = this.txt1.y;
			this.txt6.autoSize = "left";
			this.txt6.filters = [myFilter];
					
			this.txt7.defaultTextFormat = txtFormat;
			this.txt7.alpha = 1;
			this.txt7.type = TextFieldType.INPUT;
			this.txt7.text = "13.90";
			this.txt7.x = this.txt6.x + 70;
			this.txt7.y = this.txt1.y;
			this.txt7.autoSize = "left";
			this.txt7.filters = [myFilter];
						
			this.txt8.defaultTextFormat = txtFormat;
			this.txt8.alpha = 1;
			this.txt8.type = TextFieldType.INPUT;
			this.txt8.text = "1";
			this.txt8.x = this.txt7.x + 305;
			this.txt8.y = this.txt1.y;
			this.txt8.autoSize = "left";
			this.txt8.filters = [myFilter];
					
			this.txt9.defaultTextFormat = txtFormat;
			this.txt9.alpha = 1;
			this.txt9.type = TextFieldType.INPUT;
			this.txt9.text = "13.90";
			this.txt9.x = this.txt8.x + 70;
			this.txt9.y = this.txt1.y;
			this.txt9.autoSize = "left";
			this.txt9.filters = [myFilter];
						
			this.txt10.defaultTextFormat = txtFormat2;
			this.txt10.alpha = 1;
			this.txt10.type = TextFieldType.INPUT;
			this.txt10.text = "STORM GOD";
			this.txt10.x = this.txt1.x;
			this.txt10.y = this.txt1.y + 60;
			this.txt10.width = 220;
			this.txt10.height = 150;
			this.txt10.multiline = true;
			this.txt10.wordWrap = true;
			this.txt10.filters = [myFilter];
					
			this.txt13.defaultTextFormat = txtFormat2;
			this.txt13.alpha = 1;
			this.txt13.type = TextFieldType.INPUT;
			this.txt13.text = "HAMLET";
			this.txt13.x = this.txt8.x;
			this.txt13.y = this.txt8.y + 60;
			this.txt13.width = 220;
			this.txt13.height = 150;
			this.txt13.multiline = true;
			this.txt13.wordWrap = true;
			this.txt13.filters = [myFilter];
					
			this.txt11.defaultTextFormat = txtFormat2;
			this.txt11.alpha = 1;
			this.txt11.type = TextFieldType.INPUT;
			this.txt11.text = "VERSED REMEDY";
			this.txt11.x = this.txt4.x;
			this.txt11.y = this.txt4.y + 60;
			this.txt11.width = 220;
			this.txt11.height = 150;
			this.txt11.multiline = true;
			this.txt11.wordWrap = true;
			this.txt11.filters = [myFilter];
						
			this.txt12.defaultTextFormat = txtFormat2;
			this.txt12.alpha = 1;
			this.txt12.type = TextFieldType.INPUT;
			this.txt12.text = "ECHO ROMEO";
			this.txt12.x = this.txt6.x;
			this.txt12.y = this.txt6.y + 60;
			this.txt12.width = 220;
			this.txt12.height = 150;
			this.txt12.multiline = true;
			this.txt12.wordWrap = true;
			this.txt12.filters = [myFilter];
						
			this.maskBar1.x = 105;
			this.maskBar1.y = 100;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 200;
			this.rectWidth = 450;
			this.drawShapes(maskBar1, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.maskBar2.x = 200;
			this.maskBar3.x = this.maskBar2.x + this.myBar2.width;
			this.maskBar4.x = this.maskBar3.x + this.myBar2.width - 10;
			this.maskBar5.x = this.maskBar4.x + this.myBar2.width - 12;
			this.maskBar2.y = this.maskBar3.y = this.maskBar4.y = this.maskBar5.y = 745;
			this.rectHeight = this.myBar2.height;
			this.rectWidth = this.myBar2.width;
			
			this.drawShapes(maskBar2, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			this.drawShapes(maskBar3, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			this.drawShapes(maskBar4, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			this.drawShapes(maskBar5, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.myBar1.mask = this.maskBar1;
			this.myBar2.mask = this.maskBar2;
			this.myBar3.mask = this.maskBar3;
			this.myBar4.mask = this.maskBar4;
			this.myBar5.mask = this.maskBar5;
			
			this.txt3Bar.addChild(txt3);
			this.txt3Bar.addChild(t1);
			this.txtGroup1.addChild(d1);
			this.txtGroup1.addChild(txt1);
			this.txtGroup1.addChild(txt2);
			this.txtGroup1.addChild(txt10);
			
			this.txtGroup2.addChild(d2);
			this.txtGroup2.addChild(txt4);
			this.txtGroup2.addChild(txt5);
			this.txtGroup2.addChild(txt11);
			
			this.txtGroup3.addChild(d3);
			this.txtGroup3.addChild(txt6);
			this.txtGroup3.addChild(txt7);
			this.txtGroup3.addChild(txt12);
			
			this.txtGroup4.addChild(d4);
			this.txtGroup4.addChild(txt8);
			this.txtGroup4.addChild(txt9);
			this.txtGroup4.addChild(txt13);
			
			this.txtGroup.addChild(txt3Bar);
			this.txtGroup.addChild(txtGroup1);
			this.txtGroup.addChild(txtGroup2);
			this.txtGroup.addChild(txtGroup3);
			this.txtGroup.addChild(txtGroup4);
						
			this.addChild(txt3Bar);
			this.addChild(txtGroup1);
			this.addChild(txtGroup2);
			this.addChild(txtGroup3);
			this.addChild(txtGroup4);
			this.addChild(txtGroup);
			this.addChild(eff);
			this.eff.visible = false;
			this.txt3Bar.visible = false;
			this.txtGroup1.visible = false;
			this.txtGroup2.visible = false;
			this.txtGroup3.visible = false;
			this.txtGroup4.visible = false;
			this.txtGroup.visible = false;
			this.myBar1.visible = false;
			this.myBar2.visible = false;
			this.myBar3.visible = false;
			this.myBar4.visible = false;
			this.myBar5.visible = false;
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
			xmlStr +=Add(xmlStr, "t1", t1);
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
					case "txt3".toLowerCase():
						this.txt3.text = data.toUpperCase();
						break;
					case "t1".toLowerCase():
						this.t1.text = data.toUpperCase();
						comeIn11();
						break;
					case "txt1".toLowerCase():
						this.txt1.text = data.toUpperCase();
						break;
					case "txt2".toLowerCase():
						this.txt2.text = data.toUpperCase();
						break;
					case "txt10".toLowerCase():
						this.txt10.text = data.toUpperCase();
						comeIn21();
						break;
					
					case "txt4".toLowerCase():
						this.txt4.text = data.toUpperCase();
						break;
					case "txt5".toLowerCase():
						this.txt5.text = data.toUpperCase();
						break;
					case "txt11".toLowerCase():
						this.txt11.text = data.toUpperCase();
						comeIn31();
						break;
					
					case "txt6".toLowerCase():
						this.txt6.text = data.toUpperCase();
						break;
					case "txt7".toLowerCase():
						this.txt7.text = data.toUpperCase();
						break;
					case "txt12".toLowerCase():
						this.txt12.text = data.toUpperCase();
						comeIn41();
						break;
					
					case "txt8".toLowerCase():
						this.txt8.text = data.toUpperCase();
						break;
					case "txt9".toLowerCase():
						this.txt9.text = data.toUpperCase();
						break;
					case "txt13".toLowerCase():
						this.txt13.text = data.toUpperCase();
						comeIn51();
						break;
					case "icon1".toLowerCase():
						request = new URLRequest(data);
						this.icon1.load(request);
						break;
					case "icon2".toLowerCase():
						request = new URLRequest(data);
						this.icon2.load(request);
						break;
					case "icon3".toLowerCase():
						request = new URLRequest(data);
						this.icon3.load(request);
						break;
					case "icon4".toLowerCase():
						request = new URLRequest(data);
						this.icon4.load(request);
						break;
															
				}
			}
		}
		public function comeIn1():void{
			this.myBar1.visible = true;
			this.singleTween = new Tween(myBar1, "x", Regular.easeOut, -1500, 351, 0.2, true);			
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt1);
		}
		private function comeInTxt1(e:Event):void{
			this.txt3Bar.visible = true;
			this.txtTween = new Tween(txt3Bar, "alpha", Strong.easeOut, 0, 1, 0.1, true);
			this.txtTween.addEventListener(TweenEvent.MOTION_FINISH, comeIn2);
		}
		public function comeIn2(e:Event):void{
			this.myBar2.visible = true;
			this.singleTween = new Tween(myBar2, "x", Regular.easeOut, -1500, 394, 0.2, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt2);
		}
		private function comeInTxt2(e:Event):void{
			this.txtGroup1.visible = true;
			this.txtTween = new Tween(txtGroup1, "alpha", Strong.easeOut, 0, 1, 0.1, true);
			this.txtTween.addEventListener(TweenEvent.MOTION_FINISH, comeIn3);
		}
		public function comeIn3(e:Event):void{
			this.myBar3.visible = true;
			this.singleTween = new Tween(myBar3, "x", Regular.easeOut, -1500, 772, 0.2, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt3);
		}
		private function comeInTxt3(e:Event):void{
			this.txtGroup2.visible = true;
			this.txtTween = new Tween(txtGroup2, "alpha", Strong.easeOut, 0, 1, 0.1, true);
			this.txtTween.addEventListener(TweenEvent.MOTION_FINISH, comeIn4);
		}
		public function comeIn4(e:Event):void{
			this.myBar4.visible = true;
			this.singleTween = new Tween(myBar4, "x", Regular.easeOut, -1500, 1148, 0.2, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt4);
		}
		private function comeInTxt4(e:Event):void{
			this.txtGroup3.visible = true;
			this.txtTween = new Tween(txtGroup3, "alpha", Strong.easeOut, 0, 1, 0.1, true);
			this.txtTween.addEventListener(TweenEvent.MOTION_FINISH, comeIn5);
		}
		public function comeIn5(e:Event):void{
			this.myBar5.visible = true;
			this.singleTween = new Tween(myBar5, "x", Regular.easeOut, -1500, 1526, 0.2, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt5);
		}
		private function comeInTxt5(e:Event):void{
			this.txtGroup4.visible = true;
			this.txtTween = new Tween(txtGroup4, "alpha", Strong.easeOut, 0, 1, 0.1, true);
			this.eff.visible = true;
			this.singleTween = new Tween(eff, "x", None.easeOut, 221, 1705, 2, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, effOff);
		}
		private function effOff(e:Event):void{
			this.eff.visible = false;
			//this.txtTween = new Tween(eff, "alpha", Strong.easeOut, 1, 0, 0.1, true);
			
		}
		///////////////////////////////////////////////////////////////////////////////////
		public function comeIn11():void{
			this.txt3Bar.visible = false;
			this.myBar1.visible = true;
			this.singleTween = new Tween(myBar1, "x", Regular.easeOut, -1500, 351, 0.2, true);			
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt11);
		}
		private function comeInTxt11(e:Event):void{
			this.txt3Bar.visible = true;
			this.txtTween = new Tween(txt3Bar, "alpha", Strong.easeOut, 0, 1, 0.1, true);
		}
		public function comeIn21():void{
			this.txtGroup1.visible = false;
			this.myBar2.visible = true;
			this.singleTween = new Tween(myBar2, "x", Regular.easeOut, -1500, 394, 0.2, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt21);
		}
		private function comeInTxt21(e:Event):void{
			this.txtGroup1.visible = true;
			this.txtTween = new Tween(txtGroup1, "alpha", Strong.easeOut, 0, 1, 0.1, true);
		}
		public function comeIn31():void{
			this.txtGroup2.visible = false;
			this.myBar3.visible = true;
			this.singleTween = new Tween(myBar3, "x", Regular.easeOut, -1500, 772, 0.2, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt31);
		}
		private function comeInTxt31(e:Event):void{
			this.txtGroup2.visible = true;
			this.txtTween = new Tween(txtGroup2, "alpha", Strong.easeOut, 0, 1, 0.1, true);
			
		}
		public function comeIn41():void{
			this.txtGroup3.visible = false;
			this.myBar4.visible = true;
			this.singleTween = new Tween(myBar4, "x", Regular.easeOut, -1500, 1148, 0.2, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt41);
		}
		private function comeInTxt41(e:Event):void{
			this.txtGroup3.visible = true;
			this.txtTween = new Tween(txtGroup3, "alpha", Strong.easeOut, 0, 1, 0.1, true);
		
		}
		public function comeIn51():void{
			this.txtGroup4.visible = false;
			this.myBar5.visible = true;
			this.singleTween = new Tween(myBar5, "x", Regular.easeOut, -1500, 1526, 0.2, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt51);
		}
		private function comeInTxt51(e:Event):void{
			this.txtGroup4.visible = true;
			this.txtTween = new Tween(txtGroup4, "alpha", Strong.easeOut, 0, 1, 0.1, true);
			this.eff.visible = true;
			this.singleTween = new Tween(eff, "x", None.easeOut, 221, 1705, 5, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, effOff);
		}
		
		public function comeOut(){
			this.txt3.visible = false;
			this.txtGroup1.visible = false;
			this.txtGroup2.visible = false;
			this.txtGroup3.visible = false;
			this.txtGroup4.visible = false;
			//this.txtGroup.visible = false;
			this.myBar1.visible = false;
			this.myBar2.visible = false;
			this.myBar3.visible = false;
			this.myBar4.visible = false;
			this.myBar5.visible = false;
			this.txtTween = new Tween(txtGroup, "alpha", Strong.easeIn, 1, 0, 0.1, true);
			this.txtTween.addEventListener(TweenEvent.MOTION_FINISH, comeOutBar);
		}
		private function comeOutBar(e:Event):void{
			this.singleTween = new Tween(myBar1, "y", Regular.easeOut, 960, 1200, 0.5, true);
		}
		public override function Play():void{
			comeIn1();			
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
