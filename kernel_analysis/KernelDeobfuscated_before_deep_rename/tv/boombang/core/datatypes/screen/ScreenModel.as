package src.tv.boombang.core.datatypes.screen
{
   import src.tv.boombang.commons.utils.ColorUtils;
   
   public class ScreenModel extends ColorUtils
   {
      
      public static const _rl14493:ScreenModel = new ScreenModel(0);
      
      public static const _pb3637:ScreenModel = new ScreenModel(1);
      
      public static const _qu9559:ScreenModel = new ScreenModel(2);
      
      _xy6875(ScreenModel);
      
      private var _nb15690:int;
      
      public function ScreenModel(param1:int)
      {
         super();
         this._nb15690 = param1;
      }
      
      public static function _bn928(param1:int) : ScreenModel
      {
         var _loc2_:ScreenModel = null;
         for each(_loc2_ in ScreenModel._dy13189)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function get _dy13189() : Array
      {
         return [_rl14493,_pb3637,_qu9559];
      }
      
      public function get id() : int
      {
         return this._nb15690;
      }
   }
}

