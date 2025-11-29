package src.tv.boombang.application.user.gui.windows.activateKey
{
   import flash.display.*;
   import src.allData.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.windows.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class ActivatekeyModel extends UIWindow
   {
      
      public static const textString:String = "sendingKeyStep";
      
      public static const textString1:String = "checkingKeyStep";
      
      public static const textString2:String = "errorKeyStep";
      
      public static const textString3:String = "okKeyStep";
      
      public function ActivatekeyModel()
      {
         super();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         PacketBuilder.handleSocket1(MessageTypeConstants.count28,this.update);
      }
      
      override protected function init() : void
      {
         var count2:ActivatekeyModel = new ActivatekeyModel(_cw8295("ActivateKeyForm") as MovieClip,ActivatekeyModel.textString);
         count2.title = "windows.activateKey.title";
         count2._xe10297 = WindowsView.TOP_RIGHT;
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
                  count1.title = "windows.activateKey.title";
                  count1.text = "windows.activateKey.activating";
                  count1._xe10297 = WindowsView.TOP_RIGHT;
                  _wj9062._lt3848(count1);
                  PacketBuilder.handleSocket(MessageTypeConstants.count28,this.update);
                  CommunicationsModel._fx9780(param3 as String);
               }
               return;
            default:
               return;
         }
      }
      
      protected function update(param1:NetworkEventWrapper) : void
      {
         var count:int = 0;
         var count3:WindowsView = null;
         var count1:WindowsView = null;
         var count2:int = int(param1._qp16092(1));
         if(count2 == MessageTypeConstants.count29)
         {
            count = int(param1.items[0]);
            if(count == PacketBuilder.count)
            {
               UserSession.getInstance()._uf6036 = UserSession._ma6151;
               count3 = new WindowsView(_cw8295("AcceptedDataCard") as MovieClip,textString3);
               count3.title = "windows.activateKey.title";
               count3.text = "windows.activateKey.securityKeyCorrect";
               count3._xe10297 = WindowsView.TOP_RIGHT;
               _wj9062._lt3848(count3);
            }
            else
            {
               count1 = new WindowsView(_cw8295("ErrorDataCard") as MovieClip,textString2);
               count1.title = "windows.activateKey.title";
               count1.text = "windows.checkingSecurityKey";
               count1._xe10297 = WindowsView.TOP_RIGHT;
               _wj9062._lt3848(count1);
            }
         }
      }
   }
}

