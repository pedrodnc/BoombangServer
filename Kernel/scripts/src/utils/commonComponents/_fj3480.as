package src.utils.commonComponents
{
   import flash.display.MovieClip;
   import flash.events.*;
   
   public class _fj3480 extends _kg183
   {
      
      private var checked:Boolean;
      
      public function _fj3480(param1:MovieClip, param2:Boolean, param3:Function, param4:Function = null, param5:Function = null)
      {
         super(param1,param3,param4,param5);
         this.checked = param2;
         this._vm4777();
      }
      
      override protected function _xx13833(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case MouseEvent.MOUSE_DOWN:
               if(this.checked)
               {
                  _pe16126.gotoAndStop(_ax13262._vk6252);
               }
               else
               {
                  _pe16126.gotoAndStop(_ax13262._du11346);
               }
               this.checked = !this.checked;
               break;
            case MouseEvent.ROLL_OVER:
               if(this.checked)
               {
                  _pe16126.gotoAndStop(_ax13262._du11346);
                  break;
               }
               _pe16126.gotoAndStop(_ax13262._jo8252);
               break;
            case MouseEvent.ROLL_OUT:
               if(this.checked)
               {
                  _pe16126.gotoAndStop(_ax13262._fh14393);
                  break;
               }
               _pe16126.gotoAndStop(_ax13262._vk6252);
         }
         super._xx13833(param1);
      }
      
      override public function _ch1514() : void
      {
      }
      
      override public function _iv1460() : void
      {
      }
      
      private function _vm4777() : void
      {
         if(this.checked)
         {
            _pe16126.gotoAndStop(_ax13262._du11346);
         }
         else
         {
            _pe16126.gotoAndStop(_ax13262._vk6252);
         }
      }
      
      public function _sh2391() : Boolean
      {
         return this.checked;
      }
   }
}

