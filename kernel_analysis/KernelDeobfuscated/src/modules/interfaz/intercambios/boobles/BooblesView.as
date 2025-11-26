package src.modules.interfaz.intercambios.boobles
{
   import flash.display.*;
   import flash.text.*;
   import src.utils.*;
   import src.utils.commonComponents.CommoncomponentsController;
   
   public class BooblesView extends CommoncomponentsController
   {
      
      protected static const textString:String = "normal";
      
      protected static const textString1:String = "rollover";
      
      protected static const textString2:String = "normalRare";
      
      protected static const textString3:String = "rolloverRare";
      
      protected static const textString4:String = "vacio";
      
      protected static const textString1:String = "mcContenedorObjeto";
      
      protected static const textString6:String = "mcCant";
      
      protected static const textString1:String = "tfTexto";
      
      protected var _gh4578:MovieClip;
      
      protected var _ef6299:MovieClip;
      
      protected var _ji4650:TextField;
      
      protected var _hq10834:TextField;
      
      public function BooblesView(param1:MovieClip, param2:Function)
      {
         super(param1,param2);
         StringUtils.cleanChildsMovieclip(this._gh4578);
      }
      
      override protected function _nc8386(param1:MovieClip) : void
      {
         super._nc8386(param1);
         this._gh4578 = MovieClip(param1.getChildByName(textString1));
         this._hq10834 = TextField(param1.getChildByName(textString1));
         this._ef6299 = MovieClip(param1.getChildByName(textString6));
         this._ji4650 = TextField(this._ef6299.getChildByName(textString1));
         this._ef6299.visible = false;
         this._hq10834.visible = false;
      }
   }
}

