package src.tv.boombang.application.social.authenticators
{
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.social.datatypes.*;
   import src.tv.boombang.core.communications.*;
   
   public class AuthenticatorsModel implements Authenticators
   {
      
      private var _gk8656:Function;
      
      public function AuthenticatorsModel()
      {
         super();
      }
      
      public function initialize(param1:Object = null) : void
      {
      }
      
      public function login(param1:Object = null, param2:Function = null) : void
      {
      }
      
      public function _wc542(param1:Object = null, param2:Function = null) : void
      {
         PacketBuilder._xo2736(MessageTypeConstants._ai13635,this._sk542);
         CommunicationsModel._kd7758(DatatypesModel._to2262,param1["username"],param1["password"]);
         this._gk8656 = param2;
      }
      
      public function logout() : void
      {
      }
      
      private function _sk542(param1:NetworkEventWrapper) : void
      {
         var _loc2_:int = 0;
         if(param1.flags[1] == MessageTypeConstants._al13400)
         {
            PacketBuilder._mw12849(MessageTypeConstants._ai13635,this._sk542);
            if(this._gk8656 != null)
            {
               _loc2_ = int(param1.items[0]);
               this._gk8656(DatatypesModel._to2262,_loc2_ == PacketBuilder._ad11893 ? true : false);
            }
         }
      }
   }
}

