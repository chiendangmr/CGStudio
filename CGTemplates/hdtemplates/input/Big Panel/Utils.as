package
{
	import flash.utils.ByteArray;

	public class Utils
	{
		public static function ByteArrayToHexaArray(ba:ByteArray):String
		{
			var result:String = "";
			for(var i:int = 0; i < ba.length; i++)
			{
				var str:String = ba[i].toString(16);
				if(str.length < 2)
					str = "0" + str;
				result += str;
			}
				
			return result;
		}
		
		public static function StringToXmlString(str:String)
		{
			return str.replace("<", "&lt;")
				.replace(">", "&gt;")
				.replace("&", "&amp;");
		}
	}
}