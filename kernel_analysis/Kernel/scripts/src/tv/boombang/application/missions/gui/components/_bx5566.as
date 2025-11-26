package src.tv.boombang.application.missions.gui.components
{
   import flash.display.*;
   import flash.events.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.datatypes.missions._mj15721;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _bx5566 extends MovieClip implements _jk15536
   {
      
      private var _kc4744:_om4028;
      
      private var _yc13482:_om4028;
      
      private var _qq12739:_om4028;
      
      private var _dk272:_om4028;
      
      private var _il9604:_va5249;
      
      private var _xo6614:MovieClip;
      
      public function _bx5566()
      {
         super();
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("missionsAssets.swf","Details");
         this._xo6614.x = 45;
         this._xo6614.y = 85;
         this._yc13482 = new _om4028(this._xo6614["body"] as MovieClip);
         this._kc4744 = new _om4028(this._xo6614["title"] as MovieClip);
         this._qq12739 = new _om4028(this._xo6614["reward"] as MovieClip);
         this._dk272 = new _om4028(this._xo6614["earn"] as MovieClip);
         this._il9604 = new _va5249(this._xo6614["backButton"] as MovieClip,"button.back");
         this._il9604.addEventListener(MouseEvent.CLICK,this._ry14905,false,0,true);
         addChild(this._xo6614);
      }
      
      public function _xd13006(param1:_mj15721) : void
      {
         this._qq12739.txt = "missions.details.reward";
         this._dk272.txt = "+" + param1._ec8491;
         this._yc13482.txt = "missions.details.mission_" + param1.id;
         this._kc4744.txt = "missions.list.title_" + param1.id;
      }
      
      private function _ry14905(param1:MouseEvent) : void
      {
         dispatchEvent(new Event("onShowList"));
      }
      
      public function destroy() : void
      {
         this._yc13482.destroy();
         this._kc4744.destroy();
         this._qq12739.destroy();
         this._dk272.destroy();
         this._il9604.destroy();
         this._il9604.removeEventListener(MouseEvent.CLICK,this._ry14905);
      }
   }
}

