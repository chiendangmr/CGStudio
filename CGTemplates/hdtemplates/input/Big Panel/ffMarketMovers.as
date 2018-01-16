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
	
	public class ffMarketMovers extends CasparTemplate {
		private var myFilter:DropShadowFilter = new DropShadowFilter();
		private var fMainFormat:TextFormat = new TextFormat();
		private var fMain:TextField = new TextField();
		private var fMainTitle:TextField = new TextField();
		private var fWin:TextField = new TextField();
		private var fPlace:TextField = new TextField();
		private var placeName:TextField = new TextField();
				
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
		private var f2Time:TextField = new TextField();
		//F3 detail
		private var f3Number:TextField = new TextField();
		private var f3Name:TextField = new TextField();
		private var f3Win:TextField = new TextField();
		private var f3Place:TextField = new TextField();
		private var f3Time:TextField = new TextField();
		//F4 detail
		private var f4Number:TextField = new TextField();
		private var f4Name:TextField = new TextField();
		private var f4Win:TextField = new TextField();
		private var f4Place:TextField = new TextField();
		private var f4Time:TextField = new TextField();
		//F5 detail
		private var f5Number:TextField = new TextField();
		private var f5Name:TextField = new TextField();
		private var f5Win:TextField = new TextField();
		private var f5Place:TextField = new TextField();
		private var f5Time:TextField = new TextField();
		//F6 detail
		private var f6Number:TextField = new TextField();
		private var f6Name:TextField = new TextField();
		private var f6Win:TextField = new TextField();
		private var f6Place:TextField = new TextField();
		private var f6Time:TextField = new TextField();
		//F7 detail
		private var f7Number:TextField = new TextField();
		private var f7Name:TextField = new TextField();
		private var f7Win:TextField = new TextField();
		private var f7Place:TextField = new TextField();
		private var f7Time:TextField = new TextField();
		//F8 detail
		private var f8Number:TextField = new TextField();
		private var f8Name:TextField = new TextField();
		private var f8Win:TextField = new TextField();
		private var f8Place:TextField = new TextField();
		private var f8Time:TextField = new TextField();
		
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
		private var hideShape:MovieClip = new hideShapeB();
		
			
		public function ffMarketMovers() {
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
			
			this.fMainFormat.size = 60;
			this.fMainFormat.color = 0xe89d22;
			this.fMainFormat.font = new RobotoBold().fontName;
			
			this.fMain.defaultTextFormat = fMainFormat;
			this.fMain.type = TextFieldType.INPUT;
			this.fMain.autoSize = "left";
			this.fMain.x = 265;
			this.fMain.y = 117;
			this.fMain.text = "RACE 2";
			this.fMain.filters = [myFilter];
			this.addChild(fMain);
			
			setTxt(placeName, fMainFormat, myFilter, "MADAGUI", this.fMain.x + 240, this.fMain.y);
			setFormat(betFormat, 60, 0xe89d22, new RobotoBold());
			setTxt(txt1, betFormat, myFilter, "MR12", 1500, this.fMain.y);
			
			this.fMainFormat.size = 55;
			this.fMainFormat.color = 0x12408b;
			this.fMainTitle.defaultTextFormat = fMainFormat;
			this.fMainTitle.type = TextFieldType.INPUT;
			this.fMainTitle.autoSize = "left";
			this.fMainTitle.x = this.fMain.x;
			this.fMainTitle.y = 220;
			this.fMainTitle.text = "MARKET MOVER";
			this.fMainTitle.filters = [myFilter];
			this.addChild(fMainTitle);
			
			this.fMainFormat.size = 40;
			this.fWin.defaultTextFormat = fMainFormat;
			this.fWin.type = TextFieldType.INPUT;
			this.fWin.autoSize = "left";
			this.fWin.x = 1111;
			this.fWin.y = this.fMainTitle.y;
			this.fWin.text = "20MINS";
			this.fWin.filters = [myFilter];
			this.addChild(fWin);
			
			this.fPlace.defaultTextFormat = fMainFormat;
			this.fPlace.type = TextFieldType.INPUT;
			this.fPlace.autoSize = "left";
			this.fPlace.x = 1322;
			this.fPlace.y = this.fMainTitle.y;
			this.fPlace.text = "10MINS";
			this.fPlace.filters = [myFilter];
			this.addChild(fPlace);
			
			this.fTimeFormat.size = 40;
			this.fTimeFormat.color = 0x00cd00;
			this.fTimeFormat.font = new RobotoBold().fontName;
			
			this.fTime.defaultTextFormat = fTimeFormat;
			this.fTime.type = TextFieldType.INPUT;
			this.fTime.autoSize = "left";
			this.fTime.x = 1535;
			this.fTime.y = this.fMainTitle.y;
			this.fTime.text = "2:45";
			this.fTime.filters = [myFilter];
			this.addChild(fTime);
			//F1 constructor
			this.f1Format.size = 55;
			this.f1Format.color = 0xffffff;
			this.f1Format.font = new RobotoBold().fontName;
			
			this.f1Number.defaultTextFormat = f1Format;
			this.f1Number.type = TextFieldType.INPUT;
			this.f1Number.x = 265;
			this.f1Number.y = this.fMainTitle.y + 100;
			this.f1Number.text = "1.";
			this.f1Number.filters = [myFilter];
			this.addChild(f1Number);
			
			this.f1Name.defaultTextFormat = f1Format;
			this.f1Name.type = TextFieldType.INPUT;
			this.f1Name.autoSize = "left";
			this.f1Name.x = 390;
			this.f1Name.y = this.f1Number.y;
			this.f1Name.text = "STORM GOD";
			this.f1Name.filters = [myFilter];
			this.addChild(f1Name);
			
			this.f1Win.defaultTextFormat = f1Format;
			this.f1Win.type = TextFieldType.INPUT;
			this.f1Win.autoSize = "left";
			this.f1Win.x = this.fWin.x;
			this.f1Win.y = this.f1Number.y;
			this.f1Win.text = "13.10";
			this.f1Win.filters = [myFilter];
			this.addChild(f1Win);
			
			this.f1Place.defaultTextFormat = f1Format;
			this.f1Place.type = TextFieldType.INPUT;
			this.f1Place.autoSize = "left";
			this.f1Place.x = this.fPlace.x + 5;
			this.f1Place.y = this.f1Number.y;
			this.f1Place.text = "3.10";
			this.f1Place.filters = [myFilter];
			this.addChild(f1Place);
			
			this.f1Time.defaultTextFormat = f1Format;
			this.f1Time.type = TextFieldType.INPUT;
			this.f1Time.autoSize = "left";
			this.f1Time.x = this.fTime.x + 5;
			this.f1Time.y = this.f1Number.y;
			this.f1Time.text = "3.10";
			this.f1Time.filters = [myFilter];
			this.addChild(f1Time);
			
			//F2 constructor
						
			this.f2Number.defaultTextFormat = f1Format;
			this.f2Number.type = TextFieldType.INPUT;
			this.f2Number.x = this.f1Number.x;
			this.f2Number.y = this.f1Number.y + 78;
			this.f2Number.text = "2.";
			this.f2Number.filters = [myFilter];
			this.addChild(f2Number);
			
			this.f2Name.defaultTextFormat = f1Format;
			this.f2Name.type = TextFieldType.INPUT;
			this.f2Name.autoSize = "left";
			this.f2Name.x = this.f1Name.x;
			this.f2Name.y = this.f2Number.y;
			this.f2Name.text = "STORM GOD";
			this.f2Name.filters = [myFilter];
			this.addChild(f2Name);
			
			this.f2Win.defaultTextFormat = f1Format;
			this.f2Win.type = TextFieldType.INPUT;
			this.f2Win.autoSize = "left";
			this.f2Win.x = this.fWin.x;
			this.f2Win.y = this.f2Number.y;
			this.f2Win.text = "13.10";
			this.f2Win.filters = [myFilter];
			this.addChild(f2Win);
			
			this.f2Place.defaultTextFormat = f1Format;
			this.f2Place.type = TextFieldType.INPUT;
			this.f2Place.autoSize = "left";
			this.f2Place.x = this.fPlace.x + 5;
			this.f2Place.y = this.f2Number.y;
			this.f2Place.text = "3.10";
			this.f2Place.filters = [myFilter];
			this.addChild(f2Place);
			
			this.f2Time.defaultTextFormat = f1Format;
			this.f2Time.type = TextFieldType.INPUT;
			this.f2Time.autoSize = "left";
			this.f2Time.x = this.fTime.x + 5;
			this.f2Time.y = this.f2Number.y;
			this.f2Time.text = "3.10";
			this.f2Time.filters = [myFilter];
			this.addChild(f2Time);
			
			//F3 constructor
			
			this.f1Format.color = 0xe89d22;
			
			this.f3Number.defaultTextFormat = f1Format;
			this.f3Number.type = TextFieldType.INPUT;
			this.f3Number.x = this.f1Number.x;
			this.f3Number.y = this.f2Number.y + 78;
			this.f3Number.text = "3.";
			this.f3Number.filters = [myFilter];
			this.addChild(f3Number);
			
			this.f3Name.defaultTextFormat = f1Format;
			this.f3Name.type = TextFieldType.INPUT;
			this.f3Name.autoSize = "left";
			this.f3Name.x = this.f1Name.x;
			this.f3Name.y = this.f3Number.y;
			this.f3Name.text = "STORM GOD";
			this.f3Name.filters = [myFilter];
			this.addChild(f3Name);
			
			this.f3Win.defaultTextFormat = f1Format;
			this.f3Win.type = TextFieldType.INPUT;
			this.f3Win.autoSize = "left";
			this.f3Win.x = this.fWin.x;
			this.f3Win.y = this.f3Number.y;
			this.f3Win.text = "13.10";
			this.f3Win.filters = [myFilter];
			this.addChild(f3Win);
			
			this.f3Place.defaultTextFormat = f1Format;
			this.f3Place.type = TextFieldType.INPUT;
			this.f3Place.autoSize = "left";
			this.f3Place.x = this.fPlace.x + 5;
			this.f3Place.y = this.f3Number.y;
			this.f3Place.text = "3.10";
			this.f3Place.filters = [myFilter];
			this.addChild(f3Place);
			
			this.f3Time.defaultTextFormat = f1Format;
			this.f3Time.type = TextFieldType.INPUT;
			this.f3Time.autoSize = "left";
			this.f3Time.x = this.fTime.x + 5;
			this.f3Time.y = this.f3Number.y;
			this.f3Time.text = "3.10";
			this.f3Time.filters = [myFilter];
			this.addChild(f3Time);
			
			//F4 constructor
			
			this.f4Number.defaultTextFormat = f1Format;
			this.f4Number.type = TextFieldType.INPUT;
			this.f4Number.x = this.f1Number.x;
			this.f4Number.y = this.f3Number.y + 78;
			this.f4Number.text = "4.";
			this.f4Number.filters = [myFilter];
			this.addChild(f4Number);
			
			this.f4Name.defaultTextFormat = f1Format;
			this.f4Name.type = TextFieldType.INPUT;
			this.f4Name.autoSize = "left";
			this.f4Name.x = this.f1Name.x;
			this.f4Name.y = this.f4Number.y;
			this.f4Name.text = "STORM GOD";
			this.f4Name.filters = [myFilter];
			this.addChild(f4Name);
			
			this.f4Win.defaultTextFormat = f1Format;
			this.f4Win.type = TextFieldType.INPUT;
			this.f4Win.autoSize = "left";
			this.f4Win.x = this.fWin.x;
			this.f4Win.y = this.f4Number.y;
			this.f4Win.text = "13.10";
			this.f4Win.filters = [myFilter];
			this.addChild(f4Win);
			
			this.f4Place.defaultTextFormat = f1Format;
			this.f4Place.type = TextFieldType.INPUT;
			this.f4Place.autoSize = "left";
			this.f4Place.x = this.fPlace.x + 5;
			this.f4Place.y = this.f4Number.y;
			this.f4Place.text = "3.10";
			this.f4Place.filters = [myFilter];
			this.addChild(f4Place);
			
			this.f4Time.defaultTextFormat = f1Format;
			this.f4Time.type = TextFieldType.INPUT;
			this.f4Time.autoSize = "left";
			this.f4Time.x = this.fTime.x + 5;
			this.f4Time.y = this.f4Number.y;
			this.f4Time.text = "3.10";
			this.f4Time.filters = [myFilter];
			this.addChild(f4Time);
			
			//F5 constructor
			
			this.f1Format.color = 0xffffff;
						
			this.f5Number.defaultTextFormat = f1Format;
			this.f5Number.type = TextFieldType.INPUT;
			this.f5Number.x = this.f1Number.x;
			this.f5Number.y = this.f4Number.y + 78;
			this.f5Number.text = "5.";
			this.f5Number.filters = [myFilter];
			this.addChild(f5Number);
			
			this.f5Name.defaultTextFormat = f1Format;
			this.f5Name.type = TextFieldType.INPUT;
			this.f5Name.autoSize = "left";
			this.f5Name.x = this.f1Name.x;
			this.f5Name.y = this.f5Number.y;
			this.f5Name.text = "STORM GOD";
			this.f5Name.filters = [myFilter];
			this.addChild(f5Name);
			
			this.f5Win.defaultTextFormat = f1Format;
			this.f5Win.type = TextFieldType.INPUT;
			this.f5Win.autoSize = "left";
			this.f5Win.x = this.fWin.x;
			this.f5Win.y = this.f5Number.y;
			this.f5Win.text = "13.10";
			this.f5Win.filters = [myFilter];
			this.addChild(f5Win);
			
			this.f5Place.defaultTextFormat = f1Format;
			this.f5Place.type = TextFieldType.INPUT;
			this.f5Place.autoSize = "left";
			this.f5Place.x = this.fPlace.x + 5;
			this.f5Place.y = this.f5Number.y;
			this.f5Place.text = "3.10";
			this.f5Place.filters = [myFilter];
			this.addChild(f5Place);
			
			this.f5Time.defaultTextFormat = f1Format;
			this.f5Time.type = TextFieldType.INPUT;
			this.f5Time.autoSize = "left";
			this.f5Time.x = this.fTime.x + 5;
			this.f5Time.y = this.f5Number.y;
			this.f5Time.text = "3.10";
			this.f5Time.filters = [myFilter];
			this.addChild(f5Time);
			
			//F6 constructor
						
			this.f6Number.defaultTextFormat = f1Format;
			this.f6Number.type = TextFieldType.INPUT;
			this.f6Number.x = this.f1Number.x;
			this.f6Number.y = this.f5Number.y + 78;
			this.f6Number.text = "6.";
			this.f6Number.filters = [myFilter];
			this.addChild(f6Number);
			
			this.f6Name.defaultTextFormat = f1Format;
			this.f6Name.type = TextFieldType.INPUT;
			this.f6Name.autoSize = "left";
			this.f6Name.x = this.f1Name.x;
			this.f6Name.y = this.f6Number.y;
			this.f6Name.text = "STORM GOD";
			this.f6Name.filters = [myFilter];
			this.addChild(f6Name);
			
			this.f6Win.defaultTextFormat = f1Format;
			this.f6Win.type = TextFieldType.INPUT;
			this.f6Win.autoSize = "left";
			this.f6Win.x = this.fWin.x;
			this.f6Win.y = this.f6Number.y;
			this.f6Win.text = "13.10";
			this.f6Win.filters = [myFilter];
			this.addChild(f6Win);
			
			this.f6Place.defaultTextFormat = f1Format;
			this.f6Place.type = TextFieldType.INPUT;
			this.f6Place.autoSize = "left";
			this.f6Place.x = this.fPlace.x + 5;
			this.f6Place.y = this.f6Number.y;
			this.f6Place.text = "3.10";
			this.f6Place.filters = [myFilter];
			this.addChild(f6Place);
			
			this.f6Time.defaultTextFormat = f1Format;
			this.f6Time.type = TextFieldType.INPUT;
			this.f6Time.autoSize = "left";
			this.f6Time.x = this.fTime.x + 5;
			this.f6Time.y = this.f6Number.y;
			this.f6Time.text = "3.10";
			this.f6Time.filters = [myFilter];
			this.addChild(f6Time);
			
			//F7 constructor
			
			this.f7Number.defaultTextFormat = f1Format;
			this.f7Number.type = TextFieldType.INPUT;
			this.f7Number.x = this.f1Number.x;
			this.f7Number.y = this.f6Number.y + 78;
			this.f7Number.text = "7.";
			this.f7Number.filters = [myFilter];
			this.addChild(f7Number);
			
			this.f7Name.defaultTextFormat = f1Format;
			this.f7Name.type = TextFieldType.INPUT;
			this.f7Name.autoSize = "left";
			this.f7Name.x = this.f1Name.x;
			this.f7Name.y = this.f7Number.y ;
			this.f7Name.text = "STORM GOD";
			this.f7Name.filters = [myFilter];
			this.addChild(f7Name);
			
			this.f7Win.defaultTextFormat = f1Format;
			this.f7Win.type = TextFieldType.INPUT;
			this.f7Win.autoSize = "left";
			this.f7Win.x = this.fWin.x;
			this.f7Win.y = this.f7Number.y ;
			this.f7Win.text = "13.10";
			this.f7Win.filters = [myFilter];
			this.addChild(f7Win);
			
			this.f7Place.defaultTextFormat = f1Format;
			this.f7Place.type = TextFieldType.INPUT;
			this.f7Place.autoSize = "left";
			this.f7Place.x = this.fPlace.x + 5;
			this.f7Place.y = this.f7Number.y ;
			this.f7Place.text = "3.10";
			this.f7Place.filters = [myFilter];
			this.addChild(f7Place);
			
			this.f7Time.defaultTextFormat = f1Format;
			this.f7Time.type = TextFieldType.INPUT;
			this.f7Time.autoSize = "left";
			this.f7Time.x = this.fTime.x + 5;
			this.f7Time.y = this.f7Number.y;
			this.f7Time.text = "3.10";
			this.f7Time.filters = [myFilter];
			this.addChild(f7Time);
			
			//F8 constructor
						
			this.f8Number.defaultTextFormat = f1Format;
			this.f8Number.type = TextFieldType.INPUT;
			this.f8Number.x = this.f1Number.x;
			this.f8Number.y = this.f7Number.y + 78;
			this.f8Number.text = "8.";
			this.f8Number.filters = [myFilter];
			this.addChild(f8Number);
			
			this.f8Name.defaultTextFormat = f1Format;
			this.f8Name.type = TextFieldType.INPUT;
			this.f8Name.autoSize = "left";
			this.f8Name.x = this.f1Name.x;
			this.f8Name.y = this.f8Number.y ;
			this.f8Name.text = "STORM GOD";
			this.f8Name.filters = [myFilter];
			this.addChild(f8Name);
			
			this.f8Win.defaultTextFormat = f1Format;
			this.f8Win.type = TextFieldType.INPUT;
			this.f8Win.autoSize = "left";
			this.f8Win.x = this.fWin.x;
			this.f8Win.y = this.f8Number.y ;
			this.f8Win.text = "13.10";
			this.f8Win.filters = [myFilter];
			this.addChild(f8Win);
			
			this.f8Place.defaultTextFormat = f1Format;
			this.f8Place.type = TextFieldType.INPUT;
			this.f8Place.autoSize = "left";
			this.f8Place.x = this.fPlace.x + 5;
			this.f8Place.y = this.f8Number.y ;
			this.f8Place.text = "3.10";
			this.f8Place.filters = [myFilter];
			this.addChild(f8Place);
			
			this.f8Time.defaultTextFormat = f1Format;
			this.f8Time.type = TextFieldType.INPUT;
			this.f8Time.autoSize = "left";
			this.f8Time.x = this.fTime.x + 5;
			this.f8Time.y = this.f8Number.y;
			this.f8Time.text = "3.10";
			this.f8Time.filters = [myFilter];
			this.addChild(f8Time);
						
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
			
			this.groupElement.addChild(f1Time);
			this.groupElement.addChild(f2Time);
			this.groupElement.addChild(f3Time);
			this.groupElement.addChild(f4Time);
			this.groupElement.addChild(f5Time);
			this.groupElement.addChild(f6Time);
			this.groupElement.addChild(f7Time);
			this.groupElement.addChild(f8Time);
			
			this.addChild(group2);
			this.group2.addChild(headPanel);
			this.groupElement.addChild(fTime);
			this.group2.addChild(fMain);
			this.group2.addChild(placeName);
			this.group2.addChild(txt1);
			this.groupElement.addChild(fMainTitle);
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
			xmlStr +=Add(xmlStr, "RaceNumber", fMain);
			xmlStr +=Add(xmlStr, "PlaceName", placeName);
			xmlStr +=Add(xmlStr, "bettingcode", txt1);
			xmlStr +=Add(xmlStr, "fWin", fWin);
			xmlStr +=Add(xmlStr, "fMainTitle", fMainTitle);
			xmlStr +=Add(xmlStr, "fPlace", fPlace);
			xmlStr +=Add(xmlStr, "fTime", fTime);
			
			xmlStr +=Add(xmlStr, "f1Number", f1Number);
			xmlStr +=Add(xmlStr, "f1Name", f1Name);
			xmlStr +=Add(xmlStr, "f1Win", f1Win);
			xmlStr +=Add(xmlStr, "f1Place", f1Place);
			xmlStr +=Add(xmlStr, "f1Time", f1Time);
			
			xmlStr +=Add(xmlStr, "f2Number", f2Number);
			xmlStr +=Add(xmlStr, "f2Name", f2Name);
			xmlStr +=Add(xmlStr, "f2Win", f2Win);
			xmlStr +=Add(xmlStr, "f2Place", f2Place);
			xmlStr +=Add(xmlStr, "f2Time", f2Time);
			
			xmlStr +=Add(xmlStr, "f3Number", f3Number);
			xmlStr +=Add(xmlStr, "f3Name", f3Name);
			xmlStr +=Add(xmlStr, "f3Win", f3Win);
			xmlStr +=Add(xmlStr, "f3Place", f3Place);
			xmlStr +=Add(xmlStr, "f3Time", f3Time);
			
			xmlStr +=Add(xmlStr, "f4Number", f4Number);
			xmlStr +=Add(xmlStr, "f4Name", f4Name);
			xmlStr +=Add(xmlStr, "f4Win", f4Win);
			xmlStr +=Add(xmlStr, "f4Place", f4Place);
			xmlStr +=Add(xmlStr, "f4Time", f4Time);
			
			xmlStr +=Add(xmlStr, "f5Number", f5Number);
			xmlStr +=Add(xmlStr, "f5Name", f5Name);
			xmlStr +=Add(xmlStr, "f5Win", f5Win);
			xmlStr +=Add(xmlStr, "f5Place", f5Place);
			xmlStr +=Add(xmlStr, "f5Time", f5Time);
			
			xmlStr +=Add(xmlStr, "f6Number", f6Number);
			xmlStr +=Add(xmlStr, "f6Name", f6Name);
			xmlStr +=Add(xmlStr, "f6Win", f6Win);
			xmlStr +=Add(xmlStr, "f6Place", f6Place);
			xmlStr +=Add(xmlStr, "f6Time", f6Time);
			
			xmlStr +=Add(xmlStr, "f7Number", f7Number);
			xmlStr +=Add(xmlStr, "f7Name", f7Name);
			xmlStr +=Add(xmlStr, "f7Win", f7Win);
			xmlStr +=Add(xmlStr, "f7Place", f7Place);
			xmlStr +=Add(xmlStr, "f7Time", f7Time);
			
			xmlStr +=Add(xmlStr, "f8Number", f8Number);
			xmlStr +=Add(xmlStr, "f8Name", f8Name);
			xmlStr +=Add(xmlStr, "f8Win", f8Win);
			xmlStr +=Add(xmlStr, "f8Place", f8Place);
			xmlStr +=Add(xmlStr, "f8Time", f8Time);
									
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
					case "Field_1".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f1Name.defaultTextFormat = this.f1Number.defaultTextFormat = this.f1Win.defaultTextFormat = this.f1Place.defaultTextFormat = this.f1Time.defaultTextFormat = f1Format;
						break;
					case "Field_2".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f2Name.defaultTextFormat = this.f2Number.defaultTextFormat = this.f2Win.defaultTextFormat = this.f2Place.defaultTextFormat = this.f2Time.defaultTextFormat = f1Format;
						break;
					case "Field_3".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f3Name.defaultTextFormat = this.f3Number.defaultTextFormat = this.f3Win.defaultTextFormat = this.f3Place.defaultTextFormat = this.f3Time.defaultTextFormat = f1Format;
						break;
					case "Field_4".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f4Name.defaultTextFormat = this.f4Number.defaultTextFormat = this.f4Win.defaultTextFormat = this.f4Place.defaultTextFormat = this.f4Time.defaultTextFormat = f1Format;
						break;
					case "Field_5".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f5Name.defaultTextFormat = this.f5Number.defaultTextFormat = this.f5Win.defaultTextFormat = this.f5Place.defaultTextFormat = this.f5Time.defaultTextFormat = f1Format;
						break;
					case "Field_6".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f6Name.defaultTextFormat = this.f6Number.defaultTextFormat = this.f6Win.defaultTextFormat = this.f6Place.defaultTextFormat = this.f6Time.defaultTextFormat = f1Format;
						break;
					case "Field_7".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f7Name.defaultTextFormat = this.f7Number.defaultTextFormat = this.f7Win.defaultTextFormat = this.f7Place.defaultTextFormat = this.f7Time.defaultTextFormat = f1Format;
						break;
					case "Field_8".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f8Name.defaultTextFormat = this.f8Number.defaultTextFormat = this.f8Win.defaultTextFormat = this.f8Place.defaultTextFormat = this.f8Time.defaultTextFormat = f1Format;
						break;
					
					case "RaceNumber".toLowerCase():
						this.fMain.text = data.toUpperCase();
						break;
					case "PlaceName".toLowerCase():
						this.placeName.text = data.toUpperCase();
						break;
					case "fMainTitle".toLowerCase():
						this.fMainTitle.text = data.toUpperCase();
						break;
					case "fWin".toLowerCase():
						this.fWin.text = data.toUpperCase();
						break;
					case "fPlace".toLowerCase():
						this.fPlace.text = data.toUpperCase();
						break;
					case "fTime".toLowerCase():
						this.fTime.text = data.toUpperCase();
						break;
						
					case "f1Name".toLowerCase():
						this.f1Name.text = data.toUpperCase();
						break;					
					case "f1Number".toLowerCase():
						this.f1Number.text = data.toUpperCase();
						break;
					case "f1Place".toLowerCase():
						this.f1Place.text = data.toUpperCase();
						break;
					case "f1Time".toLowerCase():
						this.f1Time.text = data.toUpperCase();
						break;
					case "f1Win".toLowerCase():
						this.f1Win.text = data.toUpperCase();
						break;
					
					case "f2Name".toLowerCase():
						this.f2Name.text = data.toUpperCase();
						break;					
					case "f2Number".toLowerCase():
						this.f2Number.text = data.toUpperCase();
						break;
					case "f2Place".toLowerCase():
						this.f2Place.text = data.toUpperCase();
						break;
					case "f2Time".toLowerCase():
						this.f2Time.text = data.toUpperCase();
						break;
					case "f2Win".toLowerCase():
						this.f2Win.text = data.toUpperCase();
						break;
					
					case "f3Name".toLowerCase():
						this.f3Name.text = data.toUpperCase();
						break;					
					case "f3Number".toLowerCase():
						this.f3Number.text = data.toUpperCase();
						break;
					case "f3Place".toLowerCase():
						this.f3Place.text = data.toUpperCase();
						break;
					case "f3Time".toLowerCase():
						this.f3Time.text = data.toUpperCase();
						break;
					case "f3Win".toLowerCase():
						this.f3Win.text = data.toUpperCase();
						break;
					
					case "f4Name".toLowerCase():
						this.f4Name.text = data.toUpperCase();
						break;					
					case "f4Number".toLowerCase():
						this.f4Number.text = data.toUpperCase();
						break;
					case "f4Place".toLowerCase():
						this.f4Place.text = data.toUpperCase();
						break;
					case "f4Time".toLowerCase():
						this.f4Time.text = data.toUpperCase();
						break;
					case "f4Win".toLowerCase():
						this.f4Win.text = data.toUpperCase();
						break;
					
					case "f5Name".toLowerCase():
						this.f5Name.text = data.toUpperCase();
						break;					
					case "f5Number".toLowerCase():
						this.f5Number.text = data.toUpperCase();
						break;
					case "f5Place".toLowerCase():
						this.f5Place.text = data.toUpperCase();
						break;
					case "f5Time".toLowerCase():
						this.f5Time.text = data.toUpperCase();
						break;
					case "f5Win".toLowerCase():
						this.f5Win.text = data.toUpperCase();
						break;
					
					case "f6Name".toLowerCase():
						this.f6Name.text = data.toUpperCase();
						break;					
					case "f6Number".toLowerCase():
						this.f6Number.text = data.toUpperCase();
						break;
					case "f6Place".toLowerCase():
						this.f6Place.text = data.toUpperCase();
						break;
					case "f6Time".toLowerCase():
						this.f6Time.text = data.toUpperCase();
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
					case "f7Place".toLowerCase():
						this.f7Place.text = data.toUpperCase();
						break;
					case "f7Time".toLowerCase():
						this.f7Time.text = data.toUpperCase();
						break;
					case "f7Win".toLowerCase():
						this.f7Win.text = data.toUpperCase();
						break;
					
					case "f8Name".toLowerCase():
						this.f8Name.text = data.toUpperCase();
						break;					
					case "f8Number".toLowerCase():
						this.f8Number.text = data.toUpperCase();
						break;
					case "f8Place".toLowerCase():
						this.f8Place.text = data.toUpperCase();
						break;
					case "f8Time".toLowerCase():
						this.f8Time.text = data.toUpperCase();
						break;
					case "f8Win".toLowerCase():
						this.f8Win.text = data.toUpperCase();
						break;
					case "bettingcode".toLowerCase():
						this.txt1.text = data.toUpperCase();
						break;
					
				}
			}
		}
		private function toHex(str:String){
			var kq:Number = 0;
			switch(str){
				case "0xffffff":
					kq = 0xffffff;
					break;
				case "0xfaddb5":
					kq = 0xfaddb5;
					break;
				case "0x124089":
					kq = 0x124089;
					break;
				case "0x00cd00":
					kq = 0x00cd00;
					break;
				case "0xe89d22":
					kq = 0xe89d22;
					break;
			}
			return kq;			
		}
		private function lightTween(e:Event):void
		{				
			this.lightTween1 = new Tween(leftLight, "y", Regular.easeOut, 200, 930, 1.5, true);
			this.lightTween2 = new Tween(rightLight, "x", Regular.easeOut, 300, 1620, 1.5, true);
			this.xTween = new Tween(hideShape, "x", None.easeOut, 1790, 240, 30, true);
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
