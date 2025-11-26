package src.modules.creacionObjetos.formulas
{
   import src.allData.*;
   import src.allData.catObjects.*;
   import src.allData.mochila.*;
   import src.logs.*;
   import src.modules._hq14072;
   import src.modules.creacionObjetos.*;
   import src.multiuser.*;
   
   public class _it11049
   {
      
      private static var _instance:_it11049;
      
      private static const _ww5937:int = 7;
      
      private var catalogo:_dp11732;
      
      private var _bi12814:Array;
      
      private var logs:_qn13596;
      
      private var _fx11460:_dx7471;
      
      private var _pp7334:Array;
      
      public function _it11049(param1:_rw9443)
      {
         super();
         this._hs11453();
         this.logs = _qn13596.getInstance();
         this.catalogo = _dp11732.getInstance();
         this.create();
      }
      
      public static function getInstance() : _it11049
      {
         if(_it11049._instance == null)
         {
            _it11049._instance = new _it11049(new _rw9443());
         }
         return _it11049._instance;
      }
      
      public function _mo8489(param1:_dx7471) : void
      {
         this._fx11460 = param1;
         this._fx11460.addEventListener(_yy13998._yu12979,this._bw11981);
      }
      
      public function _hs11453() : void
      {
         var _loc1_:int = 0;
         this._pp7334 = new Array();
         while(_loc1_ < _lq11107._vj9345)
         {
            this._pp7334.push(false);
            _loc1_++;
         }
      }
      
      public function _kn5152(param1:int) : Boolean
      {
         return this._pp7334[param1 - 1];
      }
      
      public function _tf11038(param1:int) : void
      {
         this._pp7334[param1 - 1] = true;
      }
      
      public function _vo4481(param1:int) : void
      {
         if(!this._kn5152(param1))
         {
            this._fx11460._ku9207(param1);
         }
      }
      
      public function _st10003(param1:int, param2:int) : void
      {
         this._fx11460._tg15562(param1,param2);
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:Array = param1._lv9976;
         var _loc3_:uint = uint(String(_loc2_[1]).charCodeAt(0));
         switch(_loc3_)
         {
            case _dx7471._tn9545:
               this._xc6969(_loc2_);
               return;
            default:
               return;
         }
      }
      
      private function create() : void
      {
         this._bi12814 = new Array();
      }
      
      public function _xc6969(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc11_:int = 0;
         param1.shift();
         param1.shift();
         var _loc9_:int = int(param1.shift());
         this._tf11038(_loc9_);
         var _loc10_:int = param1.length / _ww5937;
         while(_loc11_ < _loc10_)
         {
            _loc2_ = int(param1[_ww5937 * _loc11_ + 0]);
            _loc3_ = param1[_ww5937 * _loc11_ + 1];
            _loc4_ = int(param1[_ww5937 * _loc11_ + 2]);
            _loc5_ = int(param1[_ww5937 * _loc11_ + 3]);
            _loc6_ = int(param1[_ww5937 * _loc11_ + 4]);
            _loc7_ = _jl5367._hp13280(param1[_ww5937 * _loc11_ + 5]);
            _loc8_ = _jl5367._hp13280(param1[_ww5937 * _loc11_ + 6]);
            this._ug10700(_loc2_,_loc9_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
            _loc11_++;
         }
      }
      
      private function _ug10700(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:Array, param8:Array) : void
      {
         var _loc9_:_uq7753 = this.catalogo._ms14382(param6);
         if(_loc9_ == null)
         {
            this.logs._kp3815(new _sy12041(_qn13596._dj10628,"ManagerFormula.addFormula","invalid object id: " + param6));
            return;
         }
         this._bi12814.push(new _mq8492(param1,param2,param3,param4,param5,_loc9_,param6,param7,param8));
      }
      
      public function _mr6114(param1:int) : _mq8492
      {
         var _loc3_:int = 0;
         var _loc2_:int = int(this._bi12814.length);
         while(_loc3_ < _loc2_)
         {
            if(_mq8492(this._bi12814[_loc3_])._ik15119 == param1)
            {
               return _mq8492(this._bi12814[_loc3_]);
            }
            _loc3_++;
         }
         return null;
      }
      
      public function _lv4049(param1:int) : Array
      {
         var idCat:int = param1;
         return this._bi12814.filter(function(param1:*, param2:int, param3:Array):Boolean
         {
            return param1._uq11060 == idCat;
         });
      }
      
      public function _pq12363(param1:_mq8492) : Boolean
      {
         var _loc4_:int = 0;
         if(_hv12530.getInstance()._dx11054 < param1._kn11986 || _hv12530.getInstance()._ea4493 < param1._fk13397)
         {
            return false;
         }
         var _loc2_:Array = _gb14411.getInstance()._ui3214();
         var _loc3_:Boolean = true;
         while(_loc4_ < param1._gj4652.length)
         {
            if(param1._gj4652[_loc4_] == -10001 || param1._gj4652[_loc4_] == -10000 || (_loc2_[param1._gj4652[_loc4_]] && _loc2_[param1._gj4652[_loc4_]] >= param1._mo6900[_loc4_] || param1._gj4652[_loc4_] == -1))
            {
               _loc3_ = _loc3_;
            }
            else
            {
               _loc3_ &&= false;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function _og14142(param1:int, param2:int) : Boolean
      {
         var _loc3_:Array = _gb14411.getInstance()._ui3214();
         if(Boolean(_loc3_[param1]) && _loc3_[param1] >= param2)
         {
            return true;
         }
         return false;
      }
   }
}

class _rw9443
{
   
   public function _rw9443()
   {
      super();
   }
}
