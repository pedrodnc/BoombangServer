package src.tv.boombang.core.datatypes
{
   import src.tv.boombang.commons.utils._fh6432;
   
   public class _rx12357 extends _fh6432
   {
      
      public static const _vr4238:_rx12357 = new _rx12357(-1);
      
      public static const _ma12303:_rx12357 = new _rx12357(0);
      
      public static const _gl13198:_rx12357 = new _rx12357(1);
      
      _xy6875(_rx12357);
      
      private var _id:int;
      
      public function _rx12357(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public static function _ob13942(param1:int) : _rx12357
      {
         var _loc2_:_rx12357 = null;
         for each(_loc2_ in _rx12357._dy13189)
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
         return [_vr4238,_ma12303,_gl13198];
      }
      
      public function get id() : int
      {
         return this._id;
      }
   }
}

