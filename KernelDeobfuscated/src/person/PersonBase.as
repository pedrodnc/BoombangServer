package src.person
{
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import src.*;
   import src.allData.scene.typeEscenarios.SceneType;
   import src.logs.*;
   import src.modules.interfaz.InterfazManager;
   
   public class PersonBase extends EventDispatcher
   {
      
      private var logs:Logger;
      
      private var count:int;
      
      public var items:Array;
      
      public var items1:Array;
      
      public function PersonBase()
      {
         var count:int = 0;
         super();
         this.logs = Logger.getInstance();
         this.items = new Array();
         var count2:int = int(PersonModel._sj2270);
         while(count < count2)
         {
            this.items.push(null);
            count++;
         }
         this.items1 = new Array();
      }
      
      public function destroy() : void
      {
         var count2:int = 0;
         var count:int = 0;
         this._yr5377();
         while(count2 < PersonModel._sj2270)
         {
            this._qi1595(count2,false,null);
            count2++;
         }
         while(count < this.items1.length)
         {
            PersonModel(this.items1[count]).destroy();
            count++;
         }
         this.items1 = new Array();
      }
      
      public function _px36(param1:PersonAnimation, param2:SceneType, param3:Boolean) : PersonController
      {
         var count1:int = param1.count25;
         this._qi1595(count1,false,null);
         this.items[count1] = new PersonController(param1,param2,param3);
         var count2:_xw1367 = _xw1367.getInstance();
         count2._uc3178(PersonController(this.items[count1]),_xw1367.count3,true,_xw1367.count12);
         return PersonController(this.items[count1]);
      }
      
      public function _qi1595(param1:int, param2:Boolean, param3:SceneType) : void
      {
         var count1:MovieClip = null;
         if(this.items[param1] == null)
         {
            return;
         }
         var count7:_xw1367 = _xw1367.getInstance();
         var items:PersonController = PersonController(this.items[param1]);
         count7.move2(items,_xw1367.count3);
         if(param2)
         {
            if(items._gh13396())
            {
               count1 = items._yt3158();
               if(count1 != null)
               {
                  var count2:PersonModel = new PersonModel(count1,param3,items.x,items.y,items.state);
                  this.items1.push(null);
               }
            }
         }
         items.destroy1();
         this.items[param1] = null;
      }
      
      public function loop() : void
      {
         var count:int = 0;
         var count2:int = int(PersonModel._sj2270);
         while(count < count2)
         {
            if(this.items[count] != null)
            {
               PersonController(this.items[count]).loop();
            }
            count++;
         }
         var count3:int = int(this.items1.length);
         var count1:int = count3 - 1;
         while(count1 >= 0)
         {
            if(PersonModel(this.items1[count1])._pl2360())
            {
               PersonModel(this.items1[count1]).destroy();
               this.items1.splice(count1,1);
            }
            count1--;
         }
      }
      
      public function _tk4905(param1:int) : Boolean
      {
         if(this.items[param1] == null)
         {
            this.logs._kp3815(new Logs(Logger.count,"AllPersons.createListenerMyPeron","idPos inexistente, idPos=" + param1));
            return false;
         }
         this.count = param1;
         PersonController(this.items[this.count]).addEventListener(PersonEvents._aa5196,this._uu8993);
         return true;
      }
      
      public function _mc6491(param1:int) : int
      {
         var count:int = 0;
         while(count < PersonModel._sj2270)
         {
            if(this.items[count] != null)
            {
               if(PersonController(this.items[count])._md8722.id == param1)
               {
                  return count;
               }
            }
            count++;
         }
         return -1;
      }
      
      public function _xc6184(param1:int) : PersonController
      {
         var count:int = this._mc6491(param1);
         if(count == -1)
         {
            return null;
         }
         return PersonController(this.items[count]);
      }
      
      public function _dc15714(param1:InterfazManager) : void
      {
         var count:PersonController = null;
         for each(count in this.items)
         {
            if(count != null)
            {
               count._dl12997(param1);
               count._jc6052();
            }
         }
      }
      
      public function _yr5377() : void
      {
         if(this.items[this.count] == null)
         {
            return;
         }
         PersonController(this.items[this.count]).removeEventListener(PersonEvents._aa5196,this._uu8993);
      }
      
      private function _uu8993(param1:PersonEvents) : void
      {
         dispatchEvent(new PersonEvents(PersonEvents._aa5196,param1._al309));
      }
   }
}

