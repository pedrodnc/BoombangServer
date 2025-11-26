package src.tv.boombang.application.social.sharers
{
   import src.modules.bpad.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.social.datatypes.DatatypesModel;
   import src.tv.boombang.core.communications.*;
   
   public class SharersModel implements SharersModel
   {
      
      protected var _qr1106:Function;
      
      public function SharersModel()
      {
         super();
      }
      
      public function initialize(param1:Object = null) : void
      {
      }
      
      public function _si5405(param1:DatatypesModel, param2:Function = null) : void
      {
         this._qr1106 = param2;
         PacketBuilder.handleSocket(MessageTypeConstants.count48,this.update);
         if(param1._nv759)
         {
            Communications._dd3697(param1._nv759,Communications._rd1895);
         }
         else
         {
            BPadController._np546._fd10630(param1.message);
         }
      }
      
      private function update(param1:NetworkEventWrapper) : void
      {
         var count:int = int(param1._qp16092(1));
         var count3:int = int(param1._qp16092(2));
         if(count == MessageTypeConstants.count50)
         {
            if(this._qr1106 != null)
            {
               this._qr1106(param1.frame);
            }
            PacketBuilder.handleSocket1(MessageTypeConstants.count48,this.update);
         }
      }
   }
}

