package src.tv.boombang.application.delayed_gift.controller
{
   import flash.events.*;
   import flash.utils.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.delayed_gift.view.components.*;
   import src.tv.boombang.application.global.gui.components.UIButton;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class ControllerController extends UIButton implements Interfaces
   {
      
      private static const textString2:String = "delayed_gift_boxes.swf";
      
      private static const count:int = 9;
      
      private var count1:Number;
      
      private var _cl6106:ComponentsView;
      
      private var _timer:Timer;
      
      private var count2:int;
      
      public function ControllerController()
      {
         super();
         PacketBuilder.handleSocket(MessageTypeConstants.count1,this.update);
         Communications._er384();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         PacketBuilder.handleSocket1(MessageTypeConstants.count1,this.update);
         if(this._timer)
         {
            this._timer.stop();
            this._timer.removeEventListener(TimerEvent.TIMER,this.update);
            this._timer = null;
         }
         if(this._cl6106)
         {
            removeChild(this._cl6106);
            this._cl6106.removeEventListener(MouseEvent.CLICK,this._bg6386);
            this._cl6106 = null;
         }
      }
      
      protected function update(param1:NetworkEventWrapper) : void
      {
         if(param1.flags[1] == MessageTypeConstants.count9 && param1.flags[2] == MessageTypeConstants.count11)
         {
            this.count2 = param1.items[2];
            if(param1.items[0] != PacketBuilder.count2 && this.count2 >= 0)
            {
               this.destroy();
               PacketBuilder.handleSocket(MessageTypeConstants.count1,this.update);
               this.count1 = param1.items[1] * 1000;
               this._av4579();
               this._timer = new Timer(1000);
               this._timer.addEventListener(TimerEvent.TIMER,this.update);
               this._timer.start();
            }
            else
            {
               this.destroy();
            }
         }
         if(param1.flags[1] == MessageTypeConstants.count9 && param1.flags[2] == MessageTypeConstants.count12)
         {
            if(param1.items[0] != PacketBuilder.count1)
            {
               dispatchEvent(new Event(Event.COMPLETE));
               this.destroy();
            }
            else
            {
               Communications._er384();
            }
         }
      }
      
      private function update() : void
      {
         if(this._cl6106 != null)
         {
            if(this.count1 >= 0)
            {
               this._cl6106._vq12979 = this.count1;
            }
            if(this.count1 <= 0 && !this._cl6106.enabled)
            {
               this._cl6106.enabled = true;
            }
            if(this.count1 > 0 && Boolean(this._cl6106.enabled))
            {
               this._cl6106.enabled = false;
            }
         }
      }
      
      protected function update(param1:TimerEvent) : void
      {
         this.count1 -= (param1.target as Timer).delay;
         this.update();
      }
      
      protected function _bg6386(param1:MouseEvent) : void
      {
         Communications._qk1067();
      }
      
      protected function _av4579() : void
      {
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029([textString2],this.onClick);
      }
      
      protected function onClick() : void
      {
         var count2:String = "Box" + this.count2 % count;
         this._cl6106 = new ComponentsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(textString2,"DefaultGiftBox"),(ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(textString2,count2));
         this._cl6106.addEventListener(MouseEvent.CLICK,this._bg6386,false,0,true);
         addChild(this._cl6106);
         this.update();
      }
   }
}

