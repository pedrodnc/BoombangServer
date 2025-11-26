package src.tv.boombang.application.interactions
{
   import src.tv.boombang.commons.utils._fh6432;
   
   public class _ya5360 extends _fh6432
   {
      
      public static const _dc14331:_ya5360 = new _ya5360(-1);
      
      public static const _ov15204:_ya5360 = new _ya5360(1);
      
      public static const _vk7198:_ya5360 = new _ya5360(2);
      
      public static const _hd8501:_ya5360 = new _ya5360(3);
      
      public static const _fu3499:_ya5360 = new _ya5360(4);
      
      public static const _yi8040:_ya5360 = new _ya5360(5);
      
      public static const _lc2412:_ya5360 = new _ya5360(6);
      
      _xy6875(_ya5360);
      
      private var _id:int;
      
      public function _ya5360(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public static function _ob13942(param1:int) : _ya5360
      {
         var _loc2_:_ya5360 = null;
         for each(_loc2_ in _ya5360._dy13189)
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
         return [_dc14331,_ov15204,_vk7198,_hd8501,_fu3499,_yi8040,_lc2412];
      }
      
      public function get id() : int
      {
         return this._id;
      }
   }
}

