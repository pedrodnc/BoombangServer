package src.tv.boombang.core.datatypes.missions
{
   public class _mj15721
   {
      
      public static const _ok5260:int = 1;
      
      private var _id:int;
      
      private var _dk272:int;
      
      private var _re3848:int;
      
      public function _mj15721()
      {
         super();
      }
      
      public static function parse(param1:Array) : _mj15721
      {
         var _loc2_:_mj15721 = new _mj15721();
         _loc2_.id = param1[0];
         _loc2_.status = param1[1];
         _loc2_._ec8491 = param1[2];
         return _loc2_;
      }
      
      public function clone() : _mj15721
      {
         var _loc1_:_mj15721 = new _mj15721();
         _loc1_.id = this.id;
         _loc1_._ec8491 = this._ec8491;
         _loc1_.status = this.status;
         return _loc1_;
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
         return this._dk272;
      }
      
      public function set _ec8491(param1:int) : void
      {
         this._dk272 = param1;
      }
      
      public function get status() : int
      {
         return this._re3848;
      }
      
      public function set status(param1:int) : void
      {
         this._re3848 = param1;
      }
   }
}

