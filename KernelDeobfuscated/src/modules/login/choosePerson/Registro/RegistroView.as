package src.modules.login.choosePerson.Registro
{
   import flash.display.*;
   import src.utils.commonComponents.textInput.TextinputView;
   
   public class RegistroView extends TextinputView
   {
      
      private static const textString:String = "tfText";
      
      private static const PROGRESS:String = "mcProgress";
      
      private static const textString1:String = "mcInputTextBackground";
      
      public static const textString2:String = "Vacio";
      
      public static const textString3:String = "Correcto";
      
      public static const ERROR:String = "Error";
      
      public static const textString4:String = "Espera";
      
      protected var isEnabled:Boolean;
      
      protected var _mc:MovieClip;
      
      private var _state:String;
      
      public function RegistroView(param1:MovieClip, param2:Boolean = false, param3:Function = null, param4:Function = null)
      {
         this._mc = param1;
         super(this._mc[textString],param2,this._mc[textString1],param3,param4);
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function _yf12156(param1:String) : void
      {
         if(this._mc == null)
         {
            return;
         }
         this._state = param1;
         switch(this._state)
         {
            case textString2:
               MovieClip(this._mc[PROGRESS]).gotoAndStop(textString2);
               return;
            case textString3:
               MovieClip(this._mc[PROGRESS]).gotoAndStop(textString3);
               return;
            case ERROR:
               MovieClip(this._mc[PROGRESS]).gotoAndStop(ERROR);
               return;
            case textString4:
               MovieClip(this._mc[PROGRESS]).gotoAndStop(textString4);
               return;
            default:
               return;
         }
      }
      
      override protected function _ru3727() : void
      {
         if(_pj7103 != null)
         {
            _pj7103();
         }
      }
      
      override protected function destroy() : void
      {
         if(_xn4612 != null)
         {
            _xn4612();
         }
      }
      
      public function _lo12223() : Boolean
      {
         return this.isEnabled;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this._mc = null;
      }
   }
}

