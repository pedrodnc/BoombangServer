package src.modules.interfaz.mochila.buttons
{
   import flash.display.MovieClip;
   import src.utils.*;
   
   public class ButtonsUtils extends ButtonsView
   {
      
      public function ButtonsUtils(param1:MovieClip, param2:Function, param3:String)
      {
         super(param1,param2);
         param1.buttonMode = false;
         param1.mouseEnabled = false;
         param1.gotoAndStop(textString);
         _hq10834.visible = true;
         UtilsUtils._xl9503(_hq10834,param3);
      }
      
      override protected function _nc8386(param1:MovieClip) : void
      {
         super._nc8386(param1);
         _ip10190.visible = false;
      }
      
      override public function stop() : void
      {
         _pe16126.gotoAndStop(textString);
      }
   }
}

