package src.allData.texts
{
   public class TextManager
   {
      
      private static var _vm8448:XML;
      
      public static var _by13319:String = "lang_es.xml";
      
      public static var _rb4274:String = "lang_en.xml";
      
      public static var _aa9927:String = "dswmedia/idioma/";
      
      public function TextManager()
      {
         super();
      }
      
      public static function set _eo5308(param1:XML) : void
      {
         var _loc2_:RegExp = null;
         if(_vm8448 == null)
         {
            _loc2_ = /\|/g;
            _vm8448 = new XML(param1.toXMLString().replace(_loc2_,"\n"));
         }
      }
      
      public static function get _eo5308() : XML
      {
         return _vm8448;
      }
   }
}

