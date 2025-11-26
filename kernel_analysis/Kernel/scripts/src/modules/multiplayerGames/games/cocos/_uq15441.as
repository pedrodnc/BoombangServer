package src.modules.multiplayerGames.games.cocos
{
   import src.allData.texts.*;
   import src.modules.multiplayerGames.fichas._gk6073;
   
   public class _uq15441 extends _gk6073
   {
      
      private static var _ig4177:String = "mGameCocos";
      
      private var _ie14486:XML;
      
      public var _qc15441:Array;
      
      public function _uq15441()
      {
         super();
         this._ie14486 = new XML(_yh6510._eo5308[_ig4177].toXMLString());
         _bh1246 = this._ie14486.attribute("reglas");
         _hn3794 = this._ie14486.attribute("practicar");
         _rc5908 = this._ie14486.attribute("torneo");
         _gc15166 = this._ie14486.attribute("tituloBienvenido");
         _bj3390 = this._ie14486.attribute("descBienvenido");
         _gv246 = this._ie14486.attribute("tituloReglas");
         _hn9839 = this._ie14486.attribute("dimeMas");
         VOLVER = this._ie14486.attribute("volver");
         _wi3826 = this._ie14486.attribute("masTarde");
         _vy7766 = this._ie14486.attribute("pagar");
         _fw8415 = this._ie14486.attribute("tituloAceptarInscripcion");
         _pw13768 = this._ie14486.attribute("descAceptarInscripcion");
         _ji2109 = this._ie14486.attribute("meRetiro");
         _pj501 = this._ie14486.attribute("esperare");
         _od9025 = this._ie14486.attribute("tituloAbandonar");
         _ol5438 = this._ie14486.attribute("descAbandonar");
         _ww1126 = this._ie14486.attribute("o_o");
         _yq3127 = this._ie14486.attribute("ojos");
         _cd8681 = this._ie14486.attribute("tituloAbandonado");
         _yw2230 = this._ie14486.attribute("descAbandonado");
         _fs2604 = this._ie14486.attribute("tituloEsperar");
         _pu15864 = this._ie14486.attribute("descEsperar");
         OK = this._ie14486.attribute("ok");
         _js14212 = this._ie14486.attribute("tituloPracticar");
         _rs4365 = this._ie14486.attribute("descPracticar");
         _gy14442 = this._ie14486.attribute("tituloCreditosInsuficientes");
         _kn13825 = this._ie14486.attribute("descCreditosInsuficientes");
         _dy2529 = this._ie14486.attribute("descCreditosInsuficientesPlata");
         _ma7877 = this._ie14486.attribute("tituloInscripcionOk");
         _fu15706 = this._ie14486.attribute("descInscripcionOk");
         _tr2833 = this._ie14486.attribute("tituloRecuerda");
         _eq11065 = this._ie14486.attribute("descRecuerda");
         _hl9385 = this._ie14486.attribute("tituloError");
         _au9939 = this._ie14486.attribute("descError");
         _ri13389 = this._ie14486.attribute("elVencedor");
         _bq12462 = this._ie14486.attribute("empate");
         _xv14545 = this._ie14486.attribute("tituloFichaCocos");
         this._qc15441 = new Array();
         this._qc15441.push(String(this._ie14486.attribute("descCoco0")));
         this._qc15441.push(String(this._ie14486.attribute("descCoco1")));
         this._qc15441.push(String(this._ie14486.attribute("descCoco2")));
         this._qc15441.push(String(this._ie14486.attribute("descCoco3")));
         this._qc15441.push(String(this._ie14486.attribute("descCoco4")));
         this._qc15441.push(String(this._ie14486.attribute("descCoco5")));
         this._qc15441.push(String(this._ie14486.attribute("descCoco6")));
         this._qc15441.push(String(this._ie14486.attribute("descCoco7")));
         this._qc15441.push(String(this._ie14486.attribute("descCoco8")));
         this._qc15441.push(String(this._ie14486.attribute("descCoco9")));
      }
   }
}

