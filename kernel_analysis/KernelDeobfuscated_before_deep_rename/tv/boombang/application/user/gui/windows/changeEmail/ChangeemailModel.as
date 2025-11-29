package src.tv.boombang.application.user.gui.windows.changeEmail
{
   import src.allData.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows.*;
   
   public class ChangeemailModel extends UIWindow
   {
      
      public static const _ql11306:String = "startStep";
      
      public static const _of6230:String = "checkingKeyStep";
      
      public static const _ef9526:String = "wrongKeyStep";
      
      public static const _fq1822:String = "errorInProcessStep";
      
      public static const _hs5173:String = "writeMailStep";
      
      public static const _gi14353:String = "sendingMailStep";
      
      public static const _jm9753:String = "sentMailStep";
      
      private var _mj8326:String = "";
      
      public function ChangeemailModel()
      {
         super();
         PacketBuilder._xo2736(MessageTypeConstants._ai13635,this._sk542);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         PacketBuilder._mw12849(MessageTypeConstants._ai13635,this._sk542);
      }
      
      override protected function init() : void
      {
         switch(UserSession.getInstance()._uf6036)
         {
            case UserSession._ma6151:
               _wj9062._lt3848(ChangeemailController._vx13870());
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
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         if(param2 == StepsView._by10560)
         {
            UIDialog.getInstance().remove(this);
         }
         switch(param1)
         {
            case _ql11306:
               if(param2 == "window_event_next_clicked")
               {
                  CommunicationsModel._pe4892(param3 as String,CommunicationsModel._eq214);
                  _wj9062._lt3848(ChangeemailController._em6871());
               }
               return;
            case _hs5173:
               if(param2 == "window_event_next_clicked")
               {
                  CommunicationsModel._vb2202(param3 as String,this._mj8326);
                  _wj9062._lt3848(ChangeemailController._cc11960());
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
            _wj9062._lt3848(ChangeemailController._sh10302());
         }
         if(_loc2_ == MessageTypeConstants._yj7183)
         {
            if(_loc3_ == PacketBuilder._ad11893)
            {
               this._mj8326 = param1.items[2];
               _wj9062._lt3848(ChangeemailController._cm1580());
            }
            else if(_loc3_ == PacketBuilder._vd12313)
            {
               _wj9062._lt3848(ChangeemailController._bc15262());
            }
         }
         else if(_loc2_ == MessageTypeConstants._us5937)
         {
            if(_loc3_ == PacketBuilder._ad11893)
            {
               _wj9062._lt3848(ChangeemailController._ij7779());
            }
            else if(_loc3_ == PacketBuilder._vd12313)
            {
               _wj9062._lt3848(ChangeemailController._cm1580());
            }
         }
      }
   }
}

