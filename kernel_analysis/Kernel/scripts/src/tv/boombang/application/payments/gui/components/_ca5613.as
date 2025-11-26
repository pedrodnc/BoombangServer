package src.tv.boombang.application.payments.gui.components
{
   import flash.display.*;
   import flash.events.MouseEvent;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.datatypes.payments._nv12424;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.list.*;
   
   public class _ca5613 extends _qy9375 implements _ck5955
   {
      
      public static const _ps111:String = "_selected";
      
      private var _ul12329:_ca11681;
      
      private var _df7699:_nv12424;
      
      private var _ab5116:MovieClip;
      
      private var _icon:_sv1981;
      
      private var _ok8084:_om4028;
      
      public function _ca5613()
      {
         _xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","PaymentButton") as MovieClip;
         super(_xo6614);
         this._ab5116 = _xo6614["iconContent"] as MovieClip;
         this._ok8084 = new _om4028(_xo6614["destIcon"] as MovieClip);
         this._ok8084.visible = false;
         addChild(_xo6614);
         this._ou4931 = false;
         this._ul12329 = new _ca11681();
         this._ul12329.textColor = 37882;
         this._ul12329.backgroundColor = 16777215;
         this._ul12329._ui11624 = 130;
         this._ul12329._xe10297 = _wk9007.BOTTOM;
         this._ul12329.x = _xo6614.width * 0.5 - 10;
      }
      
      public function set _os5347(param1:*) : void
      {
         this._df7699 = param1;
         this._icon = new _sv1981(this._df7699.type,this._df7699._vx2773);
         this._ab5116.addChild(this._icon);
         this._ul12329.text = "buttons.payments.tooltip." + this._df7699.type;
         this._ul12329._sl14850();
         if(this._df7699._bs1659)
         {
            this._ok8084.txt = "window.payments.dest";
            this._ok8084.visible = true;
         }
      }
      
      public function get _os5347() : *
      {
         return this._df7699;
      }
      
      override protected function _rt5195(param1:MouseEvent) : void
      {
         _xo6614.addChild(this._ul12329);
         super._rt5195(param1);
      }
      
      override protected function _qu5290(param1:MouseEvent) : void
      {
         if(_xo6614.contains(this._ul12329))
         {
            _xo6614.removeChild(this._ul12329);
         }
         super._qu5290(param1);
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
      
      override public function destroy() : void
      {
         this._icon.destroy();
         this._ul12329.destroy();
         super.destroy();
      }
   }
}

