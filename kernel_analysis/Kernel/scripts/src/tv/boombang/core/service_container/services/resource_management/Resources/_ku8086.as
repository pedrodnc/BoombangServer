package src.tv.boombang.core.service_container.services.resource_management.Resources
{
   import flash.display.*;
   import flash.events.*;
   
   public class _ku8086 extends _gg3875
   {
      
      private var _wi10409:Loader;
      
      public function _ku8086(param1:String, param2:String)
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
      
      public function _yu5186() : Bitmap
      {
         var _loc1_:BitmapData = null;
         if(_kf13187)
         {
            _loc1_ = (this._wi10409.content as Bitmap).bitmapData.clone();
            return new Bitmap(_loc1_);
         }
         return null;
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
   }
}

