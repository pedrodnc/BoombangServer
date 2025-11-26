package src.tv.boombang.application.missions.gui.windows
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.com.greensock.*;
   import src.com.greensock.easing.*;
   import src.tv.boombang.application.ga.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.library.steps.*;
   
   public class WindowsView extends WindowsView implements Interfaces
   {
      
      private var textString:ComponentsView;
      
      private var _qu13612:MovieClip;
      
      public function WindowsView(param1:MovieClip, param2:String)
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
         GreensockUtils._lk9069(this._xo6614,1.5,{
            "x":0,
            "ease":CustomEase._yi14844("elasticBoombang")
         });
         this._qu13612 = _xo6614["btn"];
         this._qu13612.buttonMode = true;
         this.textString = new ComponentsView(this._qu13612["title"]);
         this.textString.txt = "title.missions";
      }
      
      private function _kh3979(param1:MouseEvent) : void
      {
         _nk11935(StepsView.textString1);
         Ga._fs11949("achievements list");
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

