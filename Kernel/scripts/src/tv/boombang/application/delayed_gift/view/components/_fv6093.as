package src.tv.boombang.application.delayed_gift.view.components
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.utils.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.*;
   
   public class _fv6093 extends _qy9375
   {
      
      public static const _ji6910:int = 60000;
      
      protected var _ut8264:_om4028;
      
      private var _cn11701:_om4028;
      
      private var _ge9132:_om4028;
      
      private var _lf15550:_om4028;
      
      private var _mn1004:MovieClip;
      
      private var _of8491:MovieClip;
      
      private var _kh16019:MovieClip;
      
      private var _um1964:Number;
      
      private var _cd2434:Timer;
      
      public function _fv6093(param1:MovieClip, param2:MovieClip)
      {
         this._kh16019 = param2;
         param1.addChildAt(this._kh16019,0);
         super(param1);
         addChild(_xo6614);
         this._kh16019.y = -157;
         this._kh16019.x = 5;
         this._kh16019.gotoAndStop(0);
         this._mn1004 = _xo6614["normalTooltip"];
         this._mn1004.visible = false;
         this._of8491 = _xo6614["openTooltip"];
         this._lf15550 = new _om4028(_xo6614["titleField"]);
         this._lf15550.txt = "lobby.delayedGifts.title";
         this._ut8264 = new _om4028(this._mn1004["descriptionField"]);
         this._ut8264.txt = "lobby.delayedGifts.nextGiftIn";
         this._cn11701 = new _om4028(this._mn1004["timerField"]);
         this._cn11701.txt = "loading...";
         this._ge9132 = new _om4028(this._of8491["openItField"]);
         this._ge9132.txt = "lobby.delayedGifts.openIt";
         this.enabled = false;
         addEventListener(MouseEvent.MOUSE_OVER,this._lc4144,false,0,true);
         addEventListener(MouseEvent.MOUSE_OUT,this._co2221,false,0,true);
         this._cd2434 = new Timer(5000,1);
         this._cd2434.addEventListener(TimerEvent.TIMER,this._do367);
         this._cd2434.start();
      }
      
      override public function destroy() : void
      {
         removeEventListener(MouseEvent.MOUSE_OVER,this._lc4144);
         removeEventListener(MouseEvent.MOUSE_OUT,this._co2221);
         if(this._cd2434 != null)
         {
            this._cd2434.removeEventListener(TimerEvent.TIMER,this._do367);
            this._cd2434 = null;
         }
      }
      
      override public function get enabled() : Boolean
      {
         return _xo6614.enabled;
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         super.enabled = param1;
         mouseEnabled = true;
         this._mn1004.visible = !param1;
         this._of8491.visible = param1;
         if(param1)
         {
            this._kh16019.play();
         }
         else
         {
            this._kh16019.gotoAndStop(0);
         }
         _xo6614.alpha = 1;
      }
      
      public function get _vq12979() : Number
      {
         return this._um1964;
      }
      
      public function set _vq12979(param1:Number) : void
      {
         this._um1964 = param1;
         this._cn11701.txt = _fg1060._mn8930._av6816(this._um1964);
         if(!this.enabled && this._um1964 <= _ji6910 && !this._mn1004.visible)
         {
            this._mn1004.visible = true;
         }
      }
      
      protected function _co2221(param1:MouseEvent) : void
      {
         if(!this.enabled && this._um1964 > _ji6910)
         {
            this._mn1004.visible = false;
         }
      }
      
      protected function _lc4144(param1:MouseEvent) : void
      {
         if(!this.enabled)
         {
            this._mn1004.visible = true;
         }
      }
      
      protected function _do367(param1:TimerEvent) : void
      {
         this._cd2434.removeEventListener(TimerEvent.TIMER,this._do367);
         if(!this.enabled && this._um1964 > _ji6910)
         {
            this._mn1004.visible = false;
         }
      }
   }
}

