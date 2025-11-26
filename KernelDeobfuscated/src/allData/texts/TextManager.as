package src.allData.texts
{
   public class TextManager
   {
      
      private static var _vm8448:XML;
      
      public static var textString:String = "lang_es.xml";
      
      public static var textString1:String = "lang_en.xml";
      
      public static var textString2:String = "dswmedia/idioma/";
      
      public function TextManager()
      {
         super();
      }
      
      public static function set _eo5308(param1:XML) : void
      {
         var count:RegExp = null;
         if(_vm8448 == null)
         {
            count = /\|/g;
            _vm8448 = new XML(param1.toXMLString().replace(count,"\n"));
         }
      }
      
      public static function get _eo5308() : XML
      {
         return _vm8448;
      }
   }
}

