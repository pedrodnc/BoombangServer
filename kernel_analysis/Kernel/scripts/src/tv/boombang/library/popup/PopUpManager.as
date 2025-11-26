package src.tv.boombang.library.popup
{
   import flash.display.DisplayObjectContainer;
   import src.tv.boombang.commons.interfaces._ff15513;
   
   public class PopUpManager
   {
      
      private static var _dr7052:IPopUpManager;
      
      public function PopUpManager()
      {
         super();
      }
      
      private static function get impl() : IPopUpManager
      {
         if(!_dr7052)
         {
            _dr7052 = PopUpManagerImpl.getInstance();
         }
         return _dr7052;
      }
      
      public static function createPopUp(param1:DisplayObjectContainer, param2:_ff15513, param3:Boolean = true, param4:uint = 0) : void
      {
         impl.createPopUp(param1,param2,param3,param4);
      }
      
      public static function removePopUp(param1:_ff15513) : void
      {
         impl.removePopUp(param1);
      }
      
      public static function centerPopUp(param1:_ff15513) : void
      {
         impl.centerPopUp(param1);
      }
      
      public static function removeAll() : void
      {
         impl.removeAll();
      }
   }
}

