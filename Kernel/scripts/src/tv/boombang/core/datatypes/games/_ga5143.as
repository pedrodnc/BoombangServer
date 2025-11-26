package src.tv.boombang.core.datatypes.games
{
   import src.tv.boombang.commons.utils._fh6432;
   
   public class _ga5143 extends _fh6432
   {
      
      public static const _dx2033:_ga5143 = new _ga5143(-1);
      
      public static const _ii13005:_ga5143 = new _ga5143(1);
      
      public static const _ul10583:_ga5143 = new _ga5143(2);
      
      _xy6875(_ga5143);
      
      private var _nb15690:int;
      
      public function _ga5143(param1:int)
      {
         super();
         this._nb15690 = param1;
      }
      
      public static function _bn928(param1:int) : _ga5143
      {
         var _loc2_:_ga5143 = null;
         for each(_loc2_ in _ga5143._dy13189)
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
         return [_dx2033,_ii13005,_ul10583];
      }
      
      public function get id() : int
      {
         return this._nb15690;
      }
   }
}

