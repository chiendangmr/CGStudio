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
	
	public class ffDeadheat1stPagePhase2 extends CasparTemplate {
		
		private var fMainFormat:TextFormat = new TextFormat();
		private var fMain:TextField = new TextField();
		private var fWin:TextField = new TextField();
		private var fPlace:TextField = new TextField();
				
		private var fTime:TextField = new TextField();
		private var fTimeFormat:TextFormat = new TextFormat();
		private var fName:TextField = new TextField();
		private var fNameFormat:TextFormat = new TextFormat();
		//F1 detail
		private var f1Number:TextField = new TextField();
		private var f1Name:TextField = new TextField();
		private var f1Win:TextField = new TextField();
		private var f1Place:TextField = new TextField();
		private var f1Format:TextFormat = new TextFormat();
		//F2 detail
		private var f2Number:TextField = new TextField();
		private var f2Name:TextField = new TextField();
		private var f2Win:TextField = new TextField();
		private var f2Place:TextField = new TextField();
		private var f2Format:TextFormat = new TextFormat();
		//F3 detail
		private var f3Number:TextField = new TextField();
		private var f3Name:TextField = new TextField();
		private var f3Win:TextField = new TextField();
		private var f3Place:TextField = new TextField();
		private var f3Format:TextFormat = new TextFormat();
		//F4 detail
		private var f4Number:TextField = new TextField();
		private var f4Name:TextField = new TextField();
		private var f4Win:TextField = new TextField();
		private var f4Place:TextField = new TextField();
		private var f4Format:TextFormat = new TextFormat();
		//F5 detail
		private var f5Number:TextField = new TextField();
		private var f5Name:TextField = new TextField();
		private var f5Win:TextField = new TextField();
		private var f5Place:TextField = new TextField();
		private var f5Format:TextFormat = new TextFormat();
		//F6 detail
		private var f6Number:TextField = new TextField();
		private var f6Name:TextField = new TextField();
		private var f6Win:TextField = new TextField();
		private var f6Place:TextField = new TextField();
		private var f6Format:TextFormat = new TextFormat();
		//F7 detail
		private var f7Number:TextField = new TextField();
		private var f7Name:TextField = new TextField();
		private var f7Win:TextField = new TextField();
		private var f7Place:TextField = new TextField();
		private var f7Format:TextFormat = new TextFormat();
		
		private var f11Name:TextField = new TextField();
		private var f11Value:TextField = new TextField();
				
		private var f12Name:TextField = new TextField();
		private var f12Win:TextField = new TextField();
		private var f12Place:TextField = new TextField();
		private var f12Value:TextField = new TextField();
		private var f12Money:TextField = new TextField();
		
		private var d1:TextField = new TextField();
		private var d2:TextField = new TextField();
		private var d3:TextField = new TextField();
		private var d4:TextField = new TextField();
		/*private var d5:TextField = new TextField();*/
		
		private var dFormat:TextFormat = new TextFormat();
		
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
			
		public function ffDeadheat1stPagePhase2() {
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
			
			this.betFormat.size = 60;
			this.betFormat.font = new RobotoBold().fontName;
			this.betFormat.color = 0xe89d22;
			
			this.fBet.defaultTextFormat = betFormat;
			this.fBet.type = TextFieldType.INPUT;
			this.fBet.autoSize = "left";
			this.fBet.x = 1500;
			this.fBet.y = this.fMain.y;
			this.fBet.text = "MR12";
			this.fBet.filters = [myFilter];
			this.addChild(fBet);
			
			this.fTimeFormat.size = 40;
			this.fTimeFormat.color = 0x124089;
			this.fTimeFormat.font = new RobotoBlack().fontName;
			
			this.dFormat.size = 30;
			this.dFormat.font = new RobotoBoldCondensed().fontName;
			this.dFormat.color = 0xffffff;
			
			this.fTime.defaultTextFormat = fTimeFormat;
			this.fTime.type = TextFieldType.INPUT;
			this.fTime.autoSize = "left";
			this.fTime.x = this.fMain.x;
			this.fTime.y = 230;
			this.fTime.text = "FINAL DIVIDENDS";
			this.fTime.filters = [myFilter];
			this.addChild(fTime);
			this.fTimeFormat.color = 0x9b6917;
			this.fWin.defaultTextFormat = fTimeFormat;
			this.fWin.type = TextFieldType.INPUT;
			this.fWin.autoSize = "left";
			this.fWin.x = 1205;
			this.fWin.y = this.fTime.y;
			this.fWin.text = "WIN";
			this.fWin.filters = [myFilter];
			this.addChild(fWin);
			
			this.fPlace.defaultTextFormat = fTimeFormat;
			this.fPlace.type = TextFieldType.INPUT;
			this.fPlace.autoSize = "left";
			this.fPlace.x = 1465;
			this.fPlace.y = this.fTime.y;
			this.fPlace.text = "PLACE";
			this.fPlace.filters = [myFilter];
			this.addChild(fPlace);
			
			
			//F1 constructor
			this.f1Format.size = 55;
			this.f1Format.color = 0x9b6917;
			this.f1Format.font = new RobotoBold().fontName;
			
			this.f2Format.size = 55;
			this.f2Format.color = 0xffffff;
			this.f2Format.font = new RobotoBold().fontName;
			
			this.f3Format.size = 40;
			this.f3Format.color = 0x9b6917;
			this.f3Format.font = new RobotoBold().fontName;
			
			this.f1Number.defaultTextFormat = f1Format;
			this.f1Number.type = TextFieldType.INPUT;
			this.f1Number.x = this.fTime.x;
			this.f1Number.y = this.fTime.y + 55;
			this.f1Number.text = "7.";
			this.f1Number.filters = [myFilter];
			this.addChild(f1Number);
			
			this.f1Name.defaultTextFormat = f2Format;
			this.f1Name.type = TextFieldType.INPUT;
			this.f1Name.autoSize = "left";
			this.f1Name.x = this.f1Number.x + 80;
			this.f1Name.y = this.f1Number.y;
			this.f1Name.text = "VERSED REMEDY";
			this.f1Name.filters = [myFilter];
			this.addChild(f1Name);
			
			this.f1Win.defaultTextFormat = f2Format;
			this.f1Win.type = TextFieldType.INPUT;
			this.f1Win.autoSize = "left";
			this.f1Win.x = this.fWin.x + 20;
			this.f1Win.y = this.f1Name.y;
			this.f1Win.text = "2.30";
			this.f1Win.filters = [myFilter];
			this.addChild(f1Win);
			
			this.f1Place.defaultTextFormat = f2Format;
			this.f1Place.type = TextFieldType.INPUT;
			this.f1Place.autoSize = "left";
			this.f1Place.x = this.fPlace.x+ 20;
			this.f1Place.y = this.f1Name.y;
			this.f1Place.text = "6.30";
			this.f1Place.filters = [myFilter];
			this.addChild(f1Place);
			
			//F2 constructor
									
			this.f2Name.defaultTextFormat = f3Format;
			this.f2Name.type = TextFieldType.INPUT;
			this.f2Name.autoSize = "left";
			this.f2Name.x = this.f1Name.x;
			this.f2Name.y = this.f1Name.y + 60;
			this.f2Name.text = "SHAUN O'DONNELL";
			this.f2Name.filters = [myFilter];
			this.addChild(f2Name);
			
			this.f2Win.defaultTextFormat = f3Format;
			this.f2Win.type = TextFieldType.INPUT;
			this.f2Win.autoSize = "left";
			this.f2Win.x = 745;
			this.f2Win.y = this.f2Name.y;
			this.f2Win.text = "VAUGHN SIGLY";
			this.f2Win.filters = [myFilter];
			this.addChild(f2Win);
			
			//F3 constructor
			this.f3Number.defaultTextFormat = f1Format;
			this.f3Number.type = TextFieldType.INPUT;
			this.f3Number.x = this.fTime.x;
			this.f3Number.y = this.f2Name.y + 55;
			this.f3Number.text = "*1.";
			this.f3Number.filters = [myFilter];
			this.addChild(f3Number);
			
			this.f3Name.defaultTextFormat = f2Format;
			this.f3Name.type = TextFieldType.INPUT;
			this.f3Name.autoSize = "left";
			this.f3Name.x = this.f1Name.x;
			this.f3Name.y = this.f3Number.y;
			this.f3Name.text = "STORM GOD";
			this.f3Name.filters = [myFilter];
			this.addChild(f3Name);
			
			this.f3Win.defaultTextFormat = f2Format;
			this.f3Win.type = TextFieldType.INPUT;
			this.f3Win.autoSize = "left";
			this.f3Win.x = this.fWin.x;
			this.f3Win.y = this.f3Name.y;
			this.f3Win.text = "";
			this.f3Win.filters = [myFilter];
			this.addChild(f3Win);
			
			this.f3Place.defaultTextFormat = f2Format;
			this.f3Place.type = TextFieldType.INPUT;
			this.f3Place.autoSize = "left";
			this.f3Place.x = this.fPlace.x+ 20;
			this.f3Place.y = this.f3Name.y;
			this.f3Place.text = "13.30";
			this.f3Place.filters = [myFilter];
			this.addChild(f3Place);
			
			//F4 constructor
			this.f4Name.defaultTextFormat = f3Format;
			this.f4Name.type = TextFieldType.INPUT;
			this.f4Name.autoSize = "left";
			this.f4Name.x = this.f3Name.x;
			this.f4Name.y = this.f3Name.y + 60;
			this.f4Name.text = "NATASHA FAITHFULL";
			this.f4Name.filters = [myFilter];
			this.addChild(f4Name);
			
			this.f4Win.defaultTextFormat = f3Format;
			this.f4Win.type = TextFieldType.INPUT;
			this.f4Win.autoSize = "left";
			this.f4Win.x = this.f2Win.x;
			this.f4Win.y = this.f4Name.y;
			this.f4Win.text = "NEVILLE PARNHAM";
			this.f4Win.filters = [myFilter];
			this.addChild(f2Win);
			
			//F5 constructor
			this.f5Number.defaultTextFormat = f1Format;
			this.f5Number.type = TextFieldType.INPUT;
			this.f5Number.x = this.fTime.x;
			this.f5Number.y = this.f4Name.y + 55;
			this.f5Number.text = "*3.";
			this.f5Number.filters = [myFilter];
			this.addChild(f5Number);
			
			this.f5Name.defaultTextFormat = f2Format;
			this.f5Name.type = TextFieldType.INPUT;
			this.f5Name.autoSize = "left";
			this.f5Name.x = this.f1Name.x;
			this.f5Name.y = this.f5Number.y;
			this.f5Name.text = "BRECKENRIDGE";
			this.f5Name.filters = [myFilter];
			this.addChild(f5Name);
			
			this.f5Win.defaultTextFormat = f2Format;
			this.f5Win.type = TextFieldType.INPUT;
			this.f5Win.autoSize = "left";
			this.f5Win.x = this.fWin.x;
			this.f5Win.y = this.f5Name.y;
			this.f5Win.text = "";
			this.f5Win.filters = [myFilter];
			this.addChild(f5Win);
			
			this.f5Place.defaultTextFormat = f2Format;
			this.f5Place.type = TextFieldType.INPUT;
			this.f5Place.autoSize = "left";
			this.f5Place.x = this.fPlace.x + 20;
			this.f5Place.y = this.f5Name.y;
			this.f5Place.text = "2.80";
			this.f5Place.filters = [myFilter];
			this.addChild(f5Place);
			
			//F6 constructor
			this.f6Format.size = 40;
			this.f6Format.color = 0xffffff;
			this.f6Format.font = new RobotoBold().fontName;
									
			this.f6Name.defaultTextFormat = f3Format;
			this.f6Name.type = TextFieldType.INPUT;
			this.f6Name.autoSize = "left";
			this.f6Name.x = this.f4Name.x;
			this.f6Name.y = this.f5Name.y + 60;
			this.f6Name.text = "PAUL HARVEY";
			this.f6Name.filters = [myFilter];
			this.addChild(f6Name);
			
			this.f6Win.defaultTextFormat = f3Format;
			this.f6Win.type = TextFieldType.INPUT;
			this.f6Win.autoSize = "left";
			this.f6Win.x = this.f2Win.x;
			this.f6Win.y = this.f6Name.y;
			this.f6Win.text = "TREVOR ANDREWS";
			this.f6Win.filters = [myFilter];
			this.addChild(f6Win);
			
			//F7 constructor
			this.f4Format.size = 40;
			this.f4Format.color = 0xffffff;
			this.f4Format.font = new RobotoBold().fontName;
			
			this.f7Number.defaultTextFormat = f1Format;
			this.f7Number.type = TextFieldType.INPUT;
			this.f7Number.x = this.f1Number.x;
			this.f7Number.y = this.f6Name.y + 55;
			this.f7Number.text = "6.";
			this.f7Number.filters = [myFilter];
			this.addChild(f7Number);
			
			this.f7Name.defaultTextFormat = f4Format;
			this.f7Name.type = TextFieldType.INPUT;
			this.f7Name.autoSize = "left";
			this.f7Name.x = this.f6Name.x;
			this.f7Name.y = this.f7Number.y + 10;
			this.f7Name.text = "PHANTOM CHOICE";
			this.f7Name.filters = [myFilter];
			this.addChild(f7Name);
						
			//F11 - DONG THU 11
			this.f3Format.font = new RobotoBoldCondensed().fontName;
			this.f11Name.defaultTextFormat = f3Format;
			this.f11Name.type = TextFieldType.INPUT;
			this.f11Name.x = this.f7Number.x;
			this.f11Name.y = 865;
			this.f11Name.autoSize = "left";
			this.f11Name.text = "SCRATCHINGS:";
			this.f11Name.filters = [myFilter];
			this.addChild(f11Name);
			
			this.f11Value.defaultTextFormat = f4Format;
			this.f11Value.type = TextFieldType.INPUT;
			this.f11Value.autoSize = "left";
			this.f11Value.x = 505;
			this.f11Value.y = this.f11Name.y;
			this.f11Value.text = "8, 10, 13";
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
			this.f12Win.text = "3/4 LENGTH, 1/2 HEAD, DH";
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
			
			this.d1.defaultTextFormat = dFormat;
			this.d1.alpha = 1;
			this.d1.autoSize = "left";
			this.d1.type = TextFieldType.INPUT;
			this.d1.text = "đ";
			this.d1.x = this.fWin.x;
			this.d1.y = this.f1Name.y;
			this.d1.filters = [myFilter];
						
			this.d2.defaultTextFormat = dFormat;
			this.d2.alpha = 1;
			this.d2.autoSize = "left";
			this.d2.type = TextFieldType.INPUT;
			this.d2.text = "đ";
			this.d2.x = this.fPlace.x;
			this.d2.y = this.d1.y;
			this.d2.filters = [myFilter];
						
			this.d3.defaultTextFormat = dFormat;
			this.d3.alpha = 1;
			this.d3.autoSize = "left";
			this.d3.type = TextFieldType.INPUT;
			this.d3.text = "đ";
			this.d3.x = this.d2.x;
			this.d3.y = this.f3Name.y;
			this.d3.filters = [myFilter];
			
			this.d4.defaultTextFormat = dFormat;
			this.d4.alpha = 1;
			this.d4.autoSize = "left";
			this.d4.type = TextFieldType.INPUT;
			this.d4.text = "đ";
			this.d4.x = this.d2.x;
			this.d4.y = this.f5Name.y;
			this.d4.filters = [myFilter];
						
			this.addChild(d1);
			this.addChild(d2);
			this.addChild(d3);
			this.addChild(d4);
			/*this.d5.defaultTextFormat = dFormat;
			this.d5.alpha = 1;
			this.d5.autoSize = "left";
			this.d5.type = TextFieldType.INPUT;
			this.d5.text = "đ";
			this.d5.x = 1545;
			this.d5.y = this.d1.y;
			this.d5.filters = [myFilter];
			this.txtGroup.addChild(d5);*/
			
			this.addChild(groupElement);
			
			this.groupElement.addChild(bigPanel);
			this.groupElement.addChild(hideShape);
			this.groupElement.addChild(f1Number);
			this.groupElement.addChild(f1Name);
			this.groupElement.addChild(f1Win);
			this.groupElement.addChild(f1Place);
			this.groupElement.addChild(f2Number);
			this.groupElement.addChild(f2Name);
			this.groupElement.addChild(f2Win);
			this.groupElement.addChild(f2Place);
			this.groupElement.addChild(f3Number);
			this.groupElement.addChild(f3Name);
			this.groupElement.addChild(f3Win);
			this.groupElement.addChild(f3Place);
			this.groupElement.addChild(f4Number);
			this.groupElement.addChild(f4Name);
			this.groupElement.addChild(f4Win);
			this.groupElement.addChild(f4Place);
			this.groupElement.addChild(f5Number);
			this.groupElement.addChild(f5Name);
			this.groupElement.addChild(f5Win);
			this.groupElement.addChild(f5Place);
			this.groupElement.addChild(f6Number);
			this.groupElement.addChild(f6Name);
			this.groupElement.addChild(f6Win);
			this.groupElement.addChild(f6Place);
			this.groupElement.addChild(f7Number);
			this.groupElement.addChild(f7Name);
			this.groupElement.addChild(f7Win);
			this.groupElement.addChild(f7Place);
			
			this.groupElement.addChild(f11Name);
			this.groupElement.addChild(f11Value);
			this.groupElement.addChild(f12Name);
			this.groupElement.addChild(f12Win);
			this.groupElement.addChild(f12Place);
			this.groupElement.addChild(f12Value);
			this.groupElement.addChild(f12Money);
			this.groupElement.addChild(d1);
			this.groupElement.addChild(d2);
			this.groupElement.addChild(d3);
			this.groupElement.addChild(d4);
			
			this.addChild(group2);
			this.group2.addChild(headPanel);
			this.groupElement.addChild(fTime);
			this.group2.addChild(fMain);
			this.group2.addChild(fBet);
			this.groupElement.addChild(fWin);
			this.groupElement.addChild(fPlace);
					
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
			Play();
			ExternalInterface.addCallback("UpdateData", UpdateData);
			ExternalInterface.addCallback("GetProperties", GetProperties);
		}
		function GetProperties()
		{
			var xmlStr:String = "<Track_Property>";
			xmlStr += '<fMain id="fMain"><data value="' + this.fMain.text + '"/></fMain>';
			xmlStr += '<fBet id="fBet"><data value="' + this.fBet.text + '"/></fBet>';
			xmlStr += '<fTime id="fTime"><data value="' + this.fTime.text + '"/></fTime>';
			xmlStr += '<f1Number id="f1Number"><data value="' + this.f1Number.text + '"/></f1Number>';
			xmlStr += '<f1Name id="f1Name"><data value="' + this.f1Name.text + '"/></f1Name>';
			xmlStr += '<f1Win id="f1Win"><data value="' + this.f1Win.text + '"/></f1Win>';
			xmlStr += '<f1Place id="f1Place"><data value="' + this.f1Place.text + '"/></f1Place>';
			xmlStr += '<f2Number id="f2Number"><data value="' + this.f2Number.text + '"/></f2Number>';
			
			xmlStr += '<f2Name id="f2Name"><data value="' + this.f2Name.text + '"/></f2Name>';
			xmlStr += '<f2Win id="f2Win"><data value="' + this.f2Win.text + '"/></f2Win>';
			xmlStr += '<f2Place id="f2Place"><data value="' + this.f2Place.text + '"/></f2Place>';
			xmlStr += '<f3Number id="f3Number"><data value="' + this.f3Number.text + '"/></f3Number>';
			xmlStr += '<f3Name id="f3Name"><data value="' + this.f3Name.text + '"/></f3Name>';
			
			xmlStr += '<f3Win id="f3Win"><data value="' + this.f3Win.text + '"/></f3Win>';
			xmlStr += '<f3Place id="f3Place"><data value="' + this.f3Place.text + '"/></f3Place>';
			xmlStr += '<f4Number id="f4Number"><data value="' + this.f4Number.text + '"/></f4Number>';
			xmlStr += '<f4Name id="f4Name"><data value="' + this.f4Name.text + '"/></f4Name>';
			xmlStr += '<f4Win id="f4Win"><data value="' + this.f4Win.text + '"/></f4Win>';
			
			xmlStr += '<f4Place id="f4Place"><data value="' + this.f4Place.text + '"/></f4Place>';
			xmlStr += '<f5Number id="f5Number"><data value="' + this.f5Number.text + '"/></f5Number>';
			xmlStr += '<f5Name id="f5Name"><data value="' + this.f5Name.text + '"/></f5Name>';
			xmlStr += '<f5Win id="f5Win"><data value="' + this.f5Win.text + '"/></f5Win>';
			xmlStr += '<f5Place id="f5Place"><data value="' + this.f5Place.text + '"/></f5Place>';
			
			xmlStr += '<f6Name id="f6Name"><data value="' + this.f6Name.text + '"/></f6Name>';
			xmlStr += '<f6Win id="f6Win"><data value="' + this.f6Win.text + '"/></f6Win>';
			xmlStr += '<f7Number id="f7Number"><data value="' + this.f7Number.text + '"/></f7Number>';
			xmlStr += '<f7Name id="f7Name"><data value="' + this.f7Name.text + '"/></f7Name>';
			xmlStr += '<f11Name id="f11Name"><data value="' + this.f11Name.text + '"/></f11Name>';
			
			xmlStr += '<f11Value id="f11Value"><data value="' + this.f11Value.text + '"/></f11Value>';
			xmlStr += '<f12Name id="f12Name"><data value="' + this.f12Name.text + '"/></f12Name>';
			xmlStr += '<f12Win id="f12Win"><data value="' + this.f12Win.text + '"/></f12Win>';
			xmlStr += '<f12Place id="f12Place"><data value="' + this.f12Place.text + '"/></f12Place>';
			xmlStr += '<f12Value id="f12Value"><data value="' + this.f12Value.text + '"/></f12Value>';
			xmlStr += '<f12Money id="f12Money"><data value="' + this.f12Money.text + '"/></f12Money>';
			xmlStr += "</Track_Property>";
			
			ExternalInterface.call("Properties", xmlStr);
			return xmlStr;
		}
		function UpdateData(str:String)
		{
			var xml:XML = new XML(str);
			this.SetData(xml);
		}
		private var fBet:TextField = new TextField();
		private var betFormat:TextFormat = new TextFormat();
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
					case "fBet".toLowerCase():
						this.fBet.text = data.toUpperCase();
						break;
					case "fTime".toLowerCase():
						this.fTime.text = data.toUpperCase();
						break;
					case "f1Number".toLowerCase():
						this.f1Number.text = data.toUpperCase();
						break;
					case "f1Name".toLowerCase():
						this.f1Name.text = data.toUpperCase();
						break;
					case "f1Win".toLowerCase():
						this.f1Win.text = data.toUpperCase();
						break;
					
					case "f1Place".toLowerCase():
						this.f1Place.text = data.toUpperCase();
						break;
					case "f2Name".toLowerCase():
						this.f2Name.text = data.toUpperCase();
						break;
					case "f2Win".toLowerCase():
						this.f2Win.text = data.toUpperCase();
						break;
					case "f3Name".toLowerCase():
						this.f3Name.text = data.toUpperCase();
						break;
					case "f3Win".toLowerCase():
						this.f3Win.text = data.toUpperCase();
						break;
					case "f3Number".toLowerCase():
						this.f3Number.text = data.toUpperCase();
						break;
					case "f3Place".toLowerCase():
						this.f3Place.text = data.toUpperCase();
						break;
					case "f4Name".toLowerCase():
						this.f4Name.text = data.toUpperCase();
						break;
					case "f4Win".toLowerCase():
						this.f4Win.text = data.toUpperCase();
						break;
					case "f5Number".toLowerCase():
						this.f5Number.text = data.toUpperCase();
						break;
					case "f5Name".toLowerCase():
						this.f5Name.text = data.toUpperCase();
						break;
					case "f5Win".toLowerCase():
						this.f5Win.text = data.toUpperCase();
						break;
					case "f5Place".toLowerCase():
						this.f5Place.text = data.toUpperCase();
						break;
					case "f6Name".toLowerCase():
						this.f6Name.text = data.toUpperCase();
						break;
					case "f6Win".toLowerCase():
						this.f6Win.text = data.toUpperCase();
						break;
					case "f7Name".toLowerCase():
						this.f7Name.text = data.toUpperCase();
						break;
					case "f7Number".toLowerCase():
						this.f7Number.text = data.toUpperCase();
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
