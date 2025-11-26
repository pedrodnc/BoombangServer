package src.modules.multiplayerGames.dataGame
{
   import flash.display.MovieClip;
   
   public class DatagameModel
   {
      
      public static const count:int = 4;
      
      public var items:Array;
      
      public var _lg13977:MovieClip;
      
      public var _xm10115:XML;
      
      public var count1:int;
      
      public var count2:int;
      
      public var count3:int;
      
      public var _fl1604:MovieClip;
      
      public var _da1009:MovieClip;
      
      public function DatagameModel()
      {
         super();
      }
      
      public function init(param1:Array) : void
      {
         var count:int = 0;
         var count3:int = 0;
         var count1:String = null;
         var count2:int = 0;
         var count7:int = 0;
         var items:DatagameModel = null;
         this.items = new Array();
         if(param1.length % count == 0)
         {
            count = 0;
            while(count < param1.length / count)
            {
               count3 = int(param1[count * count]);
               count1 = String(param1[count * count + 1]);
               count2 = int(param1[count * count + 2]);
               count7 = int(param1[count * count + 3]);
               items = new DatagameModel(count3,count1,count2,count7);
               this.items.push(DatagameModel(items));
               count++;
            }
         }
      }
   }
}

