package src.tv.boombang.core.datatypes.notifications
{
   import src.multiuser.*;
   import src.tv.boombang.core.*;
   
   public class _ac14381
   {
      
      private var _id:int;
      
      private var _gn930:_bw12046;
      
      private var _fo15723:Array;
      
      private var _bt5289:_lt10565;
      
      private var _md12968:int;
      
      public function _ac14381()
      {
         super();
      }
      
      public function parse(param1:Array) : _ac14381
      {
         var _loc2_:Array = null;
         var _loc3_:_no13431 = null;
         var _loc5_:int = 0;
         this.type = _bw12046._ob13942(param1[0]);
         this.id = param1[1];
         this._md12968 = parseInt(param1[2]);
         this._bt5289 = _fg1060._dy2407._hs616(this._md12968) as _lt10565;
         this._fo15723 = new Array();
         var _loc4_:int = int(param1[3]);
         while(_loc5_ < _loc4_)
         {
            _loc2_ = _jl5367._go4983(param1[4 + _loc5_]);
            _loc3_ = new _no13431();
            _loc3_.id = _loc2_[0];
            if(_loc2_[1])
            {
               _loc3_.txt = _loc2_[1];
            }
            _loc3_._kp2503 = _fg1060._dy2407._qb15298(_loc3_.id.toString());
            this._fo15723.push(_loc3_);
            _loc5_++;
         }
         return this;
      }
      
      public function get type() : _bw12046
      {
         return this._gn930;
      }
      
      public function set type(param1:_bw12046) : void
      {
         this._gn930 = param1;
      }
      
      public function get _sk8092() : int
      {
         return this._md12968;
      }
      
      public function get _wi2744() : _lt10565
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
      
      public function set _rl4311(param1:Array) : void
      {
         this._fo15723 = param1;
      }
      
      public function get _rl4311() : Array
      {
         return this._fo15723;
      }
   }
}

