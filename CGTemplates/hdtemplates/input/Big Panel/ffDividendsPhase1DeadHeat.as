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
	
	public class ffDividendsPhase1DeadHeat extends CasparTemplate {
		
		private var fMainFormat:TextFormat = new TextFormat();
		private var fMain:TextField = new TextField();
		private var placeName:TextField = new TextField();
		private var raceName:TextField = new TextField();
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
		private var f2Name:TextField = new TextField();
		private var f2Format:TextFormat = new TextFormat();
		//F3 detail
		private var f3Number:TextField = new TextField();
		private var f3Name:TextField = new TextField();
		private var f3Place:TextField = new TextField();
		private var f3Format:TextFormat = new TextFormat();
		//F4 detail
		private var f4Name:TextField = new TextField();
		private var f4Format:TextFormat = new TextFormat();
		//F5 detail
		private var f5Number:TextField = new TextField();
		private var f5Name:TextField = new TextField();
		private var f5Place:TextField = new TextField();
		private var f5Format:TextFormat = new TextFormat();
		//F6 detail
		private var f6Name:TextField = new TextField();
		private var f6Format:TextFormat = new TextFormat();
		//F7 detail
		private var f7Number:TextField = new TextField();
		private var f7Name:TextField = new TextField();
		private var f7Win:TextField = new TextField();
		private var f7Place:TextField = new TextField();
		private var f7Format:TextFormat = new TextFormat();
		
		private var f11Name:TextField = new TextField();
		private var f11Value:TextField = new TextField();
		
		private var d1:TextField = new TextField();
		private var d2:TextField = new TextField();
		private var d3:TextField = new TextField();
		private var d4:TextField = new TextField();
		private var d5:TextField = new TextField();
		private var d6:TextField = new TextField();
		private var d7:TextField = new TextField();
		private var d8:TextField = new TextField();
				
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
		private var hideShape:MovieClip = new hideShapeB();
		
		private var myFilter:DropShadowFilter = new DropShadowFilter();
			
		public function ffDividendsPhase1DeadHeat() {
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
			this.fMain.text = "RACE 2";
			this.fMain.filters = [myFilter];
			this.addChild(fMain);
			setTxt(placeName, fMainFormat, myFilter, "MADAGUI", this.fMain.x + 240, this.fMain.y);
			setTxt(raceName, fMainFormat, myFilter, "PURE BLONDE HANDICAP", this.placeName.x + 270, this.fMain.y);
			
			
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
			this.fTime.text = "INTERIM DIVIDENDS";
			this.fTime.filters = [myFilter];
			this.addChild(fTime);
			this.fTimeFormat.color = 0xe89d22;
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
			this.f1Format.color = 0xe89d22;
			this.f1Format.font = new RobotoBold().fontName;
			
			this.f2Format.size = 55;
			this.f2Format.color = 0xffffff;
			this.f2Format.font = new RobotoBold().fontName;
			
			this.f3Format.size = 40;
			this.f3Format.color = 0xe89d22;
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
			
			this.f4Format.font = new RobotoBoldCondensed().fontName;	
			this.f11Value.defaultTextFormat = f4Format;
			this.f11Value.type = TextFieldType.INPUT;
			this.f11Value.autoSize = "left";
			this.f11Value.x = 515;
			this.f11Value.y = this.f11Name.y;
			this.f11Value.text = "8, 10, 13";
			this.f11Value.filters = [myFilter];
			this.addChild(f11Value);
						
			this.f3Format.color = 0xffffff;
			setTxt(txt3, f3Format, myFilter, "1-7", 470, 695);
			setTxt(txt4, f3Format, myFilter, "106.40", 700, this.txt3.y);
			setTxt(txt5, f3Format, myFilter, "7-1-3", 1180, this.txt3.y);
			setTxt(txt6, f3Format, myFilter, "712.30", 1440, this.txt3.y);
			
			setTxt(txt7, f3Format, myFilter, "1-3", this.txt3.x, 735);
			setTxt(txt8, f3Format, myFilter, "106.40", this.txt4.x, this.txt7.y);
			setTxt(txt9, f3Format, myFilter, "7-3-1", this.txt5.x, this.txt7.y);
			setTxt(txt10, f3Format, myFilter, "712.30", this.txt6.x, this.txt7.y);			
					
			this.f3Format.color = 0xe89d22;
			this.f3Format.size = 35;
			setTxt(txt1, f3Format, myFilter, "QUINELLA:", this.f1Number.x, this.txt3.y);
			setTxt(txt2, f3Format, myFilter, "TRIFECTA:", 915, this.txt3.y);						
			
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
			
			this.dFormat.size = 20;
			setTxt(d5, dFormat, myFilter, "đ", 690, this.txt3.y);
			setTxt(d6, dFormat, myFilter, "đ", 1430, this.d5.y);
			setTxt(d7, dFormat, myFilter, "đ", this.d5.x, this.txt7.y);
			setTxt(d8, dFormat, myFilter, "đ", this.d6.x, this.d7.y);
						
			this.addChild(d1);
			this.addChild(d2);
			this.addChild(d3);
			this.addChild(d4);
			
			
			this.addChild(groupElement);
			
			this.groupElement.addChild(bigPanel);
			this.groupElement.addChild(hideShape);
			this.groupElement.addChild(f1Number);
			this.groupElement.addChild(f1Name);
			this.groupElement.addChild(f1Win);
			this.groupElement.addChild(f1Place);
			this.groupElement.addChild(f2Name);
			this.groupElement.addChild(f3Number);
			this.groupElement.addChild(f3Name);
			this.groupElement.addChild(f3Place);
			this.groupElement.addChild(f4Name);
			this.groupElement.addChild(f5Number);
			this.groupElement.addChild(f5Name);
			this.groupElement.addChild(f5Place);
			this.groupElement.addChild(f6Name);
			this.groupElement.addChild(f7Number);
			this.groupElement.addChild(f7Name);
			this.groupElement.addChild(f7Win);
			this.groupElement.addChild(f7Place);
			
			this.groupElement.addChild(f11Name);
			this.groupElement.addChild(f11Value);
			this.groupElement.addChild(d1);
			this.groupElement.addChild(d2);
			this.groupElement.addChild(d3);
			this.groupElement.addChild(d4);
			this.groupElement.addChild(d5);
			this.groupElement.addChild(d6);
			this.groupElement.addChild(d7);
			this.groupElement.addChild(d8);
			
			this.groupElement.addChild(txt1);
			this.groupElement.addChild(txt2);
			this.groupElement.addChild(txt3);
			this.groupElement.addChild(txt4);
			this.groupElement.addChild(txt5);
			this.groupElement.addChild(txt6);
			this.groupElement.addChild(txt7);
			this.groupElement.addChild(txt8);
			this.groupElement.addChild(txt9);
			this.groupElement.addChild(txt10);
						
			this.addChild(group2);
			this.group2.addChild(headPanel);
			this.groupElement.addChild(fTime);
			this.group2.addChild(fMain);
			this.group2.addChild(fBet);
			this.group2.addChild(placeName);
			this.group2.addChild(raceName);
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
			xmlStr += '<RaceNumber id="RaceNumber"><data value="' + this.fMain.text + '"/></RaceNumber>';
			xmlStr += '<fBet id="fBet"><data value="' + this.fBet.text + '"/></fBet>';
			xmlStr += '<fTime id="fTime"><data value="' + this.fTime.text + '"/></fTime>';
			xmlStr += '<f1Number id="f1Number"><data value="' + this.f1Number.text + '"/></f1Number>';
			xmlStr += '<f1Name id="f1Name"><data value="' + this.f1Name.text + '"/></f1Name>';
			xmlStr += '<f1Win id="f1Win"><data value="' + this.f1Win.text + '"/></f1Win>';
			xmlStr += '<f1Place id="f1Place"><data value="' + this.f1Place.text + '"/></f1Place>';
			xmlStr +=Add(xmlStr, "PlaceName", placeName);
			xmlStr +=Add(xmlStr, "RaceName", raceName);		
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
			xmlStr += '<f2Name id="f2Name"><data value="' + this.f2Name.text + '"/></f2Name>';
			xmlStr += '<f3Number id="f3Number"><data value="' + this.f3Number.text + '"/></f3Number>';
			xmlStr += '<f3Name id="f3Name"><data value="' + this.f3Name.text + '"/></f3Name>';
			xmlStr += '<f3Place id="f3Place"><data value="' + this.f3Place.text + '"/></f3Place>';
			xmlStr += '<f4Name id="f4Name"><data value="' + this.f4Name.text + '"/></f4Name>';
			xmlStr += '<f5Number id="f5Number"><data value="' + this.f5Number.text + '"/></f5Number>';
			xmlStr += '<f5Name id="f5Name"><data value="' + this.f5Name.text + '"/></f5Name>';
			xmlStr += '<f5Place id="f5Place"><data value="' + this.f5Place.text + '"/></f5Place>';
			
			xmlStr += '<f6Name id="f6Name"><data value="' + this.f6Name.text + '"/></f6Name>';
			xmlStr += '<f7Number id="f7Number"><data value="' + this.f7Number.text + '"/></f7Number>';
			xmlStr += '<f7Name id="f7Name"><data value="' + this.f7Name.text + '"/></f7Name>';
			xmlStr += '<f11Name id="f11Name"><data value="' + this.f11Name.text + '"/></f11Name>';
			
			xmlStr += '<f11Value id="f11Value"><data value="' + this.f11Value.text + '"/></f11Value>';
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
					case "RaceNumber".toLowerCase():
						this.fMain.text = data.toUpperCase();
						break;
					case "RaceName".toLowerCase():
						this.raceName.text = data.toUpperCase();
						break;
					case "PlaceName".toLowerCase():
						this.placeName.text = data.toUpperCase();
						break;
					case "bettingCode".toLowerCase():
						this.fBet.text = data.toUpperCase();
						break;
					case "dividendsNumber1".toLowerCase():
						this.f1Number.text = data.toUpperCase();
						break;
					case "dividendsName1".toLowerCase():
						this.f1Name.text = data.toUpperCase();
						break;
					case "dividendsWin1".toLowerCase():
						this.f1Win.text = data.toUpperCase();
						break;					
					case "dividendsPlace1".toLowerCase():
						this.f1Place.text = data.toUpperCase();
						break;
					case "dividendsTrainer1".toLowerCase():
						this.f2Name.text = data.toUpperCase();
						break;
					case "dividendsName2".toLowerCase():
						this.f3Name.text = data.toUpperCase();
						break;
					case "dividendsNumber2".toLowerCase():
						this.f3Number.text = data.toUpperCase();
						break;
					case "dividendsPlace2".toLowerCase():
						this.f3Place.text = data.toUpperCase();
						break;
					case "dividendsTrainer2".toLowerCase():
						this.f4Name.text = data.toUpperCase();
						break;
					case "dividendsNumber3".toLowerCase():
						this.f5Number.text = data.toUpperCase();
						break;
					case "dividendsName3".toLowerCase():
						this.f5Name.text = data.toUpperCase();
						break;
					case "dividendsPlace3".toLowerCase():
						this.f5Place.text = data.toUpperCase();
						break;
					case "dividendsTrainer3".toLowerCase():
						this.f6Name.text = data.toUpperCase();
						break;
					case "f7Name".toLowerCase():
						this.f7Name.text = data.toUpperCase();
						break;
					case "f7Number".toLowerCase():
						this.f7Number.text = data.toUpperCase();
						break;
					case "f11Value".toLowerCase():
						this.f11Value.text = data.toUpperCase();
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
				}
			}
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
