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
      
      private var _au309:Boolean = false;
      
      public function ServicesController()
      {
         super();
      }
      
      public function start(param1:Object) : Boolean
      {
         PacketBuilder._xo2736(MessageTypeConstants._mt15930,this._sk542);
         Communications._gj9315();
         return true;
      }
      
      public function stop() : Boolean
      {
         dispatchEvent(new ServiceContainerEvents(this,ServiceContainerEvents._ij6606));
         this._lc9851 = null;
         return false;
      }
      
      public function get _kn5152() : Boolean
      {
         return this._lc9851 ? true : false;
      }
      
      public function _mv15948(param1:Function) : void
      {
         addEventListener(ServiceContainerEvents._fq14658,param1);
      }
      
      public function _xp10276(param1:Function) : void
      {
         removeEventListener(ServiceContainerEvents._ij6606,param1);
      }
      
      private function _sk542(param1:NetworkEventWrapper) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = int(param1._qp16092(0));
         var _loc4_:int = int(param1._qp16092(1));
         var _loc5_:int = int(param1.items[0]);
         if(_loc3_ == MessageTypeConstants._mt15930 && _loc4_ == MessageTypeConstants._rt9545)
         {
            this._lc9851 = new Dictionary();
            _loc2_ = 0;
            while(_loc2_ < param1.items.length)
            {
               this.update(param1.items[_loc2_]);
               _loc2_++;
            }
         }
         this._ak10240();
         dispatchEvent(new ServiceContainerEvents(this,ServiceContainerEvents._fq14658));
      }
      
      public function _kq14454(param1:Array) : void
      {
         var _loc2_:MissionsModel = null;
         var _loc3_:int = int(param1[0]);
         var _loc4_:int = 1;
         while(_loc4_ < param1.length)
         {
            _loc2_ = this._lc9851[param1[_loc4_]];
            _loc2_.status = _loc3_;
            Ga._fs11949(_loc2_.id,this._fs3776());
            _loc4_++;
         }
         this._ak10240();
      }
      
      private function _fs3776() : int
      {
         var _loc1_:MissionsModel = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this._lc9851)
         {
            if(_loc1_.status == MissionsModel._ok5260)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      private function update(param1:String) : void
      {
         var _loc2_:MissionsModel = MissionsModel.parse(SocketManager._go4983(param1));
         this._lc9851[_loc2_.id] = _loc2_;
      }
      
      public function _gj9315() : Array
      {
         var _loc1_:MissionsModel = null;
         var _loc2_:Array = new Array();
         for each(_loc1_ in this._lc9851)
         {
            _loc2_.push(_loc1_.clone());
         }
         return _loc2_;
      }
      
      private function _ak10240() : void
      {
         var _loc1_:MissionsModel = null;
         this._au309 = true;
         for each(_loc1_ in this._lc9851)
         {
            if(_loc1_.status != MissionsModel._ok5260)
            {
               this._au309 = false;
               break;
            }
         }
      }
      
      public function get _cj12262() : Boolean
      {
         return this._au309;
      }
   }
}

