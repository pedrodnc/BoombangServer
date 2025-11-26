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
      
      public static const textString:String = "paymentMenu";
      
      private var _je14198:OperatorsConfigLoader;
      
      public function WindowsView()
      {
         super();
         PacketBuilder.handleSocket(MessageTypeConstants.count59,this.update);
      }
      
      override public function destroy() : void
      {
         if(this._je14198)
         {
            this._je14198.removeEventListener(Event.COMPLETE,this.move);
            this._je14198 = null;
         }
         PacketBuilder.handleSocket1(MessageTypeConstants.count59,this.update);
         super.destroy();
      }
      
      override protected function init() : void
      {
         var count2:WindowsView = new WindowsView(_cw8295("PaymentsWindowLoader") as MovieClip,WindowsView.textString);
         _wj9062._lt3848(count2);
         this._je14198 = new OperatorsConfigLoader();
         this._je14198.addEventListener(Event.COMPLETE,this.move,false,0,true);
         this._je14198.init();
      }
      
      private function move(param1:Event) : void
      {
         this._je14198.removeEventListener(Event.COMPLETE,this.move);
         CoreModel._oq4061.payments = this._je14198;
         var count:WindowsModel = new WindowsModel(_cw8295("PaymentsWindow") as MovieClip,WindowsView.textString);
         count.title = "window.payments.title";
         _wj9062._lt3848(count);
      }
      
      override protected function move1(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == StepsView.textString3)
         {
            UIDialog.getInstance().remove(this);
         }
      }
      
      private function update(param1:NetworkEventWrapper) : void
      {
         var count:int = int(param1._qp16092(1));
         if(count == MessageTypeConstants.count62)
         {
            UIDialog.getInstance().remove(this);
         }
      }
   }
}

