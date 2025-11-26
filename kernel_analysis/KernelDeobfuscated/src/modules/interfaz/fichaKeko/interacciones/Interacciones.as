package src.modules.interfaz.fichaKeko.interacciones
{
   import flash.display.MovieClip;
   import src.person.*;
   
   public class Interacciones extends InteraccionesView
   {
      
      private static const textString:String = "normal";
      
      private static const textString1:String = "lengua";
      
      private static const textString2:String = "voltereta";
      
      public function Interacciones(param1:PersonAnimation, param2:MovieClip, param3:Function, param4:Function = null, param5:Function = null, param6:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      private function stop() : void
      {
         _pe16126.gotoAndStop(textString1);
      }
      
      private function stop1() : void
      {
         _pe16126.gotoAndStop(textString2);
      }
      
      private function stop2() : void
      {
         _pe16126.gotoAndStop(textString);
      }
      
      override public function _kc1802(param1:PersonAnimation) : void
      {
         if(param1.count1 == PersonModel._mh6719)
         {
            this.stop();
         }
         else if(param1.count1 == PersonModel._mk4881 || param1.count1 == PersonModel._idNinjaBlanco)
         {
            this.stop1();
         }
         else
         {
            this.stop2();
         }
      }
      
      override public function stop() : void
      {
         _pe16126.alpha = count;
      }
      
      override public function stop() : void
      {
         _pe16126.alpha = count;
      }
   }
}

