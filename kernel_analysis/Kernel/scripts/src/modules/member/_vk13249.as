package src.modules.member
{
   import flash.display.MovieClip;
   import src.allData.*;
   import src.logs.*;
   import src.modules.antitimos._aq7621;
   import src.modules.antitimos.fichas.*;
   import src.org.osflash.thunderbolt.*;
   import src.utils.*;
   import src.utils.fichas.*;
   
   public class _vk13249
   {
      
      public static const _ue3469:String = "getMovieClip";
      
      public static const _cp12317:String = "mcFichaInicio_";
      
      public static const _wc9710:String = "mcFichaHazteSocio_";
      
      public static const _gn3827:String = "mcFichaEnhorabuena_";
      
      public static const _ox5972:String = "mcFichaNoCreditos_";
      
      public static const _xd6895:String = "mcFichaRenovar_";
      
      public static const _mq10117:String = "mcFichaRenovadoOk_";
      
      public static const _he15168:String = "mcFichaErrorLimiteSobrepasado_";
      
      public static const _cy15219:int = -1;
      
      public static const _wj8144:int = 1;
      
      public static const _ep8913:int = 2;
      
      public static const _fp12831:int = 3;
      
      public static const _ua2757:int = 4;
      
      public static const _jg4973:int = 5;
      
      public static const _yx5648:int = 6;
      
      public static const _nw349:int = 7;
      
      public static const _ou9030:int = 8;
      
      private static const _vq1162:int = 680;
      
      private static const _eh12711:int = 8;
      
      private static const _um12468:int = 360;
      
      private static const _ch4123:int = 8;
      
      private static const _bj15244:int = 677;
      
      private static const _jq5844:int = 8;
      
      private static const _fh6298:int = 680;
      
      private static const _ap7072:int = 8;
      
      private static const _ic15761:int = 360;
      
      private static const _rt690:int = 8;
      
      private static const _mb6117:int = 680;
      
      private static const _in6374:int = 8;
      
      private static const _cg1460:int = 75;
      
      private static const _tt2752:int = 8;
      
      private static const _dr14782:int = 75;
      
      private static const _he9283:int = 8;
      
      private static const _ha1559:int = 75;
      
      private static const _wn11236:int = 8;
      
      private static const _cp13256:int = 75;
      
      private static const _bv12378:int = 8;
      
      private static const _ya11857:int = 75;
      
      private static const _xb5103:int = 8;
      
      private static const _bw8425:int = 75;
      
      private static const _hx8959:int = 8;
      
      private static const _va9278:int = 1;
      
      private static const _fd5091:int = 2;
      
      private static const _gn2369:int = 3;
      
      private static const _re155:int = 1;
      
      private static const _yf15053:int = 0;
      
      private static const _fm3030:int = -1;
      
      private static const _ti14974:String = "tfMember";
      
      private static const _bn5805:String = "tfCreditos";
      
      private var _jr8898:MovieClip;
      
      private var _re3848:int = -1;
      
      private var logs:_qn13596;
      
      private var _gi1972:String;
      
      private var _kh3721:int;
      
      private var _qh1795:Function;
      
      private var _mb398:_wq1414;
      
      private var _dp15087:int;
      
      private var _sv5325:int;
      
      private var _im12039:_xv705;
      
      private var _hd13280:_aq7621;
      
      private var _br7686:Boolean;
      
      private var _xh7232:_ld11044;
      
      private var _xe10392:_ef2682;
      
      private var _ho10593:Function;
      
      private var _dy14191:String;
      
      private var _qc15537:String;
      
      public function _vk13249(param1:MovieClip, param2:Function, param3:Boolean, param4:_ef2682, param5:Function)
      {
         super();
         this._jr8898 = param1;
         this._qh1795 = param2;
         this._br7686 = param3;
         this.logs = _qn13596.getInstance();
         this._im12039 = new _xv705();
         this._xh7232 = param4._hj11812();
         this._ho10593 = param5;
         this._xh7232.addEventListener(_lq6194._ll6671,this._ax10206);
      }
      
      public function get status() : int
      {
         return this._re3848;
      }
      
      public function destroy() : void
      {
         this._fl8245();
         if(this._xh7232 != null)
         {
            this._xh7232.removeEventListener(_lq6194._ll6671,this._ax10206);
            this._xh7232 = null;
         }
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
      
      public function _db5584(param1:int, param2:int) : Boolean
      {
         this._dp15087 = param1;
         this._sv5325 = param2;
         this._fl8245();
         if(_hv12530.getInstance().member)
         {
            this._xh7232._kx8423();
         }
         else
         {
            this._xo11249(_wj8144);
         }
         return true;
      }
      
      public function _hu12389() : Boolean
      {
         if(this._fl8245())
         {
            if(this._qh1795 != null)
            {
               this._qh1795();
            }
            return true;
         }
         return false;
      }
      
      private function _ns6583() : void
      {
         var _loc1_:MovieClip = this._jr8898[_ue3469](_cp12317);
         var _loc2_:_ox15379 = new _ox15379(this._im12039._ou574,[this._im12039._sm7920]);
         this._mb398 = new _wd4266(_loc1_,_loc2_,null,null,this._ys5259,this._im12039._ym898,null,"");
         if(this._br7686)
         {
            this._mb398._db5584(_cg1460,_tt2752);
         }
         else
         {
            this._mb398._db5584(_vq1162,_eh12711);
         }
      }
      
      private function _os13661() : void
      {
         var _loc1_:MovieClip = this._jr8898[_ue3469](_wc9710);
         var _loc2_:_ox15379 = new _ox15379(this._im12039._pk8802,[this._im12039._bx15552,this._im12039._ru545,this._im12039._th6865,this._im12039._rc14828,this._im12039._sr3429,this._im12039._hd11426,this._im12039._ns11891,this._im12039._da13537,this._im12039._bk5495,this._im12039._gk15965,this._im12039._ye2654,this._im12039._cj11625,this._im12039._dr4184]);
         this._mb398 = new _if3213(_loc1_,_loc2_,null,null,[this._tq14033,this._mn1341,this._io942],[this._im12039._oy7380,this._im12039._oy7380,this._im12039._oy7380]);
         if(this._br7686)
         {
            this._mb398._db5584(_dr14782,_he9283);
         }
         else
         {
            this._mb398._db5584(_um12468,_ch4123);
         }
      }
      
      private function _jx4475() : void
      {
         var _loc1_:MovieClip = this._jr8898[_ue3469](_gn3827);
         var _loc2_:_ox15379 = new _ox15379(this._im12039._rf7674,[this._dy14191,this._qc15537,this._im12039._ds4767,this._im12039._jp3101,this._im12039._fi15661,this._im12039._xs1862,""]);
         if(this._gi1972.length > 0)
         {
            _yq8362._xl9503(_loc1_[_ti14974],this._gi1972);
         }
         this._mb398 = new _yo4865(_loc1_,_loc2_,null,null,this._qh1795);
         if(this._br7686)
         {
            this._mb398._db5584(_ha1559,_wn11236);
         }
         else
         {
            this._mb398._db5584(_bj15244,_jq5844);
         }
      }
      
      private function _sj1752() : void
      {
         var _loc1_:MovieClip = this._jr8898[_ue3469](_ox5972);
         var _loc2_:_ox15379 = new _ox15379(this._im12039._rq1928,[this._im12039._yn12134]);
         if(_hv12530.getInstance()._dx11054 > 0)
         {
            _yq8362._xl9503(_loc1_[_bn5805],String(_hv12530.getInstance()._dx11054));
         }
         this._mb398 = new _wd4266(_loc1_,_loc2_,null,null,this._iy7379,this._im12039._ts14611,null,"");
         if(this._br7686)
         {
            this._mb398._db5584(_cp13256,_bv12378);
         }
         else
         {
            this._mb398._db5584(_fh6298,_ap7072);
         }
      }
      
      private function _hi8710() : void
      {
         var _loc1_:MovieClip = this._jr8898[_ue3469](_xd6895);
         var _loc2_:_ox15379 = new _ox15379(this._im12039._yx3006,[this._im12039._bx15552,this._im12039._ru545,this._im12039._th6865,this._im12039._rc14828,this._im12039._sr3429,this._im12039._hd11426,this._im12039._xs1862,this._im12039._da13537,this._im12039._bk5495,this._im12039._gk15965,this._im12039._ye2654,"",this._im12039._cj11625,this._im12039._dr4184]);
         this._mb398 = new _if3213(_loc1_,_loc2_,null,null,[this._cc1515,this._pt5092,this._py9982],[this._im12039._oy7380,this._im12039._oy7380,this._im12039._oy7380]);
         if(_hv12530.getInstance()._uu4611.length > 0)
         {
            _yq8362._xl9503(_loc1_[_ti14974],_hv12530.getInstance()._uu4611);
         }
         if(this._br7686)
         {
            this._mb398._db5584(_ya11857,_xb5103);
         }
         else
         {
            this._mb398._db5584(_ic15761,_rt690);
         }
      }
      
      private function _rt9463() : void
      {
         var _loc1_:MovieClip = this._jr8898[_ue3469](_mq10117);
         var _loc2_:_ox15379 = new _ox15379(this._im12039._pq2052,[this._dy14191,this._qc15537,this._im12039._od12606,this._im12039._kp6172,this._im12039._xs1862,""]);
         if(this._gi1972.length > 0)
         {
            _yq8362._xl9503(_loc1_[_ti14974],this._gi1972);
         }
         this._mb398 = new _yo4865(_loc1_,_loc2_,null,null,this._qh1795);
         if(this._br7686)
         {
            this._mb398._db5584(_bw8425,_hx8959);
         }
         else
         {
            this._mb398._db5584(_mb6117,_in6374);
         }
      }
      
      private function _ry2794() : void
      {
         var _loc1_:MovieClip = this._jr8898[_ue3469](_he15168);
         var _loc2_:_ox15379 = new _ox15379(this._im12039._pq2052,[this._im12039._od12606,this._im12039._kp6172,this._im12039._xs1862,""]);
         if(_hv12530.getInstance()._uu4611.length > 0)
         {
            _yq8362._xl9503(_loc1_[_ti14974],_hv12530.getInstance()._uu4611);
         }
         this._mb398 = new _yo4865(_loc1_,_loc2_,null,null,this._qh1795);
         if(this._br7686)
         {
            this._mb398._db5584(_bw8425,_hx8959);
         }
         else
         {
            this._mb398._db5584(_mb6117,_in6374);
         }
      }
      
      private function _ys5259() : void
      {
         _mr16168.info("Hacer Socio");
         this._xo11249(_ep8913);
      }
      
      private function _tq14033() : void
      {
         _mr16168.info("Mes Uno");
         this._dy14191 = this._im12039._bx15552;
         this._qc15537 = this._im12039._ru545;
         this._mb398._hu12389();
         this._xh7232._aa3338(_va9278);
      }
      
      private function _mn1341() : void
      {
         _mr16168.info("Mes Dos");
         this._dy14191 = this._im12039._th6865;
         this._qc15537 = this._im12039._rc14828;
         this._mb398._hu12389();
         this._xh7232._aa3338(_fd5091);
      }
      
      private function _io942() : void
      {
         _mr16168.info("Mes Tres");
         this._dy14191 = this._im12039._sr3429;
         this._qc15537 = this._im12039._hd11426;
         this._mb398._hu12389();
         this._xh7232._aa3338(_gn2369);
      }
      
      private function _cc1515() : void
      {
         _mr16168.info("Renovar Mes Uno");
         this._dy14191 = this._im12039._bx15552;
         this._qc15537 = this._im12039._ru545;
         this._xh7232._aa3338(_va9278);
      }
      
      private function _pt5092() : void
      {
         _mr16168.info("Renovar Mes Dos");
         this._dy14191 = this._im12039._th6865;
         this._qc15537 = this._im12039._rc14828;
         this._xh7232._aa3338(_fd5091);
      }
      
      private function _py9982() : void
      {
         _mr16168.info("Renovar Mes Tres");
         this._dy14191 = this._im12039._sr3429;
         this._qc15537 = this._im12039._hd11426;
         this._xh7232._aa3338(_gn2369);
      }
      
      private function _iy7379() : void
      {
         if(this._ho10593 != null)
         {
            this._ho10593();
            _mr16168.info("Comprar Creditos");
         }
      }
      
      private function _ax10206(param1:_lq6194) : void
      {
         var _loc2_:Array = null;
         var _loc3_:uint = 0;
         var _loc5_:int = 0;
         _loc2_ = param1._lv9976;
         _loc3_ = uint(String(_loc2_[0]).charCodeAt(0));
         switch(_loc3_)
         {
            case _ld11044._mx15219:
               _loc2_.shift();
               this._kh3721 = int(_loc2_.shift());
               this._gi1972 = String(_loc2_.shift());
               switch(this._kh3721)
               {
                  case _re155:
                     if(_hv12530.getInstance().member)
                     {
                        this._xo11249(_yx5648);
                     }
                     else
                     {
                        this._xo11249(_fp12831);
                     }
                     _hv12530.getInstance()._uu4611 = this._gi1972;
                     break;
                  case _yf15053:
                     this._xo11249(_ua2757);
                     break;
                  case _fm3030:
                     this._xo11249(_nw349);
               }
               return;
            case _ld11044._sa1658:
               var _loc4_:Boolean = Boolean(int(_loc2_[1]));
               if(!_hv12530.getInstance().member)
               {
                  _hv12530.getInstance().member = false;
               }
               else
               {
                  _hv12530.getInstance().member = false;
               }
               _mr16168.info("member_estado");
               return;
            case _ld11044._im2881:
               _loc2_.shift();
               _loc5_ = int(_loc2_.shift());
               switch(_loc5_)
               {
                  case _re155:
                     _mr16168.info("puede comprar");
                     this._xo11249(_jg4973);
                     break;
                  case _yf15053:
                  case _fm3030:
                     this._xo11249(_ou9030);
                     _mr16168.info("no puede comprar");
               }
               return;
            default:
               return;
         }
      }
      
      public function _xo11249(param1:int) : void
      {
         this._fl8245();
         this._re3848 = param1;
         switch(param1)
         {
            case _cy15219:
               return;
            case _wj8144:
               this._ns6583();
               return;
            case _ep8913:
               this._os13661();
               return;
            case _fp12831:
               this._jx4475();
               return;
            case _ua2757:
               this._sj1752();
               return;
            case _jg4973:
               this._hi8710();
               return;
            case _yx5648:
               this._rt9463();
               return;
            case _nw349:
               this._ry2794();
               return;
            case _ou9030:
               this._ry2794();
               return;
            default:
               return;
         }
      }
   }
}

