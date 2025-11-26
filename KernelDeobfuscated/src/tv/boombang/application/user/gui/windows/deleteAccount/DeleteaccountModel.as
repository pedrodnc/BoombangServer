package src.tv.boombang.application.user.gui.windows.deleteAccount
{
   import src.allData.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class DeleteaccountModel extends UIWindow
   {
      
      public static const textString:String = "startStep";
      
      public static const textString1:String = "checkingKeyStep";
      
      public static const textString2:String = "wrongKeyStep";
      
      public static const textString3:String = "errorInProcessStep";
      
      public static const textString4:String = "confirmDeletionStep";
      
      public static const textString5:String = "deletingUserStep";
      
      public static const textString6:String = "processCompleteStep";
      
      private var textString7:String = "";
      
      public function DeleteaccountModel()
      {
         super();
         PacketBuilder.handleSocket(MessageTypeConstants.count28,this.update);
      }
      
      override protected function init() : void
      {
         switch(UserSession.getInstance()._uf6036)
         {
            case UserSession._ma6151:
               _wj9062._lt3848(DeleteaccountController.connect());
               return;
            case UserSession._kr15451:
               _wj9062._lt3848(DeleteaccountController.destroy2());
               return;
            case UserSession._lb6305:
               return;
            default:
               throw new Error("Unknown superkey status");
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         PacketBuilder.handleSocket1(MessageTypeConstants.count28,this.update);
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
               if(param2 == StepsView.textString1)
               {
                  _wj9062._lt3848(DeleteaccountController.loadData());
                  CommunicationsModel._pe4892(param3 as String,CommunicationsModel.count);
               }
               return;
            case textString4:
               if(param2 == StepsView.textString1)
               {
                  _wj9062._lt3848(DeleteaccountController.loadData1());
                  CommunicationsModel._bc5641(this.textString7);
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
            _wj9062._lt3848(DeleteaccountController.loadData2());
         }
         if(count == MessageTypeConstants.count34)
         {
            if(count3 == PacketBuilder.count)
            {
               this.textString7 = param1.items[2];
               _wj9062._lt3848(DeleteaccountController.destroy2());
            }
            else if(count3 == PacketBuilder.count1)
            {
               _wj9062._lt3848(DeleteaccountController.connect1());
            }
         }
         else if(count == MessageTypeConstants.count35)
         {
            if(count3 == PacketBuilder.count)
            {
               _wj9062._lt3848(DeleteaccountController.loadData2());
            }
            else if(count3 == PacketBuilder.count1)
            {
               _wj9062._lt3848(DeleteaccountController.loadData2());
            }
         }
      }
   }
}

