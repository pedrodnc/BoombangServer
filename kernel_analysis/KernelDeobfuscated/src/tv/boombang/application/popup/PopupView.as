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
      
      public static const textString:String = "reasonTime";
      
      public static const textString1:String = "reasonString";
      
      public static const textString2:String = "reasonMission";
      
      private static const count:int = 8;
      
      private static const _qn7427:uint = 12463470;
      
      private var _gw13414:UIPanel;
      
      private var _timer:Timer;
      
      public function PopupView(param1:String, param2:int)
      {
         var count3:String = null;
         super();
         if(param1 == textString1)
         {
            count3 = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("notification.popup.silverCoins.email",param2);
         }
         else if(param1 == textString)
         {
            count3 = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("notification.popup.silverCoins.time",param2);
         }
         else if(param1 == textString2)
         {
            count3 = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("notification.popup.silverCoins.mission",param2);
         }
         else
         {
            count3 = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("notification.popup.mission.single",param2);
         }
         this._gw13414 = new UIPanel();
         this._gw13414.textColor = 16777215;
         this._gw13414.backgroundColor = _qn7427;
         this._gw13414.text = count3;
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
         addEventListener(Event.ADDED_TO_STAGE,this.start,false,0,true);
         this._timer = new Timer(5000,1);
         this._timer.addEventListener(TimerEvent.TIMER,this.move,false,0,true);
      }
      
      public function destroy() : void
      {
         if(this._timer != null)
         {
            this._timer.stop();
            this._timer.removeEventListener(TimerEvent.TIMER,this.move);
            this._timer = null;
         }
         removeEventListener(Event.ADDED_TO_STAGE,this.start);
      }
      
      protected function start(param1:Event) : void
      {
         this._timer.start();
      }
      
      protected function move(param1:TimerEvent) : void
      {
         PopUpManager.removePopUp(this);
      }
      
      public function get view() : DisplayObject
      {
         return this;
      }
   }
}

