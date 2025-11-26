package src.tv.boombang.application.user.gui.windows.activateIntercambio
{
   import flash.display.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   import src.utils.*;
   
   public class ActivateintercambioView extends UIWindow
   {
      
      public static const textString:String = "startStep";
      
      public static const textString1:String = "checkingKeyStep";
      
      public static const textString2:String = "wrongKeyStep";
      
      public static const textString3:String = "errorInProcessStep";
      
      public static const textString4:String = "correctKeyStep";
      
      public function ActivateintercambioView()
      {
         super();
         PacketBuilder.handleSocket(MessageTypeConstants.count28,this.update);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         PacketBuilder.handleSocket1(MessageTypeConstants.count28,this.update);
      }
      
      override protected function init() : void
      {
         var count2:WindowsView = new WindowsView(_cw8295("KeyInputWindow") as MovieClip,textString);
         count2._oi4498(232,196);
         count2._ay2315();
         count2.title = "windows.exchange.exchangeTitle";
         count2.description = "windows.exchange.firstStepDescription";
         count2.label = "windows.securityKey";
         _wj9062._lt3848(count2);
      }
      
      override protected function move1(param1:String, param2:String, param3:Object) : void
      {
         var count1:WindowsView = null;
         if(param2 == StepsView.textString3)
         {
            UIDialog.getInstance().remove(this);
         }
         switch(param1)
         {
            case textString:
               if(param2 == StepsView.textString1)
               {
                  count1 = new WindowsView(_cw8295("SendingDataCard") as MovieClip,textString1);
                  count1.title = "windows.exchange.exchangeTitle";
                  count1.text = "windows.checkingSecurityKey";
                  count1._oi4498(232,196);
                  count1._ay2315();
                  _wj9062._lt3848(count1);
                  CommunicationsModel._pe4892(param3 as String,CommunicationsModel.count1);
               }
               return;
            default:
               return;
         }
      }
      
      protected function update(param1:NetworkEventWrapper) : void
      {
         var count:int = 0;
         var count3:String = null;
         var count1:* = false;
         var count2:int = int(param1._qp16092(1));
         if(count2 == MessageTypeConstants.count34)
         {
            count = int(param1.items[0]);
            if(count == PacketBuilder.count)
            {
               count3 = param1.items[2];
               CommunicationsModel._aq15017("1",count3);
            }
            else if(count == PacketBuilder.count1)
            {
               this._tq11663();
            }
            else
            {
               this._mf12348();
            }
         }
         if(count2 == MessageTypeConstants.count39)
         {
            count1 = param1.items[1] == 1;
            if(count1)
            {
               UIDialog.getInstance().remove(this);
            }
            else
            {
               this._tq11663();
            }
         }
      }
      
      private function _mf12348() : void
      {
         var count2:WindowsView = new WindowsView(_cw8295("ErrorDataCard") as MovieClip,textString1);
         count2.title = "windows.exchange.exchangeTitle";
         count2.text = "serverRespondedWithError";
         count2._oi4498(232,196);
         count2._ay2315();
         _wj9062._lt3848(count2);
      }
      
      private function _tq11663() : void
      {
         var count2:MovieClip = _cw8295("KeyInputWindow") as MovieClip;
         var count:WindowsView = new WindowsView(count2,textString);
         count._oi4498(232,196);
         count._ay2315();
         count.title = "windows.exchange.exchangeTitle";
         count.description = "windows.securityCodeWasIncorrect";
         UtilsUtils._np7275(count2["description"]["txt"],15466276);
         count.label = "windows.securityKey";
         _wj9062._lt3848(count);
      }
   }
}

