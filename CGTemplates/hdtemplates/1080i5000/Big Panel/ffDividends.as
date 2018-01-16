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
	
	public class ffDividends extends CasparTemplate {
		
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
		//F8 detail
		private var f8Number:TextField = new TextField();
		private var f8Name:TextField = new TextField();
		private var f8Win:TextField = new TextField();
		private var f8Place:TextField = new TextField();
		private var f8Format:TextFormat = new TextFormat();
		private var f8Value:TextField = new TextField();
		private var f8Money:TextField = new TextField();
		//F9 detail
		private var f9Number:TextField = new TextField();
		private var f9Name:TextField = new TextField();
		private var f9Win:TextField = new TextField();
		private var f9Place:TextField = new TextField();
		private var f9Format:TextFormat = new TextFormat();
		private var f9Value:TextField = new TextField();
		private var f9Money:TextField = new TextField();
		//F10 detail
		private var f10Number:TextField = new TextField();
		private var f10Name:TextField = new TextField();
		private var f10Win:TextField = new TextField();
		private var f10Place:TextField = new TextField();
		private var f10Format:TextFormat = new TextFormat();
		private var f10Value:TextField = new TextField();
		private var f10Money:TextField = new TextField();
		
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
			
		public function ffDividends() {
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
			
			this.fTimeFormat.size = 40;
			this.fTimeFormat.color = 0x124089;
			this.fTimeFormat.font = new RobotoBlack().fontName;
			
			this.fTime.defaultTextFormat = fTimeFormat;
			this.fTime.type = TextFieldType.DYNAMIC;
			this.fTime.autoSize = "left";
			this.fTime.x = this.fMain.x;
			this.fTime.y = 230;
			this.fTime.text = "INTERIM DIVIDENDS";
			this.addChild(fTime);
			this.fTimeFormat.color = 0x9b6917;
			this.fWin.defaultTextFormat = fTimeFormat;
			this.fWin.type = TextFieldType.DYNAMIC;
			this.fWin.autoSize = "left";
			this.fWin.x = 1205;
			this.fWin.y = this.fTime.y;
			this.fWin.text = "WIN";
			this.addChild(fWin);
			
			this.fPlace.defaultTextFormat = fTimeFormat;
			this.fPlace.type = TextFieldType.DYNAMIC;
			this.fPlace.autoSize = "left";
			this.fPlace.x = 1465;
			this.fPlace.y = this.fTime.y;
			this.fPlace.text = "PLACE";
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
			this.f1Number.type = TextFieldType.DYNAMIC;
			this.f1Number.x = this.fTime.x;
			this.f1Number.y = this.fTime.y + 55;
			this.f1Number.text = "7.";
			this.addChild(f1Number);
			
			this.f1Name.defaultTextFormat = f2Format;
			this.f1Name.type = TextFieldType.DYNAMIC;
			this.f1Name.autoSize = "left";
			this.f1Name.x = this.f1Number.x + 60;
			this.f1Name.y = this.f1Number.y;
			this.f1Name.text = "VERSED REMEDY";
			this.addChild(f1Name);
			
			this.f1Win.defaultTextFormat = f2Format;
			this.f1Win.type = TextFieldType.DYNAMIC;
			this.f1Win.autoSize = "left";
			this.f1Win.x = this.fWin.x;
			this.f1Win.y = this.f1Name.y;
			this.f1Win.text = "đ2.30";
			this.addChild(f1Win);
			
			this.f1Place.defaultTextFormat = f2Format;
			this.f1Place.type = TextFieldType.DYNAMIC;
			this.f1Place.autoSize = "left";
			this.f1Place.x = this.fPlace.x;
			this.f1Place.y = this.f1Name.y;
			this.f1Place.text = "đ6.30";
			this.addChild(f1Place);
			
			//F2 constructor
									
			this.f2Name.defaultTextFormat = f3Format;
			this.f2Name.type = TextFieldType.DYNAMIC;
			this.f2Name.autoSize = "left";
			this.f2Name.x = this.f1Name.x;
			this.f2Name.y = this.f1Name.y + 60;
			this.f2Name.text = "SHAUN O'DONNELL";
			this.addChild(f2Name);
			
			this.f2Win.defaultTextFormat = f3Format;
			this.f2Win.type = TextFieldType.DYNAMIC;
			this.f2Win.autoSize = "left";
			this.f2Win.x = 745;
			this.f2Win.y = this.f2Name.y;
			this.f2Win.text = "VAUGHN SIGLY";
			this.addChild(f2Win);
			
			//F3 constructor
			this.f3Number.defaultTextFormat = f1Format;
			this.f3Number.type = TextFieldType.DYNAMIC;
			this.f3Number.x = this.fTime.x;
			this.f3Number.y = this.f2Name.y + 55;
			this.f3Number.text = "1.";
			this.addChild(f3Number);
			
			this.f3Name.defaultTextFormat = f2Format;
			this.f3Name.type = TextFieldType.DYNAMIC;
			this.f3Name.autoSize = "left";
			this.f3Name.x = this.f1Name.x;
			this.f3Name.y = this.f3Number.y;
			this.f3Name.text = "STORM GOD";
			this.addChild(f3Name);
			
			this.f3Win.defaultTextFormat = f2Format;
			this.f3Win.type = TextFieldType.DYNAMIC;
			this.f3Win.autoSize = "left";
			this.f3Win.x = this.fWin.x;
			this.f3Win.y = this.f3Name.y;
			this.f3Win.text = "";
			this.addChild(f3Win);
			
			this.f3Place.defaultTextFormat = f2Format;
			this.f3Place.type = TextFieldType.DYNAMIC;
			this.f3Place.autoSize = "left";
			this.f3Place.x = this.fPlace.x;
			this.f3Place.y = this.f3Name.y;
			this.f3Place.text = "đ13.30";
			this.addChild(f3Place);
			
			//F4 constructor
			this.f4Name.defaultTextFormat = f3Format;
			this.f4Name.type = TextFieldType.DYNAMIC;
			this.f4Name.autoSize = "left";
			this.f4Name.x = this.f3Name.x;
			this.f4Name.y = this.f3Name.y + 60;
			this.f4Name.text = "NATASHA FAITHFULL";
			this.addChild(f4Name);
			
			this.f4Win.defaultTextFormat = f3Format;
			this.f4Win.type = TextFieldType.DYNAMIC;
			this.f4Win.autoSize = "left";
			this.f4Win.x = this.f2Win.x;
			this.f4Win.y = this.f4Name.y;
			this.f4Win.text = "NEVILLE PARNHAM";
			this.addChild(f2Win);
			
			//F5 constructor
			this.f5Number.defaultTextFormat = f1Format;
			this.f5Number.type = TextFieldType.DYNAMIC;
			this.f5Number.x = this.fTime.x;
			this.f5Number.y = this.f4Name.y + 55;
			this.f5Number.text = "3.";
			this.addChild(f5Number);
			
			this.f5Name.defaultTextFormat = f2Format;
			this.f5Name.type = TextFieldType.DYNAMIC;
			this.f5Name.autoSize = "left";
			this.f5Name.x = this.f1Name.x;
			this.f5Name.y = this.f5Number.y;
			this.f5Name.text = "BRECKENRIDGE";
			this.addChild(f5Name);
			
			this.f5Win.defaultTextFormat = f2Format;
			this.f5Win.type = TextFieldType.DYNAMIC;
			this.f5Win.autoSize = "left";
			this.f5Win.x = this.fWin.x;
			this.f5Win.y = this.f5Name.y;
			this.f5Win.text = "";
			this.addChild(f5Win);
			
			this.f5Place.defaultTextFormat = f2Format;
			this.f5Place.type = TextFieldType.DYNAMIC;
			this.f5Place.autoSize = "left";
			this.f5Place.x = this.fPlace.x;
			this.f5Place.y = this.f5Name.y;
			this.f5Place.text = "đ2.80";
			this.addChild(f5Place);
			
			//F6 constructor
			this.f6Format.size = 40;
			this.f6Format.color = 0xffffff;
			this.f6Format.font = new RobotoBold().fontName;
									
			this.f6Name.defaultTextFormat = f3Format;
			this.f6Name.type = TextFieldType.DYNAMIC;
			this.f6Name.autoSize = "left";
			this.f6Name.x = this.f4Name.x;
			this.f6Name.y = this.f5Name.y + 60;
			this.f6Name.text = "PAUL HARVEY";
			this.addChild(f6Name);
			
			this.f6Win.defaultTextFormat = f3Format;
			this.f6Win.type = TextFieldType.DYNAMIC;
			this.f6Win.autoSize = "left";
			this.f6Win.x = this.f2Win.x;
			this.f6Win.y = this.f6Name.y;
			this.f6Win.text = "TREVOR ANDREWS";
			this.addChild(f6Win);
			
			//F7 constructor
			this.f4Format.size = 40;
			this.f4Format.color = 0xffffff;
			this.f4Format.font = new RobotoBold().fontName;
			
			this.f7Number.defaultTextFormat = f1Format;
			this.f7Number.type = TextFieldType.DYNAMIC;
			this.f7Number.x = this.f1Number.x;
			this.f7Number.y = this.f6Name.y + 55;
			this.f7Number.text = "6.";
			this.addChild(f7Number);
			
			this.f7Name.defaultTextFormat = f4Format;
			this.f7Name.type = TextFieldType.DYNAMIC;
			this.f7Name.autoSize = "left";
			this.f7Name.x = this.f6Name.x;
			this.f7Name.y = this.f7Number.y + 10;
			this.f7Name.text = "PHANTOM CHOICE";
			this.addChild(f7Name);
						
			//F8 constructor
			this.f3Format.font = new RobotoBoldCondensed().fontName;
			this.f8Number.defaultTextFormat = f3Format;
			this.f8Number.type = TextFieldType.DYNAMIC;
			this.f8Number.x = this.f7Number.x;
			this.f8Number.y = this.f7Number.y + 75;
			this.f8Number.autoSize = "left";
			this.f8Number.text = "QUINELLA:";
			this.addChild(f8Number);
			
			this.f8Name.defaultTextFormat = f4Format;
			this.f8Name.type = TextFieldType.DYNAMIC;
			this.f8Name.autoSize = "left";
			this.f8Name.x = 500;
			this.f8Name.y = this.f8Number.y;
			this.f8Name.text = "1-7";
			this.addChild(f8Name);
			
			this.f8Win.defaultTextFormat = f4Format;
			this.f8Win.type = TextFieldType.DYNAMIC;
			this.f8Win.autoSize = "left";
			this.f8Win.x = 715;
			this.f8Win.y = this.f8Number.y;
			this.f8Win.text = "đ106.40";
			this.addChild(f8Win);
			
			this.f8Place.defaultTextFormat = f3Format;
			this.f8Place.type = TextFieldType.DYNAMIC;
			this.f8Place.autoSize = "left";
			this.f8Place.x = 1015;
			this.f8Place.y = this.f8Number.y;
			this.f8Place.text = "FIRST 4:";
			this.addChild(f8Place);
			
			this.f8Value.defaultTextFormat = f4Format;
			this.f8Value.type = TextFieldType.DYNAMIC;
			this.f8Value.autoSize = "left";
			this.f8Value.x = 1255;
			this.f8Value.y = this.f8Number.y;
			this.f8Value.text = "1-7-3-6";
			this.addChild(f8Value);
			
			this.f8Money.defaultTextFormat = f4Format;
			this.f8Money.type = TextFieldType.DYNAMIC;
			this.f8Money.autoSize = "left";
			this.f8Money.x = 1475;
			this.f8Money.y = this.f8Number.y;
			this.f8Money.text = "đ9634.20";
			this.addChild(f8Money);
			
			//F9 constructor
			this.f9Number.defaultTextFormat = f3Format;
			this.f9Number.type = TextFieldType.DYNAMIC;
			this.f9Number.x = this.f8Number.x;
			this.f9Number.y = this.f8Number.y + 45;
			this.f9Number.autoSize = "left";
			this.f9Number.text = "EXACTA:";
			this.addChild(f9Number);
			
			this.f9Name.defaultTextFormat = f4Format;
			this.f9Name.type = TextFieldType.DYNAMIC;
			this.f9Name.autoSize = "left";
			this.f9Name.x = this.f8Name.x;
			this.f9Name.y = this.f9Number.y;
			this.f9Name.text = "1-7";
			this.addChild(f9Name);
			
			this.f9Win.defaultTextFormat = f4Format;
			this.f9Win.type = TextFieldType.DYNAMIC;
			this.f9Win.autoSize = "left";
			this.f9Win.x = this.f8Win.x;
			this.f9Win.y = this.f9Number.y;
			this.f9Win.text = "đ520.40";
			this.addChild(f9Win);
			
			this.f9Place.defaultTextFormat = f3Format;
			this.f9Place.type = TextFieldType.DYNAMIC;
			this.f9Place.autoSize = "left";
			this.f9Place.x = this.f8Place.x;
			this.f9Place.y = this.f9Number.y;
			this.f9Place.text = "DOUBLE:";
			this.addChild(f9Place);
			
			this.f9Value.defaultTextFormat = f4Format;
			this.f9Value.type = TextFieldType.DYNAMIC;
			this.f9Value.autoSize = "left";
			this.f9Value.x = 1255;
			this.f9Value.y = this.f9Number.y;
			this.f9Value.text = "2-7";
			this.addChild(f9Value);
			
			this.f9Money.defaultTextFormat = f4Format;
			this.f9Money.type = TextFieldType.DYNAMIC;
			this.f9Money.autoSize = "left";
			this.f9Money.x = 1475;
			this.f9Money.y = this.f9Number.y;
			this.f9Money.text = "đ27.20";
			this.addChild(f9Money);
			
			//F10 constructor
			this.f10Number.defaultTextFormat = f3Format;
			this.f10Number.type = TextFieldType.DYNAMIC;
			this.f10Number.x = this.f9Number.x;
			this.f10Number.y = this.f9Number.y + 45;
			this.f10Number.autoSize = "left";
			this.f10Number.text = "TRIFECTA:";
			this.addChild(f10Number);
			
			this.f10Name.defaultTextFormat = f4Format;
			this.f10Name.type = TextFieldType.DYNAMIC;
			this.f10Name.autoSize = "left";
			this.f10Name.x = this.f9Name.x;
			this.f10Name.y = this.f10Number.y;
			this.f10Name.text = "7-1-3";
			this.addChild(f10Name);
			
			this.f10Win.defaultTextFormat = f4Format;
			this.f10Win.type = TextFieldType.DYNAMIC;
			this.f10Win.autoSize = "left";
			this.f10Win.x = this.f9Win.x;
			this.f10Win.y = this.f10Number.y;
			this.f10Win.text = "đ712.40";
			this.addChild(f10Win);
			
			this.f10Place.defaultTextFormat = f3Format;
			this.f10Place.type = TextFieldType.DYNAMIC;
			this.f10Place.autoSize = "left";
			this.f10Place.x = this.f9Place.x;
			this.f10Place.y = this.f10Number.y;
			this.f10Place.text = "QUADDIE:";
			this.addChild(f10Place);
			
			this.f10Value.defaultTextFormat = f4Format;
			this.f10Value.type = TextFieldType.DYNAMIC;
			this.f10Value.autoSize = "left";
			this.f10Value.x = 1255;
			this.f10Value.y = this.f10Number.y;
			this.f10Value.text = "13-7-8-5";
			this.addChild(f10Value);
			
			this.f10Money.defaultTextFormat = f4Format;
			this.f10Money.type = TextFieldType.DYNAMIC;
			this.f10Money.autoSize = "left";
			this.f10Money.x = 1475;
			this.f10Money.y = this.f10Number.y;
			this.f10Money.text = "đ15658.20";
			this.addChild(f10Money);
			
			//F11 - DONG THU 11
			this.f11Name.defaultTextFormat = f3Format;
			this.f11Name.type = TextFieldType.DYNAMIC;
			this.f11Name.x = this.f10Number.x;
			this.f11Name.y = this.f10Number.y + 45;
			this.f11Name.autoSize = "left";
			this.f11Name.text = "SCRATCHINGS:";
			this.addChild(f11Name);
			
			this.f11Value.defaultTextFormat = f4Format;
			this.f11Value.type = TextFieldType.DYNAMIC;
			this.f11Value.autoSize = "left";
			this.f11Value.x = this.f10Name.x + 20;
			this.f11Value.y = this.f11Name.y;
			this.f11Value.text = "8, 10, 13";
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
			this.f12Place.x = this.f10Place.x;
			this.f12Place.y = this.f12Name.y;
			this.f12Place.text = "TIME:";
			this.addChild(f12Place);
			
			this.f12Value.defaultTextFormat = f4Format;
			this.f12Value.type = TextFieldType.DYNAMIC;
			this.f12Value.autoSize = "left";
			this.f12Value.x = this.f10Value.x;
			this.f12Value.y = this.f12Name.y;
			this.f12Value.text = "58.89";
			this.addChild(f12Value);
			
			this.f12Money.defaultTextFormat = f4Format;
			this.f12Money.type = TextFieldType.DYNAMIC;
			this.f12Money.autoSize = "left";
			this.f12Money.x = this.f10Money.x;
			this.f12Money.y = this.f12Name.y;
			this.f12Money.text = "(35.56)";
			this.addChild(f12Money);
			
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
			this.groupElement.addChild(f8Number);
			this.groupElement.addChild(f8Name);
			this.groupElement.addChild(f8Win);
			this.groupElement.addChild(f8Place);
			this.groupElement.addChild(f8Value);
			this.groupElement.addChild(f8Money);
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
			this.groupElement.addChild(f11Name);
			this.groupElement.addChild(f11Value);
			this.groupElement.addChild(f12Name);
			this.groupElement.addChild(f12Win);
			this.groupElement.addChild(f12Place);
			this.groupElement.addChild(f10Money);
			this.groupElement.addChild(f12Value);
			this.groupElement.addChild(f12Money);
						
			this.addChild(group2);
			this.group2.addChild(headPanel);
			this.groupElement.addChild(fTime);
			this.group2.addChild(fMain);
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
