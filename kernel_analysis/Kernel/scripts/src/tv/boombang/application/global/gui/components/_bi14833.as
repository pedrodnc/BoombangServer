package src.tv.boombang.application.global.gui.components
{
   import flash.display.MovieClip;
   import src.tv.boombang.core.*;
   import src.utils.*;
   
   public class _bi14833 extends _om4028
   {
      
      private var _lx588:Object;
      
      public function _bi14833(param1:MovieClip, param2:Boolean = false)
      {
         super(param1,param2);
         this._lx588 = _xo6614.getChildByName("scrollBar") as Object;
      }
      
      override public function set txt(param1:String) : void
      {
         if(!_mf14424)
         {
            _yq8362._bj8346(this._yf3562,param1);
         }
         else
         {
            this._yf3562.embedFonts = true;
            this._yf3562.htmlText = _fg1060._mn8930._ad13455(param1);
         }
         this._vg3643();
      }
      
      override public function _bu2312() : void
      {
         super._bu2312();
         this._vg3643();
      }
      
      override public function _xq11642() : void
      {
         super._xq11642();
         this._vg3643();
      }
      
      private function _vg3643() : void
      {
         if(this._yf3562.textHeight > this._yf3562.height)
         {
            this._lx588.visible = true;
         }
         else
         {
            this._lx588.visible = false;
         }
      }
   }
}

