package src.tv.boombang.core.datatypes.screen
{
   import src.tv.boombang.commons.utils.ColorUtils;
   
   public class ScreenModel extends ColorUtils
   {
      
      public static const _rl14493:ScreenModel = new ScreenModel(0);
      
      public static const _pb3637:ScreenModel = new ScreenModel(1);
      
      public static const _qu9559:ScreenModel = new ScreenModel(2);
      
      _xy6875(ScreenModel);
      
      private var count:int;
      
      public function ScreenModel(param1:int)
      {
         super();
         this.count = param1;
      }
      
      public static function _bn928(param1:int) : ScreenModel
      {
         var count:ScreenModel = null;
         for each(count in ScreenModel.items)
         {
            if(count.id == param1)
            {
               return count;
            }
         }
         return null;
      }
      
      public static function get items() : Array
      {
         return [_rl14493,_pb3637,_qu9559];
      }
      
      public function get id() : int
      {
         return this.count;
      }
   }
}

