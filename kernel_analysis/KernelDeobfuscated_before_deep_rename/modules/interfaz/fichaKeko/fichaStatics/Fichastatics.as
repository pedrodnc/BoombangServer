package src.modules.interfaz.fichaKeko.fichaStatics
{
   import flash.display.*;
   import src.modules.interfaz.fichaKeko.booble.BoobleUtils;
   
   public class Fichastatics extends FichastaticsView
   {
      
      private static const _gr15174:String = "mcPunchColor";
      
      private static const _qt9403:String = "rojo";
      
      private static const _hl12323:String = "rosa";
      
      private static const _eu14136:String = "naranja";
      
      private static const _ny14627:String = "verde";
      
      private static const _kv14987:String = "azul";
      
      private static const _ol11941:String = "blanco";
      
      private static const _la8593:String = "morado";
      
      private static const _nl408:String = "marron";
      
      private static const _em10094:String = "negro";
      
      private static const _hi1987:String = "dorado";
      
      private var _ll3015:Array;
      
      public function Fichastatics(param1:MovieClip, param2:MovieClip, param3:Fichastatics, param4:Array, param5:BoobleUtils)
      {
         super(param1,param2,param3,param4,param5);
         this._ll3015 = [_qt9403,_hl12323,_eu14136,_ny14627,_kv14987,_ol11941,_la8593,_nl408,_em10094,_hi1987];
         this._ll3015.push("amarillo");
         this._ll3015.push("violeta");
         this._ll3015.push("cyan");
         this._ll3015.push("platino");
         this._ll3015.push("mrm");
         this._ll3015.push("ghost");
         this._ll3015.push("multicolor");
      }
      
      override public function _ie15491() : void
      {
         super._ie15491();
         MovieClip(_hg11010[_gr15174]).gotoAndStop(this._ll3015[_ad13290._lp13903._lg11278]);
      }
   }
}

