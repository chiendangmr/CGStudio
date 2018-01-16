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
	
	public class ffRunOns extends CasparTemplate {
		
		private var fMainFormat:TextFormat = new TextFormat();
		private var fMain:TextField = new TextField();
		private var fWin:TextField = new TextField();
		private var fPlace:TextField = new TextField();
				
		private var fTime:TextField = new TextField();
		private var fTimeFormat:TextFormat = new TextFormat();
		private var fMargin:TextField = new TextField();
		private var fNameFormat:TextFormat = new TextFormat();
		//F1 detail
		private var f1Order:TextField = new TextField();
		private var f1Margin:TextField = new TextField();
		private var f1Number:TextField = new TextField();
		private var f1Name:TextField = new TextField();
		private var f1Win:TextField = new TextField();
		private var f1Place:TextField = new TextField();
		private var f1Format:TextFormat = new TextFormat();
		//F2 detail
		private var f2Order:TextField = new TextField();
		private var f2Margin:TextField = new TextField();
		private var f2Number:TextField = new TextField();
		private var f2Name:TextField = new TextField();
		private var f2Win:TextField = new TextField();
		private var f2Place:TextField = new TextField();
		private var f2Format:TextFormat = new TextFormat();
		//F3 detail
		private var f3Order:TextField = new TextField();
		private var f3Margin:TextField = new TextField();
		private var f3Number:TextField = new TextField();
		private var f3Name:TextField = new TextField();
		private var f3Win:TextField = new TextField();
		private var f3Place:TextField = new TextField();
		//F4 detail
		private var f4Order:TextField = new TextField();
		private var f4Margin:TextField = new TextField();
		private var f4Number:TextField = new TextField();
		private var f4Name:TextField = new TextField();
		private var f4Win:TextField = new TextField();
		private var f4Place:TextField = new TextField();
		//F5 detail
		private var f5Order:TextField = new TextField();
		private var f5Margin:TextField = new TextField();
		private var f5Number:TextField = new TextField();
		private var f5Name:TextField = new TextField();
		private var f5Win:TextField = new TextField();
		private var f5Place:TextField = new TextField();
		//F6 detail
		private var f6Order:TextField = new TextField();
		private var f6Margin:TextField = new TextField();
		private var f6Number:TextField = new TextField();
		private var f6Name:TextField = new TextField();
		private var f6Win:TextField = new TextField();
		private var f6Place:TextField = new TextField();
		//F7 detail
		private var f7Order:TextField = new TextField();
		private var f7Margin:TextField = new TextField();
		private var f7Number:TextField = new TextField();
		private var f7Name:TextField = new TextField();
		private var f7Win:TextField = new TextField();
		private var f7Place:TextField = new TextField();
		//F8 detail
		private var f8Order:TextField = new TextField();
		private var f8Margin:TextField = new TextField();
		private var f8Number:TextField = new TextField();
		private var f8Name:TextField = new TextField();
		private var f8Win:TextField = new TextField();
		private var f8Place:TextField = new TextField();
		
		private var betFormat:TextFormat = new TextFormat();
		private var txt1:TextField = new TextField();
						
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
			
		public function ffRunOns() {
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
			
			this.fTimeFormat.size = 40;
			this.fTimeFormat.color = 0xe89d22;
			this.fTimeFormat.font = new RobotoBlack().fontName;
			
			this.fTime.defaultTextFormat = fTimeFormat;
			this.fTime.type = TextFieldType.INPUT;
			this.fTime.autoSize = "left";
			this.fTime.x = this.fMain.x;
			this.fTime.y = 230;
			this.fTime.text = "ORDER OF FINISH";
			this.fTime.filters = [myFilter];
			this.addChild(fTime);
			
			this.fWin.defaultTextFormat = fTimeFormat;
			this.fWin.type = TextFieldType.INPUT;
			this.fWin.autoSize = "left";
			this.fWin.x = 1050;
			this.fWin.y = this.fTime.y;
			this.fWin.text = "TIME";
			this.fWin.filters = [myFilter];
			this.addChild(fWin);
			
			this.fPlace.defaultTextFormat = fTimeFormat;
			this.fPlace.type = TextFieldType.INPUT;
			this.fPlace.autoSize = "left";
			this.fPlace.x = 1250;
			this.fPlace.y = this.fTime.y;
			this.fPlace.text = "600m";
			this.fPlace.filters = [myFilter];
			this.addChild(fPlace);
			
			this.fTimeFormat.color = 0xffffff;
			this.fMargin.defaultTextFormat = fTimeFormat;
			this.fMargin.type = TextFieldType.INPUT;
			this.fMargin.autoSize = "left";
			this.fMargin.x = 1475;
			this.fMargin.y = this.fTime.y;
			this.fMargin.text = "MARGIN";
			this.fMargin.filters = [myFilter];
			this.addChild(fMargin);
			
			
			//F1 constructor
			this.f1Format.size = 55;
			this.f1Format.color = 0xe89d22;
			this.f1Format.font = new RobotoBoldCondensed().fontName;
			
			this.f2Format.size = 55;
			this.f2Format.color = 0xffffff;
			this.f2Format.font = new RobotoBoldCondensed().fontName;
			
			this.f1Order.defaultTextFormat = f1Format;
			this.f1Order.type = TextFieldType.INPUT;
			this.f1Order.x = this.fTime.x;
			this.f1Order.y = this.fTime.y + 70;
			this.f1Order.text = "1st";
			this.f1Order.filters = [myFilter];
			this.f1Order.autoSize = "left";
			this.addChild(f1Order);
			
			this.f1Number.defaultTextFormat = f2Format;
			this.f1Number.type = TextFieldType.INPUT;
			this.f1Number.x = 400;
			this.f1Number.y = this.f1Order.y;
			this.f1Number.text = "7.";
			this.f1Number.filters = [myFilter];
			this.f1Number.autoSize = "left";
			this.addChild(f1Number);
			
			this.f1Name.defaultTextFormat = f2Format;
			this.f1Name.type = TextFieldType.INPUT;
			this.f1Name.autoSize = "left";
			this.f1Name.x = 510;
			this.f1Name.y = this.f1Number.y;
			this.f1Name.text = "Độc Cô Cầu Bại";
			this.f1Name.filters = [myFilter];
			this.addChild(f1Name);
			
			this.f1Win.defaultTextFormat = f1Format;
			this.f1Win.type = TextFieldType.INPUT;
			this.f1Win.autoSize = "left";
			this.f1Win.x = this.fWin.x;
			this.f1Win.y = this.f1Name.y;
			this.f1Win.text = "58.15";
			this.f1Win.filters = [myFilter];
			this.addChild(f1Win);
			
			this.f1Place.defaultTextFormat = f1Format;
			this.f1Place.type = TextFieldType.INPUT;
			this.f1Place.autoSize = "left";
			this.f1Place.x = this.fPlace.x;
			this.f1Place.y = this.f1Name.y;
			this.f1Place.text = "34.33";
			this.f1Place.filters = [myFilter];
			this.addChild(f1Place);
			
			this.f1Margin.defaultTextFormat = f2Format;
			this.f1Margin.type = TextFieldType.INPUT;
			this.f1Margin.autoSize = "left";
			this.f1Margin.x = this.fMargin.x;
			this.f1Margin.y = this.f1Name.y;
			this.f1Margin.text = "";
			this.f1Margin.filters = [myFilter];
			this.addChild(f1Margin);
			
			//F2 constructor
						
			this.f2Order.defaultTextFormat = f1Format;
			this.f2Order.type = TextFieldType.INPUT;
			this.f2Order.x = this.fTime.x;
			this.f2Order.y = this.f1Order.y + 80;
			this.f2Order.text = "2nd";
			this.f2Order.autoSize = "left";
			this.f2Order.filters = [myFilter];
			this.addChild(f2Order);
			
			this.f2Number.defaultTextFormat = f2Format;
			this.f2Number.type = TextFieldType.INPUT;
			this.f2Number.x = this.f1Number.x;
			this.f2Number.y = this.f2Order.y;
			this.f2Number.text = "1.";
			this.f2Number.autoSize = "left";
			this.f2Number.filters = [myFilter];
			this.addChild(f2Number);
			
			this.f2Name.defaultTextFormat = f2Format;
			this.f2Name.type = TextFieldType.INPUT;
			this.f2Name.autoSize = "left";
			this.f2Name.x = this.f1Name.x;
			this.f2Name.y = this.f2Number.y;
			this.f2Name.text = "Trung Thần Thông";
			this.f2Name.filters = [myFilter];
			this.addChild(f2Name);
			
			this.f2Win.defaultTextFormat = f1Format;
			this.f2Win.type = TextFieldType.INPUT;
			this.f2Win.autoSize = "left";
			this.f2Win.x = this.fWin.x;
			this.f2Win.y = this.f2Name.y;
			this.f2Win.text = "58.15";
			this.f2Win.filters = [myFilter];
			this.addChild(f2Win);
			
			this.f2Place.defaultTextFormat = f1Format;
			this.f2Place.type = TextFieldType.INPUT;
			this.f2Place.autoSize = "left";
			this.f2Place.x = this.fPlace.x;
			this.f2Place.y = this.f2Name.y;
			this.f2Place.text = "34.33";
			this.f2Place.filters = [myFilter];
			this.addChild(f2Place);
			
			this.f2Margin.defaultTextFormat = f2Format;
			this.f2Margin.type = TextFieldType.INPUT;
			this.f2Margin.autoSize = "left";
			this.f2Margin.x = this.fMargin.x;
			this.f2Margin.y = this.f2Name.y;
			this.f2Margin.text = "3/4";
			this.f2Margin.filters = [myFilter];
			this.addChild(f2Margin);
			//F3 constructor
			this.f3Order.defaultTextFormat = f1Format;
			this.f3Order.type = TextFieldType.INPUT;
			this.f3Order.x = this.fTime.x;
			this.f3Order.y = this.f2Order.y + 80;
			this.f3Order.text = "3rd";
			this.f3Order.autoSize = "left";
			this.f3Order.filters = [myFilter];
			this.addChild(f3Order);
			
			this.f3Number.defaultTextFormat = f2Format;
			this.f3Number.type = TextFieldType.INPUT;
			this.f3Number.x = this.f1Number.x;
			this.f3Number.y = this.f3Order.y;
			this.f3Number.text = "12.";
			this.f3Number.autoSize = "left";
			this.f3Number.filters = [myFilter];
			this.addChild(f3Number);
			
			this.f3Name.defaultTextFormat = f2Format;
			this.f3Name.type = TextFieldType.INPUT;
			this.f3Name.autoSize = "left";
			this.f3Name.x = this.f1Name.x;
			this.f3Name.y = this.f3Number.y;
			this.f3Name.text = "Đông Tà";
			this.f3Name.filters = [myFilter];
			this.addChild(f3Name);
			
			this.f3Win.defaultTextFormat = f1Format;
			this.f3Win.type = TextFieldType.INPUT;
			this.f3Win.autoSize = "left";
			this.f3Win.x = this.fWin.x;
			this.f3Win.y = this.f3Name.y;
			this.f3Win.text = "58.15";
			this.f3Win.filters = [myFilter];
			this.addChild(f3Win);
			
			this.f3Place.defaultTextFormat = f1Format;
			this.f3Place.type = TextFieldType.INPUT;
			this.f3Place.autoSize = "left";
			this.f3Place.x = this.fPlace.x;
			this.f3Place.y = this.f3Name.y;
			this.f3Place.text = "34.33";
			this.f3Place.filters = [myFilter];
			this.addChild(f3Place);
			
			this.f3Margin.defaultTextFormat = f2Format;
			this.f3Margin.type = TextFieldType.INPUT;
			this.f3Margin.autoSize = "left";
			this.f3Margin.x = this.fMargin.x;
			this.f3Margin.y = this.f3Name.y;
			this.f3Margin.text = "3/4";
			this.f3Margin.filters = [myFilter];
			this.addChild(f2Margin);
			//F4 constructor
			this.f4Order.defaultTextFormat = f1Format;
			this.f4Order.type = TextFieldType.INPUT;
			this.f4Order.x = this.fTime.x;
			this.f4Order.y = this.f3Order.y + 80;
			this.f4Order.text = "4th";
			this.f4Order.autoSize = "left";
			this.f4Order.filters = [myFilter];
			this.addChild(f4Order);
			
			this.f4Number.defaultTextFormat = f2Format;
			this.f4Number.type = TextFieldType.INPUT;
			this.f4Number.x = this.f1Number.x;
			this.f4Number.y = this.f4Order.y;
			this.f4Number.text = "12.";
			this.f4Number.autoSize = "left";
			this.f4Number.filters = [myFilter];
			this.addChild(f4Number);
			
			this.f4Name.defaultTextFormat = f2Format;
			this.f4Name.type = TextFieldType.INPUT;
			this.f4Name.autoSize = "left";
			this.f4Name.x = this.f1Name.x;
			this.f4Name.y = this.f4Number.y;
			this.f4Name.text = "Tây Độc";
			this.f4Name.filters = [myFilter];
			this.addChild(f4Name);
			
			this.f4Win.defaultTextFormat = f1Format;
			this.f4Win.type = TextFieldType.INPUT;
			this.f4Win.autoSize = "left";
			this.f4Win.x = this.fWin.x;
			this.f4Win.y = this.f4Name.y;
			this.f4Win.text = "58.15";
			this.f4Win.filters = [myFilter];
			this.addChild(f4Win);
			
			this.f4Place.defaultTextFormat = f1Format;
			this.f4Place.type = TextFieldType.INPUT;
			this.f4Place.autoSize = "left";
			this.f4Place.x = this.fPlace.x;
			this.f4Place.y = this.f4Name.y;
			this.f4Place.text = "34.33";
			this.f4Place.filters = [myFilter];
			this.addChild(f4Place);
			
			this.f4Margin.defaultTextFormat = f2Format;
			this.f4Margin.type = TextFieldType.INPUT;
			this.f4Margin.autoSize = "left";
			this.f4Margin.x = this.fMargin.x;
			this.f4Margin.y = this.f4Name.y;
			this.f4Margin.text = "3/4";
			this.f4Margin.filters = [myFilter];
			this.addChild(f4Margin);
			
			//F5 constructor
			this.f5Order.defaultTextFormat = f1Format;
			this.f5Order.type = TextFieldType.INPUT;
			this.f5Order.x = this.fTime.x;
			this.f5Order.y = this.f4Order.y + 80;
			this.f5Order.text = "5th";
			this.f5Order.autoSize = "left";
			this.f5Order.filters = [myFilter];
			this.addChild(f5Order);
			
			this.f5Number.defaultTextFormat = f2Format;
			this.f5Number.type = TextFieldType.INPUT;
			this.f5Number.x = this.f1Number.x;
			this.f5Number.y = this.f5Order.y;
			this.f5Number.text = "12.";
			this.f5Number.autoSize = "left";
			this.f5Number.filters = [myFilter];
			this.addChild(f5Number);
			
			this.f5Name.defaultTextFormat = f2Format;
			this.f5Name.type = TextFieldType.INPUT;
			this.f5Name.autoSize = "left";
			this.f5Name.x = this.f1Name.x;
			this.f5Name.y = this.f5Number.y;
			this.f5Name.text = "Nam Đế";
			this.f5Name.filters = [myFilter];
			this.addChild(f5Name);
			
			this.f5Win.defaultTextFormat = f1Format;
			this.f5Win.type = TextFieldType.INPUT;
			this.f5Win.autoSize = "left";
			this.f5Win.x = this.fWin.x;
			this.f5Win.y = this.f5Name.y;
			this.f5Win.text = "58.15";
			this.f5Win.filters = [myFilter];
			this.addChild(f5Win);
			
			this.f5Place.defaultTextFormat = f1Format;
			this.f5Place.type = TextFieldType.INPUT;
			this.f5Place.autoSize = "left";
			this.f5Place.x = this.fPlace.x;
			this.f5Place.y = this.f5Name.y;
			this.f5Place.text = "34.33";
			this.f5Place.filters = [myFilter];
			this.addChild(f5Place);
			
			this.f5Margin.defaultTextFormat = f2Format;
			this.f5Margin.type = TextFieldType.INPUT;
			this.f5Margin.autoSize = "left";
			this.f5Margin.x = this.fMargin.x;
			this.f5Margin.y = this.f5Name.y;
			this.f5Margin.text = "34.33";
			this.f5Margin.filters = [myFilter];
			this.addChild(f5Margin);
			
			//F6 constructor
			this.f6Order.defaultTextFormat = f1Format;
			this.f6Order.type = TextFieldType.INPUT;
			this.f6Order.x = this.fTime.x;
			this.f6Order.y = this.f5Order.y + 80;
			this.f6Order.text = "6th";
			this.f6Order.autoSize = "left";
			this.f6Order.filters = [myFilter];
			this.addChild(f6Order);
			
			this.f6Number.defaultTextFormat = f2Format;
			this.f6Number.type = TextFieldType.INPUT;
			this.f6Number.x = this.f1Number.x;
			this.f6Number.y = this.f6Order.y;
			this.f6Number.text = "12.";
			this.f6Number.autoSize = "left";
			this.f6Number.filters = [myFilter];
			this.addChild(f6Number);
			
			this.f6Name.defaultTextFormat = f2Format;
			this.f6Name.type = TextFieldType.INPUT;
			this.f6Name.autoSize = "left";
			this.f6Name.x = this.f1Name.x;
			this.f6Name.y = this.f6Number.y;
			this.f6Name.text = "Bắc Cái";
			this.f6Name.filters = [myFilter];
			this.addChild(f6Name);
			
			this.f6Win.defaultTextFormat = f1Format;
			this.f6Win.type = TextFieldType.INPUT;
			this.f6Win.autoSize = "left";
			this.f6Win.x = this.fWin.x;
			this.f6Win.y = this.f6Name.y;
			this.f6Win.text = "58.15";
			this.f6Win.filters = [myFilter];
			this.addChild(f6Win);
			
			this.f6Place.defaultTextFormat = f1Format;
			this.f6Place.type = TextFieldType.INPUT;
			this.f6Place.autoSize = "left";
			this.f6Place.x = this.fPlace.x;
			this.f6Place.y = this.f6Name.y;
			this.f6Place.text = "34.33";
			this.f6Place.filters = [myFilter];
			this.addChild(f6Place);
			
			this.f6Margin.defaultTextFormat = f2Format;
			this.f6Margin.type = TextFieldType.INPUT;
			this.f6Margin.autoSize = "left";
			this.f6Margin.x = this.fMargin.x;
			this.f6Margin.y = this.f6Name.y;
			this.f6Margin.text = "34.33";
			this.f6Margin.filters = [myFilter];
			this.addChild(f6Margin);
			
			//F7 constructor
			this.f7Order.defaultTextFormat = f1Format;
			this.f7Order.type = TextFieldType.INPUT;
			this.f7Order.x = this.fTime.x;
			this.f7Order.y = this.f6Order.y + 80;
			this.f7Order.text = "7th";
			this.f7Order.autoSize = "left";
			this.f7Order.filters = [myFilter];
			this.addChild(f7Order);
			
			this.f7Number.defaultTextFormat = f2Format;
			this.f7Number.type = TextFieldType.INPUT;
			this.f7Number.x = this.f1Number.x;
			this.f7Number.y = this.f7Order.y;
			this.f7Number.text = "12.";
			this.f7Number.autoSize = "left";
			this.f7Number.filters = [myFilter];
			this.addChild(f7Number);
			
			this.f7Name.defaultTextFormat = f2Format;
			this.f7Name.type = TextFieldType.INPUT;
			this.f7Name.autoSize = "left";
			this.f7Name.x = this.f1Name.x;
			this.f7Name.y = this.f7Number.y;
			this.f7Name.text = "Lão Ngoan Đồng";
			this.f7Name.filters = [myFilter];
			this.addChild(f7Name);
			
			this.f7Win.defaultTextFormat = f1Format;
			this.f7Win.type = TextFieldType.INPUT;
			this.f7Win.autoSize = "left";
			this.f7Win.x = this.fWin.x;
			this.f7Win.y = this.f7Name.y;
			this.f7Win.text = "58.15";
			this.f7Win.filters = [myFilter];
			this.addChild(f7Win);
			
			this.f7Place.defaultTextFormat = f1Format;
			this.f7Place.type = TextFieldType.INPUT;
			this.f7Place.autoSize = "left";
			this.f7Place.x = this.fPlace.x;
			this.f7Place.y = this.f7Name.y;
			this.f7Place.text = "34.33";
			this.f7Place.filters = [myFilter];
			this.addChild(f7Place);
			
			this.f7Margin.defaultTextFormat = f2Format;
			this.f7Margin.type = TextFieldType.INPUT;
			this.f7Margin.autoSize = "left";
			this.f7Margin.x = this.fMargin.x;
			this.f7Margin.y = this.f7Name.y;
			this.f7Margin.text = "34.33";
			this.f7Margin.filters = [myFilter];
			this.addChild(f7Margin);
						
			//F8 constructor
			this.f8Order.defaultTextFormat = f1Format;
			this.f8Order.type = TextFieldType.INPUT;
			this.f8Order.x = this.fTime.x;
			this.f8Order.y = this.f7Order.y + 80;
			this.f8Order.text = "8th";
			this.f8Order.autoSize = "left";
			this.f8Order.filters = [myFilter];
			this.addChild(f8Order);
			
			this.f8Number.defaultTextFormat = f2Format;
			this.f8Number.type = TextFieldType.INPUT;
			this.f8Number.x = this.f1Number.x;
			this.f8Number.y = this.f8Order.y;
			this.f8Number.text = "12.";
			this.f8Number.autoSize = "left";
			this.f8Number.filters = [myFilter];
			this.addChild(f8Number);
			
			this.f8Name.defaultTextFormat = f2Format;
			this.f8Name.type = TextFieldType.INPUT;
			this.f8Name.autoSize = "left";
			this.f8Name.x = this.f1Name.x;
			this.f8Name.y = this.f8Number.y;
			this.f8Name.text = "Quách Tĩnh";
			this.f8Name.filters = [myFilter];
			this.addChild(f8Name);
			
			this.f8Win.defaultTextFormat = f1Format;
			this.f8Win.type = TextFieldType.INPUT;
			this.f8Win.autoSize = "left";
			this.f8Win.x = this.fWin.x;
			this.f8Win.y = this.f8Name.y;
			this.f8Win.text = "58.15";
			this.f8Win.filters = [myFilter];
			this.addChild(f8Win);
			
			this.f8Place.defaultTextFormat = f1Format;
			this.f8Place.type = TextFieldType.INPUT;
			this.f8Place.autoSize = "left";
			this.f8Place.x = this.fPlace.x;
			this.f8Place.y = this.f8Name.y;
			this.f8Place.filters = [myFilter];
			this.f8Place.text = "34.33";
			this.addChild(f8Place);
			
			this.f8Margin.defaultTextFormat = f2Format;
			this.f8Margin.type = TextFieldType.INPUT;
			this.f8Margin.autoSize = "left";
			this.f8Margin.x = this.fMargin.x;
			this.f8Margin.y = this.f8Name.y;
			this.f8Margin.text = "34.33";
			this.f8Margin.filters = [myFilter];
			this.addChild(f8Margin);
						
			this.groupElement.addChild(bigPanel);
			this.groupElement.addChild(hideShape);
			this.groupElement.addChild(f1Order);
			this.groupElement.addChild(f1Number);
			this.groupElement.addChild(f1Name);
			this.groupElement.addChild(f1Win);
			this.groupElement.addChild(f1Place);
			this.groupElement.addChild(f1Margin);
						
			this.groupElement.addChild(f2Order);
			this.groupElement.addChild(f2Number);
			this.groupElement.addChild(f2Name);
			this.groupElement.addChild(f2Win);
			this.groupElement.addChild(f2Place);
			this.groupElement.addChild(f2Margin);
			
			this.groupElement.addChild(f3Order);
			this.groupElement.addChild(f3Number);
			this.groupElement.addChild(f3Name);
			this.groupElement.addChild(f3Win);
			this.groupElement.addChild(f3Place);
			this.groupElement.addChild(f3Margin);
			
			this.groupElement.addChild(f4Order);
			this.groupElement.addChild(f4Number);
			this.groupElement.addChild(f4Name);
			this.groupElement.addChild(f4Win);
			this.groupElement.addChild(f4Place);
			this.groupElement.addChild(f4Margin);
			
			this.groupElement.addChild(f5Order);
			this.groupElement.addChild(f5Number);
			this.groupElement.addChild(f5Name);
			this.groupElement.addChild(f5Win);
			this.groupElement.addChild(f5Place);
			this.groupElement.addChild(f5Margin);
			
			this.groupElement.addChild(f6Order);
			this.groupElement.addChild(f6Number);
			this.groupElement.addChild(f6Name);
			this.groupElement.addChild(f6Win);
			this.groupElement.addChild(f6Place);
			this.groupElement.addChild(f6Margin);
			
			this.groupElement.addChild(f7Order);
			this.groupElement.addChild(f7Number);
			this.groupElement.addChild(f7Name);
			this.groupElement.addChild(f7Win);
			this.groupElement.addChild(f7Place);
			this.groupElement.addChild(f7Margin);
			
			this.groupElement.addChild(f8Order);
			this.groupElement.addChild(f8Number);
			this.groupElement.addChild(f8Name);
			this.groupElement.addChild(f8Win);
			this.groupElement.addChild(f8Place);
			this.groupElement.addChild(f8Margin);
						
			this.group2.addChild(headPanel);
			this.groupElement.addChild(fTime);
			this.group2.addChild(fMain);
			this.group2.addChild(txt1);
			this.groupElement.addChild(fWin);
			this.groupElement.addChild(fPlace);
			this.groupElement.addChild(fMargin);
					
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
			xmlStr +=Add(xmlStr, "fMain", fMain);
			xmlStr +=Add(xmlStr, "fTime", fTime);
			xmlStr +=Add(xmlStr, "fWin", fWin);
			xmlStr +=Add(xmlStr, "fPlace", fPlace);
			xmlStr +=Add(xmlStr, "fMargin", fMargin);
			xmlStr +=Add(xmlStr, "txt1", txt1);
			xmlStr +=Add(xmlStr, "f1Order", f1Order);
			xmlStr +=Add(xmlStr, "f1Number", f1Number);
			xmlStr +=Add(xmlStr, "f1Win", f1Win);
			xmlStr +=Add(xmlStr, "f1Place", f1Place);
			xmlStr +=Add(xmlStr, "f1Name", f1Name);
			xmlStr +=Add(xmlStr, "f1Margin", f1Margin);
			
			xmlStr +=Add(xmlStr, "f2Order", f2Order);
			xmlStr +=Add(xmlStr, "f2Number", f2Number);
			xmlStr +=Add(xmlStr, "f2Win", f2Win);
			xmlStr +=Add(xmlStr, "f2Place", f2Place);
			xmlStr +=Add(xmlStr, "f2Name", f2Name);
			xmlStr +=Add(xmlStr, "f2Margin", f2Margin);
			
			xmlStr +=Add(xmlStr, "f3Order", f3Order);
			xmlStr +=Add(xmlStr, "f3Number", f3Number);
			xmlStr +=Add(xmlStr, "f3Win", f3Win);
			xmlStr +=Add(xmlStr, "f3Place", f3Place);
			xmlStr +=Add(xmlStr, "f3Name", f3Name);
			xmlStr +=Add(xmlStr, "f3Margin", f3Margin);
			
			xmlStr +=Add(xmlStr, "f4Order", f4Order);
			xmlStr +=Add(xmlStr, "f4Number", f4Number);
			xmlStr +=Add(xmlStr, "f4Win", f4Win);
			xmlStr +=Add(xmlStr, "f4Place", f4Place);
			xmlStr +=Add(xmlStr, "f4Name", f4Name);
			xmlStr +=Add(xmlStr, "f4Margin", f4Margin);
			
			xmlStr +=Add(xmlStr, "f5Order", f5Order);
			xmlStr +=Add(xmlStr, "f5Number", f5Number);
			xmlStr +=Add(xmlStr, "f5Win", f5Win);
			xmlStr +=Add(xmlStr, "f5Place", f5Place);
			xmlStr +=Add(xmlStr, "f5Name", f5Name);
			xmlStr +=Add(xmlStr, "f5Margin", f5Margin);
			
			xmlStr +=Add(xmlStr, "f6Order", f6Order);
			xmlStr +=Add(xmlStr, "f6Number", f6Number);
			xmlStr +=Add(xmlStr, "f6Win", f6Win);
			xmlStr +=Add(xmlStr, "f6Place", f6Place);
			xmlStr +=Add(xmlStr, "f6Name", f6Name);
			xmlStr +=Add(xmlStr, "f6Margin", f6Margin);
			
			xmlStr +=Add(xmlStr, "f7Order", f7Order);
			xmlStr +=Add(xmlStr, "f7Number", f7Number);
			xmlStr +=Add(xmlStr, "f7Win", f7Win);
			xmlStr +=Add(xmlStr, "f7Place", f7Place);
			xmlStr +=Add(xmlStr, "f7Name", f7Name);
			xmlStr +=Add(xmlStr, "f7Margin", f7Margin);
			
			xmlStr +=Add(xmlStr, "f8Order", f8Order);
			xmlStr +=Add(xmlStr, "f8Number", f8Number);
			xmlStr +=Add(xmlStr, "f8Win", f8Win);
			xmlStr +=Add(xmlStr, "f8Place", f8Place);
			xmlStr +=Add(xmlStr, "f8Name", f8Name);
			xmlStr +=Add(xmlStr, "f8Margin", f8Margin);
		
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
						
					case "fWin".toLowerCase():
						this.fWin.text = data.toUpperCase();
						break;
					case "fPlace".toLowerCase():
						this.fPlace.text = data;
						break;
					case "fTime".toLowerCase():
						this.fTime.text = data.toUpperCase();
						break;
					case "fMargin".toLowerCase():
						this.fMargin.text = data.toUpperCase();
						break;
					
					case "txt1".toLowerCase():
						this.txt1.text = data.toUpperCase();
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
					case "f1Order".toLowerCase():
						this.f1Order.text = data.toUpperCase();
						break;
					case "f1Margin".toLowerCase():
						this.f1Margin.text = data.toUpperCase();
						break;					
					case "f1Place".toLowerCase():
						this.f1Place.text = data.toUpperCase();
						break;
					
					case "f2Number".toLowerCase():
						this.f2Number.text = data.toUpperCase();
						break;
					case "f2Name".toLowerCase():
						this.f2Name.text = data.toUpperCase();
						break;
					case "f2Win".toLowerCase():
						this.f2Win.text = data.toUpperCase();
						break;
					case "f2Order".toLowerCase():
						this.f2Order.text = data.toUpperCase();
						break;
					case "f2Margin".toLowerCase():
						this.f2Margin.text = data.toUpperCase();
						break;					
					case "f2Place".toLowerCase():
						this.f2Place.text = data.toUpperCase();
						break;
					
					case "f3Number".toLowerCase():
						this.f3Number.text = data.toUpperCase();
						break;
					case "f3Name".toLowerCase():
						this.f3Name.text = data.toUpperCase();
						break;
					case "f3Win".toLowerCase():
						this.f3Win.text = data.toUpperCase();
						break;
					case "f3Order".toLowerCase():
						this.f3Order.text = data.toUpperCase();
						break;
					case "f3Margin".toLowerCase():
						this.f3Margin.text = data.toUpperCase();
						break;					
					case "f3Place".toLowerCase():
						this.f3Place.text = data.toUpperCase();
						break;
					
					case "f4Number".toLowerCase():
						this.f4Number.text = data.toUpperCase();
						break;
					case "f4Name".toLowerCase():
						this.f4Name.text = data.toUpperCase();
						break;
					case "f4Win".toLowerCase():
						this.f4Win.text = data.toUpperCase();
						break;
					case "f4Order".toLowerCase():
						this.f4Order.text = data.toUpperCase();
						break;
					case "f4Margin".toLowerCase():
						this.f4Margin.text = data.toUpperCase();
						break;					
					case "f4Place".toLowerCase():
						this.f4Place.text = data.toUpperCase();
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
					case "f5Order".toLowerCase():
						this.f1Order.text = data.toUpperCase();
						break;
					case "f5Margin".toLowerCase():
						this.f5Margin.text = data.toUpperCase();
						break;					
					case "f5Place".toLowerCase():
						this.f5Place.text = data.toUpperCase();
						break;
					
					case "f6Number".toLowerCase():
						this.f6Number.text = data.toUpperCase();
						break;
					case "f6Name".toLowerCase():
						this.f6Name.text = data.toUpperCase();
						break;
					case "f6Win".toLowerCase():
						this.f6Win.text = data.toUpperCase();
						break;
					case "f6Order".toLowerCase():
						this.f6Order.text = data.toUpperCase();
						break;
					case "f6Margin".toLowerCase():
						this.f6Margin.text = data.toUpperCase();
						break;					
					case "f6Place".toLowerCase():
						this.f6Place.text = data.toUpperCase();
						break;
					
					case "f7Number".toLowerCase():
						this.f7Number.text = data.toUpperCase();
						break;
					case "f7Name".toLowerCase():
						this.f7Name.text = data.toUpperCase();
						break;
					case "f7Win".toLowerCase():
						this.f7Win.text = data.toUpperCase();
						break;
					case "f7Order".toLowerCase():
						this.f7Order.text = data.toUpperCase();
						break;
					case "f7Margin".toLowerCase():
						this.f7Margin.text = data.toUpperCase();
						break;					
					case "f7Place".toLowerCase():
						this.f7Place.text = data.toUpperCase();
						break;
					
					case "f8Number".toLowerCase():
						this.f8Number.text = data.toUpperCase();
						break;
					case "f8Name".toLowerCase():
						this.f8Name.text = data.toUpperCase();
						break;
					case "f8Win".toLowerCase():
						this.f8Win.text = data.toUpperCase();
						break;
					case "f8Order".toLowerCase():
						this.f8Order.text = data.toUpperCase();
						break;
					case "f8Margin".toLowerCase():
						this.f8Margin.text = data.toUpperCase();
						break;					
					case "f8Place".toLowerCase():
						this.f8Place.text = data.toUpperCase();
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
