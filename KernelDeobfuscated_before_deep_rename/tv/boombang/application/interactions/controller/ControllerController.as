package src.tv.boombang.application.interactions.controller
{
   import flash.events.Event;
   import flash.utils.*;
   import src.org.osflash.thunderbolt.*;
   import src.person.PersonController;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.interactions.InteractionsUtils;
   import src.tv.boombang.commons.interfaces.*;
   
   public class ControllerController implements Interfaces
   {
      
      private var _bn4337:Dictionary;
      
      public function ControllerController()
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
      
      public function _br6591(param1:PersonController, param2:PersonController, param3:InteractionsUtils) : void
      {
         if(param1 == null || Boolean(this._bn4337.hasOwnProperty(param1._md8722.id)))
         {
            ThunderboltModel.warn("Trying to add more than one invitation to interact for the same person. Only the first one has been added.");
            return;
         }
         var _loc4_:ControllerController = new ControllerController(param1,param2,param3);
         _loc4_.addEventListener(ControllerController._me1377,this._lm10531);
         _loc4_.addEventListener(ControllerController._xn13401,this._lm10531);
         this._bn4337[param1._md8722.id] = _loc4_;
      }
      
      public function _wq13594(param1:PersonController) : void
      {
         if(param1 != null)
         {
            this._ig15650(param1);
         }
         else
         {
            ThunderboltModel.warn("Could not remove invitation to interact");
         }
      }
      
      private function _lm10531(param1:Event) : void
      {
         var _loc2_:ControllerController = param1.target as ControllerController;
         if(param1.type == ControllerController._me1377)
         {
            Communications._qj6199(_loc2_.type,_loc2_._ro10838._md8722._jr9311);
         }
         else if(param1.type == ControllerController._xn13401)
         {
            Communications._pf5514(_loc2_.type,_loc2_._ro10838._md8722._jr9311);
            this._ig15650(_loc2_._ro10838);
         }
      }
      
      private function _ig15650(param1:PersonController) : void
      {
         this._bd2203(param1._md8722.id);
      }
      
      private function _bd2203(param1:int) : void
      {
         if(this._bn4337[param1] != null)
         {
            this._bn4337[param1].removeEventListener(ControllerController._me1377,this._lm10531);
            this._bn4337[param1].removeEventListener(ControllerController._xn13401,this._lm10531);
            this._bn4337[param1].destroy();
            delete this._bn4337[param1];
         }
         else
         {
            ThunderboltModel.warn("Could not delete pending interaction (the interaction to remove is null)");
         }
      }
   }
}

