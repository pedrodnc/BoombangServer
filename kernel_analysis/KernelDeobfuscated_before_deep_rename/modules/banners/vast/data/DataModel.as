package src.modules.banners.vast.data
{
   public class DataModel
   {
      
      private var _id:String;
      
      private var _sequence:int;
      
      public var impressions:Array;
      
      public var creatives:Array;
      
      public var error:String;
      
      public var extensions:Array;
      
      public function DataModel()
      {
         super();
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function set id(param1:String) : void
      {
         this._id = param1;
      }
      
      public function get sequence() : int
      {
         return this._sequence;
      }
      
      public function set sequence(param1:int) : void
      {
         this._sequence = param1;
      }
   }
}

