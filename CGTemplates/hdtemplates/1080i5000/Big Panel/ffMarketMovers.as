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
	
	public class ffMarketMovers extends CasparTemplate {
		
		private var fMainFormat:TextFormat = new TextFormat();
		private var fMain:TextField = new TextField();
		private var fMainTitle:TextField = new TextField();
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
		private var f1Time:TextField = new TextField();
		//F2 detail
		private var f2Number:TextField = new TextField();
		private var f2Name:TextField = new TextField();
		private var f2Win:TextField = new TextField();
		private var f2Place:TextField = new TextField();
		private var f2Format:TextFormat = new TextFormat();
		private var f2Time:TextField = new TextField();
		//F3 detail
		private var f3Number:TextField = new TextField();
		private var f3Name:TextField = new TextField();
		private var f3Win:TextField = new TextField();
		private var f3Place:TextField = new TextField();
		private var f3Format:TextFormat = new TextFormat();
		private var f3Time:TextField = new TextField();
		//F4 detail
		private var f4Number:TextField = new TextField();
		private var f4Name:TextField = new TextField();
		private var f4Win:TextField = new TextField();
		private var f4Place:TextField = new TextField();
		private var f4Format:TextFormat = new TextFormat();
		private var f4Time:TextField = new TextField();
		//F5 detail
		private var f5Number:TextField = new TextField();
		private var f5Name:TextField = new TextField();
		private var f5Win:TextField = new TextField();
		private var f5Place:TextField = new TextField();
		private var f5Format:TextFormat = new TextFormat();
		private var f5Time:TextField = new TextField();
		//F6 detail
		private var f6Number:TextField = new TextField();
		private var f6Name:TextField = new TextField();
		private var f6Win:TextField = new TextField();
		private var f6Place:TextField = new TextField();
		private var f6Format:TextFormat = new TextFormat();
		private var f6Time:TextField = new TextField();
		//F7 detail
		private var f7Number:TextField = new TextField();
		private var f7Name:TextField = new TextField();
		private var f7Win:TextField = new TextField();
		private var f7Place:TextField = new TextField();
		private var f7Format:TextFormat = new TextFormat();
		private var f7Time:TextField = new TextField();
		//F8 detail
		private var f8Number:TextField = new TextField();
		private var f8Name:TextField = new TextField();
		private var f8Win:TextField = new TextField();
		private var f8Place:TextField = new TextField();
		private var f8Format:TextFormat = new TextFormat();
		private var f8Time:TextField = new TextField();
		//F9 detail
		private var f9Number:TextField = new TextField();
		private var f9Name:TextField = new TextField();
		private var f9Win:TextField = new TextField();
		private var f9Place:TextField = new TextField();
		private var f9Format:TextFormat = new TextFormat();
		private var f9Time:TextField = new TextField();
		//F10 detail
		private var f10Number:TextField = new TextField();
		private var f10Name:TextField = new TextField();
		private var f10Win:TextField = new TextField();
		private var f10Place:TextField = new TextField();
		private var f10Format:TextFormat = new TextFormat();
		private var f10Time:TextField = new TextField();
		
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
			
		public function ffMarketMovers() {
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
			
			this.fMainFormat.size = 40;
			this.fMainFormat.color = 0xfaddb5;
			this.fMainFormat.font = new RobotoBold().fontName;
			
			this.fMain.defaultTextFormat = fMainFormat;
			this.fMain.type = TextFieldType.DYNAMIC;
			this.fMain.autoSize = "left";
			this.fMain.x = 265;
			this.fMain.y = 137;
			this.fMain.text = "RACE 2 MADAGUI";
			this.addChild(fMain);
			
			this.fMainFormat.size = 55;
			this.fMainTitle.defaultTextFormat = fMainFormat;
			this.fMainTitle.type = TextFieldType.DYNAMIC;
			this.fMainTitle.autoSize = "left";
			this.fMainTitle.x = 645;
			this.fMainTitle.y = this.fMain.y - 10;
			this.fMainTitle.text = "MARKET MOVER";
			this.addChild(fMainTitle);
			
			this.fMainFormat.size = 40;
			this.fWin.defaultTextFormat = fMainFormat;
			this.fWin.type = TextFieldType.DYNAMIC;
			this.fWin.autoSize = "left";
			this.fWin.x = 1125;
			this.fWin.y = this.fMain.y;
			this.fWin.text = "20MINS";
			this.addChild(fWin);
			
			this.fPlace.defaultTextFormat = fMainFormat;
			this.fPlace.type = TextFieldType.DYNAMIC;
			this.fPlace.autoSize = "left";
			this.fPlace.x = 1335;
			this.fPlace.y = this.fMain.y;
			this.fPlace.text = "10MINS";
			this.addChild(fPlace);
			
			this.fTimeFormat.size = 40;
			this.fTimeFormat.color = 0x00cd00;
			this.fTimeFormat.font = new RobotoBold().fontName;
			
			this.fTime.defaultTextFormat = fTimeFormat;
			this.fTime.type = TextFieldType.DYNAMIC;
			this.fTime.autoSize = "left";
			this.fTime.x = 1550;
			this.fTime.y = this.fMain.y;
			this.fTime.text = "2:45";
			this.addChild(fTime);
			//F1 constructor
			this.f1Format.size = 55;
			this.f1Format.color = 0xffffff;
			this.f1Format.font = new RobotoBold().fontName;
			
			this.f1Number.defaultTextFormat = f1Format;
			this.f1Number.type = TextFieldType.DYNAMIC;
			this.f1Number.x = 265;
			this.f1Number.y = 225;
			this.f1Number.text = "1.";
			this.addChild(f1Number);
			
			this.f1Name.defaultTextFormat = f1Format;
			this.f1Name.type = TextFieldType.DYNAMIC;
			this.f1Name.autoSize = "left";
			this.f1Name.x = 390;
			this.f1Name.y = this.f1Number.y;
			this.f1Name.text = "STORM GOD";
			this.addChild(f1Name);
			
			this.f1Win.defaultTextFormat = f1Format;
			this.f1Win.type = TextFieldType.DYNAMIC;
			this.f1Win.autoSize = "left";
			this.f1Win.x = this.fWin.x;
			this.f1Win.y = this.f1Number.y;
			this.f1Win.text = "13.10";
			this.addChild(f1Win);
			
			this.f1Place.defaultTextFormat = f1Format;
			this.f1Place.type = TextFieldType.DYNAMIC;
			this.f1Place.autoSize = "left";
			this.f1Place.x = this.fPlace.x + 5;
			this.f1Place.y = this.f1Number.y;
			this.f1Place.text = "3.10";
			this.addChild(f1Place);
			
			this.f1Time.defaultTextFormat = f1Format;
			this.f1Time.type = TextFieldType.DYNAMIC;
			this.f1Time.autoSize = "left";
			this.f1Time.x = this.fTime.x + 5;
			this.f1Time.y = this.f1Number.y;
			this.f1Time.text = "3.10";
			this.addChild(f1Time);
			
			//F2 constructor
			this.f2Format.size = 55;
			this.f2Format.color = 0xffffff;
			this.f2Format.font = new RobotoBold().fontName;
			
			this.f2Number.defaultTextFormat = f1Format;
			this.f2Number.type = TextFieldType.DYNAMIC;
			this.f2Number.x = this.f1Number.x;
			this.f2Number.y = 297;
			this.f2Number.text = "2.";
			this.addChild(f2Number);
			
			this.f2Name.defaultTextFormat = f2Format;
			this.f2Name.type = TextFieldType.DYNAMIC;
			this.f2Name.autoSize = "left";
			this.f2Name.x = this.f1Name.x;
			this.f2Name.y = this.f2Number.y;
			this.f2Name.text = "STORM GOD";
			this.addChild(f2Name);
			
			this.f2Win.defaultTextFormat = f2Format;
			this.f2Win.type = TextFieldType.DYNAMIC;
			this.f2Win.autoSize = "left";
			this.f2Win.x = this.fWin.x;
			this.f2Win.y = this.f2Number.y;
			this.f2Win.text = "13.10";
			this.addChild(f2Win);
			
			this.f2Place.defaultTextFormat = f2Format;
			this.f2Place.type = TextFieldType.DYNAMIC;
			this.f2Place.autoSize = "left";
			this.f2Place.x = this.fPlace.x + 5;
			this.f2Place.y = this.f2Number.y;
			this.f2Place.text = "3.10";
			this.addChild(f2Place);
			
			this.f2Time.defaultTextFormat = f2Format;
			this.f2Time.type = TextFieldType.DYNAMIC;
			this.f2Time.autoSize = "left";
			this.f2Time.x = this.fTime.x + 5;
			this.f2Time.y = this.f2Number.y;
			this.f2Time.text = "3.10";
			this.addChild(f2Time);
			
			//F3 constructor
			this.f3Format.size = 55;
			this.f3Format.color = 0xe89d22;
			this.f3Format.font = new RobotoBold().fontName;
			
			this.f3Number.defaultTextFormat = f3Format;
			this.f3Number.type = TextFieldType.DYNAMIC;
			this.f3Number.x = this.f1Number.x;
			this.f3Number.y = 370;
			this.f3Number.text = "3.";
			this.addChild(f3Number);
			
			this.f3Name.defaultTextFormat = f3Format;
			this.f3Name.type = TextFieldType.DYNAMIC;
			this.f3Name.autoSize = "left";
			this.f3Name.x = this.f1Name.x;
			this.f3Name.y = this.f3Number.y;
			this.f3Name.text = "STORM GOD";
			this.addChild(f3Name);
			
			this.f3Win.defaultTextFormat = f3Format;
			this.f3Win.type = TextFieldType.DYNAMIC;
			this.f3Win.autoSize = "left";
			this.f3Win.x = this.fWin.x;
			this.f3Win.y = this.f3Number.y;
			this.f3Win.text = "13.10";
			this.addChild(f3Win);
			
			this.f3Place.defaultTextFormat = f3Format;
			this.f3Place.type = TextFieldType.DYNAMIC;
			this.f3Place.autoSize = "left";
			this.f3Place.x = this.fPlace.x + 5;
			this.f3Place.y = this.f3Number.y;
			this.f3Place.text = "3.10";
			this.addChild(f3Place);
			
			this.f3Time.defaultTextFormat = f3Format;
			this.f3Time.type = TextFieldType.DYNAMIC;
			this.f3Time.autoSize = "left";
			this.f3Time.x = this.fTime.x + 5;
			this.f3Time.y = this.f3Number.y;
			this.f3Time.text = "3.10";
			this.addChild(f3Time);
			
			//F4 constructor
			this.f4Format.size = 55;
			this.f4Format.color = 0xffffff;
			this.f4Format.font = new RobotoBold().fontName;
			
			this.f4Number.defaultTextFormat = f4Format;
			this.f4Number.type = TextFieldType.DYNAMIC;
			this.f4Number.x = this.f1Number.x;
			this.f4Number.y = 443;
			this.f4Number.text = "4.";
			this.addChild(f4Number);
			
			this.f4Name.defaultTextFormat = f4Format;
			this.f4Name.type = TextFieldType.DYNAMIC;
			this.f4Name.autoSize = "left";
			this.f4Name.x = this.f1Name.x;
			this.f4Name.y = this.f4Number.y;
			this.f4Name.text = "STORM GOD";
			this.addChild(f4Name);
			
			this.f4Win.defaultTextFormat = f4Format;
			this.f4Win.type = TextFieldType.DYNAMIC;
			this.f4Win.autoSize = "left";
			this.f4Win.x = this.fWin.x;
			this.f4Win.y = this.f4Number.y;
			this.f4Win.text = "13.10";
			this.addChild(f4Win);
			
			this.f4Place.defaultTextFormat = f4Format;
			this.f4Place.type = TextFieldType.DYNAMIC;
			this.f4Place.autoSize = "left";
			this.f4Place.x = this.fPlace.x + 5;
			this.f4Place.y = this.f4Number.y;
			this.f4Place.text = "3.10";
			this.addChild(f4Place);
			
			this.f4Time.defaultTextFormat = f4Format;
			this.f4Time.type = TextFieldType.DYNAMIC;
			this.f4Time.autoSize = "left";
			this.f4Time.x = this.fTime.x + 5;
			this.f4Time.y = this.f4Number.y;
			this.f4Time.text = "3.10";
			this.addChild(f4Time);
			
			//F5 constructor
			this.f5Format.size = 55;
			this.f5Format.color = 0xffffff;
			this.f5Format.font = new RobotoBold().fontName;
			
			this.f5Number.defaultTextFormat = f5Format;
			this.f5Number.type = TextFieldType.DYNAMIC;
			this.f5Number.x = this.f1Number.x;
			this.f5Number.y = 516;
			this.f5Number.text = "5.";
			this.addChild(f5Number);
			
			this.f5Name.defaultTextFormat = f5Format;
			this.f5Name.type = TextFieldType.DYNAMIC;
			this.f5Name.autoSize = "left";
			this.f5Name.x = this.f1Name.x;
			this.f5Name.y = this.f5Number.y;
			this.f5Name.text = "STORM GOD";
			this.addChild(f5Name);
			
			this.f5Win.defaultTextFormat = f5Format;
			this.f5Win.type = TextFieldType.DYNAMIC;
			this.f5Win.autoSize = "left";
			this.f5Win.x = this.fWin.x;
			this.f5Win.y = this.f5Number.y;
			this.f5Win.text = "13.10";
			this.addChild(f5Win);
			
			this.f5Place.defaultTextFormat = f5Format;
			this.f5Place.type = TextFieldType.DYNAMIC;
			this.f5Place.autoSize = "left";
			this.f5Place.x = this.fPlace.x + 5;
			this.f5Place.y = this.f5Number.y;
			this.f5Place.text = "3.10";
			this.addChild(f5Place);
			
			this.f5Time.defaultTextFormat = f5Format;
			this.f5Time.type = TextFieldType.DYNAMIC;
			this.f5Time.autoSize = "left";
			this.f5Time.x = this.fTime.x + 5;
			this.f5Time.y = this.f5Number.y;
			this.f5Time.text = "3.10";
			this.addChild(f5Time);
			
			//F6 constructor
			this.f6Format.size = 55;
			this.f6Format.color = 0x124089;
			this.f6Format.font = new RobotoBold().fontName;
			
			this.f6Number.defaultTextFormat = f6Format;
			this.f6Number.type = TextFieldType.DYNAMIC;
			this.f6Number.x = this.f1Number.x;
			this.f6Number.y = 590;
			this.f6Number.text = "6.";
			this.addChild(f6Number);
			
			this.f6Name.defaultTextFormat = f6Format;
			this.f6Name.type = TextFieldType.DYNAMIC;
			this.f6Name.autoSize = "left";
			this.f6Name.x = this.f1Name.x;
			this.f6Name.y = this.f6Number.y;
			this.f6Name.text = "STORM GOD";
			this.addChild(f6Name);
			
			this.f6Win.defaultTextFormat = f6Format;
			this.f6Win.type = TextFieldType.DYNAMIC;
			this.f6Win.autoSize = "left";
			this.f6Win.x = this.fWin.x;
			this.f6Win.y = this.f6Number.y;
			this.f6Win.text = "13.10";
			this.addChild(f6Win);
			
			this.f6Place.defaultTextFormat = f6Format;
			this.f6Place.type = TextFieldType.DYNAMIC;
			this.f6Place.autoSize = "left";
			this.f6Place.x = this.fPlace.x + 5;
			this.f6Place.y = this.f6Number.y;
			this.f6Place.text = "3.10";
			this.addChild(f6Place);
			
			this.f6Time.defaultTextFormat = f6Format;
			this.f6Time.type = TextFieldType.DYNAMIC;
			this.f6Time.autoSize = "left";
			this.f6Time.x = this.fTime.x + 5;
			this.f6Time.y = this.f6Number.y;
			this.f6Time.text = "3.10";
			this.addChild(f6Time);
			
			//F7 constructor
			this.f7Format.size = 55;
			this.f7Format.color = 0xffffff;
			this.f7Format.font = new RobotoBold().fontName;
			
			this.f7Number.defaultTextFormat = f7Format;
			this.f7Number.type = TextFieldType.DYNAMIC;
			this.f7Number.x = this.f1Number.x;
			this.f7Number.y = 665;
			this.f7Number.text = "7.";
			this.addChild(f7Number);
			
			this.f7Name.defaultTextFormat = f7Format;
			this.f7Name.type = TextFieldType.DYNAMIC;
			this.f7Name.autoSize = "left";
			this.f7Name.x = this.f1Name.x;
			this.f7Name.y = this.f7Number.y ;
			this.f7Name.text = "STORM GOD";
			this.addChild(f7Name);
			
			this.f7Win.defaultTextFormat = f7Format;
			this.f7Win.type = TextFieldType.DYNAMIC;
			this.f7Win.autoSize = "left";
			this.f7Win.x = this.fWin.x;
			this.f7Win.y = this.f7Number.y ;
			this.f7Win.text = "13.10";
			this.addChild(f7Win);
			
			this.f7Place.defaultTextFormat = f7Format;
			this.f7Place.type = TextFieldType.DYNAMIC;
			this.f7Place.autoSize = "left";
			this.f7Place.x = this.fPlace.x + 5;
			this.f7Place.y = this.f7Number.y ;
			this.f7Place.text = "3.10";
			this.addChild(f7Place);
			
			this.f7Time.defaultTextFormat = f7Format;
			this.f7Time.type = TextFieldType.DYNAMIC;
			this.f7Time.autoSize = "left";
			this.f7Time.x = this.fTime.x + 5;
			this.f7Time.y = this.f7Number.y;
			this.f7Time.text = "3.10";
			this.addChild(f7Time);
			
			//F8 constructor
			this.f8Format.size = 55;
			this.f8Format.color = 0x124089;
			this.f8Format.font = new RobotoBold().fontName;
			
			this.f8Number.defaultTextFormat = f8Format;
			this.f8Number.type = TextFieldType.DYNAMIC;
			this.f8Number.x = this.f1Number.x;
			this.f8Number.y = 740;
			this.f8Number.text = "8.";
			this.addChild(f8Number);
			
			this.f8Name.defaultTextFormat = f8Format;
			this.f8Name.type = TextFieldType.DYNAMIC;
			this.f8Name.autoSize = "left";
			this.f8Name.x = this.f1Name.x;
			this.f8Name.y = this.f8Number.y ;
			this.f8Name.text = "STORM GOD";
			this.addChild(f8Name);
			
			this.f8Win.defaultTextFormat = f8Format;
			this.f8Win.type = TextFieldType.DYNAMIC;
			this.f8Win.autoSize = "left";
			this.f8Win.x = this.fWin.x;
			this.f8Win.y = this.f8Number.y ;
			this.f8Win.text = "13.10";
			this.addChild(f8Win);
			
			this.f8Place.defaultTextFormat = f8Format;
			this.f8Place.type = TextFieldType.DYNAMIC;
			this.f8Place.autoSize = "left";
			this.f8Place.x = this.fPlace.x + 5;
			this.f8Place.y = this.f8Number.y ;
			this.f8Place.text = "3.10";
			this.addChild(f8Place);
			
			this.f8Time.defaultTextFormat = f8Format;
			this.f8Time.type = TextFieldType.DYNAMIC;
			this.f8Time.autoSize = "left";
			this.f8Time.x = this.fTime.x + 5;
			this.f8Time.y = this.f8Number.y;
			this.f8Time.text = "3.10";
			this.addChild(f8Time);
			
			//F9 constructor
			this.f9Format.size = 55;
			this.f9Format.color = 0xffffff;
			this.f9Format.font = new RobotoBold().fontName;
			
			this.f9Number.defaultTextFormat = f9Format;
			this.f9Number.type = TextFieldType.DYNAMIC;
			this.f9Number.x = this.f1Number.x;
			this.f9Number.y = 815;
			this.f9Number.text = "9.";
			this.addChild(f9Number);
			
			this.f9Name.defaultTextFormat = f9Format;
			this.f9Name.type = TextFieldType.DYNAMIC;
			this.f9Name.autoSize = "left";
			this.f9Name.x = this.f1Name.x;
			this.f9Name.y = this.f9Number.y;
			this.f9Name.text = "STORM GOD";
			this.addChild(f9Name);
			
			this.f9Win.defaultTextFormat = f4Format;
			this.f9Win.type = TextFieldType.DYNAMIC;
			this.f9Win.autoSize = "left";
			this.f9Win.x = this.fWin.x;
			this.f9Win.y = this.f9Number.y;
			this.f9Win.text = "13.10";
			this.addChild(f9Win);
			
			this.f9Place.defaultTextFormat = f9Format;
			this.f9Place.type = TextFieldType.DYNAMIC;
			this.f9Place.autoSize = "left";
			this.f9Place.x = this.fPlace.x + 5;
			this.f9Place.y = this.f9Number.y;
			this.f9Place.text = "3.10";
			this.addChild(f9Place);
			
			this.f9Time.defaultTextFormat = f9Format;
			this.f9Time.type = TextFieldType.DYNAMIC;
			this.f9Time.autoSize = "left";
			this.f9Time.x = this.fTime.x + 5;
			this.f9Time.y = this.f9Number.y;
			this.f9Time.text = "3.10";
			this.addChild(f9Time);
			
			//F10 constructor
			this.f10Format.size = 55;
			this.f10Format.color = 0xffffff;
			this.f10Format.font = new RobotoBold().fontName;
			
			this.f10Number.defaultTextFormat = f10Format;
			this.f10Number.type = TextFieldType.DYNAMIC;
			this.f10Number.x = this.f1Number.x;
			this.f10Number.y = 890;
			this.f10Number.text = "10.";
			this.addChild(f10Number);
			
			this.f10Name.defaultTextFormat = f10Format;
			this.f10Name.type = TextFieldType.DYNAMIC;
			this.f10Name.autoSize = "left";
			this.f10Name.x = this.f1Name.x;
			this.f10Name.y = this.f10Number.y;
			this.f10Name.text = "STORM GOD";
			this.addChild(f10Name);
			
			this.f10Win.defaultTextFormat = f10Format;
			this.f10Win.type = TextFieldType.DYNAMIC;
			this.f10Win.autoSize = "left";
			this.f10Win.x = this.fWin.x;
			this.f10Win.y = this.f10Number.y;
			this.f10Win.text = "13.10";
			this.addChild(f10Win);
			
			this.f10Place.defaultTextFormat = f10Format;
			this.f10Place.type = TextFieldType.DYNAMIC;
			this.f10Place.autoSize = "left";
			this.f10Place.x = this.fPlace.x + 5;
			this.f10Place.y = this.f10Number.y;
			this.f10Place.text = "3.10";
			this.addChild(f10Place);
			
			this.f10Time.defaultTextFormat = f10Format;
			this.f10Time.type = TextFieldType.DYNAMIC;
			this.f10Time.autoSize = "left";
			this.f10Time.x = this.fTime.x + 5;
			this.f10Time.y = this.f10Number.y;
			this.f10Time.text = "3.10";
			this.addChild(f10Time);
			
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
			this.groupElement.addChild(f9Number);
			this.groupElement.addChild(f9Name);
			this.groupElement.addChild(f9Win);
			this.groupElement.addChild(f9Place);
			this.groupElement.addChild(f10Number);
			this.groupElement.addChild(f10Name);
			this.groupElement.addChild(f10Win);
			this.groupElement.addChild(f10Place);
			this.groupElement.addChild(f1Time);
			this.groupElement.addChild(f2Time);
			this.groupElement.addChild(f3Time);
			this.groupElement.addChild(f4Time);
			this.groupElement.addChild(f5Time);
			this.groupElement.addChild(f6Time);
			this.groupElement.addChild(f7Time);
			this.groupElement.addChild(f8Time);
			this.groupElement.addChild(f9Time);
			this.groupElement.addChild(f10Time);
						
			this.addChild(group2);
			this.group2.addChild(headPanel);
			this.group2.addChild(fTime);
			this.group2.addChild(fMain);
			this.group2.addChild(fMainTitle);
			this.group2.addChild(fWin);
			this.group2.addChild(fPlace);
					
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
