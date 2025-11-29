package src.modules.interfaz.intercambios.fichas
{
   import flash.display.MovieClip;
   import src.utils.commonComponents._qo7568;
   
   public class _gx10790 extends _qo7568
   {
      
      public static const _ob15171:int = 0;
      
      public static const _rf11928:int = 1;
      
      public static const _vx16058:int = 2;
      
      public static const _ig5666:int = 3;
      
      public static const _fw5940:int = 4;
      
      public static const _ih899:int = 5;
      
      private static const _yg8197:String = "normal";
      
      private static const _sg6807:String = "rollover";
      
      private static const _cf15108:String = "listo";
      
      private static const _sl4184:String = "bloqueado";
      
      private static const _bh6506:String = "esperando";
      
      private static const _fj15985:String = "cancelado";
      
      private static const _tj7913:String = "error";
      
      private var state:int;
      
      public function _gx10790(param1:MovieClip, param2:Function, param3:String)
      {
         super(param1,param2,param3);
         this.setState(_ob15171);
      }
      
      public function setState(param1:int) : void
      {
         this.state = param1;
         switch(param1)
         {
            case _rf11928:
               _pe16126.gotoAndStop(_bh6506);
               _pe16126.mouseEnabled = false;
               return;
            case _vx16058:
               _pe16126.gotoAndStop(_sl4184);
               _pe16126.mouseEnabled = false;
               return;
            case _ig5666:
               _pe16126.gotoAndStop(_cf15108);
               _pe16126.mouseEnabled = false;
               return;
            case _fw5940:
               _pe16126.gotoAndStop(_fj15985);
               _pe16126.mouseEnabled = false;
               return;
            case _ob15171:
               _pe16126.gotoAndStop(_yg8197);
               _pe16126.mouseEnabled = true;
               return;
            case _ih899:
               _pe16126.gotoAndStop(_tj7913);
               _pe16126.mouseEnabled = false;
         }
      }
      
      override public function _ch1514() : void
      {
         _pe16126.gotoAndStop(_sg6807);
      }
      
      override public function _iv1460() : void
      {
         _pe16126.gotoAndStop(_yg8197);
      }
   }
}

