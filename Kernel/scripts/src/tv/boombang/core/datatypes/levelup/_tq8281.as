package src.tv.boombang.core.datatypes.levelup
{
   import src.multiuser.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.datatypes.notifications.*;
   
   public class _tq8281
   {
      
      private var _id:int;
      
      private var _ev7168:String;
      
      private var _mp13202:String;
      
      private var _it10802:String;
      
      private var _gn930:int;
      
      private var _we10119:int;
      
      private var _fo15723:Array;
      
      private var _bt5289:_lt10565;
      
      private var _md12968:int;
      
      private var _gv7117:String;
      
      private var _mu6410:String;
      
      public function _tq8281(param1:Array)
      {
         var _loc2_:Array = null;
         var _loc3_:_no13431 = null;
         var _loc5_:int = 0;
         super();
         this.type = param1[0];
         this.id = param1[1];
         this._ts4982 = param1[2];
         this._ti5050 = param1[3];
         this._ri12887 = param1[4];
         this.level = param1[5];
         this._md12968 = parseInt(param1[6]);
         this._bt5289 = _fg1060._dy2407._hs616(this._md12968) as _lt10565;
         this._pq14577 = this._wi2744.background;
         this._ad12008 = this._wi2744._co10268;
         var _loc4_:int = int(param1[7]);
         this._fo15723 = new Array();
         while(_loc5_ < _loc4_)
         {
            _loc2_ = _jl5367._go4983(param1[8 + _loc5_]);
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
      
      public function set _ts4982(param1:String) : void
      {
         this._ev7168 = param1;
      }
      
      public function get _ts4982() : String
      {
         return this._ev7168;
      }
      
      public function set _ti5050(param1:String) : void
      {
         this._mp13202 = param1;
      }
      
      public function get _ti5050() : String
      {
         return this._mp13202;
      }
      
      public function set _ri12887(param1:String) : void
      {
         this._it10802 = param1;
      }
      
      public function get _ri12887() : String
      {
         return this._it10802;
      }
      
      public function set type(param1:int) : void
      {
         this._gn930 = param1;
      }
      
      public function get type() : int
      {
         return this._gn930;
      }
      
      public function set level(param1:int) : void
      {
         this._we10119 = param1;
      }
      
      public function get level() : int
      {
         return this._we10119;
      }
      
      public function set _pq14577(param1:String) : void
      {
         this._gv7117 = param1;
      }
      
      public function get _pq14577() : String
      {
         return this._gv7117;
      }
      
      public function set _ad12008(param1:String) : void
      {
         this._mu6410 = param1;
      }
      
      public function get _ad12008() : String
      {
         return this._mu6410;
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

