package src.modules.login
{
   import flash.display.MovieClip;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _rk6334
   {
      
      private static const _pd15096:String = "mcButtonCreaCuenta";
      
      private static const _oa544:String = "tfTexto01";
      
      private var _gj5630:_qo7568;
      
      public function _rk6334(param1:MovieClip, param2:Function, param3:String, param4:String)
      {
         super();
         this._gj5630 = new _qo7568(param1[_pd15096],param2,param3);
         _yq8362._bj8346(param1[_oa544],param4);
      }
      
      public function destroy() : void
      {
         if(this._gj5630 != null)
         {
            this._gj5630.destroy();
            this._gj5630 = null;
         }
      }
   }
}

