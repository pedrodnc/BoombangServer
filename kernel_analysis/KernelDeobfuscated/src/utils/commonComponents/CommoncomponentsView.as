package src.utils.commonComponents
{
   import flash.display.MovieClip;
   import flash.events.*;
   
   public class CommoncomponentsView extends CommoncomponentsController
   {
      
      private var checked:Boolean;
      
      public function CommoncomponentsView(param1:MovieClip, param2:Boolean, param3:Function, param4:Function = null, param5:Function = null)
      {
         super(param1,param3,param4,param5);
         this.checked = param2;
         this.stop1();
      }
      
      override protected function stop(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case MouseEvent.MOUSE_DOWN:
               if(this.checked)
               {
                  _pe16126.gotoAndStop(CommoncomponentsView._vk6252);
               }
               else
               {
                  _pe16126.gotoAndStop(CommoncomponentsView._du11346);
               }
               this.checked = !this.checked;
               break;
            case MouseEvent.ROLL_OVER:
               if(this.checked)
               {
                  _pe16126.gotoAndStop(CommoncomponentsView._du11346);
                  break;
               }
               _pe16126.gotoAndStop(CommoncomponentsView._jo8252);
               break;
            case MouseEvent.ROLL_OUT:
               if(this.checked)
               {
                  _pe16126.gotoAndStop(CommoncomponentsView._fh14393);
                  break;
               }
               _pe16126.gotoAndStop(CommoncomponentsView._vk6252);
         }
         super.stop(param1);
      }
      
      override public function stop() : void
      {
      }
      
      override public function stop() : void
      {
      }
      
      private function stop1() : void
      {
         if(this.checked)
         {
            _pe16126.gotoAndStop(CommoncomponentsView._du11346);
         }
         else
         {
            _pe16126.gotoAndStop(CommoncomponentsView._vk6252);
         }
      }
      
      public function validate() : Boolean
      {
         return this.checked;
      }
   }
}

