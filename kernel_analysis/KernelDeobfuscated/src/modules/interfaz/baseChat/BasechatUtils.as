package src.modules.interfaz.baseChat
{
   import flash.utils.*;
   
   public class BasechatUtils
   {
      
      private static const count:int = 5;
      
      private static const count1:int = 5;
      
      private static const count2:int = 15000;
      
      private static const count3:int = 3000;
      
      private var items:Array;
      
      private var items1:Array;
      
      private var items2:Array;
      
      private var items3:Array;
      
      private var count4:int = -1;
      
      public function BasechatUtils()
      {
         this.items = new Array();
         this.items1 = new Array();
         this.items2 = new Array();
         this.items3 = new Array();
         super();
      }
      
      public function clear() : void
      {
         this.items = new Array();
         this.items1 = new Array();
         this.items2 = new Array();
         this.items3 = new Array();
         this.count4 = -1;
      }
      
      public function get _ow11561() : Boolean
      {
         if(this.count4 != -1)
         {
            if(getTimer() < this.count4)
            {
               return true;
            }
            this.count4 = -1;
         }
         return false;
      }
      
      public function _bd247(param1:String) : Boolean
      {
         return true;
      }
   }
}

