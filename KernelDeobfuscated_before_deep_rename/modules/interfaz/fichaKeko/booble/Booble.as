package src.modules.interfaz.fichaKeko.booble
{
   import flash.media.Sound;
   import src.modules.interfaz.InterfazController;
   import src.modules.interfaz.fichaKeko.FichakekoView;
   import src.modules.interfaz.fichaKeko.FichakekoModel;
   import src.person.PersonAnimation;
   
   public class Booble
   {
      
      public var _im12039:FichakekoModel;
      
      public var _lp13903:PersonAnimation;
      
      public var _qo15312:Boolean;
      
      public var _dv14621:InterfazController;
      
      public var _ts642:FichakekoView;
      
      public var sonidoError:Sound;
      
      public function Booble(param1:FichakekoModel, param2:PersonAnimation, param3:Boolean, param4:InterfazController, param5:FichakekoView, param6:Sound)
      {
         super();
         this._im12039 = param1;
         this._lp13903 = param2;
         this._qo15312 = param3;
         this._dv14621 = param4;
         this._ts642 = param5;
         this.sonidoError = param6;
      }
   }
}

