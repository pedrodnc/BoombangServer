package src.tv.boombang.application.payments.gui.windows
{
   import flash.display.*;
   import flash.events.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.config.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class _rp11988 extends _lx1779 implements _jk15536
   {
      
      public static const _ny9524:String = "paymentMenu";
      
      private var _je14198:_vr1926;
      
      public function _rp11988()
      {
         super();
         _kr10933._xo2736(_te13472._xc12683,this._sk542);
      }
      
      override public function destroy() : void
      {
         if(this._je14198)
         {
            this._je14198.removeEventListener(Event.COMPLETE,this._xb10354);
            this._je14198 = null;
         }
         _kr10933._mw12849(_te13472._xc12683,this._sk542);
         super.destroy();
      }
      
      override protected function init() : void
      {
         var _loc1_:_ja3764 = new _ja3764(_cw8295("PaymentsWindowLoader") as MovieClip,_rp11988._ny9524);
         _wj9062._lt3848(_loc1_);
         this._je14198 = new _vr1926();
         this._je14198.addEventListener(Event.COMPLETE,this._xb10354,false,0,true);
         this._je14198.init();
      }
      
      private function _xb10354(param1:Event) : void
      {
         this._je14198.removeEventListener(Event.COMPLETE,this._xb10354);
         _fg1060._oq4061.payments = this._je14198;
         var _loc2_:_la12756 = new _la12756(_cw8295("PaymentsWindow") as MovieClip,_rp11988._ny9524);
         _loc2_.title = "window.payments.title";
         _wj9062._lt3848(_loc2_);
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == _pm4313._by10560)
         {
            _pr2018.getInstance().remove(this);
         }
      }
      
      private function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = int(param1._qp16092(1));
         if(_loc2_ == _te13472._am15209)
         {
            _pr2018.getInstance().remove(this);
         }
      }
   }
}

