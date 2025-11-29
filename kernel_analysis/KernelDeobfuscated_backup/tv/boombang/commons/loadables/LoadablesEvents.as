package src.tv.boombang.commons.loadables
{
   import flash.events.Event;
   
   public class _ay13187
   {
      
      private var _qr1106:Function;
      
      private var _bo4910:Array;
      
      public function _ay13187(param1:Array, param2:Function)
      {
         var _loc3_:Object = null;
         super();
         this._bo4910 = new Array();
         this._qr1106 = param2;
         for each(_loc3_ in param1)
         {
            if(!(_loc3_ is _ea15462))
            {
               throw new Error(_loc3_ + " is not a loadable object, does not implement ILoadable.");
            }
            if(!(_loc3_ as _ea15462)._kn5152)
            {
               (_loc3_ as _ea15462)._mv15948(this._qu13778);
               this._bo4910.push(_loc3_);
            }
         }
         if(this._bo4910.length == 0)
         {
            param2();
         }
      }
      
      public function get length() : int
      {
         return this._bo4910.length;
      }
      
      protected function _qu13778(param1:Event) : void
      {
         var _loc2_:int = 0;
         (param1.target as _ea15462)._xp10276(this._qu13778);
         _loc2_ = int(this._bo4910.indexOf(param1.target));
         if(_loc2_ >= 0)
         {
            this._bo4910.splice(_loc2_,1);
         }
         if(this._bo4910.length == 0)
         {
            this._qr1106();
         }
      }
   }
}

