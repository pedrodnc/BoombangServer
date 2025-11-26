package src.tv.boombang.library.popup
{
   import flash.display.DisplayObjectContainer;
   import src.tv.boombang.commons.interfaces.*;
   
   public class _tw2454 implements _jk15536
   {
      
      private var _km5481:DisplayObjectContainer;
      
      private var _om13239:_ff15513;
      
      private var _wx4514:Boolean;
      
      private var _lf12581:uint;
      
      public function _tw2454()
      {
         super();
      }
      
      public function show() : void
      {
      }
      
      public function get _ob3182() : uint
      {
         return this._lf12581;
      }
      
      public function set _ob3182(param1:uint) : void
      {
         this._lf12581 = param1;
      }
      
      public function set parent(param1:DisplayObjectContainer) : void
      {
         this._km5481 = param1;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this._km5481;
      }
      
      public function set pop(param1:_ff15513) : void
      {
         this._om13239 = param1;
      }
      
      public function get pop() : _ff15513
      {
         return this._om13239;
      }
      
      public function set _xh10653(param1:Boolean) : void
      {
         this._wx4514 = param1;
      }
      
      public function get _xh10653() : Boolean
      {
         return this._wx4514;
      }
      
      public function destroy() : void
      {
         if(this._om13239)
         {
            this._om13239.destroy();
         }
      }
   }
}

