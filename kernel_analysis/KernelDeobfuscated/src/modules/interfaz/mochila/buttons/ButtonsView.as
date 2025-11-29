package src.modules.interfaz.mochila.buttons
{
   import flash.display.*;
   import flash.text.*;
   import src.utils.*;
   import src.utils.commonComponents.CommoncomponentsController;
   
   public class ButtonsView extends CommoncomponentsController
   {
      
      public static const count:int = 44;
      
      protected static const textString:String = "empty";
      
      protected static const textString1:String = "noDraggable";
      
      protected static const textString2:String = "rollOverNoDraggable";
      
      protected static const textString3:String = "apilableYes";
      
      protected static const textString4:String = "rollOverApilableYes";
      
      protected static const textString5:String = "apilableNo";
      
      protected static const textString6:String = "rollOverApilableNo";
      
      protected static const textString7:String = "consumible";
      
      protected static const textString8:String = "consumibleRollOver";
      
      protected static const textString1:String = "mcContenedorObjeto";
      
      protected static const textString1:String = "tfTexto";
      
      protected static const textString11:String = "mcCantObjetos";
      
      protected static const textString12:String = "mcFolderSimulation";
      
      protected var _gh4578:MovieClip;
      
      protected var _hq10834:TextField;
      
      protected var _ip10190:MovieClip;
      
      protected var _xp11822:TextField;
      
      protected var _ex2183:MovieClip;
      
      public function ButtonsView(param1:MovieClip, param2:Function)
      {
         super(param1,param2);
         this._ex2183 = MovieClip(param1[textString12]);
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
         this._gh4578 = MovieClip(param1.getChildByName(textString1));
         this._hq10834 = TextField(param1.getChildByName(textString1));
         this._ip10190 = MovieClip(param1.getChildByName(textString11));
         this._xp11822 = TextField(this._ip10190.getChildByName(textString1));
      }
   }
}

