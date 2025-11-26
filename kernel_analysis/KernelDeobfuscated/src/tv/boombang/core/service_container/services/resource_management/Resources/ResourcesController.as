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
      
      protected var isEnabled:Boolean = false;
      
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
            this._db5068.removeEventListener(Event.COMPLETE,this.decrypt);
            this._db5068.removeEventListener(ProgressEvent.PROGRESS,this.loadResource);
            this._db5068.removeEventListener(IOErrorEvent.IO_ERROR,this._pi3241);
            this._db5068 = null;
         }
         this._es2525 = null;
      }
      
      public function load() : void
      {
         this._db5068 = new URLLoader();
         this._db5068.addEventListener(Event.COMPLETE,this.decrypt);
         this._db5068.addEventListener(ProgressEvent.PROGRESS,this.loadResource);
         this._db5068.addEventListener(IOErrorEvent.IO_ERROR,this._pi3241);
         this._db5068.dataFormat = URLLoaderDataFormat.BINARY;
         this._db5068.load(new URLRequest(this._url));
      }
      
      public function get loadResource2() : Boolean
      {
         return this.isEnabled;
      }
      
      public function _mv15948(param1:Function) : void
      {
         addEventListener(Event.COMPLETE,param1);
      }
      
      public function move(param1:Function) : void
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
      
      protected function decrypt(param1:Event = null) : void
      {
         var count:ByteArray = null;
         this._db5068.removeEventListener(Event.COMPLETE,this.decrypt);
         this._db5068.removeEventListener(ProgressEvent.PROGRESS,this.loadResource);
         this._db5068.removeEventListener(IOErrorEvent.IO_ERROR,this._pi3241);
         if(this._db5068.dataFormat == URLLoaderDataFormat.BINARY)
         {
            count = this._db5068.data;
            this._es2525 = this.decrypt(count);
            this._ai13392();
         }
      }
      
      protected function _ai13392() : void
      {
         this.isEnabled = true;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function loadResource(param1:ProgressEvent) : void
      {
         dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS,false,false,param1.bytesLoaded,param1.bytesTotal));
      }
      
      private function _pi3241(param1:IOErrorEvent) : void
      {
         dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,"File doesn`t exist " + this._url));
      }
      
      private function decrypt(param1:ByteArray) : ByteArray
      {
         var count:int = 0;
         var count3:int = 0;
         var count1:int = 0;
         var count2:int = 0;
         var count7:int = 0;
         var items:int = 0;
         var count8:* = 0;
         var count6:ByteArray = null;
         if(param1.length > 4)
         {
            count = param1.readByte();
            count3 = param1.readByte();
            count1 = param1.readByte();
            count2 = param1.readByte();
            if(count == 15 && count3 == 14 && count1 == 13 && count2 == 14)
            {
               count6 = new ByteArray();
               count7 = 8883322;
               items = int(_su7552(count7));
               while(param1.bytesAvailable > 0)
               {
                  count8 = param1.readByte();
                  count8 = count8 ^ items;
                  count6.writeByte(count8);
                  items = int(_su7552(items));
               }
               count6.position = 0;
            }
            else
            {
               param1.position = 0;
               count6 = param1;
            }
         }
         else
         {
            count6 = param1;
         }
         return count6;
      }
   }
}

