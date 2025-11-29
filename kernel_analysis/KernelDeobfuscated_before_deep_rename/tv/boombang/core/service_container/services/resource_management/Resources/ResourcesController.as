package src.tv.boombang.core.service_container.services.resource_management.Resources
{
   import flash.events.*;
   import flash.net.*;
   import flash.utils.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.commons.loadables.*;
   
   public class ResourcesController extends EventDispatcher implements Interfaces, SWFLoader
   {
      
      private var _url:String;
      
      private var _db5068:URLLoader;
      
      private var _id:String;
      
      protected var _es2525:ByteArray;
      
      protected var _kf13187:Boolean = false;
      
      protected var _vm530:uint;
      
      public function ResourcesController(param1:String, param2:String)
      {
         super();
         this._url = param1;
         this._id = param2;
      }
      
      private static function _su7552(param1:int) : int
      {
         return int(1103515245 * param1) + 12345;
      }
      
      public function destroy() : void
      {
         if(this._db5068 != null)
         {
            this._db5068.removeEventListener(Event.COMPLETE,this._rm1014);
            this._db5068.removeEventListener(ProgressEvent.PROGRESS,this._pu4260);
            this._db5068.removeEventListener(IOErrorEvent.IO_ERROR,this._pi3241);
            this._db5068 = null;
         }
         this._es2525 = null;
      }
      
      public function load() : void
      {
         this._db5068 = new URLLoader();
         this._db5068.addEventListener(Event.COMPLETE,this._rm1014);
         this._db5068.addEventListener(ProgressEvent.PROGRESS,this._pu4260);
         this._db5068.addEventListener(IOErrorEvent.IO_ERROR,this._pi3241);
         this._db5068.dataFormat = URLLoaderDataFormat.BINARY;
         this._db5068.load(new URLRequest(this._url));
      }
      
      public function get _kn5152() : Boolean
      {
         return this._kf13187;
      }
      
      public function _mv15948(param1:Function) : void
      {
         addEventListener(Event.COMPLETE,param1);
      }
      
      public function _xp10276(param1:Function) : void
      {
         removeEventListener(Event.COMPLETE,param1);
      }
      
      public function get url() : String
      {
         return this._url;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get _sa8043() : uint
      {
         return this._vm530;
      }
      
      public function set _sa8043(param1:uint) : void
      {
         this._vm530 = param1;
      }
      
      protected function _rm1014(param1:Event = null) : void
      {
         var _loc2_:ByteArray = null;
         this._db5068.removeEventListener(Event.COMPLETE,this._rm1014);
         this._db5068.removeEventListener(ProgressEvent.PROGRESS,this._pu4260);
         this._db5068.removeEventListener(IOErrorEvent.IO_ERROR,this._pi3241);
         if(this._db5068.dataFormat == URLLoaderDataFormat.BINARY)
         {
            _loc2_ = this._db5068.data;
            this._es2525 = this.decrypt(_loc2_);
            this._ai13392();
         }
      }
      
      protected function _ai13392() : void
      {
         this._kf13187 = true;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function _pu4260(param1:ProgressEvent) : void
      {
         dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS,false,false,param1.bytesLoaded,param1.bytesTotal));
      }
      
      private function _pi3241(param1:IOErrorEvent) : void
      {
         dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,"File doesn`t exist " + this._url));
      }
      
      private function decrypt(param1:ByteArray) : ByteArray
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = 0;
         var _loc9_:ByteArray = null;
         if(param1.length > 4)
         {
            _loc2_ = param1.readByte();
            _loc3_ = param1.readByte();
            _loc4_ = param1.readByte();
            _loc5_ = param1.readByte();
            if(_loc2_ == 15 && _loc3_ == 14 && _loc4_ == 13 && _loc5_ == 14)
            {
               _loc9_ = new ByteArray();
               _loc6_ = 8883322;
               _loc7_ = int(_su7552(_loc6_));
               while(param1.bytesAvailable > 0)
               {
                  _loc8_ = param1.readByte();
                  _loc8_ = _loc8_ ^ _loc7_;
                  _loc9_.writeByte(_loc8_);
                  _loc7_ = int(_su7552(_loc7_));
               }
               _loc9_.position = 0;
            }
            else
            {
               param1.position = 0;
               _loc9_ = param1;
            }
         }
         else
         {
            _loc9_ = param1;
         }
         return _loc9_;
      }
   }
}

