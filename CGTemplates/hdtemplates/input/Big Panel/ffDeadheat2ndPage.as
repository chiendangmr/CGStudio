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
	import flash.filters.*;
	import flash.external.ExternalInterface;
	import flash.text.Font;
	
	public class ffDeadheat2ndPage extends CasparTemplate {
		
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
		
		private var dFormat:TextFormat = new TextFormat();
		private var betFormat:TextFormat = new TextFormat();
		private var fTimeFormat:TextFormat = new TextFormat();
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
		
		private var d1:TextField = new TextField();
		private var d2:TextField = new TextField();
		private var d3:TextField = new TextField();
		private var d4:TextField = new TextField();
		private var d5:TextField = new TextField();
		private var d6:TextField = new TextField();
		private var d7:TextField = new TextField();
		private var d8:TextField = new TextField();
		private var d9:TextField = new TextField();
		private var d10:TextField = new TextField();
		private var d11:TextField = new TextField();
		private var d12:TextField = new TextField();
		private var d13:TextField = new TextField();
		private var d14:TextField = new TextField();
		
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
		private var myFilter:DropShadowFilter = new DropShadowFilter();
			
		public function ffDeadheat2ndPage() {
			// constructor code
			super();
			this.myFilter.quality = -50;
			this.myFilter.strength = 1;
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
			this.fMain.type = TextFieldType.INPUT;
			this.fMain.autoSize = "left";
			this.fMain.x = 257;
			this.fMain.y = 127;
			this.fMain.text = "RACE 2 MADAGUI PURE BLONDE HANDICAP";
			this.fMain.filters = [myFilter];
			this.addChild(fMain);
			setFormat(betFormat, 60, 0xe89d22, new RobotoBold());
			setTxt(txt1, betFormat, myFilter, "MR12", 1500, this.fMain.y);
				
			setFormat(fTimeFormat, 40, 0x124089, new RobotoBlack());
			setTxt(txt2, fTimeFormat, myFilter, "FINAL DEVIDENDS", this.fMain.x, 230);
			
			this.f1Format.size = 40;
			this.f1Format.color = 0xe89d22;
			this.f1Format.font = new RobotoBoldCondensed().fontName;
			
			this.f2Format.size = 40;
			this.f2Format.color = 0xffffff;
			this.f2Format.font = new RobotoBoldCondensed().fontName;
			
			this.f3Format.size = 40;
			this.f3Format.color = 0xe89d22;
			this.f3Format.font = new RobotoBoldCondensed().fontName;
			
			this.f4Format.size = 40;
			this.f4Format.color = 0xffffff;
			this.f4Format.font = new RobotoBoldCondensed().fontName;
			//F8 constructor
			this.f8Number.defaultTextFormat = f1Format;
			this.f8Number.type = TextFieldType.INPUT;
			this.f8Number.x = 255;
			this.f8Number.y = 300;
			this.f8Number.autoSize = "left";
			this.f8Number.text = "QUINELLA:";
			this.f8Number.filters = [myFilter];
			this.addChild(f8Number);
			
			this.f8Name.defaultTextFormat = f2Format;
			this.f8Name.type = TextFieldType.INPUT;
			this.f8Name.autoSize = "left";
			this.f8Name.x = 465;
			this.f8Name.y = this.f8Number.y;
			this.f8Name.text = "1-7";
			this.f8Name.filters = [myFilter];
			this.addChild(f8Name);
			
			this.f8Win.defaultTextFormat = f2Format;
			this.f8Win.type = TextFieldType.INPUT;
			this.f8Win.autoSize = "left";
			this.f8Win.x = 640;
			this.f8Win.y = this.f8Number.y;
			this.f8Win.text = "106.40";
			this.f8Win.filters = [myFilter];
			this.addChild(f8Win);
			
			this.f8Place.defaultTextFormat = f1Format;
			this.f8Place.type = TextFieldType.INPUT;
			this.f8Place.autoSize = "left";
			this.f8Place.x = 825;
			this.f8Place.y = this.f8Number.y;
			this.f8Place.text = "TRIFECTA:";
			this.f8Place.filters = [myFilter];
			this.addChild(f8Place);
			
			this.f8Value.defaultTextFormat = f2Format;
			this.f8Value.type = TextFieldType.INPUT;
			this.f8Value.autoSize = "left";
			this.f8Value.x = 1115;
			this.f8Value.y = this.f8Number.y;
			this.f8Value.text = "1-7-3-6";
			this.f8Value.filters = [myFilter];
			this.addChild(f8Value);
			
			this.f8Money.defaultTextFormat = f2Format;
			this.f8Money.type = TextFieldType.INPUT;
			this.f8Money.autoSize = "left";
			this.f8Money.x = 1510;
			this.f8Money.y = this.f8Number.y;
			this.f8Money.text = "9634.20";
			this.f8Money.filters = [myFilter];
			this.addChild(f8Money);
			
			//f1 add
			this.f1Name.defaultTextFormat = f2Format;
			this.f1Name.type = TextFieldType.INPUT;
			this.f1Name.autoSize = "left";
			this.f1Name.x = this.f8Name.x;
			this.f1Name.y = this.f8Number.y + 60;
			this.f1Name.text = "1-7";
			this.f1Name.filters = [myFilter];
			this.addChild(f1Name);
			
			this.f1Win.defaultTextFormat = f2Format;
			this.f1Win.type = TextFieldType.INPUT;
			this.f1Win.autoSize = "left";
			this.f1Win.x = this.f8Win.x ;
			this.f1Win.y = this.f8Number.y + 60;
			this.f1Win.text = "106.40";
			this.f1Win.filters = [myFilter];
			this.addChild(f1Win);
						
			this.f1Value.defaultTextFormat = f2Format;
			this.f1Value.type = TextFieldType.INPUT;
			this.f1Value.autoSize = "left";
			this.f1Value.x = this.f8Value.x ;
			this.f1Value.y = this.f8Number.y + 60;
			this.f1Value.text = "1-7-3-6";
			this.f1Value.filters = [myFilter];
			this.addChild(f1Value);
			
			this.f1Money.defaultTextFormat = f2Format;
			this.f1Money.type = TextFieldType.INPUT;
			this.f1Money.autoSize = "left";
			this.f1Money.x = this.f8Money.x ;
			this.f1Money.y = this.f8Number.y + 60;
			this.f1Money.text = "9634.20";
			this.f1Money.filters = [myFilter];
			this.addChild(f1Money);
						
			//F9 constructor
			this.f9Number.defaultTextFormat = f1Format;
			this.f9Number.type = TextFieldType.INPUT;
			this.f9Number.x = this.f8Number.x;
			this.f9Number.y = 435;
			this.f9Number.autoSize = "left";
			this.f9Number.text = "EXACTA:";
			this.f9Number.filters = [myFilter];
			this.addChild(f9Number);
			
			this.f9Name.defaultTextFormat = f2Format;
			this.f9Name.type = TextFieldType.INPUT;
			this.f9Name.autoSize = "left";
			this.f9Name.x = this.f8Name.x;
			this.f9Name.y = this.f9Number.y;
			this.f9Name.text = "1-7";
			this.f9Name.filters = [myFilter];
			this.addChild(f9Name);
			
			this.f9Win.defaultTextFormat = f2Format;
			this.f9Win.type = TextFieldType.INPUT;
			this.f9Win.autoSize = "left";
			this.f9Win.x = this.f8Win.x;
			this.f9Win.y = this.f9Number.y;
			this.f9Win.text = "520.40";
			this.f9Win.filters = [myFilter];
			this.addChild(f9Win);
			
			this.f9Place.defaultTextFormat = f1Format;
			this.f9Place.type = TextFieldType.INPUT;
			this.f9Place.autoSize = "left";
			this.f9Place.x = this.f8Place.x;
			this.f9Place.y = this.f9Number.y;
			this.f9Place.text = "QUARTET:";
			this.f9Place.filters = [myFilter];
			this.addChild(f9Place);
			
			this.f9Value.defaultTextFormat = f2Format;
			this.f9Value.type = TextFieldType.INPUT;
			this.f9Value.autoSize = "left";
			this.f9Value.x = this.f8Value.x;
			this.f9Value.y = this.f9Number.y;
			this.f9Value.text = "2-7";
			this.f9Value.filters = [myFilter];
			this.addChild(f9Value);
			
			this.f9Money.defaultTextFormat = f2Format;
			this.f9Money.type = TextFieldType.INPUT;
			this.f9Money.autoSize = "left";
			this.f9Money.x = this.f8Money.x;
			this.f9Money.y = this.f9Number.y;
			this.f9Money.text = "27.20";
			this.f9Money.filters = [myFilter];
			this.addChild(f9Money);
			
			//f2 add
			this.f2Name.defaultTextFormat = f2Format;
			this.f2Name.type = TextFieldType.INPUT;
			this.f2Name.autoSize = "left";
			this.f2Name.x = this.f1Name.x;
			this.f2Name.y = this.f9Number.y + 65;
			this.f2Name.text = "1-7";
			this.f2Name.filters = [myFilter];
			this.addChild(f2Name);
			
			this.f2Win.defaultTextFormat = f2Format;
			this.f2Win.type = TextFieldType.INPUT;
			this.f2Win.autoSize = "left";
			this.f2Win.x = this.f1Win.x;
			this.f2Win.y = this.f9Number.y + 65;
			this.f2Win.text = "106.40";
			this.f2Win.filters = [myFilter];
			this.addChild(f2Win);
			setTxt(txt3, f2Format, myFilter, "7-3-1-6", this.f1Value.x, this.f2Win.y);
			setTxt(txt4, f2Format, myFilter, "517.60", this.f1Money.x, this.f2Win.y);
			
			//F10 constructor
			this.f10Number.defaultTextFormat = f1Format;
			this.f10Number.type = TextFieldType.INPUT;
			this.f10Number.x = this.f9Number.x;
			this.f10Number.y = 575;
			this.f10Number.autoSize = "left";
			this.f10Number.text = "TRIO:";
			this.f10Number.filters = [myFilter];
			this.addChild(f10Number);
			
			this.f10Name.defaultTextFormat = f2Format;
			this.f10Name.type = TextFieldType.INPUT;
			this.f10Name.autoSize = "left";
			this.f10Name.x = this.f9Name.x;
			this.f10Name.y = this.f10Number.y;
			this.f10Name.text = "7-1-3";
			this.f10Name.filters = [myFilter];
			this.addChild(f10Name);
			
			this.f10Win.defaultTextFormat = f2Format;
			this.f10Win.type = TextFieldType.INPUT;
			this.f10Win.autoSize = "left";
			this.f10Win.x = this.f9Win.x;
			this.f10Win.y = this.f10Number.y;
			this.f10Win.text = "712.40";
			this.f10Win.filters = [myFilter];
			this.addChild(f10Win);
			setTxt(f10Place, f1Format, myFilter, "SUPERFECTA6:", this.f8Place.x, this.f10Number.y);
			setTxt(f10Value, f2Format, myFilter, "7-1-3-6-8-12", this.f8Value.x, this.f10Number.y);
			setTxt(f10Money, f2Format, myFilter, "23809.30", this.f8Money.x - 30, this.f10Number.y);
			//f3 add
			this.f3Name.defaultTextFormat = f2Format;
			this.f3Name.type = TextFieldType.INPUT;
			this.f3Name.autoSize = "left";
			this.f3Name.x = this.f10Name.x;
			this.f3Name.y = this.f10Number.y + 65;
			this.f3Name.text = "1-7";
			this.f3Name.filters = [myFilter];
			this.addChild(f3Name);
			
			this.f3Win.defaultTextFormat = f2Format;
			this.f3Win.type = TextFieldType.INPUT;
			this.f3Win.autoSize = "left";
			this.f3Win.x = this.f10Win.x;
			this.f3Win.y = this.f10Number.y + 65;
			this.f3Win.text = "106.40";
			this.f3Win.filters = [myFilter];
			this.addChild(f3Win);
			
			setTxt(txt5, f2Format, myFilter, "7-3-1-6-9-12", this.f10Value.x, this.f3Win.y);
			setTxt(txt6, f2Format, myFilter, "23890.30", this.f10Money.x, this.f3Win.y);
			
			setTxt(txt7, f1Format, myFilter, "PICKX JACKPOT:", this.f8Place.x, this.f3Win.y+70);
			setTxt(txt8, f2Format, myFilter, "23890.30", this.f10Money.x, this.txt7.y);						
			setTxt(txt9, f2Format, myFilter, "7-3-1-6-9-12", this.f10Value.x, this.txt7.y);
			setTxt(txt10, f2Format, myFilter, "7-3-1-6-9-12", this.f10Value.x, this.txt7.y+60);
			setTxt(txt11, f2Format, myFilter, "23890.30", this.f10Money.x, this.txt10.y);
			//F11 - DONG THU 11
			this.f11Name.defaultTextFormat = f3Format;
			this.f11Name.type = TextFieldType.INPUT;
			this.f11Name.x = this.f10Number.x;
			this.f11Name.y = 870;
			this.f11Name.autoSize = "left";
			this.f11Name.text = "SCRATCHINGS:";
			this.f11Name.filters = [myFilter];
			this.addChild(f11Name);
			
			this.f11Value.defaultTextFormat = f4Format;
			this.f11Value.type = TextFieldType.INPUT;
			this.f11Value.autoSize = "left";
			this.f11Value.x = 510;
			this.f11Value.y = this.f11Name.y;
			this.f11Value.text = "NIL";
			this.f11Value.filters = [myFilter];
			this.addChild(f11Value);
			
			//F12 - DONG CUOI CUNG
			this.f12Name.defaultTextFormat = f3Format;
			this.f12Name.type = TextFieldType.INPUT;
			this.f12Name.x = this.f11Name.x;
			this.f12Name.y = this.f11Name.y + 45;
			this.f12Name.autoSize = "left";
			this.f12Name.text = "MARGINS:";
			this.f12Name.filters = [myFilter];
			this.addChild(f12Name);
			
			this.f12Win.defaultTextFormat = f4Format;
			this.f12Win.type = TextFieldType.INPUT;
			this.f12Win.autoSize = "left";
			this.f12Win.x = 430;
			this.f12Win.y = this.f12Name.y;
			this.f12Win.text = "3/4 LGTTH, 1/2 HEAD, DH";
			this.f12Win.filters = [myFilter];
			this.addChild(f12Win);
									
			this.f12Place.defaultTextFormat = f3Format;
			this.f12Place.type = TextFieldType.INPUT;
			this.f12Place.autoSize = "left";
			this.f12Place.x = 1225;
			this.f12Place.y = this.f12Name.y;
			this.f12Place.text = "TIME:";
			this.f12Place.filters = [myFilter];
			this.addChild(f12Place);
			
			this.f12Value.defaultTextFormat = f4Format;
			this.f12Value.type = TextFieldType.INPUT;
			this.f12Value.autoSize = "left";
			this.f12Value.x = 1325;
			this.f12Value.y = this.f12Name.y;
			this.f12Value.text = "58.89";
			this.f12Value.filters = [myFilter];
			this.addChild(f12Value);
			
			this.f12Money.defaultTextFormat = f4Format;
			this.f12Money.type = TextFieldType.INPUT;
			this.f12Money.autoSize = "left";
			this.f12Money.x = 1430;
			this.f12Money.y = this.f12Name.y;
			this.f12Money.text = "(35.56)";
			this.f12Money.filters = [myFilter];
			this.addChild(f12Money);
						
			setFormat(dFormat, 20, 0xffffff, new RobotoBoldCondensed());
			setTxt(d1, dFormat, myFilter, "đ", 630, this.f8Name.y);
			setTxt(d2, dFormat, myFilter, "đ", this.d1.x, this.f1Name.y);
			setTxt(d3, dFormat, myFilter, "đ", this.d1.x, this.f9Value.y);
			setTxt(d4, dFormat, myFilter, "đ", this.d1.x, this.f2Name.y);
			setTxt(d5, dFormat, myFilter, "đ", this.d1.x, this.f10Name.y);
			setTxt(d6, dFormat, myFilter, "đ", this.d1.x, this.f3Name.y);
			setTxt(d7, dFormat, myFilter, "đ", this.txt1.x, this.d1.y);
			setTxt(d8, dFormat, myFilter, "đ", this.d7.x, this.d2.y);
			setTxt(d9, dFormat, myFilter, "đ", this.d7.x, this.d3.y);
			setTxt(d10, dFormat, myFilter, "đ", this.d7.x, this.d4.y);
			setTxt(d11, dFormat, myFilter, "đ", this.d7.x - 30, this.d5.y);
			setTxt(d12, dFormat, myFilter, "đ", this.d11.x, this.f3Win.y);
			setTxt(d13, dFormat, myFilter, "đ", this.d11.x, this.txt7.y);
			setTxt(d14, dFormat, myFilter, "đ", this.d11.x, this.txt10.y);
			
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
			this.groupElement.addChild(f10Place);
			this.groupElement.addChild(f10Value);
			this.groupElement.addChild(f10Money);
				
			this.groupElement.addChild(f11Name);
			this.groupElement.addChild(f11Value);
			this.groupElement.addChild(f12Name);
			this.groupElement.addChild(f12Win);
			this.groupElement.addChild(f12Place);
			this.groupElement.addChild(f12Value);
			this.groupElement.addChild(f12Money);
			
			this.groupElement.addChild(txt2);
			this.groupElement.addChild(txt3);
			this.groupElement.addChild(txt4);
			this.groupElement.addChild(txt5);
			this.groupElement.addChild(txt6);
			this.groupElement.addChild(txt7);
			this.groupElement.addChild(txt8);
			this.groupElement.addChild(txt9);
			this.groupElement.addChild(txt10);
			this.groupElement.addChild(txt11);
			
			this.groupElement.addChild(d1);
			this.groupElement.addChild(d2);
			this.groupElement.addChild(d3);
			this.groupElement.addChild(d4);
			this.groupElement.addChild(d5);
			this.groupElement.addChild(d6);
			this.groupElement.addChild(d7);
			this.groupElement.addChild(d8);
			this.groupElement.addChild(d9);
			this.groupElement.addChild(d10);
			this.groupElement.addChild(d11);
			this.groupElement.addChild(d12);
			this.groupElement.addChild(d13);
			this.groupElement.addChild(d14);
						
			this.addChild(group2);
			this.group2.addChild(headPanel);
			this.group2.addChild(fMain);
			this.group2.addChild(txt1);
							
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
			//this.stage.focus = fMain;
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
			
			xmlStr +=Add(xmlStr, "f8Number", f8Number);
			xmlStr +=Add(xmlStr, "f8Name", f8Name);
			xmlStr +=Add(xmlStr, "f8Win", f8Win);
			xmlStr +=Add(xmlStr, "f8Place", f8Place);
			xmlStr +=Add(xmlStr, "f8Value", f8Value);
			xmlStr +=Add(xmlStr, "f8Money", f8Money);
			xmlStr +=Add(xmlStr, "f1Name", f1Name);
			xmlStr +=Add(xmlStr, "f1Value", f1Value);
			xmlStr +=Add(xmlStr, "f1Win", f1Win);
			xmlStr +=Add(xmlStr, "f1Money", f1Money);
			
			xmlStr +=Add(xmlStr, "f9Number", f9Number);
			xmlStr +=Add(xmlStr, "f9Name", f9Name);
			xmlStr +=Add(xmlStr, "f9Win", f9Win);
			xmlStr +=Add(xmlStr, "f9Place", f9Place);
			xmlStr +=Add(xmlStr, "f9Value", f9Value);
			xmlStr +=Add(xmlStr, "f9Money", f9Money);
			xmlStr +=Add(xmlStr, "f2Name", f2Name);
			xmlStr +=Add(xmlStr, "f2Win", f2Win);
						
			xmlStr +=Add(xmlStr, "f10Number", f10Number);
			xmlStr +=Add(xmlStr, "f10Name", f10Name);
			xmlStr +=Add(xmlStr, "f10Win", f10Win);
			xmlStr +=Add(xmlStr, "f10Place", f10Place);
			xmlStr +=Add(xmlStr, "f10Value", f10Value);
			xmlStr +=Add(xmlStr, "f10Money", f10Money);
			xmlStr +=Add(xmlStr, "f3Name", f3Name);
			xmlStr +=Add(xmlStr, "f3Win", f3Win);
						
			xmlStr +=Add(xmlStr, "fMain", fMain);
			
			xmlStr +=Add(xmlStr, "f11Name", f11Name);
			xmlStr +=Add(xmlStr, "f11Value", f11Value);
			xmlStr +=Add(xmlStr, "f12Name", f12Name);
			xmlStr +=Add(xmlStr, "f12Value", f12Value);
			xmlStr +=Add(xmlStr, "f12Win", f12Win);
			xmlStr +=Add(xmlStr, "f12Money", f12Money);
			xmlStr +=Add(xmlStr, "f12Place", f12Place);
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
					case "fMain".toLowerCase():
						this.fMain.text = data.toUpperCase();
						break;
						
					case "f8Name".toLowerCase():
						this.f8Name.text = data.toUpperCase();
						break;
					case "f8Value".toLowerCase():
						this.f8Value.text = data.toUpperCase();
						break;
					case "f8Number".toLowerCase():
						this.f8Number.text = data.toUpperCase();
						break;
					case "f8Place".toLowerCase():
						this.f8Place.text = data.toUpperCase();
						break;
					case "f8Money".toLowerCase():
						this.f8Money.text = data.toUpperCase();
						break;
					case "f8Win".toLowerCase():
						this.f8Win.text = data.toUpperCase();
						break;
					case "f1Name".toLowerCase():
						this.f1Name.text = data.toUpperCase();
						break;
					case "f1Win".toLowerCase():
						this.f1Win.text = data.toUpperCase();
						break;
					case "f1Value".toLowerCase():
						this.f1Value.text = data.toUpperCase();
						break;
					case "f1Money".toLowerCase():
						this.f1Money.text = data.toUpperCase();
						break;
					
					case "f9Name".toLowerCase():
						this.f9Name.text = data.toUpperCase();
						break;
					case "f9Value".toLowerCase():
						this.f9Value.text = data.toUpperCase();
						break;
					case "f9Number".toLowerCase():
						this.f9Number.text = data.toUpperCase();
						break;
					case "f9Place".toLowerCase():
						this.f9Place.text = data.toUpperCase();
						break;
					case "f9Money".toLowerCase():
						this.f9Money.text = data.toUpperCase();
						break;
					case "f9Win".toLowerCase():
						this.f9Win.text = data.toUpperCase();
						break;
					case "f2Name".toLowerCase():
						this.f2Name.text = data.toUpperCase();
						break;
					case "f2Win".toLowerCase():
						this.f2Win.text = data.toUpperCase();
						break;
					
					case "f10Name".toLowerCase():
						this.f10Name.text = data.toUpperCase();
						break;
					case "f10Value".toLowerCase():
						this.f10Value.text = data.toUpperCase();
						break;
					case "f10Number".toLowerCase():
						this.f10Number.text = data.toUpperCase();
						break;
					case "f10Place".toLowerCase():
						this.f10Place.text = data.toUpperCase();
						break;
					case "f10Money".toLowerCase():
						this.f10Money.text = data.toUpperCase();
						break;
					case "f10Win".toLowerCase():
						this.f10Win.text = data.toUpperCase();
						break;
					case "f3Name".toLowerCase():
						this.f3Name.text = data.toUpperCase();
						break;
					case "f3Win".toLowerCase():
						this.f3Win.text = data.toUpperCase();
						break;
										
					case "f11Name".toLowerCase():
						this.f11Name.text = data.toUpperCase();
						break;
					case "f11Value".toLowerCase():
						this.f11Value.text = data.toUpperCase();
						break;
					case "f12Name".toLowerCase():
						this.f12Name.text = data.toUpperCase();
						break;
					case "f12Place".toLowerCase():
						this.f12Place.text = data.toUpperCase();
						break;
					case "f12Win".toLowerCase():
						this.f12Win.text = data.toUpperCase();
						break;
					case "f12Value".toLowerCase():
						this.f12Value.text = data.toUpperCase();
						break;
					case "f12Money".toLowerCase():
						this.f12Money.text = data.toUpperCase();
						break;
					case "txt1".toLowerCase():
						this.txt1.text = data.toUpperCase();
						break;
					case "txt2".toLowerCase():
						this.txt2.text = data.toUpperCase();
						break;
					case "txt3".toLowerCase():
						this.txt3.text = data.toUpperCase();
						break;
					case "txt4".toLowerCase():
						this.txt4.text = data.toUpperCase();
						break;
					case "txt5".toLowerCase():
						this.txt5.text = data.toUpperCase();
						break;
					case "txt6".toLowerCase():
						this.txt6.text = data.toUpperCase();
						break;
					case "txt7".toLowerCase():
						this.txt7.text = data.toUpperCase();
						break;
					case "txt8".toLowerCase():
						this.txt8.text = data.toUpperCase();
						break;
					case "txt9".toLowerCase():
						this.txt9.text = data.toUpperCase();
						break;
					case "txt10".toLowerCase():
						this.txt10.text = data.toUpperCase();
						break;
					case "txt11".toLowerCase():
						this.txt11.text = data.toUpperCase();
						break;
				}
			}
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
