package src.modules.interfaz.intercambios.boobles
{
   import flash.display.*;
   import flash.text.*;
   import src.utils.*;
   import src.utils.commonComponents.CommoncomponentsController;
   
   public class BooblesView extends CommoncomponentsController
   {
      
      protected static const _yg8197:String = "normal";
      
      protected static const _sg6807:String = "rollover";
      
      protected static const _fh9305:String = "normalRare";
      
      protected static const _bs12037:String = "rolloverRare";
      
      protected static const _ck12472:String = "vacio";
      
      protected static const _ln8436:String = "mcContenedorObjeto";
      
      protected static const _fg7692:String = "mcCant";
      
      protected static const _sy10352:String = "tfTexto";
      
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
         this._gh4578 = MovieClip(param1.getChildByName(_ln8436));
         this._hq10834 = TextField(param1.getChildByName(_sy10352));
         this._ef6299 = MovieClip(param1.getChildByName(_fg7692));
         this._ji4650 = TextField(this._ef6299.getChildByName(_sy10352));
         this._ef6299.visible = false;
         this._hq10834.visible = false;
      }
   }
}

