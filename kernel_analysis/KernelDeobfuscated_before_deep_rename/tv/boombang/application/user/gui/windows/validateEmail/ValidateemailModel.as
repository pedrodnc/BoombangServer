package src.tv.boombang.application.user.gui.windows.validateEmail
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.allData.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.commons.interfaces.*;
   import src.utils.*;
   
   public class ValidateemailModel extends WindowsView implements Interfaces
   {
      
      private var _ye750:MovieClip;
      
      private var _uo8175:MovieClip;
      
      private var _mc15708:ComponentsView;
      
      public function ValidateemailModel(param1:MovieClip, param2:String, param3:String)
      {
         super(param1,param2,param3);
         this._ye750 = _xo6614["description"];
         this._uo8175 = _xo6614["newsLetter"];
         this._mc15708 = new ComponentsView(_xo6614["checkBox"]);
         _qi5262.push(this._mc15708);
         UtilsUtils._xl9503(this._ye750["txt"] as TextField,"windows.validateEmail.description");
         UtilsUtils._xl9503(this._uo8175["txt"] as TextField,"windows.validateEmail.newsletter");
         _pp1786.txt = UserSession.getInstance()._am6464;
         _na2594.txt = UserSession.getInstance()._am6464;
         this._mc15708.selected = false;
      }
      
      override protected function _ly12555() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_._tm10079 = _pp1786.txt;
         _loc1_.newsLetter = this._mc15708.selected;
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

