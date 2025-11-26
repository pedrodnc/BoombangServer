package src.modules.multiplayerGames.games.cocos
{
   import src.allData.texts.*;
   import src.modules.multiplayerGames.fichas.Fichas;
   
   public class CocosModel extends Fichas
   {
      
      private static var textString:String = "mGameCocos";
      
      private var _ie14486:XML;
      
      public var items:Array;
      
      public function CocosModel()
      {
         super();
         this._ie14486 = new XML(TextManager._eo5308[textString].toXMLString());
         textString = this._ie14486.attribute("reglas");
         textString1 = this._ie14486.attribute("practicar");
         textString2 = this._ie14486.attribute("torneo");
         textString3 = this._ie14486.attribute("tituloBienvenido");
         textString4 = this._ie14486.attribute("descBienvenido");
         textString5 = this._ie14486.attribute("tituloReglas");
         textString6 = this._ie14486.attribute("dimeMas");
         VOLVER = this._ie14486.attribute("volver");
         textString7 = this._ie14486.attribute("masTarde");
         textString8 = this._ie14486.attribute("pagar");
         textString9 = this._ie14486.attribute("tituloAceptarInscripcion");
         textString10 = this._ie14486.attribute("descAceptarInscripcion");
         textString11 = this._ie14486.attribute("meRetiro");
         textString12 = this._ie14486.attribute("esperare");
         textString13 = this._ie14486.attribute("tituloAbandonar");
         textString14 = this._ie14486.attribute("descAbandonar");
         textString15 = this._ie14486.attribute("o_o");
         textString22 = this._ie14486.attribute("ojos");
         textString16 = this._ie14486.attribute("tituloAbandonado");
         textString17 = this._ie14486.attribute("descAbandonado");
         textString18 = this._ie14486.attribute("tituloEsperar");
         textString19 = this._ie14486.attribute("descEsperar");
         OK = this._ie14486.attribute("ok");
         textString20 = this._ie14486.attribute("tituloPracticar");
         textString21 = this._ie14486.attribute("descPracticar");
         textString23 = this._ie14486.attribute("tituloCreditosInsuficientes");
         textString24 = this._ie14486.attribute("descCreditosInsuficientes");
         textString25 = this._ie14486.attribute("descCreditosInsuficientesPlata");
         textString26 = this._ie14486.attribute("tituloInscripcionOk");
         textString27 = this._ie14486.attribute("descInscripcionOk");
         textString28 = this._ie14486.attribute("tituloRecuerda");
         textString29 = this._ie14486.attribute("descRecuerda");
         textString30 = this._ie14486.attribute("tituloError");
         textString31 = this._ie14486.attribute("descError");
         textString32 = this._ie14486.attribute("elVencedor");
         textString33 = this._ie14486.attribute("empate");
         textString34 = this._ie14486.attribute("tituloFichaCocos");
         this.items = new Array();
         this.items.push(String(this._ie14486.attribute("descCoco0")));
         this.items.push(String(this._ie14486.attribute("descCoco1")));
         this.items.push(String(this._ie14486.attribute("descCoco2")));
         this.items.push(String(this._ie14486.attribute("descCoco3")));
         this.items.push(String(this._ie14486.attribute("descCoco4")));
         this.items.push(String(this._ie14486.attribute("descCoco5")));
         this.items.push(String(this._ie14486.attribute("descCoco6")));
         this.items.push(String(this._ie14486.attribute("descCoco7")));
         this.items.push(String(this._ie14486.attribute("descCoco8")));
         this.items.push(String(this._ie14486.attribute("descCoco9")));
      }
   }
}

