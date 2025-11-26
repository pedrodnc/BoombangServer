package src.tv.boombang.application.popup
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.utils.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.library.popup.*;
   
   public class PopupView extends MovieClip implements InterfacesView
   {
      
      public static const _lp12491:String = "reasonTime";
      
      public static const _bo736:String = "reasonString";
      
      public static const _mt5183:String = "reasonMission";
      
      private static const _ed6988:int = 8;
      
      private static const _qn7427:uint = 12463470;
      
      private var _gw13414:UIPanel;
      
      private var _timer:Timer;
      
      public function PopupView(param1:String, param2:int)
      {
         var _loc3_:String = null;
         super();
         if(param1 == _bo736)
         {
            _loc3_ = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("notification.popup.silverCoins.email",param2);
         }
         else if(param1 == _lp12491)
         {
            _loc3_ = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("notification.popup.silverCoins.time",param2);
         }
         else if(param1 == _mt5183)
         {
            _loc3_ = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("notification.popup.silverCoins.mission",param2);
         }
         else
         {
            _loc3_ = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("notification.popup.mission.single",param2);
         }
         this._gw13414 = new UIPanel();
         this._gw13414.textColor = 16777215;
         this._gw13414.backgroundColor = _qn7427;
         this._gw13414.text = _loc3_;
         this._gw13414.fontSize = 13;
         this._gw13414.cornerRadius = 10;
         this._gw13414._ui11624 = 90;
         this._gw13414._xe10297 = UITextField.BOTTOM;
         this._gw13414._sl14850();
         addChild(this._gw13414);
         x = 108;
         y = 565;
         mouseEnabled = false;
         mouseChildren = false;
         addEventListener(Event.ADDED_TO_STAGE,this._lb15297,false,0,true);
         this._timer = new Timer(5000,1);
         this._timer.addEventListener(TimerEvent.TIMER,this._qd10597,false,0,true);
      }
      
      public function destroy() : void
      {
         if(this._timer != null)
         {
            this._timer.stop();
            this._timer.removeEventListener(TimerEvent.TIMER,this._qd10597);
            this._timer = null;
         }
         removeEventListener(Event.ADDED_TO_STAGE,this._lb15297);
      }
      
      protected function _lb15297(param1:Event) : void
      {
         this._timer.start();
      }
      
      protected function _qd10597(param1:TimerEvent) : void
      {
         PopUpManager.removePopUp(this);
      }
      
      public function get view() : DisplayObject
      {
         return this;
      }
   }
}

