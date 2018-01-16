﻿package  {
	
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
	import flash.external.ExternalInterface;
	import flash.filters.*;
	
	public class lfWinningTrainer extends CasparTemplate{
		
		public var eff:MovieClip = new light();
		private var singleLine:MovieClip = new winningTrainerBar();
		private var txtGroup:MovieClip = new MovieClip();
		private var txt:TextField = new TextField();
		private var txt2:TextField = new TextField();
		private var txtFormat:TextFormat = new TextFormat();
		private var txt2Format:TextFormat = new TextFormat();
		private var txtFont:Font = new RobotoBold();
		
		private var maskBar:Shape = new Shape();
		private var rectWidth:Number=900;
		private var rectHeight:Number=160;
		private var rcolor:Array = new Array();
		private var alphas:Array = new Array();
		private var ratios:Array = new Array();
		
		private var singleTween:Tween = null;
		private var txtTween:Tween = null;
		private var myFilter:DropShadowFilter = new DropShadowFilter();
		
		public function lfWinningTrainer() {
			// constructor code
			super();
			
			this.singleLine.y = 840;
			this.addChild(singleLine);
			
			this.myFilter.quality = -100;
			this.myFilter.strength = 2;
			
			this.txtFormat.size = 55;
			this.txtFormat.font = txtFont.fontName;
			this.txtFormat.color = 0xfaddb5;
			this.txtFormat.align = TextFormatAlign.CENTER;
			
			this.txt.defaultTextFormat = txtFormat;
			this.txt.alpha = 1;
			this.txt.type = TextFieldType.INPUT;
			this.txt.text = "ADAM DURRANT";
			this.txt.x = 210;
			this.txt.y = 765;
			this.txt.width = 1500;
			this.txt.height = 100;
			this.txt.filters = [myFilter];
			this.txtGroup.addChild(txt);
			
			this.txt2Format.size = 45;
			this.txt2Format.color = 0xffffff;
			this.txt2Format.font = txtFont.fontName;
			this.txt2Format.align = TextFormatAlign.CENTER;
				
			this.txt2.defaultTextFormat = txt2Format;
			this.txt2.alpha = 1;
			this.txt2.type = TextFieldType.INPUT;
			this.txt2.text = "WINNING TRAINER - VERSED REMEDY";
			this.txt2.x = 210;
			this.txt2.y = 860;
			this.txt2.width = 1500;
			this.txt2.height = 100;
			this.txt2.filters = [myFilter];
			this.txtGroup.addChild(txt2);
			
			this.addChild(txtGroup);
			
			this.addChild(maskBar);
			this.maskBar.x = 180;
			this.maskBar.y = 700;
			this.alphas = [1, 1];
			this.ratios = [0, 255];
			this.rcolor = [0xFFFFFF, 0xFFFFFF];
			this.rectHeight = 400;
			this.rectWidth = 1550;
			this.drawShapes(maskBar, alphas, ratios, rcolor, toRad(-90, -95), rectWidth, rectHeight);
			
			this.singleLine.mask = this.maskBar;
			this.txtGroup.visible = false;
			this.singleLine.visible = false;
			this.addChild(eff);
			this.eff.visible = false;
			
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
			xmlStr +=Add(xmlStr, "txt", txt);
			xmlStr +=Add(xmlStr, "txt2", txt2);
			
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
					case "txt".toLowerCase():
						this.txt.text = data.toUpperCase();
						break;
					
					case "txt2".toLowerCase():
						this.txt2.text = data.toUpperCase();
						break;
				}
			}
		}
		private function comeIn():void{
			this.singleLine.visible = true;
			this.singleTween = new Tween(singleLine, "x", Regular.easeOut, -1500, 960, 0.5, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, comeInTxt);
		}
		private function comeInTxt(e:Event):void{
			this.txtGroup.visible = true;
			this.txtTween = new Tween(txtGroup, "alpha", Strong.easeIn, 0, 1, 0.1, true);
			this.eff.visible = true;
			this.singleTween = new Tween(eff, "x", None.easeOut, 221, 1705, 2, true);
			this.singleTween.addEventListener(TweenEvent.MOTION_FINISH, effOff);
		}
		private function effOff(e:Event):void{
			this.eff.visible = false;
			//this.txtTween = new Tween(eff, "alpha", Strong.easeOut, 1, 0, 0.1, true);
		}
		private function comeOut(){
			this.txtTween = new Tween(txtGroup, "alpha", Strong.easeIn, 1, 0, 0.1, true);
			this.txtTween.addEventListener(TweenEvent.MOTION_FINISH, comeOutBar);
		}
		private function comeOutBar(e:Event):void{
			this.singleTween = new Tween(singleLine, "y", Regular.easeOut, 840, 1200, 1, true);
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
	}
	
}
