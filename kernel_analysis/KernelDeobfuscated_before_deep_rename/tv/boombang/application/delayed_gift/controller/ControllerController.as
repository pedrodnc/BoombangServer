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
      
      private static const _if5805:String = "delayed_gift_boxes.swf";
      
      private static const _yb11218:int = 9;
      
      private var _um300:Number;
      
      private var _cl6106:ComponentsView;
      
      private var _timer:Timer;
      
      private var _bn10461:int;
      
      public function ControllerController()
      {
         super();
         PacketBuilder._xo2736(MessageTypeConstants._js2213,this._sk542);
         Communications._er384();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         PacketBuilder._mw12849(MessageTypeConstants._js2213,this._sk542);
         if(this._timer)
         {
            this._timer.stop();
            this._timer.removeEventListener(TimerEvent.TIMER,this._xd16114);
            this._timer = null;
         }
         if(this._cl6106)
         {
            removeChild(this._cl6106);
            this._cl6106.removeEventListener(MouseEvent.CLICK,this._bg6386);
            this._cl6106 = null;
         }
      }
      
      protected function _sk542(param1:NetworkEventWrapper) : void
      {
         if(param1.flags[1] == MessageTypeConstants._ub15200 && param1.flags[2] == MessageTypeConstants._nl8312)
         {
            this._bn10461 = param1.items[2];
            if(param1.items[0] != PacketBuilder._qj7323 && this._bn10461 >= 0)
            {
               this.destroy();
               PacketBuilder._xo2736(MessageTypeConstants._js2213,this._sk542);
               this._um300 = param1.items[1] * 1000;
               this._av4579();
               this._timer = new Timer(1000);
               this._timer.addEventListener(TimerEvent.TIMER,this._xd16114);
               this._timer.start();
            }
            else
            {
               this.destroy();
            }
         }
         if(param1.flags[1] == MessageTypeConstants._ub15200 && param1.flags[2] == MessageTypeConstants._iy10251)
         {
            if(param1.items[0] != PacketBuilder._vd12313)
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
            if(this._um300 >= 0)
            {
               this._cl6106._vq12979 = this._um300;
            }
            if(this._um300 <= 0 && !this._cl6106.enabled)
            {
               this._cl6106.enabled = true;
            }
            if(this._um300 > 0 && Boolean(this._cl6106.enabled))
            {
               this._cl6106.enabled = false;
            }
         }
      }
      
      protected function _xd16114(param1:TimerEvent) : void
      {
         this._um300 -= (param1.target as Timer).delay;
         this.update();
      }
      
      protected function _bg6386(param1:MouseEvent) : void
      {
         Communications._qk1067();
      }
      
      protected function _av4579() : void
      {
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029([_if5805],this._pa12409);
      }
      
      protected function _pa12409() : void
      {
         var _loc1_:String = "Box" + this._bn10461 % _yb11218;
         this._cl6106 = new ComponentsView((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(_if5805,"DefaultGiftBox"),(ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619(_if5805,_loc1_));
         this._cl6106.addEventListener(MouseEvent.CLICK,this._bg6386,false,0,true);
         addChild(this._cl6106);
         this.update();
      }
   }
}

