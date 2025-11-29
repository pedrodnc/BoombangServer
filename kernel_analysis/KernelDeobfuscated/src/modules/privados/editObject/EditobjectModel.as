package src.modules.privados.editObject
{
   import flash.display.MovieClip;
   import src.allData.color.*;
   import src.modules.privados.editObject.editableElements.EditableelementsModel;
   import src.utils.commonComponents.*;
   import src.utils.fichas.FichasUtils;
   
   public class EditobjectModel extends EditobjectView
   {
      
      public static const textString:String = "mcBotonVolver";
      
      public static const textString1:String = "mcConfirm";
      
      private var _ej3635:CommoncomponentsView;
      
      private var _qy4355:CommoncomponentsController;
      
      private var _te8717:ColorModel;
      
      private var _io6762:ColorModel;
      
      private var _fs8970:Function;
      
      private var _sh16156:Function;
      
      public function EditobjectModel(param1:MovieClip, param2:FichasUtils, param3:Function, param4:EditableelementsModel, param5:ColorModel, param6:Function, param7:Function, param8:EditobjectModel)
      {
         super(param1,param2,param3,param4,param8);
         this._io6762 = param5;
         this._fs8970 = param6;
         this._sh16156 = param7;
         this._ej3635 = new CommoncomponentsView(param1[textString],this._io8360,param8.VOLVER);
         this._ej3635._vd8836 = 3815727;
         this._ej3635._lq8071 = 13421772;
         this._qy4355 = new CommoncomponentsController(param1[textString1],this._lh4081);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._ej3635 != null)
         {
            this._ej3635.destroy();
            this._ej3635 = null;
         }
         if(this._qy4355 != null)
         {
            this._qy4355.destroy();
            this._qy4355 = null;
         }
         this.destroy();
      }
      
      private function destroy() : void
      {
         if(this._te8717 != null)
         {
            this._te8717.destroy();
            this._te8717 = null;
         }
      }
      
      override protected function _nc13036() : void
      {
         this._ql12680();
         this.authenticateUser2();
      }
      
      private function _io8360() : void
      {
         this._ql12680();
         this._fs8970();
      }
      
      override public function show(param1:int, param2:int) : Boolean
      {
         if(!visible)
         {
            super.show(param1,param2);
            this._te8717 = new ColorModel(_cw11838,this.updateColor,this._lh4081,true,true,this._io6762,_cw11838.x);
            this._te8717.init();
            return true;
         }
         return false;
      }
      
      override public function authenticateUser2() : Boolean
      {
         if(visible)
         {
            this.destroy();
            super.authenticateUser2();
            return true;
         }
         return false;
      }
      
      private function updateColor() : void
      {
         _fb15680._eo13013(this._io6762);
      }
      
      private function _lh4081() : void
      {
         this._sh16156();
      }
      
      public function _ql12680() : void
      {
         var count2:ColorModel = null;
         if(this._te8717 != null)
         {
            count2 = this._te8717._rc11984();
            _fb15680._ql12680(count2);
         }
      }
   }
}

