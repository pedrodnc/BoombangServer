package src.tv.boombang.application.missions.gui.windows
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.com.greensock.*;
   import src.com.greensock.easing.*;
   import src.tv.boombang.application.ga.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows._ja3764;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.library.steps.*;
   
   public class _tn795 extends _ja3764 implements _jk15536
   {
      
      private var _kc4744:_om4028;
      
      private var _qu13612:MovieClip;
      
      public function _tn795(param1:MovieClip, param2:String)
      {
         super(param1,param2);
         CustomEase.create("elasticBoombang",[{
            "s":0,
            "_qx12429":0.56899,
            "e":0.82
         },{
            "s":0.82,
            "_qx12429":1.071,
            "e":1.004
         },{
            "s":1.004,
            "_qx12429":0.937,
            "e":0.982
         },{
            "s":0.982,
            "_qx12429":1.02699,
            "e":1
         }]);
         this._xo6614.x = 700;
         _di6891._lk9069(this._xo6614,1.5,{
            "x":0,
            "ease":CustomEase._yi14844("elasticBoombang")
         });
         this._qu13612 = _xo6614["btn"];
         this._qu13612.buttonMode = true;
         this._kc4744 = new _om4028(this._qu13612["title"]);
         this._kc4744.txt = "title.missions";
      }
      
      private function _kh3979(param1:MouseEvent) : void
      {
         _nk11935(_pm4313._dh1979);
         _ia12312._fs11949("achievements list");
      }
      
      override public function destroy() : void
      {
         this._qu13612.removeEventListener(MouseEvent.CLICK,this._kh3979);
         super.destroy();
         removeChild(_xo6614);
         _xo6614 = null;
      }
   }
}

