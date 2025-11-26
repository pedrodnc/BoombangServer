package src.modules.interfaz.fichaKeko.paneles
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.modules.interfaz._xt81056;
   import src.modules.interfaz.fichaKeko._ls2671;
   import src.modules.interfaz.fichaKeko.booble._aw14744;
   import src.person._ta2443;
   
   public class _yc11491_pets extends _yc11491
   {
      
      private const _sm5226:String = "tfTituloPets";
      
      public function _yc11491_pets(param1:MovieClip, param2:MovieClip, param3:_ta2443, param4:_xt81056, param5:_aw14744, param6:_ls2671, param7:Function)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         var _loc8_:TextField = TextField(param2.getChildByName("tfTituloPets"));
         if(_loc8_ != null)
         {
            _loc8_.text = param6._pets;
         }
      }
   }
}

