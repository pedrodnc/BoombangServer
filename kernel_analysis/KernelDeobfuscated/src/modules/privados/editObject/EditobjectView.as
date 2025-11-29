package src.modules.privados.editObject
{
   import flash.display.MovieClip;
   import src.modules.privados.editObject.editableElements.EditableelementsModel;
   import src.utils.fichas.FichasUtils;
   import src.utils.fichas.FichasController;
   
   public class EditobjectView extends FichasController
   {
      
      protected static const textString12:String = "tfNombre";
      
      protected static const textString1:String = "mcObjectPreview";
      
      protected var _fb15680:EditableelementsModel;
      
      protected var _im12039:EditobjectModel;
      
      public function EditobjectView(param1:MovieClip, param2:FichasUtils, param3:Function, param4:EditableelementsModel, param5:EditobjectModel)
      {
         super(param1,param2,param3);
         this._fb15680 = param4;
      }
   }
}

