package src.tv.boombang.application.bpad.gui.component
{
   import flash.display.*;
   import src.multiuser.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.datatypes.notifications.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class ComponentController extends MovieClip implements Interfaces
   {
      
      private var _data:Array;
      
      private var _kc4744:ComponentsView;
      
      private var _db16094:MovieClip;
      
      private var _mu4299:MovieClip;
      
      private var _xo6614:MovieClip;
      
      public function ComponentController(param1:Array)
      {
         super();
         this._data = param1;
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029(["messages.swf"],this._lu7260);
      }
      
      private function _lu7260() : void
      {
         this._xo6614 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("messages.swf","DelayedGiftMessage");
         this._mu4299 = this._xo6614["yellowWindow"];
         this._kc4744 = new ComponentsView(this._xo6614["title"]);
         this._kc4744.txt = "notification.message.giftOpened";
         this._li7391(0.35);
         addChild(this._xo6614);
      }
      
      protected function _li7391(param1:Number = 1) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:NotificationsModel = null;
         var _loc5_:MovieClip = null;
         var _loc6_:ComponentsModel = null;
         this._db16094 = new MovieClip();
         var _loc7_:int = int(this._data[7]);
         if(_loc7_ > 0)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc7_)
            {
               _loc3_ = SocketManager._go4983(this._data[8 + _loc2_]);
               _loc4_ = new NotificationsModel();
               _loc4_.id = _loc3_[0];
               if(_loc3_[1])
               {
                  _loc4_.txt = _loc3_[1];
               }
               _loc4_._kp2503 = CoreModel._dy2407._qb15298(_loc4_.id.toString());
               _loc5_ = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("messages.swf","IconHolder");
               _loc6_ = new ComponentsModel(_loc5_,_loc4_,param1);
               _loc6_.x = _loc6_.width * _loc2_ + 10 * _loc2_;
               this._db16094.addChild(_loc6_);
               _loc2_++;
            }
            this._xo6614.addChild(this._db16094);
            this._db16094.x = this._mu4299.x + (this._mu4299.width / 2 - this._db16094.width / 2);
            this._db16094.y = this._mu4299.y + (this._mu4299.height / 2 - this._db16094.height / 2) - 5;
         }
         else
         {
            this._mu4299.visible = false;
         }
      }
      
      public function destroy() : void
      {
         if(this._kc4744)
         {
            this._kc4744.destroy();
         }
      }
   }
}

