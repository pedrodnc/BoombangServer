package src.tv.boombang.application.global.gui.components
{
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import src.tv.boombang.commons.interfaces.*;
   
   public class _cm4000 extends MovieClip implements _jk15536
   {
      
      protected var _xo6614:MovieClip;
      
      protected var _hs13172:InteractiveObject = null;
      
      public function _cm4000(param1:MovieClip)
      {
         super();
         if(!param1)
         {
            throw new Error("UIComponent must have a Movieclip");
         }
         this._xo6614 = param1;
      }
      
      public function destroy() : void
      {
      }
      
      public function get view() : MovieClip
      {
         return this._xo6614;
      }
      
      public function get _jc13072() : Boolean
      {
         return this._hs13172 != null;
      }
      
      public function get _ou4931() : Boolean
      {
         return this._jc13072 && Boolean(this._hs13172.stage) && this._hs13172.stage.focus == this._hs13172;
      }
      
      public function set _ou4931(param1:Boolean) : void
      {
         if(this._jc13072 && Boolean(this._hs13172.stage))
         {
            if(param1)
            {
               this._hs13172.stage.focus = this._hs13172;
            }
            else if(this._hs13172.stage.focus == this._hs13172)
            {
               this._hs13172.stage.focus = null;
            }
         }
      }
      
      override public function get tabIndex() : int
      {
         return this._xo6614.tabIndex;
      }
      
      override public function set tabIndex(param1:int) : void
      {
         this._xo6614.tabIndex = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         this._xo6614.x = param1;
      }
      
      override public function get x() : Number
      {
         return this._xo6614.x;
      }
      
      override public function set y(param1:Number) : void
      {
         this._xo6614.y = param1;
      }
      
      override public function get y() : Number
      {
         return this._xo6614.y;
      }
      
      override public function get width() : Number
      {
         return this._xo6614.width;
      }
      
      override public function get height() : Number
      {
         return this._xo6614.height;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         this._xo6614.visible = param1;
      }
      
      override public function get visible() : Boolean
      {
         return this._xo6614.visible;
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         this._xo6614.enabled = param1;
      }
      
      override public function get enabled() : Boolean
      {
         return this._xo6614.enabled;
      }
   }
}

