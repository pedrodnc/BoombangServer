package src.tv.boombang.core.datatypes.games
{
   public class GamesModel
   {
      
      public static const count:int = 8;
      
      public static const count1:int = 3;
      
      private var count2:int;
      
      private var count:GamesModel;
      
      private var count3:int;
      
      private var isEnabled:Boolean;
      
      private var count4:int;
      
      private var count5:int;
      
      private var count6:int;
      
      private var count7:int;
      
      private var count8:int;
      
      private var items:Array;
      
      public function GamesModel()
      {
         super();
      }
      
      public static function parse(param1:Array) : GamesModel
      {
         var count:Object = null;
         var count3:Array = null;
         var count7:int = 0;
         var count1:Array = param1.splice(0,count);
         if(count1.length < count)
         {
            return null;
         }
         var count2:GamesModel = new GamesModel();
         count2.type = GamesModel._bn928(count1[0]);
         count2.count1 = int(count1[1]);
         count2.isWaiting = Boolean(count1[2] == 1);
         count2._jm15734 = count1[3];
         count2._db14645 = count1[4];
         count2._gh12567 = count1[5];
         count2._fh11066 = count1[6];
         count2._ij7968 = count1[7];
         count2._ou2556 = [];
         while(count7 < count2._ij7968)
         {
            count3 = param1.splice(0,count1);
            if(count3.length < count1)
            {
               return null;
            }
            count = {};
            count.rewardType = GamesModel._bn928(count3[0]);
            count.rewardId = count3[1];
            count.rewardAmount = count3[2];
            count2._ou2556.push(count);
            count7++;
         }
         return count2;
      }
      
      public function clone() : GamesModel
      {
         var count2:GamesModel = new GamesModel();
         count2.count = this.type;
         return count2;
      }
      
      public function get type() : GamesModel
      {
         return this.count;
      }
      
      public function set type(param1:GamesModel) : void
      {
         this.count = param1;
      }
      
      public function get count1() : int
      {
         return this.count3;
      }
      
      public function set count1(param1:int) : void
      {
         this.count3 = param1;
      }
      
      public function get isWaiting() : Boolean
      {
         return this.isEnabled;
      }
      
      public function set isWaiting(param1:Boolean) : void
      {
         this.isEnabled = param1;
      }
      
      public function get _jm15734() : int
      {
         return this.count4;
      }
      
      public function set _jm15734(param1:int) : void
      {
         this.count4 = param1;
      }
      
      public function get _db14645() : int
      {
         return this.count5;
      }
      
      public function set _db14645(param1:int) : void
      {
         this.count5 = param1;
      }
      
      public function get _gh12567() : int
      {
         return this.count6;
      }
      
      public function set _gh12567(param1:int) : void
      {
         this.count6 = param1;
      }
      
      public function get _fh11066() : int
      {
         return this.count7;
      }
      
      public function set _fh11066(param1:int) : void
      {
         this.count7 = param1;
      }
      
      public function get _ij7968() : int
      {
         return this.count8;
      }
      
      public function set _ij7968(param1:int) : void
      {
         this.count8 = param1;
      }
      
      public function get _ou2556() : Array
      {
         return this.items;
      }
      
      public function set _ou2556(param1:Array) : void
      {
         this.items = param1;
      }
      
      public function get _an10773() : int
      {
         return this.count2;
      }
      
      public function set _an10773(param1:int) : void
      {
         this.count2 = param1;
      }
   }
}

