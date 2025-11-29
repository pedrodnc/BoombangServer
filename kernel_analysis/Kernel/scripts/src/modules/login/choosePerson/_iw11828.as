package src.modules.login.choosePerson
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import src.config.*;
   import src.utils.*;
   
   public class _iw11828 extends EventDispatcher
   {
      
      public static const _pk6823:String = "selectPerson";
      
      public static const _yc9323:String = "userOk";
      
      public static const _bc8441:String = "invisible";
      
      public static const _eb14960:String = "color01";
      
      public static const _tr12362:String = "color02";
      
      public static const _dj4129:String = "color03";
      
      public static const _jl12729:String = "color04";
      
      public static const _ik1199:String = "color05";
      
      public static const _bg11448:String = "color06";
      
      public static const _bk8554:String = "color01ok";
      
      public static const _mt2691:String = "color02ok";
      
      public static const _ku10612:String = "color03ok";
      
      public static const _nv3202:String = "color04ok";
      
      public static const _hi2823:String = "color05ok";
      
      public static const _br2701:String = "color06ok";
      
      public static const _lc6885:String = "startGod";
      
      public static const _hy15711:String = "terminos";
      
      public static const _rh6383:String = "terminos2";
      
      public static const _oo10794:String = "terminosError";
      
      public static const _ri5668:String = "sleep";
      
      public static const _jx5283:String = "rellenar";
      
      public static const _fq1665:String = "passNum";
      
      public static const _ya810:String = "passError";
      
      public static const _lc1775:String = "passFacil";
      
      public static const _ru10703:String = "nameExist";
      
      public static const _rl6255:String = "nameExist2";
      
      public static const _bs3407:String = "verificando";
      
      public static const _st9766:String = "nameDisponible";
      
      public static const _nv7076:String = "menorEdad";
      
      public static const _pp8555:String = "emailError";
      
      public static const _li3748:String = "emailInvalido";
      
      public static const _pn5206:String = "edadIncorrecta";
      
      private static const _nh15839:String = "txt";
      
      private static const _wj4345:String = "txt1";
      
      private static const _pg101:String = "txt2";
      
      private static const _ga10731:String = "btnOk";
      
      private static const _nx6403:String = "mcCarita";
      
      private static const _ma7824:String = "mcButton";
      
      private static const _ve1342:String = "ingName";
      
      private var _og11710:MovieClip;
      
      private var _bg12452:Boolean;
      
      private var _vg1643:_gm11037;
      
      public var _lv12660:Function;
      
      public var _ey15606:Function;
      
      public var _ut5441:Function;
      
      private var _od607:Array;
      
      private var _sb6907:Array;
      
      private var _pl6821:int;
      
      public function _iw11828(param1:MovieClip, param2:Function, param3:Function, param4:Function)
      {
         super();
         this._vg1643 = new _gm11037();
         this._og11710 = param1;
         this._lv12660 = param2;
         this._ey15606 = param3;
         this._ut5441 = param4;
         _xv14798._dp2863(param1,this._pk6768);
         this._bg12452 = false;
         var _loc5_:_gm11037 = this._vg1643;
         this._od607 = new Array();
         this._od607.push([_loc5_._gp14252,_loc5_._gp14252,_loc5_._ii8717,_loc5_._gp14252,"","",_loc5_._gp14252,_loc5_._gp14252,_loc5_._gp14252,_loc5_._gp14252,_loc5_._ce3462]);
         this._od607.push([_loc5_._yb16078,_loc5_._jp3743,_loc5_._jp3743,_loc5_._jp3743,_loc5_._dg5506,_loc5_._yb16078,_loc5_._uw8645,_loc5_._iw5953,_loc5_._yb16078,_loc5_._yb16078,_loc5_._lb10025]);
         this._od607.push([_loc5_._qt9256,_loc5_._lt6126,_loc5_._yq3127,_loc5_._yl9434,_loc5_._lm6937,_loc5_._lt6126,_loc5_.TOP,_loc5_._wv15523,_loc5_.SHORT,_loc5_._yq3127,_loc5_._yq3127]);
         this._od607.push([_loc5_._uu9778,_loc5_._uu9778,_loc5_._uu9778,_loc5_._uu9778,_loc5_._uu9778,_loc5_._uu9778,_loc5_._uu9778,_loc5_._uu9778,_loc5_._uu9778,_loc5_._uu9778,_loc5_._uu9778]);
         this._od607.push([_loc5_.SHORT,_loc5_._lb10025,_loc5_._rk251,_loc5_._wc13757,_loc5_._xt14761,_loc5_._hx9773,_loc5_._bl1517,_loc5_._qt4152,_loc5_._cw4045,_loc5_.SHORT,_loc5_._np15933]);
         this._sb6907 = new Array();
         this._sb6907.push([_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501]);
         this._sb6907.push([_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501]);
         this._sb6907.push([_loc5_._lu14501,_loc5_._sp3816,_loc5_._lu14501,_loc5_._lu14501,_loc5_._sp3816,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501]);
         this._sb6907.push([_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501]);
         this._sb6907.push([_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._lu14501,_loc5_._sp3816,_loc5_._sp3816,_loc5_._sp3816]);
      }
      
      public function destroy() : void
      {
         _xv14798._ff5056(this._og11710);
         this._ua8320();
         this._ug3526();
      }
      
      public function _ro12706() : Boolean
      {
         return this._bg12452;
      }
      
      public function _gb8984(param1:int) : void
      {
         this._pl6821 = param1;
      }
      
      private function _pk6768() : void
      {
         switch(this._og11710.currentLabel)
         {
            case _pk6823:
               this._bg12452 = true;
               _xv14798._dp2863(MovieClip(this._og11710[_nh15839]),this._vb2616);
               this._yy10744(_pk6823);
               return;
            case _bk8554:
               _xv14798._dp2863(MovieClip(this._og11710[_nh15839]),this._vb2616);
               MovieClip(this._og11710[_nh15839]).gotoAndPlay(_eb14960);
               return;
            case _mt2691:
               _xv14798._dp2863(MovieClip(this._og11710[_nh15839]),this._vb2616);
               MovieClip(this._og11710[_nh15839]).gotoAndPlay(_tr12362);
               return;
            case _ku10612:
               _xv14798._dp2863(MovieClip(this._og11710[_nh15839]),this._vb2616);
               MovieClip(this._og11710[_nh15839]).gotoAndPlay(_dj4129);
               return;
            case _nv3202:
               _xv14798._dp2863(MovieClip(this._og11710[_nh15839]),this._vb2616);
               MovieClip(this._og11710[_nh15839]).gotoAndPlay(_jl12729);
               return;
            case _hi2823:
               _xv14798._dp2863(MovieClip(this._og11710[_nh15839]),this._vb2616);
               MovieClip(this._og11710[_nh15839]).gotoAndPlay(_ik1199);
               return;
            case _br2701:
               _xv14798._dp2863(MovieClip(this._og11710[_nh15839]),this._vb2616);
               MovieClip(this._og11710[_nh15839]).gotoAndPlay(_bg11448);
               return;
            case _rh6383:
               _xv14798._dp2863(MovieClip(this._og11710[_nh15839]),this._vb2616);
               MovieClip(this._og11710[_nh15839]).gotoAndPlay(_hy15711);
               return;
            default:
               return;
         }
      }
      
      private function _vb2616() : void
      {
         switch(MovieClip(this._og11710[_nh15839]).currentLabel)
         {
            case _pk6823:
               _yq8362._bj8346(this._og11710[_nh15839][_wj4345],this._vg1643._vw6857);
               return;
            case _yc9323:
               _yq8362._xl9503(this._og11710[_nh15839][_wj4345],this._vg1643._vh2625);
               _yq8362._xl9503(this._og11710[_nh15839][_ga10731][_wj4345],this._vg1643._us6611);
               if(_cc7688._qs3725 == _cc7688._gl650)
               {
                  _yq8362._xc14382(TextField(this._og11710[_nh15839][_ga10731][_wj4345]),14);
                  TextField(this._og11710[_nh15839][_ga10731][_wj4345]).y = TextField(this._og11710[_nh15839][_ga10731][_wj4345]).y + 6;
               }
               MovieClip(this._og11710[_nh15839][_ga10731][_nx6403]).visible = false;
               this._wt564();
               return;
            case _eb14960:
               _yq8362._xl9503(this._og11710[_nh15839][_wj4345],this._sb6907[0][this._pl6821 - 1]);
               _yq8362._xl9503(this._og11710[_nh15839][_pg101],this._od607[0][this._pl6821 - 1]);
               return;
            case _tr12362:
               _yq8362._xl9503(this._og11710[_nh15839][_wj4345],this._sb6907[1][this._pl6821 - 1]);
               _yq8362._xl9503(this._og11710[_nh15839][_pg101],this._od607[1][this._pl6821 - 1]);
               return;
            case _dj4129:
               _yq8362._xl9503(this._og11710[_nh15839][_wj4345],this._sb6907[2][this._pl6821 - 1]);
               _yq8362._xl9503(this._og11710[_nh15839][_pg101],this._od607[2][this._pl6821 - 1]);
               return;
            case _jl12729:
               _yq8362._xl9503(this._og11710[_nh15839][_wj4345],this._sb6907[3][this._pl6821 - 1]);
               _yq8362._xl9503(this._og11710[_nh15839][_pg101],this._od607[3][this._pl6821 - 1]);
               return;
            case _ik1199:
               _yq8362._xl9503(this._og11710[_nh15839][_wj4345],this._sb6907[4][this._pl6821 - 1]);
               _yq8362._xl9503(this._og11710[_nh15839][_pg101],this._od607[4][this._pl6821 - 1]);
               return;
            case _bg11448:
               _yq8362._xl9503(this._og11710[_nh15839][_wj4345],this._sb6907[5][this._pl6821 - 1]);
               _yq8362._xl9503(this._og11710[_nh15839][_pg101],this._od607[5][this._pl6821 - 1]);
               return;
            case _hy15711:
               _yq8362._xl9503(this._og11710[_nh15839][_wj4345],this._vg1643._ik10252);
               return;
            case _oo10794:
               _yq8362._xl9503(this._og11710[_nh15839][_wj4345],this._vg1643._dy6532);
               _yq8362._xl9503(this._og11710[_nh15839][_pg101],this._vg1643._ir1259);
               return;
            case _jx5283:
               _yq8362._bj8346(this._og11710[_nh15839][_wj4345],this._vg1643._dt14151);
               return;
            case _fq1665:
               _yq8362._bj8346(this._og11710[_nh15839][_wj4345],this._vg1643._na7374);
               return;
            case _ya810:
               _yq8362._bj8346(this._og11710[_nh15839][_wj4345],this._vg1643._vm11091);
               return;
            case _lc1775:
               _yq8362._bj8346(this._og11710[_nh15839][_wj4345],this._vg1643._rh11632);
               return;
            case _rl6255:
               _yq8362._bj8346(this._og11710[_nh15839][_wj4345],this._vg1643._we3182);
               return;
            case _bs3407:
               _yq8362._xl9503(this._og11710[_nh15839][_nh15839][_wj4345],this._vg1643._hi2571);
               return;
            case _st9766:
               _yq8362._xl9503(this._og11710[_nh15839][_wj4345],this._vg1643._rh14039);
               return;
            case _nv7076:
               _yq8362._bj8346(this._og11710[_nh15839][_wj4345],this._vg1643._xb15106);
               return;
            case _pp8555:
               _yq8362._bj8346(this._og11710[_nh15839][_wj4345],this._vg1643._jd15567);
               return;
            case _li3748:
               _yq8362._bj8346(this._og11710[_nh15839][_wj4345],this._vg1643._pl15757);
               return;
            case _pn5206:
               _yq8362._bj8346(this._og11710[_nh15839][_wj4345],this._vg1643._mc2927);
               return;
            default:
               return;
         }
      }
      
      public function _bx5761(param1:String) : void
      {
         this._pq3328();
         this._og11710.gotoAndPlay(param1);
      }
      
      public function _yy10744(param1:String) : void
      {
         this._pq3328();
         this._og11710[_nh15839].gotoAndStop(param1);
      }
      
      private function _pq3328() : void
      {
         this._og11710.visible = true;
      }
      
      private function _wd13584() : void
      {
         this._og11710.visible = false;
      }
      
      private function _ua8320() : void
      {
         if(MovieClip(this._og11710[_nh15839]) != null)
         {
            _xv14798._ff5056(MovieClip(this._og11710[_nh15839]));
         }
      }
      
      public function _xd12761() : void
      {
         this._ua8320();
         this._wd13584();
      }
      
      private function _rl15041(param1:MouseEvent) : void
      {
         this._ut5441(null);
      }
      
      private function _wy14818(param1:MouseEvent) : void
      {
         MovieClip(param1.currentTarget[_nx6403]).visible = true;
         this._lv12660(null);
      }
      
      private function _lw5887(param1:MouseEvent) : void
      {
         MovieClip(param1.currentTarget[_nx6403]).visible = false;
         this._ey15606(null);
      }
      
      private function _wt564() : void
      {
         MovieClip(this._og11710[_nh15839][_ga10731]).addEventListener(MouseEvent.MOUSE_DOWN,this._rl15041);
         MovieClip(this._og11710[_nh15839][_ga10731]).addEventListener(MouseEvent.MOUSE_OVER,this._wy14818);
         MovieClip(this._og11710[_nh15839][_ga10731]).addEventListener(MouseEvent.MOUSE_OUT,this._lw5887);
      }
      
      private function _ug3526() : void
      {
         if(MovieClip(this._og11710[_nh15839]) != null && MovieClip(this._og11710[_nh15839][_ga10731]) != null)
         {
            MovieClip(this._og11710[_nh15839][_ga10731]).removeEventListener(MouseEvent.MOUSE_DOWN,this._rl15041);
            MovieClip(this._og11710[_nh15839][_ga10731]).removeEventListener(MouseEvent.MOUSE_OVER,this._wy14818);
            MovieClip(this._og11710[_nh15839][_ga10731]).removeEventListener(MouseEvent.MOUSE_OUT,this._lw5887);
         }
      }
   }
}

