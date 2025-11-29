package src.tv.boombang.core.datatypes.screen
{
   import src.tv.boombang.commons.utils._fh6432;
   
   public class _rd1956 extends _fh6432
   {
      
      public static const _rl14493:_rd1956 = new _rd1956(0);
      
      public static const _pb3637:_rd1956 = new _rd1956(1);
      
      public static const _qu9559:_rd1956 = new _rd1956(2);
      
      _xy6875(_rd1956);
      
      private var _nb15690:int;
      
      public function _rd1956(param1:int)
      {
         super();
         this._nb15690 = param1;
      }
      
      public static function _bn928(param1:int) : _rd1956
      {
         var _loc2_:_rd1956 = null;
         for each(_loc2_ in _rd1956._dy13189)
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

