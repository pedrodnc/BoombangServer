package src.tv.boombang.commons
{
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.ApplicationDomain;
   import flash.utils.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class _vh5894 extends MovieClip implements _jk15536
   {
      
      public static const _yy8162:String = "text";
      
      public static const _vd10814:String = "visual";
      
      private var _wi10409:Loader;
      
      private var _db5068:URLLoader;
      
      private var _url:String;
      
      private var _sb3754:String;
      
      private var _content:DisplayObject;
      
      private var _kf13187:Boolean = false;
      
      private var _gn930:String;
      
      private var _yw10329:String;
      
      private var _id:String;
      
      public function _vh5894(param1:String, param2:String = null, param3:String = null)
      {
         super();
         if(param3 == null)
         {
            param3 = _vd10814;
         }
         this._sb3754 = param2;
         this._url = param1;
         this._gn930 = param3;
      }
      
      private static function _su7552(param1:int) : int
      {
         return int(1103515245 * param1) + 12345;
      }
      
      public function clone() : _vh5894
      {
         return new _vh5894(this.url,this._sb3754);
      }
      
      public function destroy() : void
      {
         if(this._db5068)
         {
            this._db5068.removeEventListener(Event.COMPLETE,this._rm1014);
            this._db5068.removeEventListener(ProgressEvent.PROGRESS,this._pu4260);
            this._db5068.removeEventListener(IOErrorEvent.IO_ERROR,this._pi3241);
         }
         this._wi10409 = null;
         this._content = null;
      }
      
      public function load() : void
      {
         this._db5068 = new URLLoader();
         this._db5068.addEventListener(Event.COMPLETE,this._rm1014,false,0,true);
         this._db5068.addEventListener(ProgressEvent.PROGRESS,this._pu4260,false,0,true);
         this._db5068.addEventListener(IOErrorEvent.IO_ERROR,this._pi3241,false,0,true);
         this._db5068.dataFormat = URLLoaderDataFormat.BINARY;
         try
         {
            this._db5068.load(new URLRequest(this._url));
         }
         catch(e:IOError)
         {
         }
      }
      
      public function _kn5152() : Boolean
      {
         return this._kf13187;
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
            _loc2_ = this.decrypt(_loc2_);
            if(this.type == _vd10814)
            {
               this._wi10409 = new Loader();
               this._wi10409.contentLoaderInfo.addEventListener(Event.COMPLETE,this._tm5845,false,0,true);
               this._wi10409.loadBytes(_loc2_);
            }
            else
            {
               this._yw10329 = _loc2_.readMultiByte(_loc2_.length,"utf-8");
               dispatchEvent(new _is380(_is380._om2683,false,false,this,1));
            }
         }
      }
      
      protected function _tm5845(param1:Event = null) : void
      {
         if(this._wi10409)
         {
            this._wi10409.contentLoaderInfo.removeEventListener(Event.COMPLETE,this._tm5845);
         }
         this._kf13187 = true;
         if(!this._content)
         {
            this._content = this.getContent();
            if(this._content)
            {
               this.addChild(this._content);
            }
         }
         dispatchEvent(new _is380(_is380._om2683,false,false,this,1));
      }
      
      private function _pu4260(param1:ProgressEvent) : void
      {
         dispatchEvent(new _is380(_is380._xs4183,false,false,this,param1.bytesLoaded / param1.bytesTotal));
      }
      
      private function _pi3241(param1:IOErrorEvent) : void
      {
         dispatchEvent(new _is380(_is380._qv3006,false,false,this));
      }
      
      public function get url() : String
      {
         return this._url;
      }
      
      public function get content() : DisplayObject
      {
         return this._content;
      }
      
      public function get ready() : Boolean
      {
         return this._wi10409 != null && this._kn5152();
      }
      
      private function getContent() : DisplayObject
      {
         var _loc1_:DisplayObject = null;
         if(this._sb3754)
         {
            return this._bn15619(this._sb3754);
         }
         if(this._wi10409)
         {
            _loc1_ = this._wi10409.content;
         }
         if(_loc1_ is Bitmap)
         {
            _loc1_ = new Bitmap((_loc1_ as Bitmap).bitmapData.clone());
            (_loc1_ as Bitmap).smoothing = true;
         }
         return _loc1_;
      }
      
      public function _bn15619(param1:String) : DisplayObject
      {
         var _loc2_:Class = this.getDefinition(param1) as Class;
         if(_loc2_ == null)
         {
            throw new InvalidSWFError("The file " + this.url + " has no class named " + this._sb3754);
         }
         return new _loc2_() as DisplayObject;
      }
      
      public function getDefinition(param1:String) : Object
      {
         var _loc2_:ApplicationDomain = this._wi10409.contentLoaderInfo.applicationDomain;
         if(_loc2_.hasDefinition(param1))
         {
            return _loc2_.getDefinition(param1);
         }
         throw new InvalidSWFError("Class " + param1 + " is not defined in " + this.url);
      }
      
      public function hasDefinition(param1:String) : Boolean
      {
         var _loc2_:ApplicationDomain = this._wi10409.contentLoaderInfo.applicationDomain;
         return _loc2_.hasDefinition(param1);
      }
      
      public function _qx7916() : Class
      {
         return this.getDefinition(this._sb3754) as Class;
      }
      
      public function _fc9199() : String
      {
         return this._sb3754;
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
      
      public function get type() : String
      {
         return this._gn930;
      }
      
      public function _ii15433() : Object
      {
         return this._yw10329;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function set id(param1:String) : void
      {
         this._id = param1;
      }
   }
}

