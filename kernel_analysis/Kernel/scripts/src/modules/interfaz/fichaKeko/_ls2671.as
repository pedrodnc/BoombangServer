package src.modules.interfaz.fichaKeko
{
   import src.allData.texts.*;
   
   public class _ls2671
   {
      
      private var _xq7395:String;
      
      private var _ne8838:String;
      
      public var _ly6133:String;
      
      public var _pets:String;
      
      public var _is6750:String;
      
      public var _oh5695:String;
      
      public var _xh1839:String;
      
      public var _bg5515:String;
      
      public var _qu7792:String;
      
      public var COCOS:String;
      
      public var _nq15630:String;
      
      public var _uu11842:String;
      
      public var _oj4688:String;
      
      public var _nk11650:String;
      
      public var _ix7873:String;
      
      public var _vm11366:String;
      
      public var _dq12498:String;
      
      public var _ja5842:String;
      
      public var _ja13179:String;
      
      public var _ue3031:String;
      
      public var _lf7281:String;
      
      public var _qj6005:String;
      
      public var _ib1951:String;
      
      public var _bs15657:String;
      
      public var _he10005:String;
      
      public var _rd10864:String;
      
      public var _uc14610:String;
      
      public var _ry12868:String;
      
      public var _fp11058:String;
      
      public var _wp4682:String;
      
      public var _ck6433:Array;
      
      public var _ue4350:Array;
      
      public var _xg10968:Array;
      
      public var _br11839:Array;
      
      public var _iq9859:String;
      
      public var _gx13796:String;
      
      public var _td6219:String;
      
      public var _xy14832:String;
      
      public var _qg13284:String;
      
      public var _eb2730:String;
      
      public var _yd2540:String;
      
      public var _vw3046:String;
      
      public var _yr2343:String;
      
      public var _eb2553:String;
      
      public var _nm632:String;
      
      public var _wg13189:String;
      
      public var _kc6736:String;
      
      public var _cv11334:String;
      
      public var _wq13642:String;
      
      public var _nj15369:String;
      
      public var _tk7681:String;
      
      public var _rk906:String;
      
      public var _nf3019:String;
      
      public var _bs737:String;
      
      public var _np126:String;
      
      public var battleroyale:String;
      
      public var simondice:String;
      
      public var OK:String;
      
      private var _oi12351:XML;
      
      public function _ls2671()
      {
         this._xq7395 = "interface";
         this._ne8838 = "ficha";
         super();
         this._oi12351 = new XML(_yh6510._eo5308[this._xq7395][this._ne8838].toXMLString());
         this._ly6133 = this._oi12351.attribute("complementos");
         this._pets = this._oi12351.attribute("pets");
         this._is6750 = this._oi12351.attribute("disfraces");
         this._oh5695 = this._oi12351.attribute("beso");
         this._xh1839 = this._oi12351.attribute("cocktails");
         this._bg5515 = this._oi12351.attribute("flores");
         this._qu7792 = this._oi12351.attribute("uppercuts");
         this.COCOS = this._oi12351.attribute("cocos");
         this._nq15630 = this._oi12351.attribute("ring");
         this._uu11842 = this._oi12351.attribute("cocosGame");
         this._oj4688 = this._oi12351.attribute("lianasGame");
         this._nk11650 = this._oi12351.attribute("enviados");
         this._ix7873 = this._oi12351.attribute("recibidos");
         this._vm11366 = this._oi12351.attribute("ganados");
         this.battleroyale = this._oi12351.attribute("battleRoyale");
         this.simondice = this._oi12351.attribute("simonDice");
         this._dq12498 = this._oi12351.attribute("perdidos");
         this._ja5842 = this._oi12351.attribute("deseos");
         this._ja13179 = this._oi12351.attribute("hobbies");
         this._ue3031 = this._oi12351.attribute("editar");
         this._lf7281 = this._oi12351.attribute("chivato");
         this._qj6005 = this._oi12351.attribute("baboso");
         this._ib1951 = this._oi12351.attribute("agresivo");
         this._bs15657 = this._oi12351.attribute("legal");
         this._he10005 = this._oi12351.attribute("sexy");
         this._rd10864 = this._oi12351.attribute("simpatico");
         this._uc14610 = this._oi12351.attribute("votos");
         this._ry12868 = this._oi12351.attribute("enviado");
         this._fp11058 = this._oi12351.attribute("enviadoA");
         this._wp4682 = this._oi12351.attribute("esperando_respuesta");
         this._ck6433 = [this._oi12351.attribute("help_emoticon1"),this._oi12351.attribute("help_emoticon2")];
         this._ue4350 = [this._oi12351.attribute("help_hobbies1"),this._oi12351.attribute("help_hobbies2")];
         this._xg10968 = [this._oi12351.attribute("help_stat1"),this._oi12351.attribute("help_stat2")];
         this._br11839 = [this._oi12351.attribute("help_votos1"),this._oi12351.attribute("help_votos2")];
         this._xy14832 = this._oi12351.attribute("help_intercambios");
         this._qg13284 = this._oi12351.attribute("help_add_friend");
         this._eb2730 = this._oi12351.attribute("help_chat_private");
         this._yd2540 = this._oi12351.attribute("help_ignorar");
         this._vw3046 = this._oi12351.attribute("help_report");
         this._yr2343 = this._oi12351.attribute("aviso");
         this._eb2553 = this._oi12351.attribute("sin_creditos");
         this._nm632 = this._oi12351.attribute("ponte_al_lado");
         this._wg13189 = this._oi12351.attribute("sin_votos");
         this._kc6736 = this._oi12351.attribute("usr_intercambiando");
         this._cv11334 = this._oi12351.attribute("limite_obj");
         this._wq13642 = this._oi12351.attribute("limite_masc");
         this._nj15369 = this._oi12351.attribute("usr_ocupado");
         this._tk7681 = this._oi12351.attribute("usr_bloqueado");
         this._rk906 = this._oi12351.attribute("limiteClicks");
         this._nf3019 = this._oi12351.attribute("noPuedesIntercambiar");
         this._bs737 = this._oi12351.attribute("errorIntercambio");
         this._np126 = this._oi12351.attribute("anios");
         this.OK = this._oi12351.attribute("ok");
         this._iq9859 = this._oi12351.attribute("ninja");
         this._gx13796 = this._oi12351.attribute("ninjalevel");
         this._td6219 = this._oi12351.attribute("ninjaProgress");
      }
   }
}

