package src.tv.boombang.application.user.gui.windows.changePassword
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows._ei5768;
   import src.tv.boombang.core.communications.*;
   import src.utils.*;
   
   public class _fm9767 extends _ei5768
   {
      
      protected var _nb5284:_gn3649;
      
      private var _ru14415:Boolean = false;
      
      protected var _pp10396:String;
      
      public function _fm9767(param1:MovieClip, param2:String)
      {
         super(param1,param2,_gn3649._wx3290);
         this._nb5284 = new _gn3649(_xo6614["oldPassword"],_gn3649._wx3290);
         _qi5262.push(this._nb5284);
         this._nb5284._tc5184 = false;
         this._nb5284.addEventListener(FocusEvent.FOCUS_OUT,this._uu5327,false,0,true);
         _kr10933._xo2736(_te13472._ai13635,this._sk542);
      }
      
      public function set _ta7578(param1:String) : void
      {
         _yq8362._xl9503(_xo6614["oldPasswordTitle"]["txt"],param1);
      }
      
      public function set _to10627(param1:String) : void
      {
         this._pp10396 = param1;
      }
      
      override protected function validate() : Boolean
      {
         var _loc1_:Boolean = this._pp10396 == super._pp1786.txt && super._pp1786.txt != "";
         var _loc2_:Boolean = this._nb5284.txt == super._pp1786.txt && super._pp1786.txt != "";
         if(!this._ru14415)
         {
            this._nb5284._jr5664(_gn3649._if7748,"windows.changePassword.incorrectOldPassword");
         }
         if(_loc1_)
         {
            _pp1786._jr5664(_gn3649._if7748,"windows.changePassword.passwordAndSecurityPasswordEqual");
         }
         if(_loc2_)
         {
            _pp1786._jr5664(_gn3649._if7748,"windows.changePassword.newPasswordIsOldPassword");
         }
         return !_loc2_ && !_loc1_ && Boolean(this._ru14415) && Boolean(this._nb5284.validate()) && super.validate();
      }
      
      override protected function _ly12555() : Object
      {
         var _loc1_:String = (_xo6614["oldPassword"]["textContainer"]["txt"] as TextField).text;
         var _loc2_:String = (_xo6614["key"]["textContainer"]["txt"] as TextField).text;
         return {
            "oldPassword":_loc1_,
            "newPassword":_loc2_
         };
      }
      
      private function _uu5327(param1:FocusEvent) : void
      {
         this._ru14415 = false;
         if(this._nb5284.txt != "")
         {
            this._nb5284._jr5664(_gn3649._xe2976);
            _ld5065._sf101(this._nb5284.txt);
         }
      }
      
      private function _sk542(param1:_bc9270) : void
      {
         var _loc2_:int = int(param1._qp16092(1));
         if(_loc2_ != _te13472._gp8637)
         {
            return;
         }
         var _loc3_:int = int(param1.items[0]);
         if(_loc3_ == _kr10933._qj7323)
         {
            this._nb5284._jr5664(_gn3649._if7748,"Unexpected server error");
         }
         else if(_loc3_ == _kr10933._ad11893)
         {
            this._nb5284._jr5664(_gn3649.STATUS_OK);
            this._ru14415 = true;
         }
         else if(_loc3_ == _kr10933._vd12313)
         {
            this._nb5284._jr5664(_gn3649._if7748,"windows.changePassword.incorrectOldPassword");
            this._ru14415 = false;
         }
      }
   }
}

