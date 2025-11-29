package src.tv.boombang.application.global.gui.windows
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.utils.*;
   
   public class _ei5768 extends _va2030
   {
      
      protected var _pp1786:_gn3649;
      
      protected var _na2594:_gn3649;
      
      public function _ei5768(param1:MovieClip, param2:String, param3:String)
      {
         super(param1,param2);
         this._pp1786 = new _gn3649(_xo6614["key"],param3);
         _qi5262.push(this._pp1786);
         this._na2594 = new _gn3649(_xo6614["keyRepeat"],param3);
         _qi5262.push(this._na2594);
         this._na2594._tc5184 = false;
         this._pp1786.addEventListener(FocusEvent.FOCUS_OUT,this._go16142,false,0,true);
         this._na2594.addEventListener(FocusEvent.FOCUS_OUT,this._pi11684,false,0,true);
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
      
      protected function _go16142(param1:FocusEvent) : void
      {
         if(this._na2594.txt != "")
         {
            this._hh6534();
         }
      }
      
      protected function _pi11684(param1:FocusEvent) : void
      {
         this._na2594._jr5664(_gn3649._ad6139);
         if(this._pp1786.txt != "" && this._na2594.txt != "")
         {
            this.validate();
         }
      }
      
      public function set _ih11223(param1:String) : void
      {
         _yq8362._xl9503(_xo6614["inputTitle"]["txt"] as TextField,param1);
      }
      
      public function set _ed12820(param1:String) : void
      {
         _yq8362._xl9503(_xo6614["repeatTitle"]["txt"] as TextField,param1);
      }
      
      override protected function validate() : Boolean
      {
         if(!this._pp1786.validate() || !this._na2594.validate())
         {
            return false;
         }
         return this._hh6534();
      }
      
      protected function _hh6534() : Boolean
      {
         if(this._pp1786.txt != this._na2594.txt)
         {
            this._na2594._jr5664("statusWrong","validation.valuesDontMatch");
            return false;
         }
         this._na2594._jr5664(_gn3649.STATUS_OK);
         return true;
      }
   }
}

