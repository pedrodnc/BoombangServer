package src.tv.boombang.core.datatypes.rankings
{
   import src.multiuser.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class RankingsModel
   {
      
      private var count:int;
      
      private var count1:int;
      
      private var count2:int;
      
      private var count3:int;
      
      private var count4:int;
      
      private var count5:int;
      
      private var count6:int;
      
      private var count7:int;
      
      private var items:Array;
      
      private var items1:Array;
      
      public function RankingsModel()
      {
         super();
      }
      
      public static function parse(param1:Array) : RankingsModel
      {
         var count:RankingsModel = new RankingsModel();
         count._ia11084 = param1[0];
         count._rb8780 = param1[1];
         count._ui7485 = param1[2];
         count._ed3586 = param1[3];
         count._wf9827 = param1[4];
         count._el1247 = param1[5];
         count._vn10063 = param1[6];
         count._kp3064 = param1[7];
         count._tu7334 = handleSocket(param1[8]);
         count.list = handleSocket1(param1[9],count._el1247);
         return count;
      }
      
      private static function handleSocket(param1:String) : Array
      {
         var count:Array = null;
         var count3:Object = null;
         var count1:Array = new Array();
         var count2:Array = SocketManager.getList1(param1);
         var count7:Number = count2.length - 1;
         while(count7 >= 0)
         {
            count = count2[count7].split("|");
            count3 = new Object();
            count3.id = count[0];
            if(count7 == count2.length - 1)
            {
               count3.label = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("window.ranking.dateSelector.current",count3.id);
            }
            else
            {
               count3.label = (ServiceLocator.get(ServiceFactory) as ServiceFactory).getString1("window.ranking.dateSelector.normal",count3.id);
            }
            count3.dateInitial = new Date(count[1]);
            count3.dateEnd = new Date(count[2]);
            count1.push(count3);
            count7--;
         }
         return count1;
      }
      
      private static function handleSocket1(param1:String, param2:int) : Array
      {
         var count3:RankingsModel = null;
         var count7:int = 0;
         var count1:Array = new Array();
         var count2:Array = param1.split("|");
         while(count7 < count2.length)
         {
            count3 = RankingsModel.parse(SocketManager.getList1(count2[count7]));
            count3._el1247 = param2;
            count1.push(count3);
            count7++;
         }
         return count1;
      }
      
      public function clone() : RankingsModel
      {
         var count2:RankingsModel = new RankingsModel();
         count2._ia11084 = this._ia11084;
         count2._rb8780 = this._rb8780;
         count2._ui7485 = this._ui7485;
         count2._ed3586 = this._ed3586;
         count2._wf9827 = this._wf9827;
         count2._el1247 = this._el1247;
         count2._vn10063 = this._vn10063;
         count2._kp3064 = this._kp3064;
         count2._tu7334 = this._tu7334;
         count2.list = this.list;
         return count2;
      }
      
      public function get _ia11084() : int
      {
         return this.count;
      }
      
      public function set _ia11084(param1:int) : void
      {
         this.count = param1;
      }
      
      public function get _rb8780() : int
      {
         return this.count1;
      }
      
      public function set _rb8780(param1:int) : void
      {
         this.count1 = param1;
      }
      
      public function get _ui7485() : int
      {
         return this.count2;
      }
      
      public function set _ui7485(param1:int) : void
      {
         this.count2 = param1;
      }
      
      public function get _ed3586() : int
      {
         return this.count3;
      }
      
      public function set _ed3586(param1:int) : void
      {
         this.count3 = param1;
      }
      
      public function get list() : Array
      {
         return this.items1;
      }
      
      public function set list(param1:Array) : void
      {
         this.items1 = param1;
      }
      
      public function get _tu7334() : Array
      {
         return this.items;
      }
      
      public function set _tu7334(param1:Array) : void
      {
         this.items = param1;
      }
      
      public function get _wf9827() : int
      {
         return this.count4;
      }
      
      public function set _wf9827(param1:int) : void
      {
         this.count4 = param1;
      }
      
      public function get _el1247() : int
      {
         return this.count5;
      }
      
      public function set _el1247(param1:int) : void
      {
         this.count5 = param1;
      }
      
      public function get _vn10063() : int
      {
         return this.count6;
      }
      
      public function set _vn10063(param1:int) : void
      {
         this.count6 = param1;
      }
      
      public function get _kp3064() : int
      {
         return this.count7;
      }
      
      public function set _kp3064(param1:int) : void
      {
         this.count7 = param1;
      }
   }
}

