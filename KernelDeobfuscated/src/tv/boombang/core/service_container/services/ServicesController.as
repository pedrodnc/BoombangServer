package src.tv.boombang.core.service_container.services
{
   import flash.events.EventDispatcher;
   import flash.utils.*;
   import src.multiuser.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.ga.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.missions.*;
   import src.tv.boombang.core.service_container.*;
   
   public class ServicesController extends EventDispatcher implements ServiceContainer
   {
      
      private var _lc9851:Dictionary;
      
      private var isEnabled:Boolean = false;
      
      public function ServicesController()
      {
         super();
      }
      
      public function start(param1:Object) : Boolean
      {
         PacketBuilder.handleSocket(MessageTypeConstants.count87,this.update);
         Communications.getList();
         return true;
      }
      
      public function stop() : Boolean
      {
         dispatchEvent(new ServiceContainerEvents(this,ServiceContainerEvents.textString1));
         this._lc9851 = null;
         return false;
      }
      
      public function get loadResource2() : Boolean
      {
         return this._lc9851 ? true : false;
      }
      
      public function _mv15948(param1:Function) : void
      {
         addEventListener(ServiceContainerEvents.textString,param1);
      }
      
      public function move(param1:Function) : void
      {
         removeEventListener(ServiceContainerEvents.textString1,param1);
      }
      
      private function update(param1:NetworkEventWrapper) : void
      {
         var count:int = 0;
         var count3:int = int(param1._qp16092(0));
         var count1:int = int(param1._qp16092(1));
         var count2:int = int(param1.items[0]);
         if(count3 == MessageTypeConstants.count87 && count1 == MessageTypeConstants.count88)
         {
            this._lc9851 = new Dictionary();
            count = 0;
            while(count < param1.items.length)
            {
               this.update(param1.items[count]);
               count++;
            }
         }
         this._ak10240();
         dispatchEvent(new ServiceContainerEvents(this,ServiceContainerEvents.textString));
      }
      
      public function _kq14454(param1:Array) : void
      {
         var count:MissionsModel = null;
         var count3:int = int(param1[0]);
         var count1:int = 1;
         while(count1 < param1.length)
         {
            count = this._lc9851[param1[count1]];
            count.status = count3;
            Ga._fs11949(count.id,this._fs3776());
            count1++;
         }
         this._ak10240();
      }
      
      private function _fs3776() : int
      {
         var count2:MissionsModel = null;
         var count:int = 0;
         for each(count2 in this._lc9851)
         {
            if(count2.status == MissionsModel.count)
            {
               count++;
            }
         }
         return count;
      }
      
      private function update(param1:String) : void
      {
         var count:MissionsModel = MissionsModel.parse(SocketManager.getList1(param1));
         this._lc9851[count.id] = count;
      }
      
      public function getList() : Array
      {
         var count2:MissionsModel = null;
         var count:Array = new Array();
         for each(count2 in this._lc9851)
         {
            count.push(count2.clone());
         }
         return count;
      }
      
      private function _ak10240() : void
      {
         var count2:MissionsModel = null;
         this.isEnabled = true;
         for each(count2 in this._lc9851)
         {
            if(count2.status != MissionsModel.count)
            {
               this.isEnabled = false;
               break;
            }
         }
      }
      
      public function get _cj12262() : Boolean
      {
         return this.isEnabled;
      }
   }
}

