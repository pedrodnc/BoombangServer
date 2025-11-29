package src.utils.commonComponents.textInput
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.ui.*;
   import src.utils.*;
   
   public class TextinputView
   {
      
      private var _cj5550:TextField;
      
      private var _wg10883:MovieClip;
      
      private var _sx9369:ColorTransform;
      
      protected var _pj7103:Function;
      
      protected var _xn4612:Function;
      
      public function TextinputView(param1:TextField, param2:Boolean = false, param3:MovieClip = null, param4:Function = null, param5:Function = null)
      {
         super();
         if(param1 == null)
         {
            throw new Error("GenericInputTextfield \'textfield parameter\' = null");
         }
         this._pj7103 = param4;
         this._xn4612 = param5;
         this._cj5550 = param1;
         this._wg10883 = param3;
         UtilsUtils._xl9503(this._cj5550,"");
         this._cj5550.displayAsPassword = param2;
         this._cj5550.addEventListener(FocusEvent.FOCUS_IN,this._ty3053);
         this._cj5550.addEventListener(FocusEvent.FOCUS_OUT,this._aj1770);
         this._cj5550.addEventListener(KeyboardEvent.KEY_DOWN,this._qk5468);
      }
      
      private function _qk5468(param1:KeyboardEvent) : void
      {
         param1.stopImmediatePropagation();
         if(param1.keyCode == Keyboard.ENTER)
         {
            if(this._cj5550.stage != null)
            {
               this._cj5550.stage.focus = null;
            }
            this._ee15121();
         }
      }
      
      protected function _ee15121() : void
      {
         this._oi14444();
      }
      
      private function _ty3053(param1:FocusEvent) : void
      {
         param1.stopImmediatePropagation();
         this._vh750();
      }
      
      protected function _vh750() : void
      {
         this._oi14444();
      }
      
      private function _aj1770(param1:FocusEvent) : void
      {
         param1.stopImmediatePropagation();
         this._ru3727();
      }
      
      protected function _ru3727() : void
      {
         this._oi14444();
      }
      
      public function _ny1164(param1:int) : void
      {
         if(this._wg10883)
         {
            this._sx9369 = this._wg10883.transform.colorTransform;
            this._sx9369.color = param1;
            this._wg10883.transform.colorTransform = this._sx9369;
         }
      }
      
      public function _uy13942(param1:int) : void
      {
         if(this._cj5550)
         {
            this._cj5550.textColor = param1;
         }
      }
      
      public function getTextField() : TextField
      {
         return this._cj5550;
      }
      
      public function _xm12217() : String
      {
         if(this._oi14444())
         {
            return this._cj5550.text;
         }
         return null;
      }
      
      public function _xl9503(param1:String) : void
      {
         if(Boolean(this._oi14444()) && (param1 != null && param1.length > 0))
         {
            UtilsUtils._xl9503(this._cj5550,param1);
         }
      }
      
      public function _ws13498(param1:String, param2:uint) : void
      {
         this._cj5550.restrict = param1;
         this._cj5550.maxChars = param2;
      }
      
      public function destroy() : void
      {
         if(this._cj5550)
         {
            this._cj5550.removeEventListener(FocusEvent.FOCUS_IN,this._ty3053);
            this._cj5550.removeEventListener(FocusEvent.FOCUS_OUT,this._aj1770);
            this._cj5550.removeEventListener(KeyboardEvent.KEY_DOWN,this._qk5468);
            this._cj5550 = null;
         }
         this._pj7103 = null;
      }
      
      public function _jg5186() : void
      {
         if(this._cj5550)
         {
            UtilsUtils._xl9503(this._cj5550,"");
         }
      }
      
      private function _oi14444() : Boolean
      {
         if(this._cj5550)
         {
            return true;
         }
         throw new Error("GenericInputTextfield \'var _textfield\' = null");
      }
   }
}

