package src.tv.boombang.core.datatypes.movement
{
   import src.tv.boombang.core.datatypes.*;
   
   public class MovementModel
   {
      
      public static const count:int = 7;
      
      private var _ux10557:MovementModel;
      
      private var _id:int;
      
      private var _jl11549:DatatypesModel;
      
      private var count1:int;
      
      private var _time:uint;
      
      private var isEnabled:Boolean;
      
      public function MovementModel()
      {
         super();
      }
      
      public static function parse(param1:Array) : MovementModel
      {
         var count:Array = param1.splice(0,count);
         if(count.length < count)
         {
            return null;
         }
         var count3:MovementModel = new MovementModel();
         count3._sh1968 = MovementModel._ob13942(count[0]);
         count3.id = count[1];
         count3._iu13171 = new DatatypesModel(count[2],count[3]);
         count3.orientation = count[4];
         count3.time = count[5];
         count3._pv818 = count[6] == 1;
         return count3;
      }
      
      public function get _pv818() : Boolean
      {
         return this.isEnabled;
      }
      
      public function set _pv818(param1:Boolean) : void
      {
         this.isEnabled = param1;
      }
      
      public function get _sh1968() : MovementModel
      {
         return this._ux10557;
      }
      
      public function set _sh1968(param1:MovementModel) : void
      {
         this._ux10557 = param1;
      }
      
      public function get time() : uint
      {
         return this._time;
      }
      
      public function set time(param1:uint) : void
      {
         this._time = param1;
      }
      
      public function get orientation() : int
      {
         return this.count1;
      }
      
      public function set orientation(param1:int) : void
      {
         this.count1 = param1;
      }
      
      public function get _iu13171() : DatatypesModel
      {
         return this._jl11549;
      }
      
      public function set _iu13171(param1:DatatypesModel) : void
      {
         this._jl11549 = param1;
      }
      
      public function get x() : int
      {
         return this._jl11549._ch15801;
      }
      
      public function get y() : int
      {
         return this._jl11549._oc14271;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
   }
}

