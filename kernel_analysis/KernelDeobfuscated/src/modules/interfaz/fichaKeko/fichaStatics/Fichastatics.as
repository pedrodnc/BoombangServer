package src.modules.interfaz.fichaKeko.fichaStatics
{
   import flash.display.*;
   import src.modules.interfaz.fichaKeko.booble.BoobleUtils;
   
   public class Fichastatics extends FichastaticsView
   {
      
      private static const textString:String = "mcPunchColor";
      
      private static const textString1:String = "rojo";
      
      private static const textString2:String = "rosa";
      
      private static const textString3:String = "naranja";
      
      private static const textString4:String = "verde";
      
      private static const textString5:String = "azul";
      
      private static const textString6:String = "blanco";
      
      private static const textString7:String = "morado";
      
      private static const textString8:String = "marron";
      
      private static const textString9:String = "negro";
      
      private static const textString10:String = "dorado";
      
      private var items:Array;
      
      public function Fichastatics(param1:MovieClip, param2:MovieClip, param3:Fichastatics, param4:Array, param5:BoobleUtils)
      {
         super(param1,param2,param3,param4,param5);
         this.items = [textString1,textString2,textString3,textString4,textString5,textString6,textString7,textString8,textString9,textString10];
         this.items.push("amarillo");
         this.items.push("violeta");
         this.items.push("cyan");
         this.items.push("platino");
         this.items.push("mrm");
         this.items.push("ghost");
         this.items.push("multicolor");
      }
      
      override public function stop() : void
      {
         super.stop();
         MovieClip(_hg11010[textString]).gotoAndStop(this.items[_ad13290._lp13903.count7]);
      }
   }
}

