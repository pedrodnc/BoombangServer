package src.tv.boombang.core.datatypes.movement
{
   import src.tv.boombang.core.datatypes.*;
   
   public class MovementModel
   {
      
      public static const _bs6876:int = 7;
      
      private var _ux10557:MovementModel;
      
      private var _id:int;
      
      private var _jl11549:DatatypesModel;
      
      private var _bc2670:int;
      
      private var _time:uint;
      
      private var _st12792:Boolean;
      
      public function MovementModel()
      {
         super();
      }
      
      public static function parse(param1:Array) : MovementModel
      {
         var _loc2_:Array = param1.splice(0,_bs6876);
         if(_loc2_.length < _bs6876)
         {
            return null;
         }
         var _loc3_:MovementModel = new MovementModel();
         _loc3_._sh1968 = MovementModel._ob13942(_loc2_[0]);
         _loc3_.id = _loc2_[1];
         _loc3_._iu13171 = new DatatypesModel(_loc2_[2],_loc2_[3]);
         _loc3_.orientation = _loc2_[4];
         _loc3_.time = _loc2_[5];
         _loc3_._pv818 = _loc2_[6] == 1;
         return _loc3_;
      }
      
      public function get _pv818() : Boolean
      {
         return this._st12792;
      }
      
      public function set _pv818(param1:Boolean) : void
      {
         this._st12792 = param1;
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
         return this._bc2670;
      }
      
      public function set orientation(param1:int) : void
      {
         this._bc2670 = param1;
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

