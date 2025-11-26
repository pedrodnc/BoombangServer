package src.tv.boombang.application.global.gui.components
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _bm12889 extends _rn8936
   {
      
      private static const _qa10029:String = "commonLibrary.swf";
      
      private var _xo6614:MovieClip;
      
      private var _ig5144:_qy9375;
      
      public function _bm12889()
      {
         super();
         (_lh7543.get(_vy3822) as _vy3822)._vv13029([_qa10029],this._lu7260);
      }
      
      private function _lu7260() : void
      {
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619(_qa10029,"BannerContainer");
         addChild(this._xo6614);
         graphics.beginFill(0);
         graphics.drawRect(33,33,325,270);
         graphics.endFill();
         this._ig5144 = new _qy9375(this._xo6614["closeButton"]);
         this._ig5144.addEventListener(MouseEvent.CLICK,this._qn6887,false,0,true);
      }
      
      protected function _qn6887(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(Event.CLOSE));
      }
   }
}

