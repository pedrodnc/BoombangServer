package src.modules.login.choosePerson.Registro
{
   import flash.display.*;
   import src.utils.commonComponents.textInput._pq7311;
   
   public class _vf2001 extends _pq7311
   {
      
      private static const _me3568:String = "tfText";
      
      private static const PROGRESS:String = "mcProgress";
      
      private static const _ar3189:String = "mcInputTextBackground";
      
      public static const _ra14588:String = "Vacio";
      
      public static const _sw10226:String = "Correcto";
      
      public static const ERROR:String = "Error";
      
      public static const _hv1902:String = "Espera";
      
      protected var _cy431:Boolean;
      
      protected var _mc:MovieClip;
      
      private var _state:String;
      
      public function _vf2001(param1:MovieClip, param2:Boolean = false, param3:Function = null, param4:Function = null)
      {
         this._mc = param1;
         super(this._mc[_me3568],param2,this._mc[_ar3189],param3,param4);
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
            case _ra14588:
               MovieClip(this._mc[PROGRESS]).gotoAndStop(_ra14588);
               return;
            case _sw10226:
               MovieClip(this._mc[PROGRESS]).gotoAndStop(_sw10226);
               return;
            case ERROR:
               MovieClip(this._mc[PROGRESS]).gotoAndStop(ERROR);
               return;
            case _hv1902:
               MovieClip(this._mc[PROGRESS]).gotoAndStop(_hv1902);
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
      
      override protected function _vh750() : void
      {
         if(_xn4612 != null)
         {
            _xn4612();
         }
      }
      
      public function _lo12223() : Boolean
      {
         return this._cy431;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this._mc = null;
      }
   }
}

