package src.tv.boombang.application.delayed_gift.view.components
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.utils.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.core.*;
   
   public class ComponentsView extends ComponentsModel
   {
      
      public static const count:int = 60000;
      
      protected var _ut8264:ComponentsView;
      
      private var _cn11701:ComponentsView;
      
      private var _ge9132:ComponentsView;
      
      private var _lf15550:ComponentsView;
      
      private var _mn1004:MovieClip;
      
      private var _of8491:MovieClip;
      
      private var _kh16019:MovieClip;
      
      private var count1:Number;
      
      private var _cd2434:Timer;
      
      public function ComponentsView(param1:MovieClip, param2:MovieClip)
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
         this._lf15550 = new ComponentsView(_xo6614["titleField"]);
         this._lf15550.txt = "lobby.delayedGifts.title";
         this._ut8264 = new ComponentsView(this._mn1004["descriptionField"]);
         this._ut8264.txt = "lobby.delayedGifts.nextGiftIn";
         this._cn11701 = new ComponentsView(this._mn1004["timerField"]);
         this._cn11701.txt = "loading...";
         this._ge9132 = new ComponentsView(this._of8491["openItField"]);
         this._ge9132.txt = "lobby.delayedGifts.openIt";
         this.enabled = false;
         addEventListener(MouseEvent.MOUSE_OVER,this._lc4144,false,0,true);
         addEventListener(MouseEvent.MOUSE_OUT,this._co2221,false,0,true);
         this._cd2434 = new Timer(5000,1);
         this._cd2434.addEventListener(TimerEvent.TIMER,this.move);
         this._cd2434.start();
      }
      
      override public function destroy() : void
      {
         removeEventListener(MouseEvent.MOUSE_OVER,this._lc4144);
         removeEventListener(MouseEvent.MOUSE_OUT,this._co2221);
         if(this._cd2434 != null)
         {
            this._cd2434.removeEventListener(TimerEvent.TIMER,this.move);
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
         return this.count1;
      }
      
      public function set _vq12979(param1:Number) : void
      {
         this.count1 = param1;
         this._cn11701.txt = CoreModel._mn8930.getString(this.count1);
         if(!this.enabled && this.count1 <= count && !this._mn1004.visible)
         {
            this._mn1004.visible = true;
         }
      }
      
      protected function _co2221(param1:MouseEvent) : void
      {
         if(!this.enabled && this.count1 > count)
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
      
      protected function move(param1:TimerEvent) : void
      {
         this._cd2434.removeEventListener(TimerEvent.TIMER,this.move);
         if(!this.enabled && this.count1 > count)
         {
            this._mn1004.visible = false;
         }
      }
   }
}

