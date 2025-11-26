package src.modules.interfaz.fichaKeko.fichaStatics
{
   import flash.display.*;
   import src.modules.interfaz.fichaKeko.booble.BoobleUtils;
   import src.utils.*;
   
   public class FichastaticsUtils extends FichastaticsView
   {
      
      public function FichastaticsUtils(param1:MovieClip, param2:MovieClip, param3:Fichastatics, param4:Array, param5:BoobleUtils)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function stop() : void
      {
         var count:int = 0;
         super.stop();
         UtilsUtils._xl9503(_hg11010[_gj14714],_ad13290._im12039._vm11366);
         UtilsUtils._xl9503(_hg11010[_yk15768],"");
         UtilsUtils._xl9503(_hg11010[_pm557],"");
         MovieClip(_hg11010[_qn8675]).visible = false;
         MovieClip(_hg11010[_oo2343]).visible = false;
         var count2:Array = new Array();
         while(count < _iw10156.length)
         {
            count2.push(_ad13290._lp13903.items4[_iw10156[count]]);
            count++;
         }
         UtilsUtils._xl9503(_hg11010[_ac9658],count2[1]);
      }
   }
}

