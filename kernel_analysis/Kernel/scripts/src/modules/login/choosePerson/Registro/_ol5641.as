package src.modules.login.choosePerson.Registro
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.external.*;
   import src.allData.*;
   import src.logs.*;
   import src.modules._hq14072;
   import src.modules.clickBlock.*;
   import src.modules.login.*;
   import src.modules.login.choosePerson.*;
   import src.modules.login.choosePerson.Registro.InputFields.*;
   import src.tv.boombang.core.communications.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas.*;
   
   public class _ol5641 extends _wq1414
   {
      
      private static const _kj397:String = "mcCheckBoxRememberPass";
      
      public static const _qg11910:int = 890865;
      
      public static const _mw7630:int = 16776960;
      
      public static const _aq14051:int = 16777215;
      
      public static const _ba9444:String = "frameFinishPlay";
      
      public static const _mt14482:String = "datosOk";
      
      private static const _lk9368:String = "tfTexto03";
      
      private static const _hh12488:String = "tfTexto04";
      
      private static const _je6114:String = "tfInputName";
      
      private static const _cc6836:String = "tfInputPass";
      
      private static const _bp431:String = "tfInputAge";
      
      private static const _pv11742:String = "tfInputMail";
      
      private static const _bu10248:String = "tfInputRepMail";
      
      private static const _sw4867:String = "mcBotonCrear";
      
      private static const _ia9364:String = "mcButtonTerminos";
      
      private static const _to7221:String = "mcButtonPolitica";
      
      private static const _tg3571:String = "mcCheckBoxError";
      
      private var _mn12091:_oo3116;
      
      private var _lc8352:_fj3480;
      
      private var _bi15185:_qd13741;
      
      private var _nj9485:_oc1722;
      
      private var _eh10307:_bs8723;
      
      private var _jr11470:_ac2777;
      
      private var _sn1720:_pj1121;
      
      private var _ef4896:MovieClip;
      
      private var _vi10388:_iw11828;
      
      private var _hr11163:_qo7568;
      
      private var _qx13719:_kg183;
      
      private var _hg7743:_kg183;
      
      private var _eg6453:MovieClip;
      
      private var _mi9531:_qn13596;
      
      public function _ol5641(param1:MovieClip, param2:_iw11828)
      {
         this._bi15185 = new _qd13741();
         this._bi15185.addEventListener(_tc13553._tf16043,this._bw11981);
         this._mn12091 = new _oo3116();
         var _loc3_:_ox15379 = new _ox15379(this._mn12091._gn10382,[this._mn12091._mo2600,this._mn12091._ff3846,this._mn12091._gw4745,this._mn12091._bm2876,this._mn12091._jv4074,this._mn12091._vo1044,this._mn12091._fh7399]);
         this._ef4896 = param1;
         this._vi10388 = param2;
         this._mi9531 = _qn13596.getInstance();
         super(this._ef4896,_loc3_);
      }
      
      private function init() : void
      {
         this._lc8352 = new _fj3480(_cw11838[_kj397],false,this._lh15116);
         this._nj9485 = new _oc1722(this._ef4896[_je6114],false,this._ox3235);
         this._eh10307 = new _bs8723(this._ef4896[_cc6836],true,this._ox3235,this._nj9485);
         this._jr11470 = new _ac2777(this._ef4896[_bp431],false,this._ox3235,this._mn12091,[this._ef4896[_lk9368],this._ef4896[_hh12488]]);
         this._sn1720 = new _pj1121(this._ef4896[_pv11742],this._ef4896[_bu10248],this._ox3235);
         this._hr11163 = new _qo7568(this._ef4896[_sw4867],this._ja5390,this._mn12091._cf15131);
         this._qx13719 = new _kg183(this._ef4896[_ia9364],this._ff5042);
         this._hg7743 = new _kg183(this._ef4896[_to7221],this._wc564);
         this._eg6453 = this._ef4896[_tg3571];
      }
      
      private function _ox3235(param1:int, param2:String = "", param3:String = "") : void
      {
         switch(param1)
         {
            case _hh7911._jd4487:
               this._vi10388._yy10744(_iw11828._jx5283);
               return;
            case _hh7911._bd5745:
               this._vi10388._yy10744(_iw11828._fq1665);
               return;
            case _hh7911._jt1488:
               this._vi10388._yy10744(_iw11828._ya810);
               return;
            case _hh7911._lo12741:
               this._vi10388._yy10744(_iw11828._lc1775);
               return;
            case _hh7911._bq15038:
               this._vi10388._yy10744(_iw11828._rl6255);
               return;
            case _hh7911._mt14482:
               dispatchEvent(new Event(_ol5641._mt14482));
               return;
            case _hh7911._fe1321:
               this._vi10388._yy10744(_iw11828._oo10794);
               return;
            case _hh7911._cq353:
               this._bi15185._oo11834(param2);
               this._vi10388._yy10744(_iw11828._bs3407);
               return;
            case _hh7911._xb15106:
               this._vi10388._yy10744(_iw11828._nv7076);
               return;
            case _hh7911._jd15567:
               this._vi10388._yy10744(_iw11828._pp8555);
               return;
            case _hh7911._ap14698:
               this._vi10388._xd12761();
               dispatchEvent(new Event(_ol5641._ba9444));
               return;
            case _hh7911._pl15757:
               this._vi10388._yy10744(_iw11828._li3748);
               return;
            case _hh7911._mc2927:
               this._vi10388._yy10744(_iw11828._pn5206);
               return;
            case _hh7911.START:
               this._vi10388._yy10744(_iw11828._ri5668);
               return;
            default:
               return;
         }
      }
      
      private function _lh15116() : void
      {
         this._ox3235(_hh7911.START);
         this._eg6453.alpha = 0;
      }
      
      private function _ja5390() : void
      {
         this._eg6453.alpha = 0;
         if(!this._lc8352._sh2391())
         {
            this._ox3235(_hh7911._fe1321);
            this._eg6453.alpha = 1;
            return;
         }
         var _loc1_:Boolean = Boolean(this._lc8352._sh2391()) && Boolean(this._nj9485._lo12223()) && Boolean(this._eh10307._lo12223()) && Boolean(this._jr11470._lo12223()) && Boolean(this._sn1720._lo12223());
         if(_loc1_)
         {
            this._ox3235(_hh7911._mt14482);
            this._qp11102();
         }
         else
         {
            this._ox3235(_hh7911._jd4487);
         }
      }
      
      private function _qp11102() : void
      {
         _bb1400._po7796(_bb1400._qf10677);
         var _loc1_:_hv12530 = _hv12530.getInstance();
         _loc1_.name = this._nj9485._xm12217();
         _loc1_._hw3203 = this._eh10307._xm12217();
         _loc1_._am6464 = this._sn1720._yj11716();
         _loc1_._tq5133 = uint(this._jr11470._xm12217());
         this._bi15185.addEventListener(_tc13553._tf16043,this._kh8288);
         this._bi15185._ok6924(_loc1_.name,_loc1_._hw3203,_loc1_._jn11596,_loc1_.colors.colors,_loc1_._tq5133,_loc1_._am6464,_loc1_._ry9019,_loc1_._dk13651,_loc1_._qq2512);
      }
      
      private function _kh8288(param1:_tc13553) : void
      {
         var _loc3_:Array = param1._lv9976;
         var _loc4_:uint = uint(String(param1._lv9976[1]).charCodeAt(0));
         switch(_loc4_)
         {
            case _qd13741._es2379:
               if(param1._lv9976.length < 3)
               {
                  this._mi9531._kp3815(new _ex15859(_qn13596._ny10327,"FichaRegistro2011.onLoginEvent",param1._lv9976.toString()));
                  return;
               }
               var _loc2_:uint = uint(param1._lv9976[2]);
               switch(0)
               {
                  case _qd13741._ls14909:
                     _jp4046.callJavaScript("conversion()");
                     this._bi15185._jw4048(_hv12530.getInstance().name,_hv12530.getInstance()._hw3203);
                     break;
                  case _qd13741._ps679:
                     this._hu12389();
                     _lq11338._vt12942(_lq11338._dm13327);
                     this._ox3235(_hh7911._ap14698);
               }
               break;
            case _te13472._gp3729:
               _loc2_ = uint(param1._lv9976[2]);
               this._bi15185.removeEventListener(_tc13553._tf16043,this._kh8288);
               switch(0)
               {
                  case _qd13741._hj3452:
                     _pf11103._hv6433(_loc3_,true);
                     this._hu12389();
                     this._ox3235(_hh7911._ap14698);
               }
         }
         _bb1400._dj5576();
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:Array = null;
         var _loc3_:uint = 0;
         _loc2_ = param1._lv9976;
         _loc3_ = uint(String(_loc2_[1]).charCodeAt(0));
         switch(_loc3_)
         {
            case _qd13741._sf5871:
               var _loc4_:int = int(String(_loc2_[2]));
               switch(0)
               {
                  case 2:
                     this._nj9485._bx723();
                     this._vi10388._yy10744(_iw11828._st9766);
                     break;
                  case 1:
                     var _loc5_:Array = new Array();
                     var _loc6_:int = 3;
                     while(0 < _loc2_.length)
                     {
                        null.push(_loc2_[0]);
                        _loc6_++;
                     }
                     this._nj9485._vl2734();
                     this._vi10388._yy10744(_iw11828._rl6255);
                     this._nj9485._ay3155(null);
                     break;
                  case -1:
                     this._vi10388._yy10744(_iw11828._rl6255);
               }
               return;
            default:
               return;
         }
      }
      
      private function _ff5042() : void
      {
         ExternalInterface.call("terminos");
      }
      
      private function _wc564() : void
      {
         ExternalInterface.call("politica");
      }
      
      override public function _db5584(param1:int, param2:int) : Boolean
      {
         this.init();
         return super._db5584(param1,param2);
      }
      
      override public function _hu12389() : Boolean
      {
         return super._hu12389();
      }
      
      override public function destroy() : void
      {
         this._hu12389();
         this._bi15185.removeEventListener(_tc13553._tf16043,this._bw11981);
         this._bi15185.removeEventListener(_tc13553._tf16043,this._kh8288);
         this._bi15185 = null;
         this._vi10388 = null;
         this._ef4896 = null;
         if(this._hr11163)
         {
            this._hr11163.destroy();
            this._hr11163 = null;
         }
         if(this._lc8352)
         {
            this._lc8352.destroy();
            this._lc8352 = null;
         }
         if(this._jr11470)
         {
            this._jr11470.destroy();
            this._jr11470 = null;
         }
         if(this._sn1720)
         {
            this._sn1720.destroy();
            this._sn1720 = null;
         }
         if(this._nj9485)
         {
            this._nj9485.destroy();
            this._nj9485 = null;
         }
         if(this._eh10307)
         {
            this._eh10307.destroy();
            this._eh10307 = null;
         }
         if(this._hg7743)
         {
            this._hg7743.destroy();
            this._hg7743 = null;
         }
         if(this._qx13719)
         {
            this._qx13719.destroy();
            this._qx13719 = null;
         }
      }
   }
}

