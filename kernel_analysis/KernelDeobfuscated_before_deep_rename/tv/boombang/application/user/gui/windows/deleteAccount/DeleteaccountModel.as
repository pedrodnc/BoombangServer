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
      
      public static const _ql11306:String = "startStep";
      
      public static const _of6230:String = "checkingKeyStep";
      
      public static const _ef9526:String = "wrongKeyStep";
      
      public static const _fq1822:String = "errorInProcessStep";
      
      public static const _kf198:String = "confirmDeletionStep";
      
      public static const _by4099:String = "deletingUserStep";
      
      public static const _sx7781:String = "processCompleteStep";
      
      private var _mj8326:String = "";
      
      public function DeleteaccountModel()
      {
         super();
         PacketBuilder._xo2736(MessageTypeConstants._ai13635,this._sk542);
      }
      
      override protected function init() : void
      {
         switch(UserSession.getInstance()._uf6036)
         {
            case UserSession._ma6151:
               _wj9062._lt3848(DeleteaccountController._vx13870());
               return;
            case UserSession._kr15451:
               _wj9062._lt3848(DeleteaccountController._nh2269());
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
         PacketBuilder._mw12849(MessageTypeConstants._ai13635,this._sk542);
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == StepsView._by10560)
         {
            UIDialog.getInstance().remove(this);
         }
         switch(param1)
         {
            case _ql11306:
               if(param2 == StepsView._dh1979)
               {
                  _wj9062._lt3848(DeleteaccountController._em6871());
                  CommunicationsModel._pe4892(param3 as String,CommunicationsModel._ll8378);
               }
               return;
            case _kf198:
               if(param2 == StepsView._dh1979)
               {
                  _wj9062._lt3848(DeleteaccountController._ue9620());
                  CommunicationsModel._bc5641(this._mj8326);
               }
               return;
            default:
               return;
         }
      }
      
      protected function _sk542(param1:NetworkEventWrapper) : void
      {
         var _loc2_:int = int(param1._qp16092(1));
         var _loc3_:int = int(param1.items[0]);
         if(_loc3_ == PacketBuilder._qj7323)
         {
            _wj9062._lt3848(DeleteaccountController._sh10302());
         }
         if(_loc2_ == MessageTypeConstants._yj7183)
         {
            if(_loc3_ == PacketBuilder._ad11893)
            {
               this._mj8326 = param1.items[2];
               _wj9062._lt3848(DeleteaccountController._nh2269());
            }
            else if(_loc3_ == PacketBuilder._vd12313)
            {
               _wj9062._lt3848(DeleteaccountController._bc15262());
            }
         }
         else if(_loc2_ == MessageTypeConstants._qx14014)
         {
            if(_loc3_ == PacketBuilder._ad11893)
            {
               _wj9062._lt3848(DeleteaccountController._ij7779());
            }
            else if(_loc3_ == PacketBuilder._vd12313)
            {
               _wj9062._lt3848(DeleteaccountController._sh10302());
            }
         }
      }
   }
}

