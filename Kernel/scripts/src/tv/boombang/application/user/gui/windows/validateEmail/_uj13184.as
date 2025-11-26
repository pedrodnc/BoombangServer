package src.tv.boombang.application.user.gui.windows.validateEmail
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.allData.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows._ei5768;
   import src.tv.boombang.commons.interfaces.*;
   import src.utils.*;
   
   public class _uj13184 extends _ei5768 implements _jk15536
   {
      
      private var _ye750:MovieClip;
      
      private var _uo8175:MovieClip;
      
      private var _mc15708:_co7276;
      
      public function _uj13184(param1:MovieClip, param2:String, param3:String)
      {
         super(param1,param2,param3);
         this._ye750 = _xo6614["description"];
         this._uo8175 = _xo6614["newsLetter"];
         this._mc15708 = new _co7276(_xo6614["checkBox"]);
         _qi5262.push(this._mc15708);
         _yq8362._xl9503(this._ye750["txt"] as TextField,"windows.validateEmail.description");
         _yq8362._xl9503(this._uo8175["txt"] as TextField,"windows.validateEmail.newsletter");
         _pp1786.txt = _hv12530.getInstance()._am6464;
         _na2594.txt = _hv12530.getInstance()._am6464;
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

