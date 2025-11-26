package src.allData.color
{
   import src.utils.*;
   
   public class ColorModel
   {
      
      private var items2:Array;
      
      public function ColorModel(param1:String)
      {
         var count:uint = 0;
         var count3:int = 0;
         super();
         this.items2 = new Array();
         if(param1.length == 42)
         {
            count3 = 0;
            while(count3 < 9)
            {
               count = uint("0x" + param1.substr(count3 * 6,6));
               this.items2.push(count);
               count3++;
            }
         }
         else
         {
            this.items2.push(16711680);
            this.items2.push(16711680);
            this.items2.push(16711680);
            this.items2.push(16711680);
            this.items2.push(16711680);
            this.items2.push(16711680);
            this.items2.push(16711680);
         }
      }
      
      public function getColor(param1:int) : uint
      {
         if(param1 >= this.items2.length)
         {
            return 0;
         }
         return uint(this.items2[param1]);
      }
      
      public function setColor(param1:int, param2:uint) : void
      {
         if(param1 > 0 && param1 < this.items2.length)
         {
            this.items2[param1] = param2;
         }
      }
      
      public function getString() : String
      {
         var count2:uint = 0;
         var count:String = null;
         var count1:int = 0;
         var count3:* = "";
         while(count1 < 7)
         {
            count2 = uint(this.items2[count1]);
            count = count2.toString(16);
            while(count.length < 6)
            {
               count = "0" + count;
            }
            count3 += count;
            count1++;
         }
         return count3.toUpperCase();
      }
      
      public function _uk7193(param1:ColorModel, param2:Number) : void
      {
         var count3:uint = 0;
         var count2:int = 0;
         var count1:int = int(this.items2.length);
         while(count2 < 7)
         {
            count3 = uint(param1.items2[count2]);
            this.items2[count2] = StringUtils._dm1958(count3,param2,0);
            count2++;
         }
      }
      
      public function get colors() : Array
      {
         return this.items2;
      }
      
      public function set colors(param1:Array) : void
      {
         this.items2 = param1;
      }
   }
}

