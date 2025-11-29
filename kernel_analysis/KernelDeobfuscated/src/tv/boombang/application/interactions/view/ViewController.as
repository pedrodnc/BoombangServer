package src.tv.boombang.application.interactions.view
{
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.interactions.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class ViewController extends MovieClip
   {
      
      public static const textString:String = "acceptClickedEvent";
      
      public static const textString1:String = "rejectClickedEvent";
      
      private static const textString2:String = "scenario_gui_repository.swf";
      
      private var _aj16139:Dictionary;
      
      private var _gw13414:MovieClip;
      
      private var _ip134:InteractionsUtils;
      
      private var _sa10596:ComponentsModel;
      
      private var _ng5190:ComponentsModel;
      
      private var _ht10782:ComponentsView;
      
      private var _hp11997:Timer;
      
      public function ViewController(param1:InteractionsUtils)
      {
         this._aj16139 = new Dictionary();
         super();
         this._ip134 = param1;
         this._aj16139[InteractionsUtils._ov15204] = "KissIcon";
         this._aj16139[InteractionsUtils._vk7198] = "DrinkIcon";
         this._aj16139[InteractionsUtils._hd8501] = "FlowerIcon";
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029([textString2],this.onClick);
         this._hp11997 = new Timer(2500,1);
         this._hp11997.addEventListener(TimerEvent.TIMER,this._mj790,false,0,true);
      }
      
      public function destroy() : void
      {
         if(this._sa10596)
         {
            this._sa10596.removeEventListener(MouseEvent.CLICK,this._bc8168);
            this._sa10596.destroy();
            this._sa10596 = null;
         }
         if(this._ng5190)
         {
            this._ng5190.removeEventListener(MouseEvent.CLICK,this._fm3183);
            this._ng5190.destroy();
            this._ng5190 = null;
         }
         if(this._ht10782)
         {
            this._ht10782.destroy();
            this._ht10782 = null;
         }
         if(this._hp11997)
         {
            this._hp11997.stop();
            this._hp11997.removeEventListener(TimerEvent.TIMER,this._mj790);
            this._hp11997 = null;
         }
      }
      
      public function start() : void
      {
         (this._gw13414["iconContainer"] as MovieClip).visible = false;
         this._ht10782.visible = true;
         this._hp11997.start();
      }
      
      protected function _mj790(param1:TimerEvent) : void
      {
         (this._gw13414["iconContainer"] as MovieClip).visible = true;
         this._ht10782.visible = false;
      }
      
      private function onClick() : void
      {
         var count2:ResourceManager = ServiceLocator.get(ResourceManager) as ResourceManager;
         this._gw13414 = count2._bn15619(textString2,"InteractionTooltip");
         this._sa10596 = new ComponentsModel(this._gw13414["acceptButton"]);
         this._sa10596.addEventListener(MouseEvent.CLICK,this._bc8168,false,0,true);
         this._ng5190 = new ComponentsModel(this._gw13414["rejectButton"]);
         this._ng5190.addEventListener(MouseEvent.CLICK,this._fm3183,false,0,true);
         this._ht10782 = new ComponentsView(this._gw13414["warningTextfield"]);
         this._ht10782.visible = false;
         this._ht10782.txt = "gui.interactions.nextToMe";
         var count:MovieClip = count2._bn15619(textString2,this._aj16139[this._ip134]);
         (this._gw13414["iconContainer"] as MovieClip).addChild(count);
         addChild(this._gw13414);
      }
      
      protected function _fm3183(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(textString1));
      }
      
      protected function _bc8168(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(textString));
      }
   }
}

