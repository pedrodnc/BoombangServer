package src.tv.boombang.core.service_container.services.resource_management
{
   import src.tv.boombang.commons.utils._fh6432;
   
   public class _qs2112 extends _fh6432
   {
      
      public static const _au4855:_qs2112 = new _qs2112(["swf"]);
      
      public static const TEXT:_qs2112 = new _qs2112(["xml","txt","yml"]);
      
      public static const _vl3175:_qs2112 = new _qs2112(["jpg","jpeg","png","bmp"]);
      
      _xy6875(_qs2112);
      
      private var _mq9637:Array;
      
      public function _qs2112(param1:Array)
      {
         super();
         this._mq9637 = param1.concat();
      }
      
      public static function _sj14912(param1:String) : _qs2112
      {
         var _loc2_:_qs2112 = null;
         param1 = param1.toLowerCase();
         for each(_loc2_ in _qs2112._dy13189)
         {
            if(_loc2_._lu359.indexOf(param1) >= 0)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function get _dy13189() : Array
      {
         return [_au4855,TEXT,_vl3175];
      }
      
      public function get _lu359() : Array
      {
         return this._mq9637;
      }
   }
}

