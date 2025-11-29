package src.tv.boombang.core.datatypes.games
{
   import src.tv.boombang.commons.utils._fh6432;
   
   public class _ic9501 extends _fh6432
   {
      
      public static const _xc15981:_ic9501 = new _ic9501(-1);
      
      public static const _ml3909:_ic9501 = new _ic9501(0);
      
      public static const _no9857:_ic9501 = new _ic9501(1);
      
      public static const _sb16029:_ic9501 = new _ic9501(2);
      
      _xy6875(_ic9501);
      
      private var _nb15690:int;
      
      public function _ic9501(param1:int)
      {
         super();
         this._nb15690 = param1;
      }
      
      public static function _bn928(param1:int) : _ic9501
      {
         var _loc2_:_ic9501 = null;
         for each(_loc2_ in _ic9501._dy13189)
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
         return [_xc15981,_ml3909,_no9857,_sb16029];
      }
      
      public function get id() : int
      {
         return this._nb15690;
      }
   }
}

