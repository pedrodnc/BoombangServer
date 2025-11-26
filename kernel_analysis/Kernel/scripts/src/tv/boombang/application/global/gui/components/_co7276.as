package src.tv.boombang.application.global.gui.components
{
   import flash.display.MovieClip;
   import flash.events.*;
   
   public class _co7276 extends _cm4000
   {
      
      private var _selected:Boolean = false;
      
      public function _co7276(param1:MovieClip)
      {
         super(param1);
         _xo6614.mouseChildren = false;
         _xo6614.buttonMode = true;
         _xo6614.useHandCursor = true;
         _xo6614.addEventListener(MouseEvent.CLICK,this._st14759,false,0,true);
         _xo6614.addEventListener(MouseEvent.MOUSE_OUT,this._qu5290,false,0,true);
         _xo6614.addEventListener(MouseEvent.MOUSE_OVER,this._rt5195,false,0,true);
      }
      
      private function _st14759(param1:MouseEvent) : void
      {
         this.selected = !this.selected;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this._selected = param1;
         if(param1)
         {
            _xo6614.gotoAndStop("_down");
         }
         else
         {
            _xo6614.gotoAndStop("_up");
         }
      }
      
      public function get selected() : Boolean
      {
         return this._selected;
      }
      
      private function _rt5195(param1:MouseEvent) : void
      {
         _xo6614.gotoAndStop("_over");
      }
      
      private function _qu5290(param1:MouseEvent) : void
      {
         if(this.selected)
         {
            _xo6614.gotoAndStop("_down");
         }
         else
         {
            _xo6614.gotoAndStop("_up");
         }
      }
   }
}

