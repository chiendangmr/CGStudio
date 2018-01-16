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
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.display.Shader;
	
	public class ffTickers extends CasparTemplate {
		
		private var fMainFormat:TextFormat = new TextFormat();
		private var fMain:TextField = new TextField();
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
		//F2 detail
		private var f2Number:TextField = new TextField();
		private var f2Name:TextField = new TextField();
		private var f2Win:TextField = new TextField();
		private var f2Place:TextField = new TextField();
		
		//F3 detail
		private var f3Number:TextField = new TextField();
		private var f3Name:TextField = new TextField();
		private var f3Win:TextField = new TextField();
		private var f3Place:TextField = new TextField();
	
		//F4 detail
		private var f4Number:TextField = new TextField();
		private var f4Name:TextField = new TextField();
		private var f4Win:TextField = new TextField();
		private var f4Place:TextField = new TextField();
	
		//F5 detail
		private var f5Number:TextField = new TextField();
		private var f5Name:TextField = new TextField();
		private var f5Win:TextField = new TextField();
		private var f5Place:TextField = new TextField();
	
		//F6 detail
		private var f6Number:TextField = new TextField();
		private var f6Name:TextField = new TextField();
		private var f6Win:TextField = new TextField();
		private var f6Place:TextField = new TextField();
	
		//F7 detail
		private var f7Number:TextField = new TextField();
		private var f7Name:TextField = new TextField();
		private var f7Win:TextField = new TextField();
		private var f7Place:TextField = new TextField();
		
		//F8 detail
		private var f8Number:TextField = new TextField();
		private var f8Name:TextField = new TextField();
		private var f8Win:TextField = new TextField();
		private var f8Place:TextField = new TextField();
		
		//F9 detail
		private var f9Number:TextField = new TextField();
		private var f9Name:TextField = new TextField();
		private var f9Win:TextField = new TextField();
		private var f9Place:TextField = new TextField();
	
		//F10 detail
		private var f10Number:TextField = new TextField();
		private var f10Name:TextField = new TextField();
		private var f10Win:TextField = new TextField();
		private var f10Place:TextField = new TextField();
			
		private var xTween:Tween = null;
		private var yTween:Tween = null;
		private var maskTween1:Tween = null;
		private var maskTween2:Tween = null;
		private var lightTween1:Tween = null;
		private var lightTween2:Tween = null;
		
		private var groupElement:MovieClip = new MovieClip();
		private var group2:MovieClip = new MovieClip();
		private var txtGroup:MovieClip = new MovieClip();
		
		private var maskX:Shape = new Shape();
		private var maskY:Shape = new Shape();
		private var txtMask:Shape = new Shape();
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
		
		private var myFilter:DropShadowFilter = new DropShadowFilter();
		private var tm:Timer = new Timer(10);
			
		public function ffTickers() {
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
			this.fMain.x = 772;
			this.fMain.y = 127;
			this.fMain.text = "Test";
			this.fMain.filters = [myFilter];
			this.addChild(fMain);
			
			setTxt(placeName, fMainFormat, myFilter, "Delay", this.fMain.x + 250, this.fMain.y);
			this.addChild(placeName);
			
			this.fMainFormat.color = 0xe89d22;
			this.fPlace.defaultTextFormat = fMainFormat;
			this.fPlace.type = TextFieldType.INPUT;
			this.fPlace.autoSize = "left";
			this.fPlace.x = 1500;
			this.fPlace.y = 127;
			this.fPlace.text = "MR12";
			this.fPlace.filters = [myFilter];
			this.addChild(fPlace);
			
			this.fTimeFormat.size = 55;
			this.fTimeFormat.color = 0x00cd00;
			this.fTimeFormat.font = new RobotoBold().fontName;
			
			this.fTime.defaultTextFormat = fTimeFormat;
			this.fTime.type = TextFieldType.INPUT;
			this.fTime.autoSize = "left";
			this.fTime.x = 260;
			this.fTime.y = 127;
			this.fTime.text = "23:06";
			this.fTime.filters = [myFilter];
			this.addChild(fTime);
			//F1 constructor
			this.f1Format.size = 55;
			this.f1Format.color = 0xffffff;
			this.f1Format.font = new RobotoBold().fontName;
			
			this.f1Number.defaultTextFormat = f1Format;
			this.f1Number.type = TextFieldType.INPUT;
			this.f1Number.x = 265;
			this.f1Number.y = 225;
			this.f1Number.text = "1.";
			this.f1Number.filters = [myFilter];
			this.addChild(f1Number);
			
			this.f1Name.defaultTextFormat = f1Format;
			this.f1Name.type = TextFieldType.INPUT;
			this.f1Name.autoSize = "left";
			this.f1Name.x = 390;
			this.f1Name.y = 225;
			this.f1Name.text = "STORM GOD";
			this.f1Name.filters = [myFilter];
			this.addChild(f1Name);
			
			this.f1Win.defaultTextFormat = f1Format;
			this.f1Win.type = TextFieldType.INPUT;
			this.f1Win.autoSize = "left";
			this.f1Win.x = 1245;
			this.f1Win.y = 225;
			this.f1Win.text = "13.10";
			this.f1Win.filters = [myFilter];
			this.addChild(f1Win);
			
			this.f1Place.defaultTextFormat = f1Format;
			this.f1Place.type = TextFieldType.INPUT;
			this.f1Place.autoSize = "left";
			this.f1Place.x = 1520;
			this.f1Place.y = 225;
			this.f1Place.text = "3.10";
			this.f1Place.filters = [myFilter];
			this.addChild(f1Place);
			
			//F2 constructor
			
			this.f2Number.defaultTextFormat = f1Format;
			this.f2Number.type = TextFieldType.INPUT;
			this.f2Number.x = 265;
			this.f2Number.y = 297;
			this.f2Number.text = "2.";
			this.f2Number.filters = [myFilter];
			this.addChild(f2Number);
			
			this.f2Name.defaultTextFormat = f1Format;
			this.f2Name.type = TextFieldType.INPUT;
			this.f2Name.autoSize = "left";
			this.f2Name.x = 390;
			this.f2Name.y = 297;
			this.f2Name.text = "STORM GOD";
			this.f2Name.filters = [myFilter];
			this.addChild(f2Name);
			
			this.f2Win.defaultTextFormat = f1Format;
			this.f2Win.type = TextFieldType.INPUT;
			this.f2Win.autoSize = "left";
			this.f2Win.x = 1245;
			this.f2Win.y = 297;
			this.f2Win.text = "13.10";
			this.f2Win.filters = [myFilter];
			this.addChild(f2Win);
			
			this.f2Place.defaultTextFormat = f1Format;
			this.f2Place.type = TextFieldType.INPUT;
			this.f2Place.autoSize = "left";
			this.f2Place.x = 1520;
			this.f2Place.y = 297;
			this.f2Place.text = "3.10";
			this.f2Place.filters = [myFilter];
			this.addChild(f2Place);
			
			//F3 constructor
			
			this.f3Number.defaultTextFormat = f1Format;
			this.f3Number.type = TextFieldType.INPUT;
			this.f3Number.x = 265;
			this.f3Number.y = 370;
			this.f3Number.text = "3.";
			this.f3Number.filters = [myFilter];
			this.addChild(f3Number);
			
			this.f3Name.defaultTextFormat = f1Format;
			this.f3Name.type = TextFieldType.INPUT;
			this.f3Name.autoSize = "left";
			this.f3Name.x = 390;
			this.f3Name.y = 370;
			this.f3Name.text = "STORM GOD";
			this.f3Name.filters = [myFilter];
			this.addChild(f3Name);
			
			this.f3Win.defaultTextFormat = f1Format;
			this.f3Win.type = TextFieldType.INPUT;
			this.f3Win.autoSize = "left";
			this.f3Win.x = 1245;
			this.f3Win.y = 370;
			this.f3Win.text = "13.10";
			this.f3Win.filters = [myFilter];
			this.addChild(f3Win);
			
			this.f3Place.defaultTextFormat = f1Format;
			this.f3Place.type = TextFieldType.INPUT;
			this.f3Place.autoSize = "left";
			this.f3Place.x = 1520;
			this.f3Place.y = 370;
			this.f3Place.text = "3.10";
			this.f3Place.filters = [myFilter];
			this.addChild(f3Place);
			
			//F4 constructor
			
			this.f4Number.defaultTextFormat = f1Format;
			this.f4Number.type = TextFieldType.INPUT;
			this.f4Number.x = 265;
			this.f4Number.y = 443;
			this.f4Number.text = "4.";
			this.f4Number.filters = [myFilter];
			this.addChild(f4Number);
			
			this.f4Name.defaultTextFormat = f1Format;
			this.f4Name.type = TextFieldType.INPUT;
			this.f4Name.autoSize = "left";
			this.f4Name.x = 390;
			this.f4Name.y = 443;
			this.f4Name.text = "STORM GOD";
			this.f4Name.filters = [myFilter];
			this.addChild(f4Name);
			
			this.f4Win.defaultTextFormat = f1Format;
			this.f4Win.type = TextFieldType.INPUT;
			this.f4Win.autoSize = "left";
			this.f4Win.x = 1245;
			this.f4Win.y = 443;
			this.f4Win.text = "13.10";
			this.f4Win.filters = [myFilter];
			this.addChild(f4Win);
			
			this.f4Place.defaultTextFormat = f1Format;
			this.f4Place.type = TextFieldType.INPUT;
			this.f4Place.autoSize = "left";
			this.f4Place.x = 1520;
			this.f4Place.y = 443;
			this.f4Place.text = "3.10";
			this.f4Place.filters = [myFilter];
			this.addChild(f4Place);
			
			//F5 constructor
						
			this.f5Number.defaultTextFormat = f1Format;
			this.f5Number.type = TextFieldType.INPUT;
			this.f5Number.x = 265;
			this.f5Number.y = 516;
			this.f5Number.text = "5.";
			this.f5Number.filters = [myFilter];
			this.addChild(f5Number);
			
			this.f5Name.defaultTextFormat = f1Format;
			this.f5Name.type = TextFieldType.INPUT;
			this.f5Name.autoSize = "left";
			this.f5Name.x = 390;
			this.f5Name.y = 516;
			this.f5Name.text = "STORM GOD";
			this.f5Name.filters = [myFilter];
			this.addChild(f5Name);
			
			this.f5Win.defaultTextFormat = f1Format;
			this.f5Win.type = TextFieldType.INPUT;
			this.f5Win.autoSize = "left";
			this.f5Win.x = 1245;
			this.f5Win.y = 516;
			this.f5Win.text = "13.10";
			this.f5Win.filters = [myFilter];
			this.addChild(f5Win);
			
			this.f5Place.defaultTextFormat = f1Format;
			this.f5Place.type = TextFieldType.INPUT;
			this.f5Place.autoSize = "left";
			this.f5Place.x = 1520;
			this.f5Place.y = 516;
			this.f5Place.text = "3.10";
			this.f5Place.filters = [myFilter];
			this.addChild(f5Place);
			
			//F6 constructor
						
			this.f6Number.defaultTextFormat = f1Format;
			this.f6Number.type = TextFieldType.INPUT;
			this.f6Number.x = 265;
			this.f6Number.y = 590;
			this.f6Number.text = "6.";
			this.f6Number.filters = [myFilter];
			this.addChild(f6Number);
			
			this.f6Name.defaultTextFormat = f1Format;
			this.f6Name.type = TextFieldType.INPUT;
			this.f6Name.autoSize = "left";
			this.f6Name.x = 390;
			this.f6Name.y = 590;
			this.f6Name.text = "STORM GOD";
			this.f6Name.filters = [myFilter];
			this.addChild(f6Name);
			
			this.f6Win.defaultTextFormat = f1Format;
			this.f6Win.type = TextFieldType.INPUT;
			this.f6Win.autoSize = "left";
			this.f6Win.x = 1245;
			this.f6Win.y = 590;
			this.f6Win.text = "13.10";
			this.f6Win.filters = [myFilter];
			this.addChild(f6Win);
			
			this.f6Place.defaultTextFormat = f1Format;
			this.f6Place.type = TextFieldType.INPUT;
			this.f6Place.autoSize = "left";
			this.f6Place.x = 1520;
			this.f6Place.y = 590;
			this.f6Place.text = "3.10";
			this.f6Place.filters = [myFilter];
			this.addChild(f6Place);
			
			//F7 constructor			
			this.f7Number.defaultTextFormat = f1Format;
			this.f7Number.type = TextFieldType.INPUT;
			this.f7Number.x = 265;
			this.f7Number.y = 665;
			this.f7Number.text = "7.";
			this.f7Number.filters = [myFilter];
			this.addChild(f7Number);
			
			this.f7Name.defaultTextFormat = f1Format;
			this.f7Name.type = TextFieldType.INPUT;
			this.f7Name.autoSize = "left";
			this.f7Name.x = 390;
			this.f7Name.y = 665;
			this.f7Name.text = "STORM GOD";
			this.f7Name.filters = [myFilter];
			this.addChild(f7Name);
			
			this.f7Win.defaultTextFormat = f1Format;
			this.f7Win.type = TextFieldType.INPUT;
			this.f7Win.autoSize = "left";
			this.f7Win.x = 1245;
			this.f7Win.y = 665;
			this.f7Win.text = "13.10";
			this.f7Win.filters = [myFilter];
			this.addChild(f7Win);
			
			this.f7Place.defaultTextFormat = f1Format;
			this.f7Place.type = TextFieldType.INPUT;
			this.f7Place.autoSize = "left";
			this.f7Place.x = 1520;
			this.f7Place.y = 665;
			this.f7Place.text = "3.10";
			this.f7Place.filters = [myFilter];
			this.addChild(f7Place);
			
			//F8 constructor
			
			this.f8Number.defaultTextFormat = f1Format;
			this.f8Number.type = TextFieldType.INPUT;
			this.f8Number.x = 265;
			this.f8Number.y = 740;
			this.f8Number.text = "8.";
			this.f8Number.filters = [myFilter];
			this.addChild(f8Number);
			
			this.f8Name.defaultTextFormat = f1Format;
			this.f8Name.type = TextFieldType.INPUT;
			this.f8Name.autoSize = "left";
			this.f8Name.x = 390;
			this.f8Name.y = 740;
			this.f8Name.text = "STORM GOD";
			this.f8Name.filters = [myFilter];
			this.addChild(f8Name);
			
			this.f8Win.defaultTextFormat = f1Format;
			this.f8Win.type = TextFieldType.INPUT;
			this.f8Win.autoSize = "left";
			this.f8Win.x = 1245;
			this.f8Win.y = 740;
			this.f8Win.text = "13.10";
			this.f8Win.filters = [myFilter];
			this.addChild(f8Win);
			
			this.f8Place.defaultTextFormat = f1Format;
			this.f8Place.type = TextFieldType.INPUT;
			this.f8Place.autoSize = "left";
			this.f8Place.x = 1520;
			this.f8Place.y = 740;
			this.f8Place.text = "3.10";
			this.f8Place.filters = [myFilter];
			this.addChild(f8Place);
			
			//F9 constructor
			
			this.f9Number.defaultTextFormat = f1Format;
			this.f9Number.type = TextFieldType.INPUT;
			this.f9Number.x = 265;
			this.f9Number.y = 815;
			this.f9Number.text = "9.";
			this.f9Number.filters = [myFilter];
			this.addChild(f9Number);
			
			this.f9Name.defaultTextFormat = f1Format;
			this.f9Name.type = TextFieldType.INPUT;
			this.f9Name.autoSize = "left";
			this.f9Name.x = 390;
			this.f9Name.y = 815;
			this.f9Name.text = "STORM GOD";
			this.f9Name.filters = [myFilter];
			this.addChild(f9Name);
			
			this.f9Win.defaultTextFormat = f1Format;
			this.f9Win.type = TextFieldType.INPUT;
			this.f9Win.autoSize = "left";
			this.f9Win.x = 1245;
			this.f9Win.y = 815;
			this.f9Win.text = "13.10";
			this.f9Win.filters = [myFilter];
			this.addChild(f9Win);
			
			this.f9Place.defaultTextFormat = f1Format;
			this.f9Place.type = TextFieldType.INPUT;
			this.f9Place.autoSize = "left";
			this.f9Place.x = 1520;
			this.f9Place.y = 815;
			this.f9Place.text = "3.10";
			this.f9Place.filters = [myFilter];
			this.addChild(f9Place);
			
			//F10 constructor
						
			this.f10Number.defaultTextFormat = f1Format;
			this.f10Number.type = TextFieldType.INPUT;
			this.f10Number.x = 265;
			this.f10Number.y = 890;
			this.f10Number.text = "10.";
			this.f10Number.filters = [myFilter];
			this.addChild(f10Number);
			
			this.f10Name.defaultTextFormat = f1Format;
			this.f10Name.type = TextFieldType.INPUT;
			this.f10Name.autoSize = "left";
			this.f10Name.x = 390;
			this.f10Name.y = 890;
			this.f10Name.text = "STORM GOD";
			this.f10Name.filters = [myFilter];
			this.addChild(f10Name);
			
			this.f10Win.defaultTextFormat = f1Format;
			this.f10Win.type = TextFieldType.INPUT;
			this.f10Win.autoSize = "left";
			this.f10Win.x = 1245;
			this.f10Win.y = 890;
			this.f10Win.text = "13.10";
			this.f10Win.filters = [myFilter];
			this.addChild(f10Win);
			
			this.f10Place.defaultTextFormat = f1Format;
			this.f10Place.type = TextFieldType.INPUT;
			this.f10Place.autoSize = "left";
			this.f10Place.x = 1520;
			this.f10Place.y = 890;
			this.f10Place.text = "3.10";
			this.f10Place.filters = [myFilter];
			this.addChild(f10Place);
			
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
			
			this.addChild(txtGroup);
			this.txtGroup.addChild(f1Number);
			this.txtGroup.addChild(f1Name);
			this.txtGroup.addChild(f1Win);
			this.txtGroup.addChild(f1Place);
			this.txtGroup.addChild(f2Number);
			this.txtGroup.addChild(f2Name);
			this.txtGroup.addChild(f2Win);
			this.txtGroup.addChild(f2Place);
			this.txtGroup.addChild(f3Number);
			this.txtGroup.addChild(f3Name);
			this.txtGroup.addChild(f3Win);
			this.txtGroup.addChild(f3Place);
			this.txtGroup.addChild(f4Number);
			this.txtGroup.addChild(f4Name);
			this.txtGroup.addChild(f4Win);
			this.txtGroup.addChild(f4Place);
			this.txtGroup.addChild(f5Number);
			this.txtGroup.addChild(f5Name);
			this.txtGroup.addChild(f5Win);
			this.txtGroup.addChild(f5Place);
			this.txtGroup.addChild(f6Number);
			this.txtGroup.addChild(f6Name);
			this.txtGroup.addChild(f6Win);
			this.txtGroup.addChild(f6Place);
			this.txtGroup.addChild(f7Number);
			this.txtGroup.addChild(f7Name);
			this.txtGroup.addChild(f7Win);
			this.txtGroup.addChild(f7Place);
			this.txtGroup.addChild(f8Number);
			this.txtGroup.addChild(f8Name);
			this.txtGroup.addChild(f8Win);
			this.txtGroup.addChild(f8Place);
			this.txtGroup.addChild(f9Number);
			this.txtGroup.addChild(f9Name);
			this.txtGroup.addChild(f9Win);
			this.txtGroup.addChild(f9Place);
			this.txtGroup.addChild(f10Number);
			this.txtGroup.addChild(f10Name);
			this.txtGroup.addChild(f10Win);
			this.txtGroup.addChild(f10Place);
			
			this.addChild(group2);
			this.group2.addChild(headPanel);
			this.group2.addChild(fTime);
			this.group2.addChild(fMain);
			this.group2.addChild(placeName);
			this.group2.addChild(fPlace);
					
			//mask region
			this.addChild(maskX);
			this.addChild(maskY);
			this.addChild(txtMask);
			this.maskX.x = this.maskY.x = this.txtMask.x = 200;
			this.maskY.y = this.maskX.y = 102;
			this.txtMask.y = 220;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 885;
			this.rectWidth = 1520;
			this.drawShapes(maskX, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			this.drawShapes(maskY, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			this.rectHeight = 800;
			this.drawShapes(txtMask, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			this.bigPanel.cacheAsBitmap = true;
			this.group2.mask = maskX;
			this.groupElement.mask = maskY;
			this.txtGroup.mask = txtMask;
			
			this.groupElement.addChild(leftLight);
			this.group2.addChild(rightLight);
			this.addChild(groupElement);
			this.addChild(group2);
			this.addChild(txtGroup);
			this.alpha = 1;
			this.visible = false;
			Play();
			tm.addEventListener(TimerEvent.TIMER, update);
			tm.start();
			
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
			xmlStr +=Add(xmlStr, "bettingcode", fPlace);
			xmlStr +=Add(xmlStr, "fTime", fTime);
			
			xmlStr +=Add(xmlStr, "f1Number", f1Number);
			xmlStr +=Add(xmlStr, "f1Name", f1Name);
			xmlStr +=Add(xmlStr, "f1Win", f1Win);
			xmlStr +=Add(xmlStr, "f1Place", f1Place);
		
			xmlStr +=Add(xmlStr, "f2Number", f2Number);
			xmlStr +=Add(xmlStr, "f2Name", f2Name);
			xmlStr +=Add(xmlStr, "f2Win", f2Win);
			xmlStr +=Add(xmlStr, "f2Place", f2Place);
		
			xmlStr +=Add(xmlStr, "f3Number", f3Number);
			xmlStr +=Add(xmlStr, "f3Name", f3Name);
			xmlStr +=Add(xmlStr, "f3Win", f3Win);
			xmlStr +=Add(xmlStr, "f3Place", f3Place);
		
			xmlStr +=Add(xmlStr, "f4Number", f4Number);
			xmlStr +=Add(xmlStr, "f4Name", f4Name);
			xmlStr +=Add(xmlStr, "f4Win", f4Win);
			xmlStr +=Add(xmlStr, "f4Place", f4Place);
					
			xmlStr +=Add(xmlStr, "f5Number", f5Number);
			xmlStr +=Add(xmlStr, "f5Name", f5Name);
			xmlStr +=Add(xmlStr, "f5Win", f5Win);
			xmlStr +=Add(xmlStr, "f5Place", f5Place);
		
			xmlStr +=Add(xmlStr, "f6Number", f6Number);
			xmlStr +=Add(xmlStr, "f6Name", f6Name);
			xmlStr +=Add(xmlStr, "f6Win", f6Win);
			xmlStr +=Add(xmlStr, "f6Place", f6Place);
		
			xmlStr +=Add(xmlStr, "f7Number", f7Number);
			xmlStr +=Add(xmlStr, "f7Name", f7Name);
			xmlStr +=Add(xmlStr, "f7Win", f7Win);
			xmlStr +=Add(xmlStr, "f7Place", f7Place);
		
			xmlStr +=Add(xmlStr, "f8Number", f8Number);
			xmlStr +=Add(xmlStr, "f8Name", f8Name);
			xmlStr +=Add(xmlStr, "f8Win", f8Win);
			xmlStr +=Add(xmlStr, "f8Place", f8Place);
			
			xmlStr +=Add(xmlStr, "f9Number", f9Number);
			xmlStr +=Add(xmlStr, "f9Name", f9Name);
			xmlStr +=Add(xmlStr, "f9Win", f9Win);
			xmlStr +=Add(xmlStr, "f9Place", f9Place);
			
			xmlStr +=Add(xmlStr, "f10Number", f10Number);
			xmlStr +=Add(xmlStr, "f10Name", f10Name);
			xmlStr +=Add(xmlStr, "f10Win", f10Win);
			xmlStr +=Add(xmlStr, "f10Place", f10Place);
		
			xmlStr += "</Track_Property>";
			
			ExternalInterface.call("Properties", xmlStr);
			return xmlStr;
		}
		function UpdateData(str:String)
		{
			var xml:XML = new XML(str);
			this.SetData(xml);
		}
		private function lightTween(e:Event):void
		{				
			this.lightTween1 = new Tween(leftLight, "y", Regular.easeOut, 200, 930, 1.5, true);
			this.lightTween2 = new Tween(rightLight, "x", Regular.easeOut, 300, 1620, 1.5, true);
			this.xTween = new Tween(hideShape, "x", None.easeOut, 1790, 240, 30, true);
			this.xTween.looping = true;			
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
			//getIn();
		}
		public override function Stop():void
		{
			disappear();			
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
						this.f1Name.defaultTextFormat = this.f1Number.defaultTextFormat = this.f1Win.defaultTextFormat = this.f1Place.defaultTextFormat = f1Format;
						break;
					case "Field_2".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f2Name.defaultTextFormat = this.f2Number.defaultTextFormat = this.f2Win.defaultTextFormat = this.f2Place.defaultTextFormat = f1Format;
						break;
					case "Field_3".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f3Name.defaultTextFormat = this.f3Number.defaultTextFormat = this.f3Win.defaultTextFormat = this.f3Place.defaultTextFormat = f1Format;
						break;
					case "Field_4".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f4Name.defaultTextFormat = this.f4Number.defaultTextFormat = this.f4Win.defaultTextFormat = this.f4Place.defaultTextFormat = f1Format;
						break;
					case "Field_5".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f5Name.defaultTextFormat = this.f5Number.defaultTextFormat = this.f5Win.defaultTextFormat = this.f5Place.defaultTextFormat = f1Format;
						break;
					case "Field_6".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f6Name.defaultTextFormat = this.f6Number.defaultTextFormat = this.f6Win.defaultTextFormat = this.f6Place.defaultTextFormat = f1Format;
						break;
					case "Field_7".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f7Name.defaultTextFormat = this.f7Number.defaultTextFormat = this.f7Win.defaultTextFormat = this.f7Place.defaultTextFormat = f1Format;
						break;
					case "Field_8".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f8Name.defaultTextFormat = this.f8Number.defaultTextFormat = this.f8Win.defaultTextFormat = this.f8Place.defaultTextFormat = f1Format;
						break;
					case "Field_9".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f9Name.defaultTextFormat = this.f9Number.defaultTextFormat = this.f9Win.defaultTextFormat = this.f9Place.defaultTextFormat = f1Format;
						break;
					case "Field_10".toLowerCase():
						this.f1Format.color = toHex(data);
						this.f10Name.defaultTextFormat = this.f10Number.defaultTextFormat = this.f10Win.defaultTextFormat = this.f10Place.defaultTextFormat = f1Format;
						break;
					case "RaceNumber".toLowerCase():
						this.fMain.text = data.toUpperCase();
						break;
					case "PlaceName".toLowerCase():
						this.placeName.text = data.toUpperCase();
						break;
					case "fTime".toLowerCase():
						this.fTime.text = data.toUpperCase();
						break;
					case "bettingcode".toLowerCase():
						this.fPlace.text = data.toUpperCase();
						break;
					case "f1Name".toLowerCase():
						this.f1Name.text = data.toUpperCase();
						break;
					case "f2Name".toLowerCase():
						this.f2Name.text = data.toUpperCase();
						break;
					case "f3Name".toLowerCase():
						this.f3Name.text = data.toUpperCase();
						break;
					case "f4Name".toLowerCase():
						this.f4Name.text = data.toUpperCase();
						break;
					case "f5Name".toLowerCase():
						this.f5Name.text = data.toUpperCase();
						break;
					case "f6Name".toLowerCase():
						this.f6Name.text = data.toUpperCase();
						break;
					case "f7Name".toLowerCase():
						this.f7Name.text = data.toUpperCase();
						break;
					case "f8Name".toLowerCase():
						this.f8Name.text = data.toUpperCase();
						break;
					case "f9Name".toLowerCase():
						this.f9Name.text = data.toUpperCase();
						break;
					case "f10Name".toLowerCase():
						this.f10Name.text = data.toUpperCase();
						break;
					
					case "f1Number".toLowerCase():
						this.f1Number.text = data.toUpperCase();
						break;
					case "f2Number".toLowerCase():
						this.f2Number.text = data.toUpperCase();
						break;
					case "f3Number".toLowerCase():
						this.f3Number.text = data.toUpperCase();
						break;
					case "f4Number".toLowerCase():
						this.f4Number.text = data.toUpperCase();
						break;
					case "f5Number".toLowerCase():
						this.f5Number.text = data.toUpperCase();
						break;
					case "f6Number".toLowerCase():
						this.f6Number.text = data.toUpperCase();
						break;
					case "f7Number".toLowerCase():
						this.f7Number.text = data.toUpperCase();
						break;
					case "f8Number".toLowerCase():
						this.f8Number.text = data.toUpperCase();
						break;
					case "f9Number".toLowerCase():
						this.f9Number.text = data.toUpperCase();
						break;
					case "f10Number".toLowerCase():
						this.f10Number.text = data.toUpperCase();
						break;
					
					case "f1Win".toLowerCase():
						this.f1Win.text = data.toUpperCase();
						break;
					case "f2Win".toLowerCase():
						this.f2Win.text = data.toUpperCase();
						break;
					case "f3Win".toLowerCase():
						this.f3Win.text = data.toUpperCase();
						break;
					case "f4Win".toLowerCase():
						this.f4Win.text = data.toUpperCase();
						break;
					case "f5Win".toLowerCase():
						this.f5Win.text = data.toUpperCase();
						break;
					case "f6Win".toLowerCase():
						this.f6Win.text = data.toUpperCase();
						break;
					case "f7Win".toLowerCase():
						this.f7Win.text = data.toUpperCase();
						break;
					case "f8Win".toLowerCase():
						this.f8Win.text = data.toUpperCase();
						break;
					case "f9Win".toLowerCase():
						this.f9Win.text = data.toUpperCase();
						break;
					case "f10Win".toLowerCase():
						this.f10Win.text = data.toUpperCase();
						break;
					case "f1Place".toLowerCase():
						this.f1Place.text = data.toUpperCase();
						break;
					case "f2Place".toLowerCase():
						this.f2Place.text = data.toUpperCase();
						break;
					case "f3Place".toLowerCase():
						this.f3Place.text = data.toUpperCase();
						break;
					case "f4Place".toLowerCase():
						this.f4Place.text = data.toUpperCase();
						break;
					case "f5Place".toLowerCase():
						this.f5Place.text = data.toUpperCase();
						break;
					case "f6Place".toLowerCase():
						this.f6Place.text = data.toUpperCase();
						break;
					case "f7Place".toLowerCase():
						this.f7Place.text = data.toUpperCase();
						break;
					case "f8Place".toLowerCase():
						this.f8Place.text = data.toUpperCase();
						break;
					case "f9Place".toLowerCase():
						this.f9Place.text = data.toUpperCase();
						break;
					case "f10Place".toLowerCase():
						this.f10Place.text = data.toUpperCase();
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
		public function comeIn():void
		{	
			this.visible = true;
			this.maskTween1 = new Tween(group2, "scaleX", Strong.easeOut, 0, 1, 0.5, true);
			this.yTween = new Tween(txtGroup, "scaleY", Strong.easeOut, -10, 1, 0.5, true);
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
		private function update(tevt:TimerEvent):void {
			var now:Date = new Date();
			var hr:Number = now.hours;
			var min:Number = now.minutes;	
			var sec:Number = now.seconds;
			var ms:Number = now.milliseconds;
			if ( (hr<10) && (min < 10)) {			
				fTime.text = "0"+ String(hr) + ":0" + String(min)+ ":" + String(sec)+":"+String(ms);
			}else if ( (hr<10) && (min >= 10)) {			
				fTime.text = "0"+ String(hr) + ":" + String(min)+ ":" + String(sec)+":"+String(ms);
			}
			else if ((hr>=10) && (min<10)){
				fTime.text = String(hr) + ":0" + String(min)+ ":" + String(sec)+":"+String(ms);
			}
				else {
				fTime.text = String(hr) + ":" + String(min)+ ":" + String(sec)+":"+String(ms);
			}
		}
		private function getOut():void
		{
			this.yTween = new Tween(txtGroup, "y", None.easeOut, 0, 1000, 1, true);
		}
		private function getIn():void
		{
			this.yTween = new Tween(txtGroup, "y", None.easeOut, -1000, 0, 1, true);
		}
	}
	
}
