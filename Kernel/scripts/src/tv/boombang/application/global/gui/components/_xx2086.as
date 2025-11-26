package src.tv.boombang.application.global.gui.components
{
   import flash.display.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class _xx2086 implements _jk15536
   {
      
      private var _xo6614:Sprite;
      
      private var _items:Array;
      
      public function _xx2086()
      {
         super();
      }
      
      public function get view() : Sprite
      {
         return this._xo6614;
      }
      
      public function _wt2363(param1:Array) : void
      {
         var _loc2_:int = 0;
         this._gk15888();
         this._items = param1;
         this._xo6614 = new Sprite();
         while(_loc2_ < this._items.length)
         {
            this._xo6614.addChild(this._items[_loc2_] as DisplayObject);
            _loc2_++;
         }
      }
      
      public function _gk15888() : void
      {
         var _loc1_:int = 0;
         var _loc2_:_jk15536 = null;
         if(this._items)
         {
            _loc1_ = 0;
            while(_loc1_ < this._items.length)
            {
               _loc2_ = this._items[_loc1_] as _jk15536;
               if(_loc2_)
               {
                  _loc2_.destroy();
                  if(this._xo6614.contains(_loc2_ as DisplayObject))
                  {
                     this._xo6614.removeChild(_loc2_ as DisplayObject);
                  }
               }
               _loc1_++;
            }
         }
         this._xo6614 = null;
         this._items = null;
      }
      
      public function _hf4699(param1:int) : Number
      {
         var _loc2_:_pr14847 = null;
         var _loc4_:int = 0;
         var _loc3_:Number = 0;
         while(_loc4_ < this._items.length)
         {
            _loc2_ = this._items[_loc4_] as _pr14847;
            if(_loc2_._wg3624 == param1)
            {
               _loc3_ = Number((_loc2_ as DisplayObject).y);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function destroy() : void
      {
         this._gk15888();
      }
   }
}

