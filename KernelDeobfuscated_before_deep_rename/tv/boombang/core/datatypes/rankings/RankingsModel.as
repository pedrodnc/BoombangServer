package src.tv.boombang.core.datatypes.rankings
{
   import src.multiuser.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class RankingsModel
   {
      
      private var _ij8820:int;
      
      private var _gb12075:int;
      
      private var _no7482:int;
      
      private var _dx10834:int;
      
      private var _al11605:int;
      
      private var _ck5194:int;
      
      private var _bu3730:int;
      
      private var _rx10186:int;
      
      private var _yr8848:Array;
      
      private var _th13283:Array;
      
      public function RankingsModel()
      {
         super();
      }
      
      public static function parse(param1:Array) : RankingsModel
      {
         var _loc2_:RankingsModel = new RankingsModel();
         _loc2_._ia11084 = param1[0];
         _loc2_._rb8780 = param1[1];
         _loc2_._ui7485 = param1[2];
         _loc2_._ed3586 = param1[3];
         _loc2_._wf9827 = param1[4];
         _loc2_._el1247 = param1[5];
         _loc2_._vn10063 = param1[6];
         _loc2_._kp3064 = param1[7];
         _loc2_._tu7334 = _tr2281(param1[8]);
         _loc2_.list = _pj2674(param1[9],_loc2_._el1247);
         return _loc2_;
      }
      
      private static function _tr2281(param1:String) : Array
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         var _loc4_:Array = new Array();
         var _loc5_:Array = SocketManager._go4983(param1);
         var _loc6_:Number = _loc5_.length - 1;
         while(_loc6_ >= 0)
         {
            _loc2_ = _loc5_[_loc6_].split("|");
            _loc3_ = new Object();
            _loc3_.id = _loc2_[0];
            if(_loc6_ == _loc5_.length - 1)
            {
               _loc3_.label = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("window.ranking.dateSelector.current",_loc3_.id);
            }
            else
            {
               _loc3_.label = (ServiceLocator.get(ServiceFactory) as ServiceFactory)._ad13455("window.ranking.dateSelector.normal",_loc3_.id);
            }
            _loc3_.dateInitial = new Date(_loc2_[1]);
            _loc3_.dateEnd = new Date(_loc2_[2]);
            _loc4_.push(_loc3_);
            _loc6_--;
         }
         return _loc4_;
      }
      
      private static function _pj2674(param1:String, param2:int) : Array
      {
         var _loc3_:RankingsModel = null;
         var _loc6_:int = 0;
         var _loc4_:Array = new Array();
         var _loc5_:Array = param1.split("|");
         while(_loc6_ < _loc5_.length)
         {
            _loc3_ = RankingsModel.parse(SocketManager._go4983(_loc5_[_loc6_]));
            _loc3_._el1247 = param2;
            _loc4_.push(_loc3_);
            _loc6_++;
         }
         return _loc4_;
      }
      
      public function clone() : RankingsModel
      {
         var _loc1_:RankingsModel = new RankingsModel();
         _loc1_._ia11084 = this._ia11084;
         _loc1_._rb8780 = this._rb8780;
         _loc1_._ui7485 = this._ui7485;
         _loc1_._ed3586 = this._ed3586;
         _loc1_._wf9827 = this._wf9827;
         _loc1_._el1247 = this._el1247;
         _loc1_._vn10063 = this._vn10063;
         _loc1_._kp3064 = this._kp3064;
         _loc1_._tu7334 = this._tu7334;
         _loc1_.list = this.list;
         return _loc1_;
      }
      
      public function get _ia11084() : int
      {
         return this._ij8820;
      }
      
      public function set _ia11084(param1:int) : void
      {
         this._ij8820 = param1;
      }
      
      public function get _rb8780() : int
      {
         return this._gb12075;
      }
      
      public function set _rb8780(param1:int) : void
      {
         this._gb12075 = param1;
      }
      
      public function get _ui7485() : int
      {
         return this._no7482;
      }
      
      public function set _ui7485(param1:int) : void
      {
         this._no7482 = param1;
      }
      
      public function get _ed3586() : int
      {
         return this._dx10834;
      }
      
      public function set _ed3586(param1:int) : void
      {
         this._dx10834 = param1;
      }
      
      public function get list() : Array
      {
         return this._th13283;
      }
      
      public function set list(param1:Array) : void
      {
         this._th13283 = param1;
      }
      
      public function get _tu7334() : Array
      {
         return this._yr8848;
      }
      
      public function set _tu7334(param1:Array) : void
      {
         this._yr8848 = param1;
      }
      
      public function get _wf9827() : int
      {
         return this._al11605;
      }
      
      public function set _wf9827(param1:int) : void
      {
         this._al11605 = param1;
      }
      
      public function get _el1247() : int
      {
         return this._ck5194;
      }
      
      public function set _el1247(param1:int) : void
      {
         this._ck5194 = param1;
      }
      
      public function get _vn10063() : int
      {
         return this._bu3730;
      }
      
      public function set _vn10063(param1:int) : void
      {
         this._bu3730 = param1;
      }
      
      public function get _kp3064() : int
      {
         return this._rx10186;
      }
      
      public function set _kp3064(param1:int) : void
      {
         this._rx10186 = param1;
      }
   }
}

