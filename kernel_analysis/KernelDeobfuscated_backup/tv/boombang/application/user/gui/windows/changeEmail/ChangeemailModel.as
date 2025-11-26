package src.tv.boombang.application.user.gui.windows.changeEmail
{
   import src.allData.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class _ms3955 extends _lx1779
   {
      
      public static const _ql11306:String = "startStep";
      
      public static const _of6230:String = "checkingKeyStep";
      
      public static const _ef9526:String = "wrongKeyStep";
      
      public static const _fq1822:String = "errorInProcessStep";
      
      public static const _hs5173:String = "writeMailStep";
      
      public static const _gi14353:String = "sendingMailStep";
      
      public static const _jm9753:String = "sentMailStep";
      
      private var _mj8326:String = "";
      
      public function _ms3955()
      {
         super();
         _kr10933._xo2736(_te13472._ai13635,this._sk542);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _kr10933._mw12849(_te13472._ai13635,this._sk542);
      }
      
      override protected function init() : void
      {
         switch(_hv12530.getInstance()._uf6036)
         {
            case _hv12530._ma6151:
               _wj9062._lt3848(_hs15823._vx13870());
               return;
            case _hv12530._kr15451:
               _wj9062._lt3848(_hs15823._cm1580());
               return;
            case _hv12530._lb6305:
               return;
            default:
               throw new Error("Unknown superkey status");
         }
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == _pm4313._by10560)
         {
            _pr2018.getInstance().remove(this);
         }
         switch(param1)
         {
            case _ql11306:
               if(param2 == "window_event_next_clicked")
               {
                  _ld5065._pe4892(param3 as String,_ld5065._eq214);
                  _wj9062._lt3848(_hs15823._em6871());
               }
               return;
            case _hs5173:
               if(param2 == "window_event_next_clicked")
               {
                  _ld5065._vb2202(param3 as String,this._mj8326);
                  _wj9062._lt3848(_hs15823._cc11960());
               }
               return;
            default:
               return;
         }
      }
      
      protected function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = int(param1._qp16092(1));
         var _loc3_:int = int(param1.items[0]);
         if(_loc3_ == _kr10933._qj7323)
         {
            _wj9062._lt3848(_hs15823._sh10302());
         }
         if(_loc2_ == _te13472._yj7183)
         {
            if(_loc3_ == _kr10933._ad11893)
            {
               this._mj8326 = param1.items[2];
               _wj9062._lt3848(_hs15823._cm1580());
            }
            else if(_loc3_ == _kr10933._vd12313)
            {
               _wj9062._lt3848(_hs15823._bc15262());
            }
         }
         else if(_loc2_ == _te13472._us5937)
         {
            if(_loc3_ == _kr10933._ad11893)
            {
               _wj9062._lt3848(_hs15823._ij7779());
            }
            else if(_loc3_ == _kr10933._vd12313)
            {
               _wj9062._lt3848(_hs15823._cm1580());
            }
         }
      }
   }
}

