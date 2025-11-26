package src.tv.boombang.commons
{
   import flash.display.*;
   import flash.errors.IOError;
   import flash.events.*;
   import flash.net.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class EventDispatcher extends EventDispatcher implements Interfaces
   {
      
      public static const urlString:String = "text";
      
      public static const urlString1:String = "image";
      
      public static const urlString2:String = "assetLoadingComplete";
      
      public static const urlString3:String = "assetLoadingError";
      
      protected var _db5068:URLLoader;
      
      protected var _wi10409:Loader;
      
      protected var _url:String;
      
      protected var count:String;
      
      public function EventDispatcher(param1:String, param2:String = "")
      {
         super();
         this._url = param1;
         this.count = param2;
      }
      
      public function load() : void
      {
         if(this.count == urlString)
         {
            this._db5068 = new URLLoader();
            this._db5068.addEventListener(Event.COMPLETE,this.decrypt);
            this._db5068.addEventListener(ProgressEvent.PROGRESS,this.loadResource);
            this._db5068.addEventListener(IOErrorEvent.IO_ERROR,this._pi3241);
            try
            {
               this._db5068.load(new URLRequest(this._url));
            }
            catch(e:IOError)
            {
            }
         }
         else
         {
            this._wi10409 = new Loader();
            this._wi10409.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.loadResource);
            this._wi10409.contentLoaderInfo.addEventListener(Event.COMPLETE,this.decrypt);
            this._wi10409.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this._pi3241);
            try
            {
               this._wi10409.load(new URLRequest(this._url));
            }
            catch(e:IOError)
            {
            }
         }
      }
      
      public function destroy() : void
      {
         if(this._db5068)
         {
            this._db5068.removeEventListener(Event.COMPLETE,this.decrypt);
            this._db5068.removeEventListener(ProgressEvent.PROGRESS,this.loadResource);
            this._db5068.removeEventListener(IOErrorEvent.IO_ERROR,this._pi3241);
         }
         if(this._wi10409)
         {
            this._wi10409.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,this.loadResource);
            this._wi10409.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.decrypt);
            this._wi10409.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this._pi3241);
         }
      }
      
      protected function decrypt(param1:Event = null) : void
      {
         this.destroy();
         dispatchEvent(new Event(urlString2));
      }
      
      public function getData() : *
      {
         if(this.count == urlString)
         {
            return this._db5068.data;
         }
         return this._wi10409;
      }
      
      private function loadResource(param1:ProgressEvent) : void
      {
      }
      
      private function _pi3241(param1:IOErrorEvent) : void
      {
         dispatchEvent(new Event(EventDispatcher.urlString3));
      }
   }
}

