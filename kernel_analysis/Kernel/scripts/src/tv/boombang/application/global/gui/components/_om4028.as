package src.tv.boombang.application.global.gui.components
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.tv.boombang.core.*;
   import src.utils.*;
   
   public class _om4028 extends MovieClip
   {
      
      protected var _xo6614:MovieClip;
      
      protected var _yf3562:TextField;
      
      protected var _mf14424:Boolean;
      
      public function _om4028(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this._xo6614 = param1;
         this._yf3562 = this._xo6614.getChildByName("txt") as TextField;
         this._mf14424 = param2;
      }
      
      public function set txt(param1:String) : void
      {
         if(!this._mf14424)
         {
            _yq8362._xl9503(this._yf3562,param1);
         }
         else
         {
            this._yf3562.embedFonts = true;
            this._yf3562.text = _fg1060._mn8930._ad13455(param1);
         }
      }
      
      public function get txt() : String
      {
         return this._yf3562.text;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         this._xo6614.visible = param1;
      }
      
      override public function get visible() : Boolean
      {
         return this._xo6614.visible;
      }
      
      public function set color(param1:uint) : void
      {
         _xv14798._ts14032(this._yf3562,param1);
      }
      
      public function set fontSize(param1:uint) : void
      {
         _yq8362._xc14382(this._yf3562,param1);
      }
      
      public function _oi4498(param1:Number = 0, param2:Number = 0) : void
      {
         if(param1 != 0)
         {
            this._yf3562.width = param1;
         }
         if(param2 != 0)
         {
            this._yf3562.height = param2;
         }
      }
      
      public function _im767() : void
      {
         this._bu2312();
         this._xq11642();
      }
      
      public function _bu2312() : void
      {
         this._yf3562.height = this._yf3562.textHeight + 10;
      }
      
      public function _xq11642() : void
      {
         this._yf3562.width = this._yf3562.textWidth + 10;
      }
      
      public function destroy() : void
      {
      }
      
      public function get view() : MovieClip
      {
         return this._xo6614;
      }
      
      public function set view(param1:MovieClip) : void
      {
         this._xo6614 = param1;
      }
   }
}

