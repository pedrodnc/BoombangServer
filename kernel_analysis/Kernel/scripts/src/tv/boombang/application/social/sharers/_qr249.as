package src.tv.boombang.application.social.sharers
{
   import src.modules.bpad.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.social.datatypes._vw5755;
   import src.tv.boombang.core.communications.*;
   
   public class _qr249 implements _of6728
   {
      
      protected var _qr1106:Function;
      
      public function _qr249()
      {
         super();
      }
      
      public function initialize(param1:Object = null) : void
      {
      }
      
      public function _si5405(param1:_vw5755, param2:Function = null) : void
      {
         this._qr1106 = param2;
         _kr10933._xo2736(_te13472._dt8491,this._sk542);
         if(param1._nv759)
         {
            _yv7531._dd3697(param1._nv759,_yv7531._rd1895);
         }
         else
         {
            _id1792._np546._fd10630(param1.message);
         }
      }
      
      private function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = int(param1._qp16092(1));
         var _loc3_:int = int(param1._qp16092(2));
         if(_loc2_ == _te13472._pa15796)
         {
            if(this._qr1106 != null)
            {
               this._qr1106(param1.frame);
            }
            _kr10933._mw12849(_te13472._dt8491,this._sk542);
         }
      }
   }
}

