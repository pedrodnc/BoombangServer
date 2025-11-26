package src.tv.boombang.application.bpad.gui.component
{
   import flash.display.MovieClip;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class _if12685 extends MovieClip implements _jk15536
   {
      
      private var _data:Array;
      
      private var _kc4744:_xg1747;
      
      private var _db16094:MovieClip;
      
      private var _xo6614:MovieClip;
      
      public function _if12685(param1:Array)
      {
         super();
         this._data = param1;
         (_lh7543.get(_vy3822) as _vy3822)._vv13029(["messages.swf"],this._lu7260);
      }
      
      private function _lu7260() : void
      {
         this._xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("messages.swf","MissionsMessage");
         this._kc4744 = new _xg1747(this._xo6614["title"]);
         this._kc4744.txt = "notification.message.missionsComplete";
         this._kc4744.y += 5;
         addChild(this._xo6614);
      }
      
      public function destroy() : void
      {
         if(this._kc4744 != null)
         {
            this._kc4744.destroy();
            this._kc4744 = null;
         }
         removeChild(this._xo6614);
         this._xo6614 = null;
      }
   }
}

