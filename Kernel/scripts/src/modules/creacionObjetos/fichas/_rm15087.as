package src.modules.creacionObjetos.fichas
{
   import flash.display.MovieClip;
   import src.modules.creacionObjetos.skin._kd11296;
   import src.utils.*;
   import src.utils.buttonsFichas.*;
   import src.utils.fichas.*;
   
   public class _rm15087 extends _wq1414
   {
      
      protected static const _qt6449:String = "mcBotonBack";
      
      protected static const _gm15302:String = "mcBotonNext";
      
      protected static const _hq5846:String = "mcBotonCancel";
      
      protected static const _jx1245:String = "mcGlobo";
      
      protected static const _wj8153:String = "mcGloboDescripcion";
      
      protected static const _be2141:String = "mcFichaBackground";
      
      protected static const _sp11158:String = "mcGloboMatriz";
      
      protected static const _ct13532:String = "tfTextPagina";
      
      protected static const _co12115:String = "mcBotonPreparar";
      
      protected static const _rs2087:String = "mcHelp";
      
      protected static const _kg12560:String = "mcBugMember";
      
      protected static const _yw14303:String = "mcCloseBtn";
      
      protected static const _ne9225:String = "mcTitulo";
      
      protected static const _hl14271:String = "tfTitulo";
      
      protected static const _el2728:String = "tfText";
      
      public static const _lv13942:int = 1;
      
      public static const _ea13627:int = 2;
      
      public static const _uw10500:int = 3;
      
      public static const _yp6174:int = 4;
      
      protected var _kh2302:MovieClip;
      
      protected var _kg2026:_sw3551;
      
      protected var _ax15887:_kd11296;
      
      protected var _wy11576:MovieClip;
      
      protected var _wi3650:String;
      
      protected var _wl1264:String;
      
      public function _rm15087(param1:MovieClip, param2:_sw3551, param3:_kd11296, param4:String = "", param5:String = "", param6:String = "")
      {
         this._kg2026 = param2;
         this._wi3650 = param5;
         this._wl1264 = param6;
         super(param1,new _ox15379(param4,[]));
         this._kh2302 = param1;
         this._ax15887 = param3;
         _rr3911 = new ButtonSkin(param1[_yw14303],_hu12389,param3._wi15039,param3._dy12442);
         if(param1[_wj8153])
         {
            this._wy11576 = param1[_wj8153][_jx1245];
            _yq8362._bj8346(param1[_wj8153]["title"],param5);
            _yq8362._bj8346(param1[_wj8153][_el2728],param6);
            _xv14798._ts14032(param1[_wj8153][_jx1245],param3._kk3956);
            _xv14798._ts14032(param1[_wj8153]["line"],param3._cu8978);
         }
         _xv14798._ts14032(param1[_be2141],param3._cu8978);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(_rr3911)
         {
            _rr3911.destroy();
            _rr3911 = null;
         }
         this._kh2302 = null;
         this._kg2026 = null;
         this._ax15887 = null;
      }
   }
}

