package src.loaders
{
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.utils.*;
   import src.config.*;
   import src.logs.*;
   import src.org.osflash.thunderbolt.*;
   import src.tv.boombang.core.errors.*;
   
   public class _sa9254
   {
      
      private static var _instance:_sa9254;
      
      private static const _fg13046:int = 4;
      
      private static const _dk6625:int = 5;
      
      private static const _os9522:int = 1;
      
      private static const _ag11080:int = 2;
      
      private static const _rw10615:int = 1;
      
      private static const STOP:int = 2;
      
      public static var _av14707:String = "";
      
      private var _pf2713:int = 2;
      
      private var _kf1360:int = 0;
      
      private var _pv310:Array;
      
      private var _cv15435:_xe14606 = null;
      
      private var _ny9792:int;
      
      private var _kf11860:Array;
      
      private var _ga933:Array;
      
      public var _lm5662:_uk9465;
      
      private var _uf9432:Dictionary;
      
      private var _ak3640:_mk16025;
      
      private var _oi9541:Function;
      
      public function _sa9254(param1:_rw9443)
      {
         this._pv310 = new Array();
         this._kf11860 = new Array();
         this._ga933 = new Array();
         this._uf9432 = new Dictionary();
         this._ak3640 = new _mk16025();
         super();
         _av14707 = "?nocache=" + getTimer().toString() + int(Math.random() * 1000000).toString();
      }
      
      public static function getInstance() : _sa9254
      {
         if(_sa9254._instance == null)
         {
            _sa9254._instance = new _sa9254(new _rw9443());
         }
         return _sa9254._instance;
      }
      
      private static function _tn6425(param1:int) : int
      {
         return int(1103515245 * param1) + 12345;
      }
      
      public static function _vx3077(param1:ByteArray) : ByteArray
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = 0;
         var _loc9_:ByteArray = null;
         if(param1.length > 4)
         {
            _loc2_ = param1.readByte();
            _loc3_ = param1.readByte();
            _loc4_ = param1.readByte();
            _loc5_ = param1.readByte();
            if(_loc2_ == 15 && _loc3_ == 14 && _loc4_ == 13 && _loc5_ == 14)
            {
               _loc9_ = new ByteArray();
               _loc6_ = 8883322;
               _loc7_ = int(_tn6425(_loc6_));
               while(param1.bytesAvailable > 0)
               {
                  _loc8_ = param1.readByte();
                  _loc8_ = _loc8_ ^ _loc7_;
                  _loc9_.writeByte(_loc8_);
                  _loc7_ = int(_tn6425(_loc7_));
               }
               _loc9_.position = 0;
            }
            else
            {
               param1.position = 0;
               _loc9_ = param1;
            }
         }
         else
         {
            _loc9_ = param1;
         }
         return _loc9_;
      }
      
      public function _qx1635() : void
      {
         this._pf2713 = STOP;
         this._kf11860.length = 0;
         this._ga933.length = 0;
         this._cv15435 = null;
         this._pv310.length = 0;
      }
      
      public function _bi8517(param1:String) : void
      {
         this._cv15435 = new _xe14606();
         this._cv15435._uf1803 = param1;
         this._pv310.push(this._cv15435);
      }
      
      public function _yr9850(param1:String) : void
      {
         this._ak3640._yr9850(param1);
      }
      
      public function _dd12886(param1:String) : String
      {
         return this._ak3640._dd12886(param1);
      }
      
      public function _rj4318(param1:String, param2:String) : void
      {
         this._ak3640._pr2251(param1,param2);
      }
      
      public function _jl2091(param1:String, param2:String) : void
      {
         this._ak3640._op10429(param1,param2);
      }
      
      public function addElements(param1:Array) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.addElement(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function addElement(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:_jb3113 = null;
         if(this._cv15435 == null)
         {
            this._bi8517("");
         }
         var _loc8_:_ki14341 = this._ak3640.getItem(param1);
         if(_loc8_ == null)
         {
            throw new _bc6516("File " + param1 + " not found in filelist");
         }
         if(_loc8_.type == _mk16025._tf1913)
         {
            _loc2_ = int(_os9522);
         }
         else if(_loc8_.type == _mk16025._is12167)
         {
            _loc2_ = int(_ag11080);
         }
         switch(_loc2_)
         {
            case _os9522:
               _loc3_ = new _jb3113(_loc8_);
               this._kf11860.push(_loc3_);
               if(_loc8_._pi16172)
               {
                  var _loc4_:Object = this._uf9432[_loc8_.name];
                  if(_loc4_ != null)
                  {
                     _loc3_.element = null;
                     _loc3_.state = _jb3113.COMPLETE;
                     var _loc7_:Boolean = true;
                  }
               }
               this._cv15435._kf11860.push(_loc3_);
               return;
            case _ag11080:
               var _loc5_:_xc10131 = new _xc10131(_loc8_);
               this._ga933.push(null);
               if(_loc8_._pi16172)
               {
                  var _loc6_:Object = this._uf9432[_loc8_.name];
                  if(_loc6_ != null)
                  {
                     null.element = null;
                     null.state = _xc10131.COMPLETE;
                     _loc7_ = true;
                  }
               }
               this._cv15435._ga933.push(null);
               return;
            default:
               return;
         }
      }
      
      public function start() : void
      {
         var _loc1_:int = 0;
         if(this._pf2713 == STOP)
         {
            _loc1_ = this._pv310.length - 1;
            while(_loc1_ >= 0)
            {
               if(_xe14606(this._pv310[_loc1_])._tg7298())
               {
                  this._pv310.splice(_loc1_,1);
               }
               _loc1_--;
            }
            this._ny9792 = this._pv310.length;
            if(this._pv310.length > 0)
            {
               this._cv15435 = this._pv310[0];
               this._pf2713 = _rw10615;
               this._gw11174();
            }
            else
            {
               this._cv15435 = null;
            }
         }
      }
      
      private function _gw11174() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:_jb3113 = null;
         var _loc4_:_xc10131 = null;
         if(this._cv15435 != null && this._kf1360 < _fg13046 && this._pf2713 == _rw10615)
         {
            _loc1_ = int(this._cv15435._kf11860.length);
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               _loc3_ = _jb3113(this._cv15435._kf11860[_loc2_]);
               if(_loc3_.state == _jb3113._nx5835)
               {
                  this._pt15407(_loc3_);
                  if(this._kf1360 >= _fg13046)
                  {
                     return;
                  }
               }
               _loc2_++;
            }
            _loc1_ = int(this._cv15435._ga933.length);
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               _loc4_ = _xc10131(this._cv15435._ga933[_loc2_]);
               if(_loc4_.state == _xc10131._nx5835)
               {
                  this._yr15129(_loc4_);
                  if(this._kf1360 >= _fg13046)
                  {
                     return;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      private function _pt15407(param1:_jb3113) : void
      {
         param1._mf11604 = 0;
         this._rx2456();
         var _loc2_:String = this._gu12005(param1._dg12846);
         if(param1._dg12846.name != _mk16025._wi9225)
         {
            param1._wb7100 = new URLLoader();
            param1._wb7100.dataFormat = URLLoaderDataFormat.BINARY;
            this.addListeners(param1);
            param1.url = param1._dg12846._en11768 + param1._dg12846._le1402 + _loc2_;
            param1._wb7100.load(new URLRequest(param1.url));
            param1.state = _jb3113._rw10615;
            ++this._kf1360;
         }
         else
         {
            param1._sk4816 = new Loader();
            param1._sk4816.contentLoaderInfo.addEventListener(Event.COMPLETE,this._wv2684);
            if(_cc7688._am6925 == null)
            {
               param1.url = param1._dg12846._en11768 + param1._dg12846._le1402 + _loc2_;
            }
            else
            {
               param1.url = _cc7688._am6925 + param1._dg12846._le1402 + _loc2_;
            }
            param1._sk4816.load(new URLRequest(param1.url));
            param1.state = _jb3113._rw10615;
            ++this._kf1360;
         }
      }
      
      private function _yr15129(param1:_xc10131) : void
      {
         param1._mf11604 = 0;
         this._rx2456();
         var _loc2_:String = this._gu12005(param1._dg12846);
         param1._gh9083 = new URLLoader();
         param1._gh9083.dataFormat = URLLoaderDataFormat.BINARY;
         this.addListeners(param1);
         param1.url = param1._dg12846._en11768 + param1._dg12846._le1402 + _loc2_;
         param1._gh9083.load(new URLRequest(param1.url));
         param1.state = _jb3113._rw10615;
         ++this._kf1360;
      }
      
      private function _rx2456() : void
      {
      }
      
      private function _gu12005(param1:_ki14341) : String
      {
         var _loc2_:String = _av14707;
         if(param1._ef8064.length > 0)
         {
            _loc2_ = "?nocache=" + param1._ef8064;
         }
         return _loc2_;
      }
      
      private function _pd1737(param1:ProgressEvent) : void
      {
         var _loc2_:URLLoader = null;
         var _loc3_:_jb3113 = null;
         var _loc4_:_xc10131 = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this._cv15435 == null)
         {
            return;
         }
         if(this._lm5662 != null && param1.bytesTotal != 0)
         {
            _loc2_ = URLLoader(param1.target);
            _loc3_ = this._cv15435._bx12196(_loc2_);
            if(_loc3_ != null)
            {
               _loc3_._dg12846._xy4578 = param1.bytesLoaded;
            }
            _loc4_ = this._cv15435._vo12786(_loc2_);
            if(_loc4_ != null)
            {
               _loc4_._dg12846._xy4578 = param1.bytesLoaded;
            }
            _loc5_ = int(this._cv15435._dw9002());
            _loc6_ = int(this._cv15435._pg15787());
            if(_loc6_ != 0)
            {
               this._lm5662._fn7388 = _loc5_ * 100 / _loc6_;
            }
         }
      }
      
      private function _lx5179(param1:Event) : void
      {
         var _loc3_:URLLoader = URLLoader(param1.currentTarget);
         if(this._cv15435 == null)
         {
            this._ag11956(_loc3_);
            return;
         }
         var _loc4_:_jb3113 = this._cv15435._bx12196(_loc3_);
         if(_loc4_ != null)
         {
            this.removeListeners(_loc4_);
            if(_loc3_.dataFormat == URLLoaderDataFormat.BINARY)
            {
               var _loc2_:ByteArray = _loc3_.data;
               _loc2_ = _vx3077(null);
               _loc4_._sk4816 = new Loader();
               _loc4_._sk4816.contentLoaderInfo.addEventListener(Event.COMPLETE,this._wv2684);
               _loc4_._sk4816.loadBytes(null);
            }
            _loc4_._wb7100 = null;
         }
      }
      
      private function _wv2684(param1:Event) : void
      {
         var _loc2_:Loader = Loader(param1.currentTarget.loader);
         var _loc3_:_jb3113 = this._cv15435._cv1926(_loc2_);
         if(_loc3_ != null)
         {
            _loc3_._sk4816.contentLoaderInfo.removeEventListener(Event.COMPLETE,this._wv2684);
            _loc3_.element = param1.target.content;
            if(_loc3_.element is DisplayObjectContainer)
            {
               DisplayObjectContainer(_loc3_.element).tabChildren = false;
            }
            if(_loc3_.element is InteractiveObject)
            {
               InteractiveObject(_loc3_.element).tabEnabled = false;
            }
            if(param1.target.contentType == "application/x-shockwave-flash")
            {
               if(_loc2_.contentLoaderInfo.actionScriptVersion != ActionScriptVersion.ACTIONSCRIPT3)
               {
                  _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"LoadMedia.elementFinishReal","loaded element isn\'t ActionScript3 =" + _loc3_._dg12846._le1402));
               }
            }
            _loc3_._sk4816.unload();
            _loc3_._sk4816 = null;
            _loc3_.state = _jb3113.COMPLETE;
            --this._kf1360;
            if(_loc3_._dg12846._pi16172)
            {
               this._uf9432[_loc3_._dg12846.name] = _loc3_.element;
            }
            this._kv5643();
            this._gw11174();
            this._rx2456();
         }
      }
      
      private function _bo1947(param1:Event) : void
      {
         var _loc4_:URLLoader = URLLoader(param1.target);
         var _loc5_:_xc10131 = this._cv15435._vo12786(_loc4_);
         if(_loc5_ != null)
         {
            this.removeListeners(_loc5_);
            var _loc2_:Object = null;
            if(_loc4_.dataFormat == URLLoaderDataFormat.BINARY)
            {
               var _loc3_:ByteArray = _loc4_.data;
               _loc3_ = _vx3077(null);
               _loc2_ = null.readMultiByte(null.length,"utf-8");
            }
            else
            {
               _loc2_ = _loc4_.data;
            }
            _loc5_._gh9083 = null;
            _loc5_.element = null;
            _loc5_.state = _xc10131.COMPLETE;
            --this._kf1360;
            if(_loc5_._dg12846._pi16172)
            {
               this._uf9432[_loc5_._dg12846.name] = _loc5_.element;
            }
            this._kv5643();
            this._gw11174();
            this._rx2456();
         }
      }
      
      private function _kv5643() : void
      {
         if(this._cv15435._tg7298())
         {
            this._pv310.splice(0,1);
            if(this._pv310.length > 0)
            {
               this._cv15435 = this._pv310[0];
            }
            else
            {
               this._cv15435 = null;
               this._pf2713 = STOP;
            }
         }
      }
      
      public function _tg7298() : Boolean
      {
         return this._pv310.length == 0;
      }
      
      public function _xb9567(param1:String) : Object
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < this._kf11860.length)
         {
            if(_jb3113(this._kf11860[_loc2_])._dg12846.name == param1)
            {
               return _jb3113(this._kf11860[_loc2_]).element;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this._ga933.length)
         {
            if(_xc10131(this._ga933[_loc2_])._dg12846.name == param1)
            {
               return _xc10131(this._ga933[_loc2_]).element;
            }
            _loc2_++;
         }
         _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"LoadMedia.getElementLoaded","loaded element with name not found=" + param1));
         return null;
      }
      
      private function _wh14566(param1:IOErrorEvent) : void
      {
         if(param1.target is URLLoader)
         {
            var _loc2_:URLLoader = URLLoader(param1.target);
            var _loc3_:_jb3113 = this._cv15435._bx12196(null);
            var _loc4_:_xc10131 = this._cv15435._vo12786(null);
         }
         else
         {
            _qn13596.getInstance()._kp3815(new _sy12041(_qn13596._dj10628,"LoadMedia.ioError",param1.toString()));
         }
      }
      
      private function _eh564(param1:SecurityErrorEvent) : void
      {
         _mr16168.error("Security error when downloading file",param1);
      }
      
      private function addListeners(param1:Object) : void
      {
         if(param1 is _xc10131)
         {
            param1._gh9083.addEventListener(Event.COMPLETE,this._bo1947);
            param1._gh9083.addEventListener(IOErrorEvent.IO_ERROR,this._wh14566);
            param1._gh9083.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this._eh564);
            param1._gh9083.addEventListener(ProgressEvent.PROGRESS,this._pd1737);
         }
         else if(param1 is _jb3113)
         {
            param1._wb7100.addEventListener(Event.COMPLETE,this._lx5179);
            param1._wb7100.addEventListener(IOErrorEvent.IO_ERROR,this._wh14566);
            param1._wb7100.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this._eh564);
            param1._wb7100.addEventListener(ProgressEvent.PROGRESS,this._pd1737);
         }
      }
      
      private function removeListeners(param1:Object) : void
      {
         if(param1 is _xc10131)
         {
            param1._gh9083.removeEventListener(Event.COMPLETE,this._bo1947);
            param1._gh9083.removeEventListener(IOErrorEvent.IO_ERROR,this._wh14566);
            param1._gh9083.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._eh564);
            param1._gh9083.removeEventListener(ProgressEvent.PROGRESS,this._pd1737);
         }
         else if(param1 is _jb3113)
         {
            param1._wb7100.removeEventListener(Event.COMPLETE,this._lx5179);
            param1._wb7100.removeEventListener(IOErrorEvent.IO_ERROR,this._wh14566);
            param1._wb7100.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._eh564);
            param1._wb7100.removeEventListener(ProgressEvent.PROGRESS,this._pd1737);
         }
      }
      
      private function _ag11956(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this._lx5179);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this._wh14566);
         param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._eh564);
         param1.removeEventListener(ProgressEvent.PROGRESS,this._pd1737);
      }
      
      public function get _vw8300() : Function
      {
         return this._oi9541;
      }
      
      public function set _vw8300(param1:Function) : void
      {
         this._oi9541 = param1;
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
