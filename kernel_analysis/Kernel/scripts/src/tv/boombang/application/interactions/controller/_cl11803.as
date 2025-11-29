package src.tv.boombang.application.interactions.controller
{
   import flash.events.Event;
   import flash.utils.*;
   import src.org.osflash.thunderbolt.*;
   import src.person._ta2443;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.interactions._ya5360;
   import src.tv.boombang.commons.interfaces.*;
   
   public class _cl11803 implements _jk15536
   {
      
      private var _bn4337:Dictionary;
      
      public function _cl11803()
      {
         this._bn4337 = new Dictionary();
         super();
      }
      
      public function destroy() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in this._bn4337)
         {
            this._bd2203(_loc1_);
         }
      }
      
      public function _br6591(param1:_ta2443, param2:_ta2443, param3:_ya5360) : void
      {
         if(param1 == null || Boolean(this._bn4337.hasOwnProperty(param1._md8722.id)))
         {
            _mr16168.warn("Trying to add more than one invitation to interact for the same person. Only the first one has been added.");
            return;
         }
         var _loc4_:_qv7383 = new _qv7383(param1,param2,param3);
         _loc4_.addEventListener(_qv7383._me1377,this._lm10531);
         _loc4_.addEventListener(_qv7383._xn13401,this._lm10531);
         this._bn4337[param1._md8722.id] = _loc4_;
      }
      
      public function _wq13594(param1:_ta2443) : void
      {
         if(param1 != null)
         {
            this._ig15650(param1);
         }
         else
         {
            _mr16168.warn("Could not remove invitation to interact");
         }
      }
      
      private function _lm10531(param1:Event) : void
      {
         var _loc2_:_qv7383 = param1.target as _qv7383;
         if(param1.type == _qv7383._me1377)
         {
            _yp4672._qj6199(_loc2_.type,_loc2_._ro10838._md8722._jr9311);
         }
         else if(param1.type == _qv7383._xn13401)
         {
            _yp4672._pf5514(_loc2_.type,_loc2_._ro10838._md8722._jr9311);
            this._ig15650(_loc2_._ro10838);
         }
      }
      
      private function _ig15650(param1:_ta2443) : void
      {
         this._bd2203(param1._md8722.id);
      }
      
      private function _bd2203(param1:int) : void
      {
         if(this._bn4337[param1] != null)
         {
            this._bn4337[param1].removeEventListener(_qv7383._me1377,this._lm10531);
            this._bn4337[param1].removeEventListener(_qv7383._xn13401,this._lm10531);
            this._bn4337[param1].destroy();
            delete this._bn4337[param1];
         }
         else
         {
            _mr16168.warn("Could not delete pending interaction (the interaction to remove is null)");
         }
      }
   }
}

