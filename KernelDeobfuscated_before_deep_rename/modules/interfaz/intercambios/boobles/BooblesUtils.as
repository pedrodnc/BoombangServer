package src.modules.interfaz.intercambios.boobles
{
   import flash.display.MovieClip;
   import src.utils.*;
   
   public class BooblesUtils extends BooblesView
   {
      
      public function BooblesUtils(param1:MovieClip, param2:Function, param3:String)
      {
         super(param1,param2);
         param1.buttonMode = false;
         param1.mouseEnabled = false;
         param1.gotoAndStop(_ck12472);
         _hq10834.visible = true;
         UtilsUtils._xl9503(_hq10834,param3);
      }
   }
}

