package src.tv.boombang.application.navigation.gui.components
{
   import flash.display.*;
   import flash.events.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.navigation.events.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.navigationMenu.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.list.*;
   import src.utils.*;
   
   public class _nh909 extends MovieClip implements _ck5955, _jk15536
   {
      
      public static const _ps111:String = "_selected";
      
      private var _ga3109:_kn4108;
      
      private var _kf10026:MovieClip;
      
      private var _qq7438:_om4028;
      
      private var _kc4744:_om4028;
      
      private var _xo6614:MovieClip;
      
      public function _nh909()
      {
         super();
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","NavigationButtonSubList") as MovieClip;
         this._kf10026 = this._xo6614.getChildByName("channelButton") as MovieClip;
         this._xo6614.buttonMode = true;
         this._xo6614.addEventListener(MouseEvent.MOUSE_OVER,this._rt5195,false,0,true);
         this._xo6614.addEventListener(MouseEvent.MOUSE_OUT,this._qu5290,false,0,true);
         this._kf10026.doubleClickEnabled = true;
         this._kf10026.mouseChildren = false;
         this._kf10026.addEventListener(MouseEvent.CLICK,this._fb10830,false,0,true);
         this._kc4744 = new _om4028(this._kf10026["title"] as MovieClip);
         this._qq7438 = new _om4028(this._kf10026["amount"] as MovieClip);
         addChild(this._xo6614);
         this._xo6614._ou4931 = false;
      }
      
      public function set _os5347(param1:*) : void
      {
         this._ga3109 = param1;
         this._kc4744.txt = this._ga3109.name;
         this._kc4744.visible = true;
         this._qq7438.txt = this._ga3109._sc1342.toString();
         this._qq7438.visible = true;
         if(this._ga3109._sc1342 >= this._ga3109._rx11081)
         {
            _xv14798._ts14032(this._kf10026["amountBack"],16737792);
            this._kf10026.removeEventListener(MouseEvent.CLICK,this._fb10830);
         }
      }
      
      private function _fb10830(param1:MouseEvent) : void
      {
         switch(this._ga3109._ks12861)
         {
            case _cd9992._as7636:
            case _cd9992._ja3630:
               dispatchEvent(new _pw5334(_pw5334._eh6046,this._os5347));
               return;
            default:
               return;
         }
      }
      
      private function _rt5195(param1:MouseEvent) : void
      {
         this._kf10026.gotoAndStop("_over");
         if(this._ga3109._sc1342 >= this._ga3109._rx11081)
         {
            this._kc4744.txt = "navigationMenu.buttons.areaFull";
         }
      }
      
      private function _qu5290(param1:MouseEvent) : void
      {
         this._kf10026.gotoAndStop("_up");
         this._kc4744.txt = this._ga3109.name;
      }
      
      public function get _os5347() : *
      {
         return this._ga3109;
      }
      
      public function selectedItem() : void
      {
         this.enabled = false;
         this._xo6614.gotoAndStop(_ps111);
         this._xo6614.alpha = 1;
      }
      
      public function _hs7892() : void
      {
         this.enabled = true;
      }
      
      public function destroy() : void
      {
         this._kc4744.destroy();
         this._qq7438.destroy();
         this._kc4744 = null;
         this._qq7438 = null;
         this._xo6614.removeEventListener(MouseEvent.MOUSE_OVER,this._rt5195);
         this._xo6614.removeEventListener(MouseEvent.MOUSE_OUT,this._qu5290);
         this._kf10026.removeEventListener(MouseEvent.CLICK,this._fb10830);
      }
   }
}

