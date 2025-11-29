package src.tv.boombang.commons.loadables
{
   import flash.events.Event;
   
   public class LoadablesEvents
   {
      
      private var _qr1106:Function;
      
      private var items:Array;
      
      public function LoadablesEvents(param1:Array, param2:Function)
      {
         var count3:Object = null;
         super();
         this.items = new Array();
         this._qr1106 = param2;
         for each(count3 in param1)
         {
            if(!(count3 is SWFLoader))
            {
               throw new Error(count3 + " is not a loadable object, does not implement ILoadable.");
            }
            if(!(count3 as SWFLoader).loadResource2)
            {
               (count3 as SWFLoader)._mv15948(this.loadResource);
               this.items.push(count3);
            }
         }
         if(this.items.length == 0)
         {
            param2();
         }
      }
      
      public function get length() : int
      {
         return this.items.length;
      }
      
      protected function loadResource(param1:Event) : void
      {
         var count:int = 0;
         (param1.target as SWFLoader).move(this.loadResource);
         count = int(this.items.indexOf(param1.target));
         if(count >= 0)
         {
            this.items.splice(count,1);
         }
         if(this.items.length == 0)
         {
            this._qr1106();
         }
      }
   }
}

