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
   
   public class _in2808 extends MovieClip implements _ck5955, _jk15536
   {
      
      public static const _ps111:String = "_selected";
      
      private var _ga3109:_kn4108;
      
      private var _yc11218:SimpleButton;
      
      private var _vs1499:SimpleButton;
      
      private var _mm9358:MovieClip;
      
      private var _md7805:MovieClip;
      
      private var _rg10258:MovieClip;
      
      private var _hu15056:MovieClip;
      
      private var _rs5327:MovieClip;
      
      private var _lb4424:MovieClip;
      
      private var _kf10026:MovieClip;
      
      private var _wa13332:Sprite;
      
      private var _qq7438:_om4028;
      
      private var _kc4744:_om4028;
      
      private var _xo6614:MovieClip;
      
      private var _xi899:Boolean = false;
      
      private var _vc2110:Array;
      
      public function _in2808()
      {
         super();
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","NavigationButtonList") as MovieClip;
         this._kf10026 = this._xo6614.getChildByName("channelButton") as MovieClip;
         this._xo6614.addEventListener(MouseEvent.MOUSE_OVER,this._rt5195,false,0,true);
         this._xo6614.addEventListener(MouseEvent.MOUSE_OUT,this._qu5290,false,0,true);
         this._kf10026.doubleClickEnabled = true;
         this._kf10026.mouseChildren = false;
         this._kf10026.addEventListener(MouseEvent.CLICK,this._fb10830,false,0,true);
         this._yc11218 = this._xo6614.getChildByName("lessButton") as SimpleButton;
         this._yc11218.visible = false;
         this._vs1499 = this._xo6614.getChildByName("moreButton") as SimpleButton;
         this._vs1499.visible = false;
         this._mm9358 = this._xo6614.getChildByName("eraseClick") as MovieClip;
         this._mm9358.visible = false;
         this._mm9358.buttonMode = true;
         this._md7805 = this._xo6614.getChildByName("favoriteClick") as MovieClip;
         this._md7805.visible = false;
         this._md7805.buttonMode = true;
         this._rg10258 = this._xo6614.getChildByName("worldIcon") as MovieClip;
         this._rg10258.visible = false;
         this._hu15056 = this._xo6614.getChildByName("islanIcon") as MovieClip;
         this._hu15056.visible = false;
         this._rs5327 = this._xo6614.getChildByName("houseIcon") as MovieClip;
         this._rs5327.visible = false;
         this._lb4424 = this._xo6614.getChildByName("gameIcon") as MovieClip;
         this._lb4424.visible = false;
         this._kc4744 = new _om4028(this._kf10026["title"] as MovieClip);
         this._qq7438 = new _om4028(this._kf10026["amount"] as MovieClip);
         addChild(this._xo6614);
         this._xo6614._ou4931 = false;
      }
      
      public function set _os5347(param1:*) : void
      {
         this._ga3109 = param1;
         this._kc4744.txt = this._ga3109.name;
         this._wc12632 = this._ga3109._sc1342.toString();
         switch(this._ga3109._ls5877)
         {
            case _hj3512._io5446:
            case _hj3512._dd9260:
               this._kf10026["title"].x = 18;
               this._vs1499.visible = false;
               this._vs1499.addEventListener(MouseEvent.CLICK,this._yb11501,false,0,true);
               break;
            case _hj3512._uq6151:
               this._hu15056.visible = true;
               break;
            case _hj3512._jn8033:
               this._rs5327.visible = true;
         }
         if(this._ga3109._ks12861 == _cd9992._ja3630)
         {
            this._lb4424.visible = true;
         }
         this._kc4744.visible = true;
         this._qq7438.visible = true;
      }
      
      public function set _wc12632(param1:String) : void
      {
         this._qq7438.txt = param1;
      }
      
      private function _qs8594(param1:MouseEvent) : void
      {
         if(this._ga3109._ls5877 == _hj3512._uq6151)
         {
            dispatchEvent(new _pw5334(_pw5334._ga9624,this._os5347));
         }
         else if(this._ga3109._ls5877 == _hj3512._jn8033)
         {
            dispatchEvent(new _pw5334(_pw5334._yp5143,this._os5347));
         }
         this._ga3109._si7985 = true;
         this._md7805.visible = false;
         this._md7805.removeEventListener(MouseEvent.CLICK,this._qs8594);
         this._mm9358.visible = true;
         this._mm9358.addEventListener(MouseEvent.CLICK,this._af14676,false,0,true);
      }
      
      private function _af14676(param1:MouseEvent) : void
      {
         if(this._ga3109._ls5877 == _hj3512._uq6151)
         {
            dispatchEvent(new _pw5334(_pw5334._fq13518,this._os5347));
         }
         else if(this._ga3109._ls5877 == _hj3512._jn8033)
         {
            dispatchEvent(new _pw5334(_pw5334._le63,this._os5347));
         }
         this._ga3109._si7985 = false;
         this._md7805.visible = true;
         this._md7805.addEventListener(MouseEvent.CLICK,this._qs8594,false,0,true);
         this._mm9358.visible = false;
         this._mm9358.removeEventListener(MouseEvent.CLICK,this._af14676);
      }
      
      private function _am8312(param1:MouseEvent) : void
      {
         this._yc11218.removeEventListener(MouseEvent.CLICK,this._am8312);
         this._yc11218.visible = false;
         dispatchEvent(new _pw5334(_pw5334._qk12217,this._os5347));
      }
      
      private function _yb11501(param1:MouseEvent) : void
      {
         this._vs1499.removeEventListener(MouseEvent.CLICK,this._yb11501);
         this._vs1499.visible = false;
         dispatchEvent(new _pw5334(_pw5334._ql15838,this._os5347));
      }
      
      public function _lv11754(param1:Array, param2:Sprite) : void
      {
         if(this._vc2110)
         {
            this._vc2110 = null;
         }
         this._vc2110 = param1;
         if(this._wa13332)
         {
            this._xo6614.removeChild(this._wa13332);
            this._wa13332 = null;
         }
         this._wa13332 = param2;
         this._wa13332.x = 28;
         this._wa13332.y = this._kf10026.height + 2;
         this._xo6614.addChild(this._wa13332);
         this._yc11218.addEventListener(MouseEvent.CLICK,this._am8312,false,0,true);
         this._yc11218.visible = true;
      }
      
      public function _km4596() : void
      {
         if(this._wa13332)
         {
            this._xo6614.removeChild(this._wa13332);
            this._wa13332 = null;
         }
         if(this._vc2110)
         {
            this._vc2110 = null;
         }
         this._vs1499.addEventListener(MouseEvent.CLICK,this._yb11501,false,0,true);
         this._vs1499.visible = true;
      }
      
      private function _fb10830(param1:MouseEvent) : void
      {
         switch(this._ga3109._ls5877)
         {
            case _hj3512._io5446:
            case _hj3512._dd9260:
               dispatchEvent(new _pw5334(_pw5334._ha16012,this._os5347));
               return;
            case _hj3512._uq6151:
               dispatchEvent(new _pw5334(_pw5334._dt4861,this._os5347));
               return;
            case _hj3512._jn8033:
               dispatchEvent(new _pw5334(_pw5334._eu6579,this._os5347));
               return;
            default:
               return;
         }
      }
      
      private function _rt5195(param1:MouseEvent) : void
      {
         this._kf10026.gotoAndStop("_over");
         if(this._ga3109._ls5877 == _hj3512._uq6151 || this._ga3109._ls5877 == _hj3512._jn8033)
         {
            if(this._ga3109._si7985)
            {
               this._mm9358.visible = true;
               this._mm9358.addEventListener(MouseEvent.CLICK,this._af14676,false,0,true);
            }
            else
            {
               this._md7805.visible = true;
               this._md7805.addEventListener(MouseEvent.CLICK,this._qs8594,false,0,true);
            }
         }
      }
      
      private function _qu5290(param1:MouseEvent) : void
      {
         this._mm9358.visible = false;
         this._mm9358.removeEventListener(MouseEvent.CLICK,this._af14676);
         this._md7805.visible = false;
         this._md7805.removeEventListener(MouseEvent.CLICK,this._qs8594);
         this._kf10026.gotoAndStop("_up");
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
      
      public function get _ab7902() : Sprite
      {
         return this._wa13332;
      }
      
      public function get _mg4710() : Array
      {
         return this._vc2110;
      }
      
      public function destroy() : void
      {
         if(this._kc4744)
         {
            this._kc4744.destroy();
         }
         if(this._qq7438)
         {
            this._qq7438.destroy();
         }
         this._kc4744 = null;
         this._qq7438 = null;
         this._mm9358.removeEventListener(MouseEvent.CLICK,this._af14676);
         this._md7805.removeEventListener(MouseEvent.CLICK,this._qs8594);
         this._xo6614.removeEventListener(MouseEvent.MOUSE_OVER,this._rt5195);
         this._xo6614.removeEventListener(MouseEvent.MOUSE_OUT,this._qu5290);
         this._xo6614.removeEventListener(MouseEvent.CLICK,this._fb10830);
      }
   }
}

