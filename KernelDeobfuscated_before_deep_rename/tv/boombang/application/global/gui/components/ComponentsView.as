package src.tv.boombang.application.global.gui.components
{
   import flash.display.MovieClip;
   import src.tv.boombang.core.*;
   import src.utils.*;
   
   public class ComponentsView extends ComponentsView
   {
      
      public function ComponentsView(param1:MovieClip, param2:Boolean = false)
      {
         super(param1,param2);
      }
      
      override public function set txt(param1:String) : void
      {
         if(!_mf14424)
         {
            UtilsUtils._bj8346(this._yf3562,param1);
         }
         else
         {
            this._yf3562.embedFonts = true;
            this._yf3562.htmlText = CoreModel._mn8930._ad13455(param1);
         }
      }
      
      public function get _dy3092() : Number
      {
         return this._yf3562.width;
      }
   }
}

