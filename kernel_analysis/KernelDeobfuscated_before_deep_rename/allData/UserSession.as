package src.allData
{
   import com.hurlant.crypto.*;
   import com.hurlant.crypto.prng.*;
   import com.hurlant.crypto.symmetric.ICipher;
   import flash.utils.*;
   import src.allData.color.*;
   import src.modules.concursos.*;
   import src.modules.login.*;
   import src.person.PersonAnimation;
   import src.tv.boombang.application.social.datatypes.DatatypesModel;
   import src.tv.boombang.core.datatypes.*;
   import src.tv.boombang.core.datatypes.events.EventsModel;
   
   public class UserSession extends PersonAnimation
   {
      
      private static var _instance:UserSession;
      
      public static const _kr15451:uint = 0;
      
      public static const _ma6151:uint = 1;
      
      public static const _lb6305:uint = 2;
      
      public static const _mr6221:Boolean = false;
      
      public static const _ma7848:Boolean = true;
      
      public static const _py00339:String = "c78f2b2996d";
      
      private var _fs6578:String;
      
      private var _ad13485:String;
      
      private var _creditosOro:int;
      
      private var _creditosDiamante:int;
      
      private var _qt13343:int;
      
      private var _ut10467:int;
      
      private var _rp6839:int;
      
      private var _kc4393:int;
      
      private var _px9081:int;
      
      private var _lw4562:int;
      
      private var _ek11357:int;
      
      private var _yn14834:Boolean;
      
      private var _hq13610:Boolean;
      
      private var _rv11091:int;
      
      private var _xo7591:int;
      
      private var _rk10746:int;
      
      private var _ub10923:int;
      
      private var _ts10237:String = "";
      
      private var _wr11883:Array;
      
      private var _yg3791:String;
      
      private var _nl8449:String;
      
      private var _ij10094:String;
      
      private var _yv4896:String;
      
      private var _pg3791:String;
      
      private var _wa10526:Boolean = false;
      
      public var _my547:String = "";
      
      public var _ds9725:Object;
      
      private var _bu6641:Boolean;
      
      private var _hq11221:Boolean = false;
      
      private var _jf12883:int = 0;
      
      private var _or5243:String;
      
      private var _vt7624:int;
      
      private var _yo16146:Boolean = false;
      
      private var _fw8620:Boolean = false;
      
      private var _qu13095:Boolean = false;
      
      private var _rv6151:Number;
      
      private var _ub12693:Array;
      
      private var _jx11097:Dictionary;
      
      public function UserSession(param1:_rw9443)
      {
         this._wr11883 = new Array();
         this._ub12693 = new Array();
         super();
      }
      
      public static function getInstance() : UserSession
      {
         if(_instance == null)
         {
            _instance = new UserSession(new _rw9443());
         }
         return _instance;
      }
      
      public function _ch7698(param1:EventsModel) : void
      {
         if(!this._jx11097)
         {
            this._jx11097 = new Dictionary();
         }
         this._jx11097[param1.id] = param1;
      }
      
      public function _ef4675(param1:int) : EventsModel
      {
         if(Boolean(this._jx11097) && Boolean(this._jx11097[param1]))
         {
            return this._jx11097[param1];
         }
         return null;
      }
      
      public function _fd11666(param1:DatatypesModel, param2:Boolean) : void
      {
         if(this._ub12693 == null)
         {
            this._ub12693 = new Array();
         }
         var _loc3_:int = int(this._ub12693.indexOf(param1));
         if(param2)
         {
            if(_loc3_ < 0)
            {
               this._ub12693.push(param1);
            }
         }
         else if(_loc3_ >= 0)
         {
            delete this._ub12693[_loc3_];
         }
      }
      
      public function get _jr10446() : Number
      {
         return this._rv6151;
      }
      
      public function set _jr10446(param1:Number) : void
      {
         this._rv6151 = param1;
      }
      
      public function _tf16034(param1:DatatypesModel) : Boolean
      {
         return this._ub12693.indexOf(param1) >= 0;
      }
      
      public function get _vj6269() : Boolean
      {
         return this._yo16146;
      }
      
      public function set _vj6269(param1:Boolean) : void
      {
         this._yo16146 = param1;
      }
      
      public function get _je8982() : int
      {
         return this._jf12883;
      }
      
      public function set _je8982(param1:int) : void
      {
         this._jf12883 = param1;
      }
      
      public function get _ki11521() : String
      {
         return this._or5243;
      }
      
      public function set _ki11521(param1:String) : void
      {
         this._or5243 = param1;
      }
      
      public function get _uf6036() : int
      {
         return this._vt7624;
      }
      
      public function set _uf6036(param1:int) : void
      {
         this._vt7624 = param1;
      }
      
      public function get _vj6555() : Boolean
      {
         return this._hq11221;
      }
      
      public function set _vj6555(param1:Boolean) : void
      {
         this._hq11221 = param1;
      }
      
      public function get _fr149() : Boolean
      {
         return this._bu6641;
      }
      
      public function set _fr149(param1:Boolean) : void
      {
         this._bu6641 = param1;
      }
      
      public function get _hw3203() : String
      {
         return this._fs6578;
      }
      
      public function set _hw3203(param1:String) : void
      {
         this._fs6578 = param1;
      }
      
      public function get _am6464() : String
      {
         return this._ad13485;
      }
      
      public function set _am6464(param1:String) : void
      {
         this._ad13485 = param1;
      }
      
      public function get _dx11054() : int
      {
         return this._creditosOro;
      }
      
      public function set _dx11054(param1:int) : void
      {
         this._creditosOro = param1;
      }
      
      public function get creditosDiamante() : int
      {
         return this._creditosDiamante;
      }
      
      public function set creditosDiamante(param1:int) : void
      {
         this._creditosDiamante = param1;
      }
      
      public function get _ea4493() : int
      {
         return this._qt13343;
      }
      
      public function set _ea4493(param1:int) : void
      {
         this._qt13343 = param1;
      }
      
      public function get _pm10848() : int
      {
         return this._ut10467;
      }
      
      public function set _pm10848(param1:int) : void
      {
         this._ut10467 = param1;
      }
      
      public function get _uq11439() : int
      {
         return this._rp6839;
      }
      
      public function set _uq11439(param1:int) : void
      {
         this._rp6839 = param1;
      }
      
      public function get day() : int
      {
         return this._kc4393;
      }
      
      public function set day(param1:int) : void
      {
         this._kc4393 = param1;
      }
      
      public function get month() : int
      {
         return this._px9081;
      }
      
      public function set month(param1:int) : void
      {
         this._px9081 = param1;
      }
      
      public function get year() : int
      {
         return this._lw4562;
      }
      
      public function set year(param1:int) : void
      {
         this._lw4562 = param1;
      }
      
      public function get _yr4676() : int
      {
         return this._ek11357;
      }
      
      public function set _yr4676(param1:int) : void
      {
         this._ek11357 = param1;
      }
      
      public function get _ma12295() : Boolean
      {
         return this._yn14834;
      }
      
      public function set _ma12295(param1:Boolean) : void
      {
         this._yn14834 = param1;
      }
      
      public function get antitimos() : Boolean
      {
         return this._hq13610;
      }
      
      public function set antitimos(param1:Boolean) : void
      {
         this._hq13610 = param1;
      }
      
      public function get _tc16118() : int
      {
         return this._rv11091;
      }
      
      public function set _tc16118(param1:int) : void
      {
         this._rv11091 = param1;
      }
      
      public function get _ec10230() : int
      {
         return this._xo7591;
      }
      
      public function set _ec10230(param1:int) : void
      {
         this._xo7591 = param1;
      }
      
      public function get _lf431() : int
      {
         return this._rk10746;
      }
      
      public function set _lf431(param1:int) : void
      {
         this._rk10746 = param1;
      }
      
      public function get _xj13389() : int
      {
         return this._ub10923;
      }
      
      public function set _xj13389(param1:int) : void
      {
         this._ub10923 = param1;
      }
      
      public function setDate(param1:String) : void
      {
         var _loc2_:Array = param1.split("-");
         this.year = int(_loc2_[0]);
         this.month = int(_loc2_[1]);
         this.day = int(_loc2_[2]);
      }
      
      public function get _uh10885() : String
      {
         return this._ts10237;
      }
      
      public function set _uh10885(param1:String) : void
      {
         this._ts10237 = param1;
      }
      
      public function set _ry9019(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         this._yg3791 = param1;
      }
      
      public function get _ry9019() : String
      {
         return this._yg3791;
      }
      
      public function set _dk13651(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         this._nl8449 = param1;
      }
      
      public function get _dk13651() : String
      {
         return this._nl8449;
      }
      
      public function set _qq2512(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         this._ij10094 = param1;
      }
      
      public function get _qq2512() : String
      {
         return this._ij10094;
      }
      
      public function set _qw1539(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         this._yv4896 = param1;
      }
      
      public function get _qw1539() : String
      {
         return this._yv4896;
      }
      
      public function set _bc4854(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         if(Boolean(int(param1)))
         {
            this._fr149 = true;
         }
         this._pg3791 = param1;
      }
      
      public function get _bc4854() : String
      {
         return this._pg3791;
      }
      
      public function set _oq2035(param1:Boolean) : void
      {
         this._wa10526 = param1;
      }
      
      public function get _oq2035() : Boolean
      {
         return this._wa10526;
      }
      
      public function _tu10532() : Boolean
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this._ds9725 == null)
         {
            return true;
         }
         var _loc3_:ByteArray = this._ds9725._gso("login" + RuntimeParams._ns12055,"usr") as ByteArray;
         if(_loc3_ == null)
         {
            return false;
         }
         var _loc4_:ByteArray = new ByteArray();
         _loc3_.readBytes(_loc4_,0,16);
         var _loc5_:ByteArray = new ByteArray();
         _loc3_.readBytes(_loc5_);
         var _loc6_:ICipher = Crypto.getCipher("aes-ecb",_loc4_,Crypto.getPad("pkcs5"));
         _loc6_._vx09345(_loc5_);
         _loc5_.position = 0;
         if(_loc5_.bytesAvailable > 0)
         {
            _loc2_ = _loc5_.readUTF();
         }
         if(_loc5_.bytesAvailable > 0)
         {
            _loc1_ = _loc5_.readUTF();
         }
         if(_loc2_ != null)
         {
            this.name = _loc2_;
         }
         if(_loc1_ != null)
         {
            this._hw3203 = _loc1_;
         }
         return true;
      }
      
      public function _xm23(param1:Boolean, param2:Boolean) : void
      {
         if(this._ds9725 == null)
         {
            return;
         }
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:Random = new Random();
         _loc4_.nextBytes(_loc3_,16);
         var _loc5_:ByteArray = new ByteArray();
         if(param1)
         {
            _loc5_.writeUTF(name);
            if(param2)
            {
               _loc5_.writeUTF(this._hw3203);
            }
         }
         var _loc6_:ICipher = Crypto.getCipher("aes-ecb",_loc3_,Crypto.getPad("pkcs5"));
         _loc6_._qw34210(_loc5_);
         var _loc7_:ByteArray = new ByteArray();
         _loc7_.writeBytes(_loc3_);
         _loc7_.writeBytes(_loc5_);
         this._ds9725._sso("login" + RuntimeParams._ns12055,"usr",_loc7_);
      }
      
      public function _on1372() : void
      {
         var _loc1_:Array = null;
         if(this._ds9725 == null)
         {
            return;
         }
         var _loc2_:Array = this._ds9725._gso("dms","usr") as Array;
         this._uh10885 = "";
         if(_loc2_ != null)
         {
            for each(_loc1_ in _loc2_)
            {
               if(String(_loc1_[0]).toUpperCase() == name.toUpperCase())
               {
                  this._uh10885 = String(_loc1_[1]);
               }
            }
         }
      }
      
      public function _ie1610() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc4_:Array = null;
         var _loc3_:Array = this._ds9725._gso("dms","usr") as Array;
         if(_loc3_ != null)
         {
            for each(_loc1_ in _loc3_)
            {
               if(String(_loc1_[0]).toUpperCase() == name.toUpperCase())
               {
                  _loc4_ = _loc1_;
                  break;
               }
            }
         }
         else
         {
            _loc3_ = new Array();
         }
         if(_loc4_ == null)
         {
            _loc4_ = new Array();
            _loc4_.push(name);
            _loc3_.push(_loc4_);
         }
         if(this._uh10885 != null)
         {
            _loc4_[1] = this._uh10885;
         }
         else
         {
            _loc2_ = int(_loc3_.indexOf(_loc4_));
            _loc3_.splice(_loc2_,1);
         }
         this._ds9725._sso("dms","usr",_loc3_);
      }
      
      public function _ty2041() : void
      {
         if(this._ds9725 == null)
         {
            return;
         }
         this._ds9725._sso("cc","id",id);
      }
      
      public function _wi12313() : Boolean
      {
         var _loc1_:int = 0;
         if(this._ds9725 == null)
         {
            return true;
         }
         if(id != -1)
         {
            _loc1_ = int(this._ds9725._gso("cc","id"));
            return _loc1_ == id;
         }
         return true;
      }
      
      public function _ru16169() : void
      {
      }
      
      public function _mq5264(param1:Boolean = true) : void
      {
         var _loc2_:LoginModel = new LoginModel();
         name = "";
         this._hw3203 = "";
         if(param1)
         {
            _jn11596 = 1;
            colors = new ColorModel("");
            _ll5517 = new ColorModel("");
         }
         this.day = 22;
         this.month = 2;
         this.year = 1995;
         this._dx11054 = 0;
         _lk2235 = _loc2_._en4425;
         this._yr4676 = 2;
         hobbies = [_loc2_._xp13169,_loc2_._xp13169,_loc2_._xp13169];
         _en11081 = [_loc2_._xp13169,_loc2_._xp13169,_loc2_._xp13169];
         this._lf431 = 1800;
      }
      
      public function _ml14381(param1:int) : int
      {
         var _loc2_:Concursos = this._kx3266(param1);
         if(_loc2_ != null)
         {
            return _loc2_._qx12738;
         }
         return 0;
      }
      
      public function _kx3266(param1:int) : Concursos
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._wr11883.length)
         {
            if(Concursos(this._wr11883[_loc2_]).id == param1)
            {
               return Concursos(this._wr11883[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
      
      public function _bj2239(param1:int, param2:int) : void
      {
         this._wr11883.push(new Concursos(param1,param2));
      }
      
      public function _th15114(param1:int, param2:int) : void
      {
         if(this._kx3266(param1) == null)
         {
            this._bj2239(param1,param2);
         }
      }
      
      public function _bn2124(param1:int, param2:int) : void
      {
         var _loc3_:Concursos = this._kx3266(param1);
         if(_loc3_ != null && param2 >= 0)
         {
            _loc3_._rh12122 = param2;
         }
      }
      
      public function _wb8182() : Boolean
      {
         return this._dk13651 == "cad3f34bc67f27268cfad368b1e01a9e";
      }
      
      public function _ih7381() : int
      {
         var _loc1_:Concursos = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this._wr11883.length)
         {
            _loc1_ = Concursos(this._wr11883[_loc3_]);
            if(_loc1_.id >= 25 && _loc1_.id <= 30)
            {
               _loc2_ += _loc1_._qx12738;
            }
            _loc3_++;
         }
         return _loc2_;
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
