package src.tv.boombang.core.service_container.services.resource_management.Resources
{
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.media.*;
   import flash.system.ApplicationDomain;
   import flash.utils.*;
   import src.tv.boombang.core.errors.*;
   
   public class _xo11546 extends _gg3875
   {
      
      private var _wi10409:Loader;
      
      public function _xo11546(param1:String, param2:String)
      {
         super(param1,param2);
      }
      
      override public function destroy() : void
      {
         if(this._wi10409 != null)
         {
            this._wi10409.contentLoaderInfo.removeEventListener(Event.COMPLETE,this._ka7688);
            this._wi10409 = null;
         }
         super.destroy();
      }
      
      public function _bn15619(param1:String) : MovieClip
      {
         var _loc2_:Class = this.getDefinition(param1) as Class;
         if(_loc2_ == null)
         {
            throw new InvalidSWFError("The file " + this.url + " has no class named " + param1);
         }
         return new _loc2_() as MovieClip;
      }
      
      public function _qy6605(param1:String) : Bitmap
      {
         var _loc2_:Bitmap = new Bitmap();
         var _loc3_:Class = this.getDefinition(param1) as Class;
         if(_loc3_ == null)
         {
            throw new InvalidSWFError("The file " + this.url + " has no class named " + param1);
         }
         var _loc4_:BitmapData = new _loc3_(1,1);
         _loc2_.bitmapData = _loc4_;
         return _loc2_;
      }
      
      public function _ix8228(param1:String) : Sound
      {
         var _loc2_:Class = this.getDefinition(param1) as Class;
         if(_loc2_ == null)
         {
            throw new InvalidSWFError("The file " + this.url + " has no class named " + param1);
         }
         return new _loc2_() as Sound;
      }
      
      public function getDefinition(param1:String) : Object
      {
         _vm530 = getTimer();
         var _loc2_:ApplicationDomain = this._wi10409.contentLoaderInfo.applicationDomain;
         if(_loc2_.hasDefinition(param1))
         {
            return _loc2_.getDefinition(param1);
         }
         throw new _bc6516("Class " + param1 + " is not defined in " + this.url);
      }
      
      public function hasDefinition(param1:String) : Boolean
      {
         var _loc2_:ApplicationDomain = this._wi10409.contentLoaderInfo.applicationDomain;
         return _loc2_.hasDefinition(param1);
      }
      
      override protected function _ai13392() : void
      {
         this._wi10409 = new Loader();
         this._wi10409.contentLoaderInfo.addEventListener(Event.COMPLETE,this._ka7688);
         this._wi10409.loadBytes(_es2525);
      }
      
      protected function _ka7688(param1:Event = null) : void
      {
         if(this._wi10409 != null)
         {
            this._wi10409.contentLoaderInfo.removeEventListener(Event.COMPLETE,this._ka7688);
         }
         _kf13187 = true;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function _dr16162() : DisplayObject
      {
         return this._wi10409.content;
      }
   }
}

