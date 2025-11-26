package src.allData.scene.skins.managerObjectSkineables
{
   import flash.utils.*;
   import src.allData.color.*;
   import src.allData.scene.skins.nodeTagsSkins.*;
   
   public class ManagerobjectskineablesController
   {
      
      public var count:int;
      
      public var count1:int;
      
      public var items:Array;
      
      public var items1:Array;
      
      public var colors:Array;
      
      public function ManagerobjectskineablesController(param1:int, param2:int, param3:Array, param4:Array, param5:Array, param6:Array)
      {
         var items:int = 0;
         super();
         this.count = param1;
         this.count1 = param2;
         this.items = param3;
         this.items1 = param4;
         this.colors = new Array();
         while(items < param5.length)
         {
            this.colors.push(ColorModel._kl14169(param5[items],param6[items]));
            items++;
         }
      }
      
      public static function _qe13252(param1:NodetagsskinsController, param2:int) : ManagerobjectskineablesController
      {
         var count3:NodetagsskinsController = null;
         var count1:int = 0;
         var count2:NodetagsskinsController = null;
         var count7:NodetagsskinsController = null;
         var items:Array = null;
         var count8:Array = null;
         var count6:Dictionary = null;
         var count:int = 0;
         var count10:NodetagsskinsModel = null;
         var count17:Boolean = false;
         var count18:int = 0;
         var textString12:Array = new Array();
         var isEnabled:Array = new Array();
         var textString14:Array = new Array();
         var count16:ManagerobjectskineablesController = new ManagerobjectskineablesController(0,0,[],[],[],[]);
         count16.count = param1.id;
         count16.count1 = param2;
         while(count18 < param1.templates.length)
         {
            count3 = NodetagsskinsController(param1.templates[count18]);
            if(count3.id == param2 && !count17)
            {
               count17 = true;
               count1 = 0;
               while(count1 < count3.elements.length)
               {
                  count2 = NodetagsskinsController(count3.elements[count1]);
                  textString12.push(count2.id);
                  count7 = NodetagsskinsController(count2.skins[0]);
                  isEnabled.push(count7.id);
                  items = count7.skin._kr1527;
                  count8 = new Array();
                  count6 = new Dictionary();
                  count = 0;
                  while(count < items.length)
                  {
                     count10 = NodetagsskinsModel(items[count]);
                     if(count10._un11300 != -1)
                     {
                        if(count6[String(count10._un11300)] == null)
                        {
                           count8.push(count10._tk11635.render());
                           count6[String(count10._un11300)] = count10._tk11635;
                        }
                     }
                     count++;
                  }
                  textString14.push(count8);
                  count1++;
               }
            }
            count18++;
         }
         count16.items = textString12;
         count16.items1 = isEnabled;
         count16.colors = textString14;
         return count16;
      }
      
      public function _fq13299(param1:int) : int
      {
         var count:int = int(this.items.indexOf(param1));
         if(count >= 0)
         {
            return this.items1[count];
         }
         return -1;
      }
      
      public function getList(param1:int) : Array
      {
         var count1:Array = new Array();
         var count2:int = int(this.items.indexOf(param1));
         if(count2 >= 0)
         {
            var count:Array = this.colors[count2];
            var count3:int = 0;
            while(0 < null.length)
            {
               count1.push(ColorModel(null[0]).render());
               count3++;
            }
         }
         return count1;
      }
      
      public function _os7047(param1:int, param2:int, param3:Array) : Boolean
      {
         var count1:int = int(this.items.indexOf(param1));
         if(count1 >= 0)
         {
            this.items1[count1] = param2;
            this.colors[count1] = param3;
            return true;
         }
         return false;
      }
      
      public function render() : ManagerobjectskineablesController
      {
         var count2:int = 0;
         var count:Array = null;
         var count3:int = 0;
         var count1:Array = new Array();
         count2 = 0;
         while(count2 < this.items.length)
         {
            count1.push(this.items[count2]);
            count2++;
         }
         var count2:Array = new Array();
         count2 = 0;
         while(count2 < this.items1.length)
         {
            count2.push(this.items1[count2]);
            count2++;
         }
         var count7:Array = new Array();
         count2 = 0;
         while(count2 < this.colors.length)
         {
            count7.push(new Array());
            count = this.colors[count2];
            count3 = 0;
            while(count3 < count.length)
            {
               count7[count2].push(ColorModel(count[count3]).render());
               count3++;
            }
            count2++;
         }
         var items:ManagerobjectskineablesController = new ManagerobjectskineablesController(this.count,this.count1,count1,count2,[],[]);
         items.colors = count7;
         return items;
      }
   }
}

