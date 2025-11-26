package src.utils.commonComponents
{
   import flash.display.MovieClip;
   import flash.events.*;
   
   public class _te400 extends _qo7568
   {
      
      private var _selected:Boolean;
      
      public var id:int;
      
      public function _te400(param1:MovieClip, param2:Function, param3:String, param4:int = 0)
      {
         super(param1,param2,param3);
         this.selected = false;
         this.id = param4;
      }
      
      override protected function _xx13833(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case MouseEvent.ROLL_OUT:
               if(!this._selected)
               {
                  _pe16126.gotoAndStop(_ax13262._vk6252);
               }
               if(_ix10516 != null)
               {
                  _ix10516(this);
               }
               break;
            case MouseEvent.ROLL_OVER:
               if(!this._selected)
               {
                  _pe16126.gotoAndStop(_ax13262._jo8252);
               }
               if(_ct5529 != null)
               {
                  _ct5529(this);
               }
               break;
            case MouseEvent.MOUSE_DOWN:
               if(_ec6387 != null)
               {
                  _ec6387(this);
               }
         }
         param1.stopImmediatePropagation();
      }
      
      public function set selected(param1:Boolean) : void
      {
         _pe16126.gotoAndStop(param1 ? _ax13262._jo8252 : _ax13262._vk6252);
         this._selected = param1;
      }
   }
}

