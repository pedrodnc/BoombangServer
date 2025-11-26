package src.modules.interfaz.mochila.buttons
{
   import flash.display.*;
   import flash.text.*;
   import src.utils.*;
   import src.utils.commonComponents.CommoncomponentsController;
   
   public class ButtonsView extends CommoncomponentsController
   {
      
      public static const _cl2209:int = 44;
      
      protected static const _qt8736:String = "empty";
      
      protected static const _ye1485:String = "noDraggable";
      
      protected static const _gh6125:String = "rollOverNoDraggable";
      
      protected static const _pk6053:String = "apilableYes";
      
      protected static const _ij4499:String = "rollOverApilableYes";
      
      protected static const _ip4784:String = "apilableNo";
      
      protected static const _sc4690:String = "rollOverApilableNo";
      
      protected static const _ii14640:String = "consumible";
      
      protected static const _pw3772:String = "consumibleRollOver";
      
      protected static const _ln8436:String = "mcContenedorObjeto";
      
      protected static const _sy10352:String = "tfTexto";
      
      protected static const _gu7653:String = "mcCantObjetos";
      
      protected static const _uy15263:String = "mcFolderSimulation";
      
      protected var _gh4578:MovieClip;
      
      protected var _hq10834:TextField;
      
      protected var _ip10190:MovieClip;
      
      protected var _xp11822:TextField;
      
      protected var _ex2183:MovieClip;
      
      public function ButtonsView(param1:MovieClip, param2:Function)
      {
         super(param1,param2);
         this._ex2183 = MovieClip(param1[_uy15263]);
         this._ex2183.visible = false;
         StringUtils.cleanChildsMovieclip(this._gh4578);
      }
      
      protected function _hq5436() : void
      {
         _pe16126["folderSelection"]["redFolder"].visible = false;
         _pe16126["folderSelection"]["greenFolder"].visible = false;
         _pe16126["folderSelection"]["brownFolder"].visible = false;
         _pe16126["folderSelection"]["usableFolder"].visible = false;
      }
      
      override protected function _nc8386(param1:MovieClip) : void
      {
         super._nc8386(param1);
         this._gh4578 = MovieClip(param1.getChildByName(_ln8436));
         this._hq10834 = TextField(param1.getChildByName(_sy10352));
         this._ip10190 = MovieClip(param1.getChildByName(_gu7653));
         this._xp11822 = TextField(this._ip10190.getChildByName(_sy10352));
      }
   }
}

