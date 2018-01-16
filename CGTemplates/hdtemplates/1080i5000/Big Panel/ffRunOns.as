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
			
		public function ffRunOns() {
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
			this.fMainFormat.color = 0xb2ecf9;
			this.fMainFormat.font = new RobotoBold().fontName;
			
			this.fMain.defaultTextFormat = fMainFormat;
			this.fMain.type = TextFieldType.DYNAMIC;
			this.fMain.autoSize = "left";
			this.fMain.x = 257;
			this.fMain.y = 127;
			this.fMain.text = "RACE 2 MADAGUI PURE BLONDE HANDICAP";
			this.addChild(fMain);
			
			this.fTimeFormat.size = 40;
			this.fTimeFormat.color = 0xe89d22;
			this.fTimeFormat.font = new RobotoBlack().fontName;
			
			this.fTime.defaultTextFormat = fTimeFormat;
			this.fTime.type = TextFieldType.DYNAMIC;
			this.fTime.autoSize = "left";
			this.fTime.x = this.fMain.x;
			this.fTime.y = 230;
			this.fTime.text = "ORDER OF FINISH";
			this.addChild(fTime);
			
			this.fWin.defaultTextFormat = fTimeFormat;
			this.fWin.type = TextFieldType.DYNAMIC;
			this.fWin.autoSize = "left";
			this.fWin.x = 1050;
			this.fWin.y = this.fTime.y;
			this.fWin.text = "TIME";
			this.addChild(fWin);
			
			this.fPlace.defaultTextFormat = fTimeFormat;
			this.fPlace.type = TextFieldType.DYNAMIC;
			this.fPlace.autoSize = "left";
			this.fPlace.x = 1250;
			this.fPlace.y = this.fTime.y;
			this.fPlace.text = "600m";
			this.addChild(fPlace);
			
			this.fTimeFormat.color = 0xffffff;
			this.fMargin.defaultTextFormat = fTimeFormat;
			this.fMargin.type = TextFieldType.DYNAMIC;
			this.fMargin.autoSize = "left";
			this.fMargin.x = 1475;
			this.fMargin.y = this.fTime.y;
			this.fMargin.text = "MARGIN";
			this.addChild(fMargin);
			
			
			//F1 constructor
			this.f1Format.size = 55;
			this.f1Format.color = 0xe89d22;
			this.f1Format.font = new RobotoBold().fontName;
			
			this.f2Format.size = 55;
			this.f2Format.color = 0xffffff;
			this.f2Format.font = new RobotoBold().fontName;
			
			this.f1Order.defaultTextFormat = f1Format;
			this.f1Order.type = TextFieldType.DYNAMIC;
			this.f1Order.x = this.fTime.x;
			this.f1Order.y = this.fTime.y + 70;
			this.f1Order.text = "1st";
			this.f1Order.autoSize = "left";
			this.addChild(f1Order);
			
			this.f1Number.defaultTextFormat = f2Format;
			this.f1Number.type = TextFieldType.DYNAMIC;
			this.f1Number.x = 400;
			this.f1Number.y = this.f1Order.y;
			this.f1Number.text = "7.";
			this.f1Number.autoSize = "left";
			this.addChild(f1Number);
			
			this.f1Name.defaultTextFormat = f2Format;
			this.f1Name.type = TextFieldType.DYNAMIC;
			this.f1Name.autoSize = "left";
			this.f1Name.x = 510;
			this.f1Name.y = this.f1Number.y;
			this.f1Name.text = "Độc Cô Cầu Bại";
			this.addChild(f1Name);
			
			this.f1Win.defaultTextFormat = f1Format;
			this.f1Win.type = TextFieldType.DYNAMIC;
			this.f1Win.autoSize = "left";
			this.f1Win.x = this.fWin.x;
			this.f1Win.y = this.f1Name.y;
			this.f1Win.text = "58.15";
			this.addChild(f1Win);
			
			this.f1Place.defaultTextFormat = f1Format;
			this.f1Place.type = TextFieldType.DYNAMIC;
			this.f1Place.autoSize = "left";
			this.f1Place.x = this.fPlace.x;
			this.f1Place.y = this.f1Name.y;
			this.f1Place.text = "34.33";
			this.addChild(f1Place);
			
			this.f1Margin.defaultTextFormat = f2Format;
			this.f1Margin.type = TextFieldType.DYNAMIC;
			this.f1Margin.autoSize = "left";
			this.f1Margin.x = this.fMargin.x;
			this.f1Margin.y = this.f1Name.y;
			this.f1Margin.text = "";
			this.addChild(f1Margin);
			
			//F2 constructor
						
			this.f2Order.defaultTextFormat = f1Format;
			this.f2Order.type = TextFieldType.DYNAMIC;
			this.f2Order.x = this.fTime.x;
			this.f2Order.y = this.f1Order.y + 80;
			this.f2Order.text = "2nd";
			this.f2Order.autoSize = "left";
			this.addChild(f2Order);
			
			this.f2Number.defaultTextFormat = f2Format;
			this.f2Number.type = TextFieldType.DYNAMIC;
			this.f2Number.x = this.f1Number.x;
			this.f2Number.y = this.f2Order.y;
			this.f2Number.text = "1.";
			this.f2Number.autoSize = "left";
			this.addChild(f2Number);
			
			this.f2Name.defaultTextFormat = f2Format;
			this.f2Name.type = TextFieldType.DYNAMIC;
			this.f2Name.autoSize = "left";
			this.f2Name.x = this.f1Name.x;
			this.f2Name.y = this.f2Number.y;
			this.f2Name.text = "Trung Thần Thông";
			this.addChild(f2Name);
			
			this.f2Win.defaultTextFormat = f1Format;
			this.f2Win.type = TextFieldType.DYNAMIC;
			this.f2Win.autoSize = "left";
			this.f2Win.x = this.fWin.x;
			this.f2Win.y = this.f2Name.y;
			this.f2Win.text = "58.15";
			this.addChild(f2Win);
			
			this.f2Place.defaultTextFormat = f1Format;
			this.f2Place.type = TextFieldType.DYNAMIC;
			this.f2Place.autoSize = "left";
			this.f2Place.x = this.fPlace.x;
			this.f2Place.y = this.f2Name.y;
			this.f2Place.text = "34.33";
			this.addChild(f2Place);
			
			this.f2Margin.defaultTextFormat = f2Format;
			this.f2Margin.type = TextFieldType.DYNAMIC;
			this.f2Margin.autoSize = "left";
			this.f2Margin.x = this.fMargin.x;
			this.f2Margin.y = this.f2Name.y;
			this.f2Margin.text = "3/4";
			this.addChild(f2Margin);
			//F3 constructor
			this.f3Order.defaultTextFormat = f1Format;
			this.f3Order.type = TextFieldType.DYNAMIC;
			this.f3Order.x = this.fTime.x;
			this.f3Order.y = this.f2Order.y + 80;
			this.f3Order.text = "3rd";
			this.f3Order.autoSize = "left";
			this.addChild(f3Order);
			
			this.f3Number.defaultTextFormat = f2Format;
			this.f3Number.type = TextFieldType.DYNAMIC;
			this.f3Number.x = this.f1Number.x;
			this.f3Number.y = this.f3Order.y;
			this.f3Number.text = "12.";
			this.f3Number.autoSize = "left";
			this.addChild(f3Number);
			
			this.f3Name.defaultTextFormat = f2Format;
			this.f3Name.type = TextFieldType.DYNAMIC;
			this.f3Name.autoSize = "left";
			this.f3Name.x = this.f1Name.x;
			this.f3Name.y = this.f3Number.y;
			this.f3Name.text = "Đông Tà";
			this.addChild(f3Name);
			
			this.f3Win.defaultTextFormat = f1Format;
			this.f3Win.type = TextFieldType.DYNAMIC;
			this.f3Win.autoSize = "left";
			this.f3Win.x = this.fWin.x;
			this.f3Win.y = this.f3Name.y;
			this.f3Win.text = "58.15";
			this.addChild(f3Win);
			
			this.f3Place.defaultTextFormat = f1Format;
			this.f3Place.type = TextFieldType.DYNAMIC;
			this.f3Place.autoSize = "left";
			this.f3Place.x = this.fPlace.x;
			this.f3Place.y = this.f3Name.y;
			this.f3Place.text = "34.33";
			this.addChild(f3Place);
			
			this.f3Margin.defaultTextFormat = f2Format;
			this.f3Margin.type = TextFieldType.DYNAMIC;
			this.f3Margin.autoSize = "left";
			this.f3Margin.x = this.fMargin.x;
			this.f3Margin.y = this.f3Name.y;
			this.f3Margin.text = "3/4";
			this.addChild(f2Margin);
			//F4 constructor
			this.f4Order.defaultTextFormat = f1Format;
			this.f4Order.type = TextFieldType.DYNAMIC;
			this.f4Order.x = this.fTime.x;
			this.f4Order.y = this.f3Order.y + 80;
			this.f4Order.text = "4th";
			this.f4Order.autoSize = "left";
			this.addChild(f4Order);
			
			this.f4Number.defaultTextFormat = f2Format;
			this.f4Number.type = TextFieldType.DYNAMIC;
			this.f4Number.x = this.f1Number.x;
			this.f4Number.y = this.f4Order.y;
			this.f4Number.text = "12.";
			this.f4Number.autoSize = "left";
			this.addChild(f4Number);
			
			this.f4Name.defaultTextFormat = f2Format;
			this.f4Name.type = TextFieldType.DYNAMIC;
			this.f4Name.autoSize = "left";
			this.f4Name.x = this.f1Name.x;
			this.f4Name.y = this.f4Number.y;
			this.f4Name.text = "Tây Độc";
			this.addChild(f4Name);
			
			this.f4Win.defaultTextFormat = f1Format;
			this.f4Win.type = TextFieldType.DYNAMIC;
			this.f4Win.autoSize = "left";
			this.f4Win.x = this.fWin.x;
			this.f4Win.y = this.f4Name.y;
			this.f4Win.text = "58.15";
			this.addChild(f4Win);
			
			this.f4Place.defaultTextFormat = f1Format;
			this.f4Place.type = TextFieldType.DYNAMIC;
			this.f4Place.autoSize = "left";
			this.f4Place.x = this.fPlace.x;
			this.f4Place.y = this.f4Name.y;
			this.f4Place.text = "34.33";
			this.addChild(f4Place);
			
			this.f4Margin.defaultTextFormat = f2Format;
			this.f4Margin.type = TextFieldType.DYNAMIC;
			this.f4Margin.autoSize = "left";
			this.f4Margin.x = this.fMargin.x;
			this.f4Margin.y = this.f4Name.y;
			this.f4Margin.text = "3/4";
			this.addChild(f4Margin);
			
			//F5 constructor
			this.f5Order.defaultTextFormat = f1Format;
			this.f5Order.type = TextFieldType.DYNAMIC;
			this.f5Order.x = this.fTime.x;
			this.f5Order.y = this.f4Order.y + 80;
			this.f5Order.text = "5th";
			this.f5Order.autoSize = "left";
			this.addChild(f5Order);
			
			this.f5Number.defaultTextFormat = f2Format;
			this.f5Number.type = TextFieldType.DYNAMIC;
			this.f5Number.x = this.f1Number.x;
			this.f5Number.y = this.f5Order.y;
			this.f5Number.text = "12.";
			this.f5Number.autoSize = "left";
			this.addChild(f5Number);
			
			this.f5Name.defaultTextFormat = f2Format;
			this.f5Name.type = TextFieldType.DYNAMIC;
			this.f5Name.autoSize = "left";
			this.f5Name.x = this.f1Name.x;
			this.f5Name.y = this.f5Number.y;
			this.f5Name.text = "Nam Đế";
			this.addChild(f5Name);
			
			this.f5Win.defaultTextFormat = f1Format;
			this.f5Win.type = TextFieldType.DYNAMIC;
			this.f5Win.autoSize = "left";
			this.f5Win.x = this.fWin.x;
			this.f5Win.y = this.f5Name.y;
			this.f5Win.text = "58.15";
			this.addChild(f5Win);
			
			this.f5Place.defaultTextFormat = f1Format;
			this.f5Place.type = TextFieldType.DYNAMIC;
			this.f5Place.autoSize = "left";
			this.f5Place.x = this.fPlace.x;
			this.f5Place.y = this.f5Name.y;
			this.f5Place.text = "34.33";
			this.addChild(f5Place);
			
			this.f5Margin.defaultTextFormat = f2Format;
			this.f5Margin.type = TextFieldType.DYNAMIC;
			this.f5Margin.autoSize = "left";
			this.f5Margin.x = this.fMargin.x;
			this.f5Margin.y = this.f5Name.y;
			this.f5Margin.text = "34.33";
			this.addChild(f5Margin);
			
			//F6 constructor
			this.f6Order.defaultTextFormat = f1Format;
			this.f6Order.type = TextFieldType.DYNAMIC;
			this.f6Order.x = this.fTime.x;
			this.f6Order.y = this.f5Order.y + 80;
			this.f6Order.text = "6th";
			this.f6Order.autoSize = "left";
			this.addChild(f6Order);
			
			this.f6Number.defaultTextFormat = f2Format;
			this.f6Number.type = TextFieldType.DYNAMIC;
			this.f6Number.x = this.f1Number.x;
			this.f6Number.y = this.f6Order.y;
			this.f6Number.text = "12.";
			this.f6Number.autoSize = "left";
			this.addChild(f6Number);
			
			this.f6Name.defaultTextFormat = f2Format;
			this.f6Name.type = TextFieldType.DYNAMIC;
			this.f6Name.autoSize = "left";
			this.f6Name.x = this.f1Name.x;
			this.f6Name.y = this.f6Number.y;
			this.f6Name.text = "Bắc Cái";
			this.addChild(f6Name);
			
			this.f6Win.defaultTextFormat = f1Format;
			this.f6Win.type = TextFieldType.DYNAMIC;
			this.f6Win.autoSize = "left";
			this.f6Win.x = this.fWin.x;
			this.f6Win.y = this.f6Name.y;
			this.f6Win.text = "58.15";
			this.addChild(f6Win);
			
			this.f6Place.defaultTextFormat = f1Format;
			this.f6Place.type = TextFieldType.DYNAMIC;
			this.f6Place.autoSize = "left";
			this.f6Place.x = this.fPlace.x;
			this.f6Place.y = this.f6Name.y;
			this.f6Place.text = "34.33";
			this.addChild(f6Place);
			
			this.f6Margin.defaultTextFormat = f2Format;
			this.f6Margin.type = TextFieldType.DYNAMIC;
			this.f6Margin.autoSize = "left";
			this.f6Margin.x = this.fMargin.x;
			this.f6Margin.y = this.f6Name.y;
			this.f6Margin.text = "34.33";
			this.addChild(f6Margin);
			
			//F7 constructor
			this.f7Order.defaultTextFormat = f1Format;
			this.f7Order.type = TextFieldType.DYNAMIC;
			this.f7Order.x = this.fTime.x;
			this.f7Order.y = this.f6Order.y + 80;
			this.f7Order.text = "7th";
			this.f7Order.autoSize = "left";
			this.addChild(f7Order);
			
			this.f7Number.defaultTextFormat = f2Format;
			this.f7Number.type = TextFieldType.DYNAMIC;
			this.f7Number.x = this.f1Number.x;
			this.f7Number.y = this.f7Order.y;
			this.f7Number.text = "12.";
			this.f7Number.autoSize = "left";
			this.addChild(f7Number);
			
			this.f7Name.defaultTextFormat = f2Format;
			this.f7Name.type = TextFieldType.DYNAMIC;
			this.f7Name.autoSize = "left";
			this.f7Name.x = this.f1Name.x;
			this.f7Name.y = this.f7Number.y;
			this.f7Name.text = "Lão Ngoan Đồng";
			this.addChild(f7Name);
			
			this.f7Win.defaultTextFormat = f1Format;
			this.f7Win.type = TextFieldType.DYNAMIC;
			this.f7Win.autoSize = "left";
			this.f7Win.x = this.fWin.x;
			this.f7Win.y = this.f7Name.y;
			this.f7Win.text = "58.15";
			this.addChild(f7Win);
			
			this.f7Place.defaultTextFormat = f1Format;
			this.f7Place.type = TextFieldType.DYNAMIC;
			this.f7Place.autoSize = "left";
			this.f7Place.x = this.fPlace.x;
			this.f7Place.y = this.f7Name.y;
			this.f7Place.text = "34.33";
			this.addChild(f7Place);
			
			this.f7Margin.defaultTextFormat = f2Format;
			this.f7Margin.type = TextFieldType.DYNAMIC;
			this.f7Margin.autoSize = "left";
			this.f7Margin.x = this.fMargin.x;
			this.f7Margin.y = this.f7Name.y;
			this.f7Margin.text = "34.33";
			this.addChild(f7Margin);
						
			//F8 constructor
			this.f8Order.defaultTextFormat = f1Format;
			this.f8Order.type = TextFieldType.DYNAMIC;
			this.f8Order.x = this.fTime.x;
			this.f8Order.y = this.f7Order.y + 80;
			this.f8Order.text = "8th";
			this.f8Order.autoSize = "left";
			this.addChild(f8Order);
			
			this.f8Number.defaultTextFormat = f2Format;
			this.f8Number.type = TextFieldType.DYNAMIC;
			this.f8Number.x = this.f1Number.x;
			this.f8Number.y = this.f8Order.y;
			this.f8Number.text = "12.";
			this.f8Number.autoSize = "left";
			this.addChild(f8Number);
			
			this.f8Name.defaultTextFormat = f2Format;
			this.f8Name.type = TextFieldType.DYNAMIC;
			this.f8Name.autoSize = "left";
			this.f8Name.x = this.f1Name.x;
			this.f8Name.y = this.f8Number.y;
			this.f8Name.text = "Quách Tĩnh";
			this.addChild(f8Name);
			
			this.f8Win.defaultTextFormat = f1Format;
			this.f8Win.type = TextFieldType.DYNAMIC;
			this.f8Win.autoSize = "left";
			this.f8Win.x = this.fWin.x;
			this.f8Win.y = this.f8Name.y;
			this.f8Win.text = "58.15";
			this.addChild(f8Win);
			
			this.f8Place.defaultTextFormat = f1Format;
			this.f8Place.type = TextFieldType.DYNAMIC;
			this.f8Place.autoSize = "left";
			this.f8Place.x = this.fPlace.x;
			this.f8Place.y = this.f8Name.y;
			this.f8Place.text = "34.33";
			this.addChild(f8Place);
			
			this.f8Margin.defaultTextFormat = f2Format;
			this.f8Margin.type = TextFieldType.DYNAMIC;
			this.f8Margin.autoSize = "left";
			this.f8Margin.x = this.fMargin.x;
			this.f8Margin.y = this.f8Name.y;
			this.f8Margin.text = "34.33";
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
