package src.tv.boombang.library.popup
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.com.greensock.*;
   import src.com.greensock.easing.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class PopupView extends UIButton implements InterfacesView
   {
      
      protected var isEnabled:Boolean;
      
      private var _ii6403:ComponentsController;
      
      protected var _xo6614:MovieClip;
      
      public function PopupView(param1:Boolean = true)
      {
         super();
         this.isEnabled = param1;
         if(this.isEnabled)
         {
            this._ii6403 = new ComponentsController();
            addChild(this._ii6403);
         }
      }
      
      protected function move() : void
      {
         if(this.isEnabled)
         {
            removeChild(this._ii6403);
            this._ii6403 = null;
         }
         _np5723 = new Point(0.5,0.5);
         this._xo6614.scaleX = 0;
         this._xo6614.scaleY = 0;
         addChild(this._xo6614);
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
         GreensockUtils._lk9069(this._xo6614,1,{
            "scaleX":1,
            "scaleY":1,
            "ease":CustomEase._yi14844("elasticBoombang")
         });
      }
      
      protected function move1() : void
      {
         GreensockUtils._lk9069(this._xo6614,1,{
            "scaleX":0,
            "scaleY":0,
            "ease":CustomEase._yi14844("elasticBoombang"),
            "decrypt":function():void
            {
               removePopUp();
            }
         });
      }
      
      private function removePopUp() : void
      {
         destroy();
         PopUpManager.removePopUp(this);
      }
      
      public function get view() : DisplayObject
      {
         return this._xo6614;
      }
   }
}

