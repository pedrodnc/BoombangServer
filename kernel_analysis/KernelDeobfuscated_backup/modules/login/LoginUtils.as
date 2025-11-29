package src.modules.login
{
   import flash.display.MovieClip;
   import flash.utils.*;
   import src.utils.*;
   
   public class _jk7001
   {
      
      private static const _sl9292:String = "mcBaseGlobo";
      
      private static const _vy2075:String = "tfBody";
      
      private static const _nw2410:String = "tfDown";
      
      private static const _cq1825:String = "recuperar";
      
      public static const _pc1360:String = "errorIngreso";
      
      public static const _sx11008:String = "logeado";
      
      public static const _oc3217:String = "verificando";
      
      public static const _ab4927:String = "vacio";
      
      public static const _ig1045:String = "camposVacios";
      
      public static const _vv87:String = "mailIncorrecto";
      
      public static const _ec7590:String = "operacionIncompleta";
      
      public static const _ro13642:String = "codigoIncorrecto";
      
      public static const _ig13224:String = "noCodigo";
      
      public static const _fb6620:String = "codigoTardar";
      
      public static const _of4874:String = "enviamosMailConPass";
      
      public static const _tn7215:String = "piensaPassDiferente";
      
      public static const _ea8389:String = "passDesigual";
      
      public static const _rn9546:String = "probarNewPass";
      
      public static const _jx971:String = "minimoLargoPass";
      
      public static const _jn14304:String = "passFacil";
      
      public static const _lb8950:String = "yingo";
      
      private static const _bd6501:int = 6000;
      
      private var _os3183:MovieClip;
      
      private var timer:int;
      
      private var _ym12228:_pf11103;
      
      private var _np1587:_wi878;
      
      public function _jk7001(param1:MovieClip, param2:_pf11103)
      {
         super();
         this._os3183 = param1[_sl9292];
         this._np1587 = param2._np1587;
         this._ym12228 = param2;
         this._ng15312();
      }
      
      public function destroy() : void
      {
         this._lj15092();
      }
      
      public function _pd1002(param1:String) : void
      {
         if(this._os3183.currentLabel == param1)
         {
            return;
         }
         _mc15002._vt11823(this._os3183,param1);
      }
      
      private function _ng15312() : void
      {
         _xv14798._dp2863(this._os3183,this._jl11377);
      }
      
      private function _lj15092() : void
      {
         _xv14798._ff5056(this._os3183);
      }
      
      private function _jl11377() : void
      {
         switch(this._os3183.currentLabel)
         {
            case _cq1825:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._tn14774);
               return;
            case _pc1360:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._sr2088);
               _yq8362._xl9503(this._os3183[_nw2410],this._np1587._xu13916);
               return;
            case _sx11008:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._br14083);
               _yq8362._xl9503(this._os3183[_nw2410],this._np1587._xu13916);
               return;
            case _oc3217:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._yb3488);
               return;
            case _vv87:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._an6163);
               _yq8362._xl9503(this._os3183[_nw2410],this._np1587._xu13916);
               return;
            case _ig1045:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._ja14658);
               _yq8362._xl9503(this._os3183[_nw2410],this._np1587._xu13916);
               return;
            case _ec7590:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._hw705);
               return;
            case _fb6620:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._ok224);
               return;
            case _ig13224:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._su9670);
               _yq8362._xl9503(this._os3183[_nw2410],this._np1587._xu13916);
               return;
            case _ro13642:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._rb8828);
               return;
            case _tn7215:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._xo3620);
               return;
            case _ea8389:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._ak15699);
               return;
            case _rn9546:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._yl11812);
               return;
            case _of4874:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._rh6376);
               return;
            case _jx971:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._ty6212);
               return;
            case _jn14304:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._dr14194);
               return;
            case _lb8950:
               _yq8362._xl9503(this._os3183[_vy2075],this._np1587._bx55);
               return;
            default:
               return;
         }
      }
      
      public function loop() : void
      {
         if(this._os3183.currentLabel == _pc1360 || this._os3183.currentLabel == _sx11008 || this._os3183.currentLabel == _ig1045)
         {
            if(this.timer != 0 && getTimer() > this.timer)
            {
               this._pd1002(_ab4927);
               this.timer = 0;
            }
         }
      }
      
      public function startTimer() : void
      {
         this.timer = getTimer() + _bd6501;
      }
   }
}

