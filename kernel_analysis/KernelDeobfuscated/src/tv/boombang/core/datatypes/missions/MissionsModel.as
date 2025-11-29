package src.tv.boombang.core.datatypes.missions
{
   public class MissionsModel
   {
      
      public static const count:int = 1;
      
      private var _id:int;
      
      private var count1:int;
      
      private var textString3:int;
      
      public function MissionsModel()
      {
         super();
      }
      
      public static function parse(param1:Array) : MissionsModel
      {
         var count:MissionsModel = new MissionsModel();
         count.id = param1[0];
         count.status = param1[1];
         count._ec8491 = param1[2];
         return count;
      }
      
      public function clone() : MissionsModel
      {
         var count2:MissionsModel = new MissionsModel();
         count2.id = this.id;
         count2._ec8491 = this._ec8491;
         count2.status = this.status;
         return count2;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function get _ec8491() : int
      {
         return this.count1;
      }
      
      public function set _ec8491(param1:int) : void
      {
         this.count1 = param1;
      }
      
      public function get status() : int
      {
         return this.textString3;
      }
      
      public function set status(param1:int) : void
      {
         this.textString3 = param1;
      }
   }
}

