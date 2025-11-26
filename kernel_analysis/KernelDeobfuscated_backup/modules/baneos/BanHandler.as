package src.modules.baneos
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.*;
   import src.modules.chooseScene._nw11343;
   import src.utils.*;
   
   public class _mj624
   {
      
      private static const TF_TITULO:String = "tfTitulo";
      
      private static const _uy13297:String = "tfMotivo";
      
      private static const _nk14192:String = "tfMotivo2";
      
      private static const _pf2981:String = "tfTituloTip1";
      
      private static const _ri7990:String = "tfTip1";
      
      private static const _we683:String = "tfTituloTip2";
      
      private static const _fk3022:String = "tfTip2";
      
      private static const _jj3280:String = "tfTituloTip3";
      
      private static const _sk6903:String = "baneado";
      
      private static const _xc2560:String = "multiplesConexiones";
      
      private static const _dp4485:String = "noSePudoConectar";
      
      private static const _pi12816:String = "tituloMensaje";
      
      private static const _ua5279:String = "mantenimiento";
      
      public static const _ld10824:int = 1;
      
      public static const _rc2258:int = 2;
      
      public static const _ic11678:int = 3;
      
      public static const _wo13953:int = 4;
      
      public static const _ul14945:int = 5;
      
      public static const _df2854:int = 6;
      
      public static const _ld11239:int = 7;
      
      public static const _mx5918:int = 8;
      
      public static const _fg5118:int = 9;
      
      public static const _xq6445:int = 0;
      
      public static const _lm4443:int = 1;
      
      private var _hm13107:MovieClip;
      
      private var _gy10361:_nw11343;
      
      private var _ji5399:int;
      
      private var _il5468:Array;
      
      private var _cl12799:int;
      
      public function _mj624(param1:MovieClip, param2:_nw11343)
      {
         super();
         this._hm13107 = param1;
         this._gy10361 = param2;
         _xv14798._dp2863(this._hm13107,this._gy13040);
         this._hm13107.visible = false;
         this._cl12799 = _xw1367._wa4051;
      }
      
      private function _gy13040() : void
      {
         switch(this._hm13107.currentLabel)
         {
            case _pi12816:
               this._jj102();
               return;
            case _sk6903:
               this._rk12337();
               return;
            case _xc2560:
               this._wy1721();
               return;
            case _dp4485:
               this._wd684();
               return;
            case _ua5279:
               this._jj102();
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         _xv14798._ff5056(this._hm13107);
      }
      
      public function _db5584(param1:int, param2:int, param3:Object) : Boolean
      {
         _xw1367.getInstance()._uc3178(this._hm13107,this._cl12799);
         this._hm13107.x = param1;
         this._hm13107.y = param2;
         this._hm13107.visible = true;
         this._ji5399 = param3._ji5399;
         this._il5468 = param3._il5468;
         switch(this._ji5399)
         {
            case _ld10824:
               _mc15002._vt11823(this._hm13107,_sk6903);
               break;
            case _ic11678:
               _mc15002._vt11823(this._hm13107,_xc2560);
               break;
            case _ul14945:
               _mc15002._vt11823(this._hm13107,_dp4485);
               break;
            case _rc2258:
               _mc15002._vt11823(this._hm13107,_ua5279);
               break;
            default:
               _mc15002._vt11823(this._hm13107,_pi12816);
         }
         return true;
      }
      
      public function _hu12389() : Boolean
      {
         _xw1367.getInstance()._na10792(this._hm13107,this._cl12799);
         return true;
      }
      
      private function _qx2504(param1:String, param2:String) : void
      {
         var _loc3_:TextField = TextField(this._hm13107[param1]);
         _loc3_.mouseEnabled = false;
         _yq8362._xl9503(_loc3_,param2);
      }
      
      private function _jj102() : void
      {
         var _loc1_:* = "";
         var _loc2_:* = "";
         switch(this._ji5399)
         {
            case _rc2258:
               _loc1_ = this._gy10361._uo3405;
               _loc2_ = this._gy10361._ce6108;
               break;
            case _wo13953:
               _loc1_ = this._gy10361._ho12524;
               _loc2_ = this._gy10361._gs8782;
               break;
            case _df2854:
               _loc1_ = this._gy10361._kb11826;
               _loc2_ = this._il5468[0];
               break;
            case _ld11239:
               _loc2_ = this._gy10361._uf11844;
               break;
            case _mx5918:
               _loc2_ = this._gy10361._rl4676;
               break;
            case _fg5118:
               _loc2_ = this._gy10361._yh9423;
         }
         this._qx2504(TF_TITULO,_loc1_);
         this._qx2504(_uy13297,_loc2_);
      }
      
      private function _rk12337() : void
      {
         this._qx2504(TF_TITULO,this._gy10361._jl7297);
         this._qx2504(_uy13297,this._gy10361._va6621);
         this._qx2504(_pf2981,this._gy10361._ds1850);
         this._qx2504(_ri7990,String(this._il5468[1]));
         this._qx2504(_we683,this._gy10361._oc12995);
         this._qx2504(_fk3022,this._ay12651(this._il5468[0]));
      }
      
      private function _wy1721() : void
      {
         this._qx2504(TF_TITULO,this._gy10361._dt11626);
         this._qx2504(_uy13297,this._gy10361._gy1179);
         this._qx2504(_pf2981,this._gy10361._mm14005);
      }
      
      private function _wd684() : void
      {
         this._qx2504(TF_TITULO,this._gy10361._st4689);
         this._qx2504(_uy13297,this._gy10361._wf7531);
         this._qx2504(_pf2981,this._gy10361._re8575);
         this._qx2504(_we683,this._gy10361._kr10698);
         this._qx2504(_jj3280,this._gy10361._jx11953);
         this._qx2504(_nk14192,this._gy10361._bt4691);
      }
      
      private function _ay12651(param1:int) : String
      {
         var _loc2_:int = int(param1 / 3600);
         var _loc3_:int = int(int(param1 - _loc2_ * 3600) / 60);
         param1 = int(param1 % 60);
         var _loc4_:* = "";
         if(_loc2_ > 0)
         {
            _loc4_ += _loc2_ + " ";
            if(_loc2_ == 1)
            {
               _loc4_ += this._gy10361._jk10992 + " ";
            }
            else
            {
               _loc4_ += this._gy10361._jk10992 + "s ";
            }
         }
         if(_loc3_ > 0)
         {
            _loc4_ += _loc3_ + " ";
            if(_loc3_ == 1)
            {
               _loc4_ += this._gy10361._rs14567 + " ";
            }
            else
            {
               _loc4_ += this._gy10361._rs14567 + "s ";
            }
         }
         if(_loc2_ == 0 && _loc3_ == 0)
         {
            _loc4_ += param1 + " ";
            if(param1 == 1)
            {
               _loc4_ += this._gy10361._rl7049 + " ";
            }
            else
            {
               _loc4_ += this._gy10361._rl7049 + "s ";
            }
         }
         return _loc4_;
      }
   }
}

