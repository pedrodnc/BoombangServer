package src.tv.boombang.core.datatypes.countries
{
   public class CountriesModel
   {
      
      private var _id:String;
      
      private var _name:String;
      
      private var items:Array;
      
      public function CountriesModel()
      {
         super();
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get _dl11403() : Array
      {
         return this.items;
      }
      
      public function set _dl11403(param1:Array) : void
      {
         this.items = param1;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function set id(param1:String) : void
      {
         this._id = param1;
      }
   }
}

