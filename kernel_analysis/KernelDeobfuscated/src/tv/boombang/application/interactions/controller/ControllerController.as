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
         var count2:* = undefined;
         for(count2 in this._bn4337)
         {
            this.move(count2);
         }
      }
      
      public function _br6591(param1:PersonController, param2:PersonController, param3:InteractionsUtils) : void
      {
         if(param1 == null || Boolean(this._bn4337.hasOwnProperty(param1._md8722.id)))
         {
            ThunderboltModel.warn("Trying to add more than one invitation to interact for the same person. Only the first one has been added.");
            return;
         }
         var count1:ControllerController = new ControllerController(param1,param2,param3);
         count1.addEventListener(ControllerController._me1377,this._lm10531);
         count1.addEventListener(ControllerController._xn13401,this._lm10531);
         this._bn4337[param1._md8722.id] = count1;
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
         var count:ControllerController = param1.target as ControllerController;
         if(param1.type == ControllerController._me1377)
         {
            Communications._qj6199(count.type,count.render._md8722.count25);
         }
         else if(param1.type == ControllerController._xn13401)
         {
            Communications._pf5514(count.type,count.render._md8722.count25);
            this._ig15650(count.render);
         }
      }
      
      private function _ig15650(param1:PersonController) : void
      {
         this.move(param1._md8722.id);
      }
      
      private function move(param1:int) : void
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

