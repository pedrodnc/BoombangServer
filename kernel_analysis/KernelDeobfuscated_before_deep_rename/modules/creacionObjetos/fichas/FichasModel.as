package src.modules.creacionObjetos.fichas
{
   import src.allData.texts.*;
   
   public class FichasModel
   {
      
      private var _vc11420:String;
      
      public var _ub8779:String;
      
      public var _pi3845:String;
      
      public var _su2094:String;
      
      public var _im13843:String;
      
      public var _kd6244:String;
      
      public var _uo5908:String;
      
      public var _rd8652:String;
      
      public var _ex9494:String;
      
      public var _cr11579:String;
      
      public var _yb841:String;
      
      public var _dl11261:String;
      
      public var _hi12290:String;
      
      public var _ja7236:String;
      
      public var _oq15822:String;
      
      public var _uy8878:String;
      
      public var _xk11457:String;
      
      public var _gq15282:String;
      
      public var _jp1926:String;
      
      public var _ru11065:String;
      
      public var _da29:String;
      
      public var _vj15960:String;
      
      public var _di10341:String;
      
      public var _tg9778:String;
      
      public var _iw9845:String;
      
      public var _oj7121:String;
      
      public var _ta9321:String;
      
      public var _st11499:String;
      
      public var _gn11829:String;
      
      public var _of10962:String;
      
      public var _qq4888:String;
      
      public var _jw8524:String;
      
      public var _at9252:String;
      
      public var _od6726:String;
      
      public var _uw10378:String;
      
      public var _tp9003:String;
      
      public var _nu12101:String;
      
      public var _uu10710:String;
      
      public var _ku9961:String;
      
      public var _uc6076:String;
      
      public var _jp13358:String;
      
      public var _jc4308:String;
      
      public var _fb1923:String;
      
      public var _kw3741:String;
      
      public var _uf8728:String;
      
      public var _im212:String;
      
      public var _ns9054:String;
      
      public var _li10288:String;
      
      public var _yg12345:String;
      
      public var _lo10168:String;
      
      public var _nn3918:String;
      
      public var _tv15093:String;
      
      public var _bs5154:String;
      
      public var _km12598:String;
      
      public var _np2184:String;
      
      public var _jv2228:String;
      
      public var _qq15663:String;
      
      public var _rh5907:String;
      
      public var _kj1970:String;
      
      public var _jn8419:String;
      
      public var _xr11611:String;
      
      public var _te4867:String;
      
      public var _xl6582:String;
      
      public var _ny9322:String;
      
      public var _lx10916:String;
      
      public var _nl8759:String;
      
      public var _pj4924:String;
      
      public var _pl1181:String;
      
      public var _na4227:String;
      
      public var _bd5629:String;
      
      public var _bx13276:String;
      
      public var _nu5633:String;
      
      public var _es9076:String;
      
      public var _xo8760:String;
      
      public var _ig4610:String;
      
      public var _su10422:String;
      
      public var _hu9438:String;
      
      public var _tj2942:String;
      
      public var _px12818:String;
      
      public var _pg14361:String;
      
      public var _hl9385:String;
      
      public var _ip10450:String;
      
      public var _gj8173:String;
      
      public function FichasModel()
      {
         this._vc11420 = "creacionObjetos";
         super();
         var _loc1_:XML = new XML(TextManager._eo5308[this._vc11420].toXMLString());
         this._ub8779 = _loc1_.attribute("siguiente");
         this._pi3845 = _loc1_.attribute("precio");
         this._su2094 = _loc1_.attribute("preparar");
         this._im13843 = _loc1_.attribute("cambiar");
         this._kd6244 = _loc1_.attribute("volver");
         this._uo5908 = _loc1_.attribute("tituloBruja");
         this._rd8652 = _loc1_.attribute("descripcionBruja");
         this._ex9494 = _loc1_.attribute("tituloVampiroMedianoche");
         this._cr11579 = _loc1_.attribute("descripcionVampiroMedianoche");
         this._yb841 = _loc1_.attribute("tituloVampiroBeluga");
         this._dl11261 = _loc1_.attribute("descripcionVampiroBeluga");
         this._hi12290 = _loc1_.attribute("tituloVampiroUfo");
         this._ja7236 = _loc1_.attribute("descripcionVampiroUfo");
         this._oq15822 = _loc1_.attribute("tituloVampiroMinikong");
         this._uy8878 = _loc1_.attribute("descripcionVampiroMinikong");
         this._xk11457 = _loc1_.attribute("tituloVampiroMafia");
         this._gq15282 = _loc1_.attribute("descripcionVampiroMafia");
         this._jp1926 = _loc1_.attribute("help");
         this._ru11065 = _loc1_.attribute("descHelp");
         this._da29 = _loc1_.attribute("tituloNavidadIceage");
         this._vj15960 = _loc1_.attribute("descripcionNavidadIceage");
         this._di10341 = _loc1_.attribute("tituloNavidadIgloo");
         this._tg9778 = _loc1_.attribute("descripcionNavidadIgloo");
         this._iw9845 = _loc1_.attribute("tituloNavidadLaponia");
         this._oj7121 = _loc1_.attribute("descripcionNavidadLaponia");
         this._ta9321 = _loc1_.attribute("tituloNavidadPenguin");
         this._st11499 = _loc1_.attribute("descripcionNavidadPenguin");
         this._gn11829 = _loc1_.attribute("descHelpGnomo");
         this._of10962 = _loc1_.attribute("tituloPascuasConejoBoy");
         this._qq4888 = _loc1_.attribute("descripcionConejoBoy");
         this._jw8524 = _loc1_.attribute("tituloPascuasConejoGirl");
         this._at9252 = _loc1_.attribute("descripcionConejoGirl");
         this._od6726 = _loc1_.attribute("tituloPascuasConejoDad");
         this._uw10378 = _loc1_.attribute("descripcionConejoDad");
         this._tp9003 = _loc1_.attribute("tituloPascuasConejoMum");
         this._nu12101 = _loc1_.attribute("descripcionConejoMum");
         this._uu10710 = _loc1_.attribute("descHelpPascuas");
         this._ku9961 = _loc1_.attribute("tituloBrujaCalabaza");
         this._uc6076 = _loc1_.attribute("descripcionBrujaCalabaza");
         this._jp13358 = _loc1_.attribute("descHelpBruja");
         this._jc4308 = _loc1_.attribute("tituloZombie");
         this._fb1923 = _loc1_.attribute("descripcionZombie");
         this._kw3741 = _loc1_.attribute("descHelpZombie");
         this._uf8728 = _loc1_.attribute("tituloNpcCrypta");
         this._im212 = _loc1_.attribute("descripcionNpcCrypta");
         this._ns9054 = _loc1_.attribute("descHelpNpcCrypta");
         this._li10288 = _loc1_.attribute("tituloFelicidades");
         this._yg12345 = _loc1_.attribute("descripcionFelicidadesInicio");
         this._lo10168 = _loc1_.attribute("descripcionFelicidadesFinal");
         this._hl9385 = _loc1_.attribute("tituloError");
         this._ip10450 = _loc1_.attribute("descripcionErrorInicio");
         this._gj8173 = _loc1_.attribute("descripcionErrorCostumeInicio");
         this._nn3918 = _loc1_.attribute("tituloNpcBondadoso");
         this._tv15093 = _loc1_.attribute("descripcionNpcBondadoso");
         this._bs5154 = _loc1_.attribute("descHelpNpcBondadoso");
         this._km12598 = _loc1_.attribute("tituloNpcPastelero");
         this._np2184 = _loc1_.attribute("descripcionNpcPastelero");
         this._jv2228 = _loc1_.attribute("descHelpNpcPastelero");
         this._qq15663 = _loc1_.attribute("tituloNpcMinero");
         this._rh5907 = _loc1_.attribute("descripcionNpcMinero");
         this._kj1970 = _loc1_.attribute("descHelpNpcMinero");
         this._jn8419 = _loc1_.attribute("tituloNpcAuto");
         this._xr11611 = _loc1_.attribute("descripcionNpcAuto");
         this._te4867 = _loc1_.attribute("descHelpNpcAuto");
         this._xl6582 = _loc1_.attribute("tituloNpcSanta");
         this._ny9322 = _loc1_.attribute("descripcionNpcSanta");
         this._lx10916 = _loc1_.attribute("descHelpNpcSanta");
         this._nl8759 = _loc1_.attribute("tituloNpcNieve");
         this._pj4924 = _loc1_.attribute("descripcionNpcNieve");
         this._pl1181 = _loc1_.attribute("descHelpNpcNieve");
         this._na4227 = _loc1_.attribute("tituloNpcCupido");
         this._bd5629 = _loc1_.attribute("descripcionNpcCupido");
         this._bx13276 = _loc1_.attribute("descHelpNpcCupido");
         this._nu5633 = _loc1_.attribute("tituloNpcWoody");
         this._es9076 = _loc1_.attribute("descripcionNpcWoody");
         this._xo8760 = _loc1_.attribute("descHelpNpcWoody");
         this._ig4610 = _loc1_.attribute("tituloNpcYoga");
         this._su10422 = _loc1_.attribute("descripcionNpcYoga");
         this._hu9438 = _loc1_.attribute("descHelpNpcYoga");
         this._tj2942 = _loc1_.attribute("tituloNpcAmphibia");
         this._px12818 = _loc1_.attribute("descripcionNpcAmphibia");
         this._pg14361 = _loc1_.attribute("descHelpNpcAmphibia");
      }
   }
}

