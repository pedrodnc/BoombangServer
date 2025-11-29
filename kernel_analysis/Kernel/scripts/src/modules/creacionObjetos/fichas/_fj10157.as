package src.modules.creacionObjetos.fichas
{
   import flash.display.MovieClip;
   import src.modules.creacionObjetos.skin._kd11296;
   import src.utils.*;
   import src.utils.buttonsFichas.*;
   
   public class _fj10157 extends _rm15087
   {
      
      protected static const _qt6449:String = "mcBotonBack";
      
      protected static const _xi2653:String = "mcRecuadroHelp";
      
      protected static const _xi545:String = "tfDescHelp";
      
      private var _ej3635:_lx11385;
      
      private var _gi11319:Function;
      
      public function _fj10157(param1:MovieClip, param2:_sw3551, param3:_kd11296, param4:Function, param5:String, param6:String, param7:String)
      {
         super(param1,param2,param3,param5,param6);
         this._gi11319 = param4;
         this._ej3635 = new _lx11385(param1[_qt6449],this._aj2155,param2._kd6244,param3._co4881,param3._kk3956);
         _xv14798._ts14032(param1[_xi2653],param3._kk3956);
         _yq8362._bj8346(param1[_xi545],param7);
         _xv14798._ts14032(param1[_xi545],param3._sv15877);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._ej3635 != null)
         {
            this._ej3635.destroy();
            this._ej3635 = null;
         }
      }
      
      public function _aj2155() : void
      {
         if(this._gi11319 != null)
         {
            this._gi11319(_lv13942);
         }
      }
   }
}

