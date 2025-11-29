package src.tv.boombang.application.user.gui.windows.manageSubscriptions
{
   import flash.display.MovieClip;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows._va2030;
   import src.tv.boombang.commons.interfaces.*;
   
   public class _ne9550 extends _va2030 implements _jk15536
   {
      
      private var _ye750:_om4028;
      
      private var _fu4677:_om4028;
      
      private var _mc15708:_co7276;
      
      public function _ne9550(param1:MovieClip, param2:String, param3:Boolean)
      {
         super(param1,param2);
         this._ye750 = new _om4028(_xo6614["description"]);
         this._fu4677 = new _om4028(_xo6614["newsLetter"]);
         this._mc15708 = new _co7276(_xo6614["checkBox"]);
         _qi5262.push(this._mc15708);
         super.title = "windows.manageSubscriptions.title";
         this._ye750.txt = "windows.manageSubscriptions.description";
         this._fu4677.txt = "windows.validateEmail.newsletter";
         this._mc15708.selected = param3;
      }
      
      override protected function _ly12555() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_["newsletterEnabled"] = this._mc15708.selected;
         return _loc1_;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         removeChild(_xo6614);
         _xo6614 = null;
      }
   }
}

