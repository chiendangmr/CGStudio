package  {
	
	import flash.display.MovieClip;
	import se.svt.caspar.template.CasparTemplate;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.Font;
	import flash.text.TextFieldType;
	
	public class replay extends CasparTemplate{
		
		private var replayPanel:MovieClip = new replayBar();
		private var txt:TextField = new TextField();
		private var txtFormat:TextFormat = new TextFormat();
		private var txtFont:Font = new RobotoBlack();
		
		public function replay() {
			// constructor code
			super();
			this.replayPanel.x = 1575;
			this.replayPanel.y = 180;
			this.addChild(replayPanel);
			
			this.txtFormat.size = 65;
			this.txtFormat.font = txtFont.fontName;
			this.txtFormat.color = 0xfaddb5;
			
			this.txt.defaultTextFormat = txtFormat;
			this.txt.autoSize = "left";
			this.txt.alpha = 1;
			this.txt.type = TextFieldType.DYNAMIC;
			this.txt.text = "REPLAY";
			this.txt.x = 1455;
			this.txt.y = 140;
			this.addChild(txt);
		}
	}
	
}
