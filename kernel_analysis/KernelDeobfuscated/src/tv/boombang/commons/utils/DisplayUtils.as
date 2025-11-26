package src.tv.boombang.commons.utils
{
   import flash.display.Stage;
   import src.tv.boombang.core.errors.*;
   
   public class DisplayUtils
   {
      
      protected static var _tn10129:Stage;
      
      public function DisplayUtils(param1:_iq15279)
      {
         super();
         if(!(param1 is _iq15279))
         {
            throw new Errors("do not call this please :) im bussy");
         }
      }
      
      public static function _gc10281(param1:Stage) : void
      {
         if(_tn10129 == null)
         {
            _tn10129 = param1;
         }
      }
      
      public static function _ps6769() : Stage
      {
         return _tn10129;
      }
   }
}

class _iq15279
{
   
   public function _iq15279()
   {
      super();
   }
}
