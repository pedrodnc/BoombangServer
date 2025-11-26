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
      
      private var textString:ComponentsView;
      
      private var _db16094:MovieClip;
      
      private var _mu4299:MovieClip;
      
      private var _xo6614:MovieClip;
      
      public function ComponentController(param1:Array)
      {
         super();
         this._data = param1;
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029(["messages.swf"],this.show);
      }
      
      private function show() : void
      {
         this._xo6614 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("messages.swf","DelayedGiftMessage");
         this._mu4299 = this._xo6614["yellowWindow"];
         this.textString = new ComponentsView(this._xo6614["title"]);
         this.textString.txt = "notification.message.giftOpened";
         this.handleSocket(0.35);
         addChild(this._xo6614);
      }
      
      protected function handleSocket(param1:Number = 1) : void
      {
         var count:int = 0;
         var count3:Array = null;
         var count1:NotificationsModel = null;
         var count2:MovieClip = null;
         var count7:ComponentsModel = null;
         this._db16094 = new MovieClip();
         var items:int = int(this._data[7]);
         if(items > 0)
         {
            count = 0;
            while(count < items)
            {
               count3 = SocketManager.getList1(this._data[8 + count]);
               count1 = new NotificationsModel();
               count1.id = count3[0];
               if(count3[1])
               {
                  count1.txt = count3[1];
               }
               count1._kp2503 = CoreModel._dy2407.getString(count1.id.toString());
               count2 = (ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("messages.swf","IconHolder");
               count7 = new ComponentsModel(count2,count1,param1);
               count7.x = count7.width * count + 10 * count;
               this._db16094.addChild(count7);
               count++;
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
         if(this.textString)
         {
            this.textString.destroy();
         }
      }
   }
}

