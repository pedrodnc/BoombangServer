package src.tv.boombang.application.user.gui.windows.activateKey
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.allData.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows._ei5768;
   import src.tv.boombang.commons.utils.*;
   import src.utils.*;
   
   public class _hc7927 extends _ei5768
   {
      
      private var _ye750:MovieClip;
      
      private var _th13283:MovieClip;
      
      private var _sh9259:MovieClip;
      
      private var _vh9949:MovieClip;
      
      private var _od7243:MovieClip;
      
      public function _hc7927(param1:MovieClip, param2:String)
      {
         super(param1,param2,_gn3649._hw12952);
         _xo6614 = param1;
         this._ye750 = _xo6614["description"];
         this._th13283 = _xo6614["list"];
         this._sh9259 = _xo6614["inputTitle"];
         this._vh9949 = _xo6614["repeatTitle"];
         this._od7243 = _xo6614["warning"];
         _yq8362._xl9503(this._ye750["txt"] as TextField,"windows.activateKey.description");
         _yq8362._bj8346(this._th13283["txt"] as TextField,"windows.activateKey.list");
         (this._ye750["txt"] as TextField).height = (this._ye750["txt"] as TextField).textHeight + 10;
         (this._th13283["txt"] as TextField).height = (this._th13283["txt"] as TextField).textHeight + 10;
         this._th13283.y = this._ye750.y + this._ye750.height;
         _yq8362._bj8346(this._sh9259["txt"] as TextField,"windows.securityKey");
         _yq8362._bj8346(this._vh9949["txt"] as TextField,"windows.repeatSecurityKey");
         _yq8362._bj8346(this._od7243["txt"] as TextField,"windows.activateKey.warning");
         addChild(_xo6614);
      }
      
      override protected function validate() : Boolean
      {
         if(!_kw5987._ai14934(_pp1786.txt,_hv12530.getInstance()._hw3203))
         {
            _pp1786._jr5664(_gn3649._if7748,"windows.passwordAndSecurityPasswordEqual");
            _na2594._jr5664(_gn3649._ad6139);
            return false;
         }
         return super.validate();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         removeChild(_xo6614);
         _xo6614 = null;
      }
   }
}

