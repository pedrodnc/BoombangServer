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
   
   public class WindowsView extends UIWindow implements Interfaces
   {
      
      public static const _ny9524:String = "paymentMenu";
      
      private var _je14198:OperatorsConfigLoader;
      
      public function WindowsView()
      {
         super();
         PacketBuilder._xo2736(MessageTypeConstants._xc12683,this._sk542);
      }
      
      override public function destroy() : void
      {
         if(this._je14198)
         {
            this._je14198.removeEventListener(Event.COMPLETE,this._xb10354);
            this._je14198 = null;
         }
         PacketBuilder._mw12849(MessageTypeConstants._xc12683,this._sk542);
         super.destroy();
      }
      
      override protected function init() : void
      {
         var _loc1_:WindowsView = new WindowsView(_cw8295("PaymentsWindowLoader") as MovieClip,WindowsView._ny9524);
         _wj9062._lt3848(_loc1_);
         this._je14198 = new OperatorsConfigLoader();
         this._je14198.addEventListener(Event.COMPLETE,this._xb10354,false,0,true);
         this._je14198.init();
      }
      
      private function _xb10354(param1:Event) : void
      {
         this._je14198.removeEventListener(Event.COMPLETE,this._xb10354);
         CoreModel._oq4061.payments = this._je14198;
         var _loc2_:WindowsModel = new WindowsModel(_cw8295("PaymentsWindow") as MovieClip,WindowsView._ny9524);
         _loc2_.title = "window.payments.title";
         _wj9062._lt3848(_loc2_);
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == StepsView._by10560)
         {
            UIDialog.getInstance().remove(this);
         }
      }
      
      private function _sk542(param1:NetworkEventWrapper) : void
      {
         var _loc2_:int = int(param1._qp16092(1));
         if(_loc2_ == MessageTypeConstants._am15209)
         {
            UIDialog.getInstance().remove(this);
         }
      }
   }
}

