package src.tv.boombang.commons
{
   import flash.display.*;
   import flash.errors.IOError;
   import flash.events.*;
   import flash.net.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class EventDispatcher extends EventDispatcher implements Interfaces
   {
      
      public static const _yy8162:String = "text";
      
      public static const _vd10814:String = "image";
      
      public static const _om2683:String = "assetLoadingComplete";
      
      public static const _qv3006:String = "assetLoadingError";
      
      protected var _db5068:URLLoader;
      
      protected var _wi10409:Loader;
      
      protected var _url:String;
      
      protected var _gn930:String;
      
      public function EventDispatcher(param1:String, param2:String = "")
      {
         super();
         this._url = param1;
         this._gn930 = param2;
      }
      
      public function load() : void
      {
         if(this._gn930 == _yy8162)
         {
            this._db5068 = new URLLoader();
            this._db5068.addEventListener(Event.COMPLETE,this._rm1014);
            this._db5068.addEventListener(ProgressEvent.PROGRESS,this._pu4260);
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
            this._wi10409.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this._pu4260);
            this._wi10409.contentLoaderInfo.addEventListener(Event.COMPLETE,this._rm1014);
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
            this._db5068.removeEventListener(Event.COMPLETE,this._rm1014);
            this._db5068.removeEventListener(ProgressEvent.PROGRESS,this._pu4260);
            this._db5068.removeEventListener(IOErrorEvent.IO_ERROR,this._pi3241);
         }
         if(this._wi10409)
         {
            this._wi10409.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,this._pu4260);
            this._wi10409.contentLoaderInfo.removeEventListener(Event.COMPLETE,this._rm1014);
            this._wi10409.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this._pi3241);
         }
      }
      
      protected function _rm1014(param1:Event = null) : void
      {
         this.destroy();
         dispatchEvent(new Event(_om2683));
      }
      
      public function getData() : *
      {
         if(this._gn930 == _yy8162)
         {
            return this._db5068.data;
         }
         return this._wi10409;
      }
      
      private function _pu4260(param1:ProgressEvent) : void
      {
      }
      
      private function _pi3241(param1:IOErrorEvent) : void
      {
         dispatchEvent(new Event(EventDispatcher._qv3006));
      }
   }
}

