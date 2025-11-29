package src.tv.boombang.core.datatypes.movement
{
   import src.tv.boombang.commons.utils._fh6432;
   
   public class _eb11890 extends _fh6432
   {
      
      public static const _wx3379:_eb11890 = new _eb11890(-1);
      
      public static const _fd15912:_eb11890 = new _eb11890(1);
      
      public static const _xh1545:_eb11890 = new _eb11890(2);
      
      public static const _xr9706:_eb11890 = new _eb11890(3);
      
      _xy6875(_eb11890);
      
      private var _id:int;
      
      public function _eb11890(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public static function _ob13942(param1:int) : _eb11890
      {
         var _loc2_:_eb11890 = null;
         for each(_loc2_ in _eb11890._dy13189)
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
         return [_wx3379,_fd15912,_xh1545,_xr9706];
      }
      
      public function get id() : int
      {
         return this._id;
      }
   }
}

