package src.modules.login.choosePerson.Registro
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class _er12801 extends MovieClip implements _jk15536
   {
      
      private var _xo6614:MovieClip;
      
      private var _oi9541:Function;
      
      public function _er12801(param1:Function)
      {
         super();
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("commonLibrary.swf","CircleSteps");
         addChild(this._xo6614);
         this._oi9541 = param1;
         this._xo6614["volverBtn"].buttonMode = true;
         this._xo6614["volverBtn"].useHandCursor = true;
         this._xo6614["volverBtn"].addEventListener(MouseEvent.CLICK,this._pi3274,false,0,true);
         _yq8362._xl9503(this._xo6614["volverBtn"]["elements"]["txt"],"button.back");
      }
      
      private function _pi3274(param1:MouseEvent) : void
      {
         this._oi9541();
      }
      
      public function destroy() : void
      {
         this._xo6614["volverBtn"].removeEventListener(MouseEvent.CLICK,this._pi3274);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         this._xo6614.visible = param1;
      }
      
      override public function get visible() : Boolean
      {
         return this._xo6614.visible;
      }
      
      public function _yt1537() : void
      {
         this._xo6614["mcStep1"].alpha = 1;
         this._xo6614["mcStep2"].alpha = 0.5;
         this._xo6614["volverBtn"].visible = false;
      }
      
      public function _dw9470() : void
      {
         this._xo6614["mcStep1"].alpha = 0.5;
         this._xo6614["mcStep2"].alpha = 1;
         this._xo6614["volverBtn"].visible = true;
      }
   }
}

