package src.tv.boombang.core.datatypes.navigationMenu
{
   import src.tv.boombang.commons.utils._fh6432;
   
   public class _cd9992 extends _fh6432
   {
      
      public static const _as7636:_cd9992 = new _cd9992(1);
      
      public static const _kj11377:_cd9992 = new _cd9992(2);
      
      public static const _ja3630:_cd9992 = new _cd9992(3);
      
      public static const _rv11305:_cd9992 = new _cd9992(4);
      
      public static const _iy6431:_cd9992 = new _cd9992(5);
      
      _xy6875(_cd9992);
      
      private var _tw12356:int;
      
      public function _cd9992(param1:int)
      {
         super();
         this._tw12356 = param1;
      }
      
      public static function _bn928(param1:int) : _cd9992
      {
         var _loc2_:_cd9992 = null;
         for each(_loc2_ in _cd9992._dy13189)
         {
            if(_loc2_._tv1901 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function get _dy13189() : Array
      {
         return [_as7636,_kj11377,_ja3630,_rv11305];
      }
      
      public function get _tv1901() : int
      {
         return this._tw12356;
      }
   }
}

