package src.modules.creacionObjetos.fichas
{
   import flash.display.MovieClip;
   import src.allData.*;
   import src.modules.creacionObjetos.formulas.*;
   import src.modules.creacionObjetos.skin._kd11296;
   import src.modules.interfaz._je14031;
   import src.tv.boombang.core.communications.*;
   import src.utils.fichas._wq1414;
   
   public class _jo14869
   {
      
      public static const _ue3469:String = "getMovieClip";
      
      private static const _ca15670:String = "mcCardSelection";
      
      private static const _tu14286:String = "mcCardPrepare";
      
      private static const _cj1614:String = "mcCardHelp";
      
      private static const _pn5039:String = "mcCardCongratulations";
      
      private static const _hy14562:String = "mcLoader";
      
      private static const _mf14677:String = "InformativeCard";
      
      private static const _qh11016:int = 76;
      
      private static const _cj11822:int = 6;
      
      public static const _af14426:int = 0;
      
      public static const _wv1961:int = 1;
      
      public static const _qw10652:int = 2;
      
      public static const _as10237:int = 3;
      
      public static const _ao2886:int = 4;
      
      public static const _ws6793:int = 5;
      
      public static const _nw349:int = 6;
      
      public static const _xo10152:int = 7;
      
      private var _vv3364:MovieClip;
      
      private var _cn1979:MovieClip;
      
      private var _mb398:_wq1414;
      
      private var _re3848:int = 0;
      
      private var _vi1657:_it11049;
      
      private var _ax15887:_kd11296;
      
      private var _uq11060:int;
      
      private var _kg2026:_sw3551;
      
      public var _jo14611:Array;
      
      private var _tp12386:String;
      
      private var _wi3650:String;
      
      private var _wl1264:String;
      
      private var _eb7826:_mq8492;
      
      private var _lp469:_je14031;
      
      private var _kn868:int;
      
      private var _gv4647:Array;
      
      private var _wi9271:int = 1;
      
      public function _jo14869(param1:MovieClip, param2:_kd11296, param3:int, param4:String, param5:String, param6:String, param7:_je14031, param8:int = 0)
      {
         this._gv4647 = new Array();
         super();
         this._qq11186();
         this._vi1657 = _it11049.getInstance();
         this._vv3364 = param1;
         this._ax15887 = param2;
         this._uq11060 = param3;
         this._tp12386 = param4;
         this._wi3650 = param5;
         this._wl1264 = param6;
         this._lp469 = param7;
         this._kn868 = param8;
         _kr10933._xo2736(_te13472._em2428,this._np15222);
         if(param3 != 0)
         {
            this._vi1657._vo4481(param3);
         }
         this._kg2026 = new _sw3551();
         this._cn1979 = param1[_ue3469](_hy14562);
         this._re3848 = _af14426;
      }
      
      private function _qq11186() : void
      {
         this._gv4647[38] = "MissionStartCard";
         this._gv4647[116] = "MissionStartCard";
      }
      
      public function get status() : int
      {
         return this._re3848;
      }
      
      public function destroy() : void
      {
         this._hu12389();
      }
      
      public function _fl8245() : Boolean
      {
         if(this._mb398 != null)
         {
            this._mb398.destroy();
            this._mb398 = null;
            return true;
         }
         return false;
      }
      
      public function _db5584() : void
      {
         if(this._kn868 != 0)
         {
            this._xo11249(_ws6793);
         }
         else
         {
            this._jo14611 = this._vi1657._lv4049(this._uq11060);
            if(this._jo14611.length == 0)
            {
               return;
            }
            this._xo11249(_wv1961);
         }
      }
      
      public function _hu12389() : void
      {
         this._xo11249(_af14426);
      }
      
      public function visible() : Boolean
      {
         return this._re3848 != _af14426;
      }
      
      public function _xo11249(param1:int) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:String = null;
         if(this._mb398 is _ui10090)
         {
            this._wi9271 = (this._mb398 as _ui10090)._qf8183;
         }
         this._fl8245();
         switch(param1)
         {
            case _ws6793:
               _loc3_ = _mf14677;
               if(this._gv4647[this._kn868] != null)
               {
                  _loc3_ = this._gv4647[this._kn868];
               }
               _loc2_ = this._vv3364[_ue3469](_loc3_);
               this._mb398 = new _rv7452(_loc2_,this._kg2026,this._ax15887,this._kn868);
               break;
            case _wv1961:
               _loc2_ = this._vv3364[_ue3469](_ca15670);
               this._mb398 = new _ui10090(_loc2_,this._cn1979,this._jo14611,this._kg2026,this._ax15887,this._qa7032,this._tp12386,this._wi3650,this._wl1264,this._wi9271);
               break;
            case _qw10652:
               _loc2_ = this._vv3364[_ue3469](_tu14286);
               this._mb398 = new _gl10643(_loc2_,this._cn1979,this._eb7826,this._kg2026,this._ax15887,this._qa7032,this._eb7826._co13951.name,this._eb7826._co13951.description);
               break;
            case _as10237:
               _loc2_ = this._vv3364[_ue3469](_cj1614);
               this._mb398 = new _fj10157(_loc2_,this._kg2026,this._ax15887,this._qa7032,this._tp12386,this._wi3650,this._wl1264);
               break;
            case _ao2886:
               _loc2_ = this._vv3364[_ue3469](_pn5039);
               this._mb398 = new _qp9086(_loc2_,this._kg2026,this._ax15887,this._qa7032,this._kg2026._li10288,this._wi3650,this._wl1264,this._eb7826._co13951.name);
               break;
            case _nw349:
               _loc2_ = this._vv3364[_ue3469](_pn5039);
               this._mb398 = new _qn265(_loc2_,this._kg2026,this._ax15887,this._qa7032,this._kg2026._hl9385,this._wi3650,this._wl1264,this._eb7826._co13951.name);
               break;
            case _xo10152:
               _loc2_ = this._vv3364[_ue3469](_pn5039);
               this._mb398 = new _ca6573(_loc2_,this._kg2026,this._ax15887,this._qa7032,this._kg2026._hl9385,this._wi3650,this._wl1264,this._eb7826._co13951.name);
         }
         if(this._mb398)
         {
            this._mb398._db5584(_qh11016,_cj11822);
         }
         this._re3848 = param1;
      }
      
      private function _np15222(param1:_bc9270) : void
      {
         var _loc2_:uint = param1._qp16092(1);
         if(_loc2_ == _te13472._ub8878)
         {
            if(int(param1.items[0]) == 1)
            {
               this._xo11249(_ao2886);
            }
            else if(int(param1.items[1]) == 0)
            {
               this._xo11249(_nw349);
            }
            else if(int(param1.items[1]) == 1)
            {
               this._xo11249(_xo10152);
            }
         }
      }
      
      public function _qa7032(param1:int, param2:_mq8492 = null) : void
      {
         switch(param1)
         {
            case _rm15087._ea13627:
               this._eb7826 = param2;
               this._xo11249(_qw10652);
               return;
            case _rm15087._uw10500:
               this._xo11249(_as10237);
               return;
            case _rm15087._lv13942:
               this._xo11249(_wv1961);
               return;
            case _rm15087._yp6174:
               if(this._eb7826._co13951.member && _hv12530.getInstance().member || !this._eb7826._co13951.member)
               {
                  this._vi1657._st10003(this._eb7826._hw14129,this._uq11060);
               }
               else
               {
                  this._lp469._aa3338();
               }
               return;
            default:
               return;
         }
      }
   }
}

