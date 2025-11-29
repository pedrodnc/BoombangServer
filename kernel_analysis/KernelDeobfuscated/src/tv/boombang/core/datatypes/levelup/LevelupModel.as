package src.tv.boombang.core.datatypes.levelup
{
   import src.multiuser.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.datatypes.notifications.*;
   
   public class LevelupModel
   {
      
      private var _id:int;
      
      private var textString:String;
      
      private var textString1:String;
      
      private var textString2:String;
      
      private var count:int;
      
      private var count1:int;
      
      private var items:Array;
      
      private var _bt5289:NotificationsModel;
      
      private var count2:int;
      
      private var textString3:String;
      
      private var textString4:String;
      
      public function LevelupModel(param1:Array)
      {
         var count:Array = null;
         var count3:NotificationsModel = null;
         var count2:int = 0;
         super();
         this.type = param1[0];
         this.id = param1[1];
         this._ts4982 = param1[2];
         this._ti5050 = param1[3];
         this._ri12887 = param1[4];
         this.level = param1[5];
         this.count2 = parseInt(param1[6]);
         this._bt5289 = CoreModel._dy2407._hs616(this.count2) as NotificationsModel;
         this._pq14577 = this._wi2744.background;
         this._ad12008 = this._wi2744._co10268;
         var count1:int = int(param1[7]);
         this.items = new Array();
         while(count2 < count1)
         {
            count = SocketManager.getList1(param1[8 + count2]);
            count3 = new NotificationsModel();
            count3.id = count[0];
            if(count[1])
            {
               count3.txt = count[1];
            }
            count3._kp2503 = CoreModel._dy2407.getString(count3.id.toString());
            this.items.push(count3);
            count2++;
         }
      }
      
      public function get _sk8092() : int
      {
         return this.count2;
      }
      
      public function get _wi2744() : NotificationsModel
      {
         return this._bt5289;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set _ts4982(param1:String) : void
      {
         this.textString = param1;
      }
      
      public function get _ts4982() : String
      {
         return this.textString;
      }
      
      public function set _ti5050(param1:String) : void
      {
         this.textString1 = param1;
      }
      
      public function get _ti5050() : String
      {
         return this.textString1;
      }
      
      public function set _ri12887(param1:String) : void
      {
         this.textString2 = param1;
      }
      
      public function get _ri12887() : String
      {
         return this.textString2;
      }
      
      public function set type(param1:int) : void
      {
         this.count = param1;
      }
      
      public function get type() : int
      {
         return this.count;
      }
      
      public function set level(param1:int) : void
      {
         this.count1 = param1;
      }
      
      public function get level() : int
      {
         return this.count1;
      }
      
      public function set _pq14577(param1:String) : void
      {
         this.textString3 = param1;
      }
      
      public function get _pq14577() : String
      {
         return this.textString3;
      }
      
      public function set _ad12008(param1:String) : void
      {
         this.textString4 = param1;
      }
      
      public function get _ad12008() : String
      {
         return this.textString4;
      }
      
      public function set _rl4311(param1:Array) : void
      {
         this.items = param1;
      }
      
      public function get _rl4311() : Array
      {
         return this.items;
      }
   }
}

