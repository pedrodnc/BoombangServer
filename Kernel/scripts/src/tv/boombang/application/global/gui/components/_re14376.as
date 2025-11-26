package src.tv.boombang.application.global.gui.components
{
   import flash.display.*;
   import flash.events.MouseEvent;
   
   public class _re14376 extends _qy9375
   {
      
      private var _ul12329:ToolTip;
      
      public function _re14376(param1:MovieClip, param2:String)
      {
         super(param1);
         this._ul12329 = new ToolTip(_xo6614.getChildByName("tooltip") as MovieClip,ToolTip._ud6350);
         this._ul12329.visible = false;
         this._ul12329.txt = param2;
         this._ul12329.color = 16777215;
      }
      
      override protected function _rt5195(param1:MouseEvent) : void
      {
         this._ul12329.visible = true;
         super._rt5195(param1);
      }
      
      override protected function _qu5290(param1:MouseEvent) : void
      {
         this._ul12329.visible = false;
         super._qu5290(param1);
      }
      
      override public function set selected(param1:Boolean) : void
      {
         super.selected = param1;
         if(param1)
         {
            removeListeners();
            this._ul12329.visible = false;
         }
         else
         {
            addListeners();
         }
      }
   }
}

