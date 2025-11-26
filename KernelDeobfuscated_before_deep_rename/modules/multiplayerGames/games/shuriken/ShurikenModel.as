package src.modules.multiplayerGames.games.shuriken
{
   import src.allData.texts.*;
   import src.modules.multiplayerGames.fichas.Fichas;
   
   public class ShurikenModel extends Fichas
   {
      
      private static var _qi10095:String = "mGameShuriken";
      
      private var _ie14486:XML;
      
      public var _uh7879:String;
      
      public var _qk799:Array;
      
      public function ShurikenModel()
      {
         super();
         this._ie14486 = new XML(TextManager._eo5308[_qi10095].toXMLString());
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
         this._uh7879 = this._ie14486.attribute("tituloFichaCinturon");
         this._qk799 = new Array();
         this._qk799.push(String(this._ie14486.attribute("descCinturon0")));
         this._qk799.push(String(this._ie14486.attribute("descCinturon1")));
         this._qk799.push(String(this._ie14486.attribute("descCinturon2")));
         this._qk799.push(String(this._ie14486.attribute("descCinturon3")));
         this._qk799.push(String(this._ie14486.attribute("descCinturon4")));
         this._qk799.push(String(this._ie14486.attribute("descCinturon5")));
         this._qk799.push(String(this._ie14486.attribute("descCinturon6")));
         this._qk799.push(String(this._ie14486.attribute("descCinturon7")));
         this._qk799.push(String(this._ie14486.attribute("descCinturon8")));
         this._qk799.push(String(this._ie14486.attribute("descCinturon9")));
      }
   }
}

