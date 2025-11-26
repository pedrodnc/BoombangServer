package src.tv.boombang.application.user.gui.windows.changeEmail
{
   import src.allData.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class ChangeemailModel extends UIWindow
   {
      
      public static const textString:String = "startStep";
      
      public static const textString1:String = "checkingKeyStep";
      
      public static const textString2:String = "wrongKeyStep";
      
      public static const textString3:String = "errorInProcessStep";
      
      public static const textString4:String = "writeMailStep";
      
      public static const textString5:String = "sendingMailStep";
      
      public static const textString6:String = "sentMailStep";
      
      private var textString7:String = "";
      
      public function ChangeemailModel()
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
         switch(UserSession.getInstance()._uf6036)
         {
            case UserSession._ma6151:
               _wj9062._lt3848(ChangeemailController.connect());
               return;
            case UserSession._kr15451:
               _wj9062._lt3848(ChangeemailController._cm1580());
               return;
            case UserSession._lb6305:
               return;
            default:
               throw new Error("Unknown superkey status");
         }
      }
      
      override protected function move1(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == StepsView.textString3)
         {
            UIDialog.getInstance().remove(this);
         }
         switch(param1)
         {
            case textString:
               if(param2 == "window_event_next_clicked")
               {
                  CommunicationsModel._pe4892(param3 as String,CommunicationsModel.count3);
                  _wj9062._lt3848(ChangeemailController.loadData());
               }
               return;
            case textString4:
               if(param2 == "window_event_next_clicked")
               {
                  CommunicationsModel._vb2202(param3 as String,this.textString7);
                  _wj9062._lt3848(ChangeemailController.loadData1());
               }
               return;
            default:
               return;
         }
      }
      
      protected function update(param1:NetworkEventWrapper) : void
      {
         var count:int = int(param1._qp16092(1));
         var count3:int = int(param1.items[0]);
         if(count3 == PacketBuilder.count2)
         {
            _wj9062._lt3848(ChangeemailController.loadData2());
         }
         if(count == MessageTypeConstants.count34)
         {
            if(count3 == PacketBuilder.count)
            {
               this.textString7 = param1.items[2];
               _wj9062._lt3848(ChangeemailController._cm1580());
            }
            else if(count3 == PacketBuilder.count1)
            {
               _wj9062._lt3848(ChangeemailController.connect1());
            }
         }
         else if(count == MessageTypeConstants.count37)
         {
            if(count3 == PacketBuilder.count)
            {
               _wj9062._lt3848(ChangeemailController.loadData2());
            }
            else if(count3 == PacketBuilder.count1)
            {
               _wj9062._lt3848(ChangeemailController._cm1580());
            }
         }
      }
   }
}

