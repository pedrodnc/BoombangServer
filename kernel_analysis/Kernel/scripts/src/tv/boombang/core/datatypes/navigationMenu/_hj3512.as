package src.tv.boombang.core.datatypes.navigationMenu
{
   import src.tv.boombang.commons.utils._fh6432;
   
   public class _hj3512 extends _fh6432
   {
      
      public static const _tn8218:_hj3512 = new _hj3512(-1);
      
      public static const _uq6151:_hj3512 = new _hj3512(0);
      
      public static const _io5446:_hj3512 = new _hj3512(1);
      
      public static const _lk15055:_hj3512 = new _hj3512(2);
      
      public static const _wx1004:_hj3512 = new _hj3512(3);
      
      public static const _jn8033:_hj3512 = new _hj3512(4);
      
      public static const _dd9260:_hj3512 = new _hj3512(5);
      
      _xy6875(_hj3512);
      
      private var _br8865:int;
      
      public function _hj3512(param1:int)
      {
         super();
         this._br8865 = param1;
      }
      
      public static function _bn928(param1:int) : _hj3512
      {
         var _loc2_:_hj3512 = null;
         for each(_loc2_ in _hj3512._dy13189)
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
         return [_tn8218,_uq6151,_io5446,_lk15055,_wx1004,_jn8033,_dd9260];
      }
      
      public function get id() : int
      {
         return this._br8865;
      }
   }
}

