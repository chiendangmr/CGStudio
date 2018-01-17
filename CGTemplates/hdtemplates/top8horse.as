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
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import fl.containers.UILoader;
	import flash.net.URLRequest;
	import flash.sampler.Sample;
	import flash.globalization.NumberFormatter;
	import flash.globalization.LocaleID;
		
	public class top8horse extends CasparTemplate{
		
		public var myBar:MovieClip = new bar();
				
		private var txtGroup:MovieClip = new MovieClip();
		private var txt:TextField = new TextField();		
		private var txt3:TextField = new TextField();
			
		public var bettingCode:TextField = new TextField();
		public var f1Win:TextField = new TextField();
		public var f2Win:TextField = new TextField();
		public var f3Win:TextField = new TextField();
		public var f4Win:TextField = new TextField();
		public var f5Win:TextField = new TextField();
		public var f6Win:TextField = new TextField();
		public var f7Win:TextField = new TextField();
		public var f8Win:TextField = new TextField();
		public var f9Win:TextField = new TextField();	
		public var f10Win:TextField = new TextField();	
		public var winValue:TextField = new TextField();
						
		private var txtFormat:TextFormat = new TextFormat();
		private var txtFormat2:TextFormat = new TextFormat();
		private var topFormat:TextFormat = new TextFormat();
		private var topFormat2:TextFormat = new TextFormat();
							
		private var maskBar:Shape = new Shape();
		private var rectWidth:Number = 900;
		private var rectHeight:Number = 160;
		private var rcolor:Array = new Array();
		private var alphas:Array = new Array();
		private var ratios:Array = new Array();
		
		private var singleTween:Tween = null;
		private var txtTween:Tween = null;
				
		public function top8horse() {
			// constructor code
			super();
			
			this.addChild(myBar);
			this.addChild(winValue);
			this.addChild(txt3);					
			this.addChild(f1Win);
			this.addChild(f2Win);
			this.addChild(f3Win);
			this.addChild(f4Win);
			this.addChild(f5Win);
			this.addChild(f6Win);
			this.addChild(f7Win);
			this.addChild(f8Win);
			this.addChild(f9Win);
			this.addChild(f10Win);
			this.txtFormat.size = 40;
			this.txtFormat.font = new RobotoBlack().fontName;
			this.txtFormat.color = 0xffffff;			
												
			this.txt.defaultTextFormat = txtFormat;
			this.txt.alpha = 1;
			this.txt.autoSize = "left";
			this.txt.type = TextFieldType.INPUT;
			this.txt.text = "RACE 10";
			this.txt.x = 220;
			this.txt.y = 170;
			this.txtGroup.addChild(txt);
			
			this.txtFormat.size = 55;
			setTxt(txt3, txtFormat,"MADAGUI", this.txt.x, 110);
			this.txtGroup.addChild(txt3);
			this.txtGroup.addChild(bettingCode);
			this.txtGroup.addChild(f1Win);
			this.txtGroup.addChild(f2Win);
			this.txtGroup.addChild(f3Win);
			this.txtGroup.addChild(f4Win);
			this.txtGroup.addChild(f5Win);
			this.txtGroup.addChild(f6Win);
			this.txtGroup.addChild(f7Win);
			this.txtGroup.addChild(f8Win);
			this.txtGroup.addChild(f9Win);
			this.txtGroup.addChild(f10Win);
			this.txtGroup.addChild(winValue);			
			this.addChild(txtGroup);
			
			this.addChild(maskBar);
			this.maskBar.x = 195;
			this.maskBar.y = 105;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 900;
			this.rectWidth = 500;
			this.drawShapes(maskBar, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.myBar.mask = this.maskBar;
			this.txtGroup.visible = false;
			this.myBar.visible = false;
			//Play();
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
		private function setTxt(txt:TextField, txtFormat:TextFormat, str:String, xN:Number, yN:Number){
			txt.defaultTextFormat = txtFormat;
			txt.alpha = 1;
			txt.autoSize = "left";
			txt.type = TextFieldType.INPUT;
			txt.text = str;
			txt.x = xN;
			txt.y = yN;			
		}
		private function Add(xmlStr:String, str:String, txt:TextField){
			xmlStr='<'+ str + ' id="'+ str + '"><data value="' + txt.text + '"/></' + str +'>';
			return xmlStr;
		}
		function GetProperties()
		{
		}
		function UpdateData(str:String)
		{
			var xml:XML = new XML(str);
			this.SetData(xml);
		}
		private var nf:NumberFormatter = new NumberFormatter("en-US"); 
		override public function SetData(xml:XML):void{
			for each (var element:XML in xml.children())
			{
				var property:String = element.@id;
				var data:String = element.data.@value;
				switch(property.toLowerCase())
				{
					case "RaceNumber".toLowerCase():
						this.txt.text = data.toUpperCase();
						break;
					case "PlaceName".toLowerCase():
						this.txt3.text = data.toUpperCase();
						break;	
					case "bettingCode".toLowerCase():
						this.bettingCode.text = data.toUpperCase();
						break;	
					case "f1Win".toLowerCase():
						this.f1Win.text = String((Number(data)/100).toFixed(2));
						break;
					case "f2Win".toLowerCase():
						this.f2Win.text = String((Number(data)/100).toFixed(2));
						break;
					case "f3Win".toLowerCase():
						this.f3Win.text = String((Number(data)/100).toFixed(2));
						break;
					case "f4Win".toLowerCase():
						this.f4Win.text = String((Number(data)/100).toFixed(2));
						break;
					case "f5Win".toLowerCase():
						this.f5Win.text = String((Number(data)/100).toFixed(2));
						break;
					case "f6Win".toLowerCase():
						this.f6Win.text = String((Number(data)/100).toFixed(2));
						break;
					case "f7Win".toLowerCase():
						this.f7Win.text = String((Number(data)/100).toFixed(2));
						break;
					case "f8Win".toLowerCase():
						this.f8Win.text = String((Number(data)/100).toFixed(2));
						break;
					case "f9Win".toLowerCase():
						this.f9Win.text = String((Number(data)/100).toFixed(2));
						break;
					case "f10Win".toLowerCase():
						this.f10Win.text = String((Number(data)/100).toFixed(2));
						break;
					case "WinTotal".toLowerCase():
						this.winValue.text = (String(nf.formatNumber(Number(data)))).replace(".00", "");
						break;
				}
			}
		}
		private function comeIn():void{
			this.myBar.visible = true;
			this.singleTween = new Tween(myBar, "x", Regular.easeOut, -1500, 380, 0.5, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt);
		}
		private function comeInTxt(e:Event):void{
			this.txtGroup.visible = true;
			this.txtTween = new Tween(txtGroup, "alpha", Strong.easeIn, 0, 1, 0.1, true);
		}
		private function comeOut(){
			this.txtTween = new Tween(txtGroup, "alpha", Strong.easeIn, 1, 0, 0.1, true);
			this.txtTween.addEventListener(TweenEvent.MOTION_FINISH, comeOutBar);
		}
		private function comeOutBar(e:Event):void{
			this.singleTween = new Tween(myBar, "y", Regular.easeOut, 431, 1200, 1, true);
		}
		public override function Play():void{
			comeIn();
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
		private function getMinVal(tArray:Array):String{
			var nArray:Array = new Array();
			var kq:String = new String();
			for (var i:int=0; i<tArray.length;i++){
				nArray[i] = Number(tArray[i]);
			}
			nArray = nArray.sort(Array.NUMERIC);
			for (i = 0; i<nArray.length;i++){
				if (nArray[i]!=""){					
					kq = nArray[i].toString();					
					break;
				}
			}
			return kq;
		}
		private function setPro(tf:TextField, min:Boolean):void{
			if (min){
				tf.textColor = 0xe89d22;
			} else tf.textColor = 0x0b3762;				
		}
		private function setVisionWin(i:Number, min:Boolean):void{			
			switch(i){
				case 1:					
					setPro(f1Win, min);				
					break;
				case 2:							
					setPro(f2Win, min);					
					break;
				case 3:					
					setPro(f3Win, min);					
					break;
				case 4:					
					setPro(f4Win, min);					
					break;
				case 5:				
					setPro(f5Win, min);				
					break;
				case 6:
					setPro(f6Win, min);					
					break;
				case 7:
					setPro(f7Win, min);
					break;
				case 8:
					setPro(f8Win, min);
					break;
				case 9:					
					setPro(f9Win, min);				
					break;
				case 10:					
					setPro(f10Win, min);
					break;
			}
		}
		
		private var tm:Timer = new Timer(1000);
		private function update(tevt:TimerEvent):void {
			var winArray:Array = new Array(f1Win.text, f2Win.text, f3Win.text, f4Win.text, f5Win.text, f6Win.text, f7Win.text, f8Win.text, f9Win.text, f10Win.text);			
			
			var tempWin:String = getMinVal(winArray);
			
			for (var i:int =0;i<10;i++){
				if ((Number(winArray[i]) == Number(tempWin))){					
					setVisionWin(i+1, true);					
				} else setVisionWin(i+1, false);
			}			
		}
	}
	
}
