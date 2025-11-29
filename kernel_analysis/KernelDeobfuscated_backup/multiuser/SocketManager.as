package src.multiuser
{
   import com.adobe.crypto.*;
   import com.hurlant.crypto.prng.*;
   import com.hurlant.util.*;
   import flash.errors.IOError;
   import flash.events.*;
   import flash.external.*;
   import flash.net.*;
   import flash.utils.*;
   import src.allData.*;
   import src.config.*;
   import src.crypto.*;
   import src.crypto.hurlant.math.*;
   import src.modules.antitimos.*;
   import src.modules.baneos.*;
   import src.modules.bpad.*;
   import src.modules.chooseIsla.*;
   import src.modules.chooseScene.*;
   import src.modules.concursos.*;
   import src.modules.creacionObjetos.*;
   import src.modules.creditos.*;
   import src.modules.crypto.*;
   import src.modules.enterScene.*;
   import src.modules.estadoPociones.*;
   import src.modules.iluminarGrillas.*;
   import src.modules.intercambios.*;
   import src.modules.interfaz.*;
   import src.modules.irAlli.*;
   import src.modules.login.*;
   import src.modules.member.*;
   import src.modules.multiplayerGames.*;
   import src.modules.noticias.*;
   import src.modules.notificaciones.*;
   import src.modules.npc.*;
   import src.modules.objetos.*;
   import src.modules.privados.*;
   import src.modules.report.*;
   import src.modules.scene.*;
   import src.modules.singleplayerGames.*;
   import src.org.osflash.thunderbolt.*;
   import src.tv.boombang.application.ga.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class _jl5367 extends EventDispatcher
   {
      
      private static var _instance:_jl5367;
      
      public static var tontoelquelomodifique:String;
      
      private static const _ji5343:int = 8000;
      
      private static const _ji5344:int = 1000;
      
      public static const _if7385:String = "CONNECTION _READY_TO_LOGIN";
      
      private static const _md12876:int = 17;
      
      private static const _cq122:int = 16;
      
      private static const _ox12086:int = 18;
      
      private static const _fa13222:int = 176;
      
      private static const _bq5255:int = 177;
      
      private static const _xi2561:int = 178;
      
      private static const _wb15086:int = 179;
      
      private static const _gt5939:int = 171;
      
      private static const _mw1848:int = 172;
      
      public static const _bl4651:int = 120;
      
      public static const _ft14658:int = 121;
      
      public static const _yq5719:int = 122;
      
      public static const _qg13268:int = 123;
      
      public static const _tt3648:int = 124;
      
      public static const _gm6292:int = 125;
      
      public static const _jk8596:int = 126;
      
      public static const _ta3798:int = 127;
      
      public static const _uy12212:int = 128;
      
      public static const _yr12668:int = 129;
      
      public static const _ub5740:int = 131;
      
      public static const _in15613:int = 132;
      
      public static const _ng991:int = 133;
      
      public static const _nt7418:int = 134;
      
      public static const _ea6202:int = 135;
      
      public static const _xl5578:int = 136;
      
      public static const _hb6099:int = 142;
      
      public static const _pe2154:int = 143;
      
      public static const _ha1793:int = 144;
      
      public static const _ml6852:int = 145;
      
      public static const _ml6851:int = 225;
      
      public static const _jx10376:int = 146;
      
      public static const _bt15669:int = 147;
      
      public static const _jy3632:int = 148;
      
      public static const _bt13380:int = 149;
      
      public static const _vm11483:int = 150;
      
      public static const _js15882:int = 151;
      
      public static const _lb11771:int = 153;
      
      public static const _kw6674:int = 152;
      
      public static const _vk2252:int = 154;
      
      public static const _kl1714:int = 155;
      
      public static const _fi5427:int = 156;
      
      public static const _db5883:int = 157;
      
      public static const _qw16015:int = 158;
      
      public static const _md940:int = 159;
      
      public static const _gl14626:int = 160;
      
      public static const _dl11506:int = 161;
      
      public static const _kb3245:int = 162;
      
      public static const _pc10290:int = 163;
      
      public static const _dm11287:int = 164;
      
      public static const _wb10393:int = 165;
      
      public static const _hy10604:int = 166;
      
      public static const _tr9968:int = 167;
      
      public static const _xw4458:int = 168;
      
      public static const _vs15009:int = 169;
      
      public static const _ke15716:int = 170;
      
      public static const _nu9941:int = 173;
      
      public static const _bd13550:int = 174;
      
      public static const _ii803:int = 175;
      
      public static const _vv15350:int = 180;
      
      public static const _xf1672:int = 181;
      
      public static const _ue3708:int = 182;
      
      public static const _ue15593:int = 183;
      
      public static const _bb12578:int = 184;
      
      public static const _bk11602:int = 185;
      
      public static const _nl6406:int = 187;
      
      public static const _ex12958:int = 189;
      
      public static const _pw2177:int = 190;
      
      public static const _hs3203:int = 191;
      
      public static const _ak6616:int = 192;
      
      public static const _ac13376:int = 193;
      
      public static const _ab9203:int = 194;
      
      public static const _bl3026:int = 195;
      
      public static const _es3680:int = 196;
      
      public static const _ct9708:int = 198;
      
      public static const _eb6740:int = 199;
      
      public static const _ut13239:int = 200;
      
      public static const _hc9593:int = 202;
      
      public static const _aw9459:int = 203;
      
      public static const _ii9970:int = 207;
      
      public static const _ii9971:int = 233;
      
      public static const _ys5108:int = 208;
      
      public static const _ht4823:int = 209;
      
      public static const _xp4366:int = 210;
      
      public static const _ml6850:int = 211;
      
      public static const _ya8551:int = 120;
      
      public static const _sp15836:int = 121;
      
      public static const _al12707:int = 122;
      
      public static const _ha3183:int = 123;
      
      public static const _dx1133:int = 124;
      
      public static const _tt1562:int = 125;
      
      public static const _gh10597:int = 120;
      
      public static const _wc11620:int = 121;
      
      public static const _tj7227:int = 122;
      
      public static const _tg10709:int = 32;
      
      public static const _hg14446:int = 33;
      
      public static const _pq16053:int = 1;
      
      public static const _yr11754:int = 2;
      
      public static const _me15958:int = 3;
      
      public static const _mo626:int = 4;
      
      public static const _es10590:int = 1;
      
      public static const _jw5042:int = 2;
      
      public static const _wu249:int = 3;
      
      public static const _hg9171:int = 4;
      
      public var socket:Socket;
      
      private var host:String;
      
      private var port:int;
      
      private var _wy15540:String = "";
      
      private var _wy15541:String = "127.0.0.1";
      
      private var _ck89356:String = "";
      
      private var _fj60925:String = "";
      
      private var _mf11604:int = 2;
      
      private var _xa6146:uint = 4294967295;
      
      private var _qq5238:Array;
      
      private var _ri4407:ByteArray;
      
      private var _qj11874:int;
      
      private var _rv8218:int;
      
      private var _cn5991:int;
      
      private var _rh6934:String;
      
      private var _cm1764:Timer;
      
      public var _kf1324:Boolean = true;
      
      private var _hm2791:Boolean = false;
      
      private var _ad16050:Boolean = false;
      
      private var _ln4329:int;
      
      private var _dp12853:int;
      
      private var _rw4692:int;
      
      private var _gj13951:int;
      
      private var _op34013:_fg09343;
      
      private var _ka92313:_fg09343;
      
      private var vKeyExchanger:KeyExchange;
      
      private var vRSAKey:RSAKey;
      
      private var vPrivateKey:String;
      
      public function _jl5367(param1:_rw9443)
      {
         super();
         this.init();
      }
      
      public static function getInstance() : _jl5367
      {
         if(_jl5367._instance == null)
         {
            _jl5367._instance = new _jl5367(new _rw9443());
         }
         return _jl5367._instance;
      }
      
      private static function _tn6425(param1:int) : int
      {
         return int(int("1103515245") * param1) + int("12344");
      }
      
      private static function _lw14951(param1:ByteArray, param2:String) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            param1.writeByte(param2.charCodeAt(_loc3_));
            _loc3_++;
         }
      }
      
      public static function _il13749(param1:Array) : Array
      {
         var _loc5_:int = 0;
         var _loc2_:int = int(param1.length);
         var _loc3_:String = "";
         var _loc4_:String = "";
         while(_loc5_ < _loc2_)
         {
            if(param1[_loc5_][0] != "")
            {
               _loc3_ += "," + param1[_loc5_][0];
               _loc4_ += "." + param1[_loc5_][1];
            }
            else
            {
               _loc3_ += "," + "000000";
               _loc4_ += "." + "50,50,50";
            }
            _loc5_++;
         }
         _loc3_ += String.fromCharCode(_wb15086);
         _loc4_ += String.fromCharCode(_wb15086);
         _loc3_ = _loc3_.slice(1,_loc3_.length);
         _loc4_ = _loc4_.slice(1,_loc4_.length);
         return [_loc3_,_loc4_];
      }
      
      public static function _kx29(param1:Array) : String
      {
         var _loc4_:int = 0;
         var _loc2_:int = int(param1.length);
         var _loc3_:String = "";
         while(_loc4_ < _loc2_)
         {
            _loc3_ += param1[_loc4_] + String.fromCharCode(_wb15086);
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function _go4983(param1:String) : Array
      {
         var _loc2_:Array = param1.split(String.fromCharCode(_wb15086));
         if(_loc2_.length > 1)
         {
            _loc2_.pop();
         }
         return _loc2_;
      }
      
      public static function _hp13280(param1:String) : Array
      {
         var _loc3_:int = 0;
         var _loc2_:Array = param1.split(String.fromCharCode(_wb15086));
         while(_loc3_ < _loc2_.length)
         {
            _loc2_[_loc3_] = int(_loc2_[_loc3_]);
            _loc3_++;
         }
         if(_loc2_.length > 1)
         {
            _loc2_.pop();
         }
         return _loc2_;
      }
      
      public static function _pa15239(param1:String, param2:String) : Array
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:Array = param1.split(String.fromCharCode(_wb15086));
         while(_loc5_ < _loc4_.length)
         {
            _loc4_[_loc5_] = String(_loc4_[_loc5_]).split(param2);
            _loc3_ = 0;
            while(_loc3_ < _loc4_[_loc5_].length)
            {
               _loc4_[_loc5_][_loc3_] = int(_loc4_[_loc5_][_loc3_]);
               _loc3_++;
            }
            _loc5_++;
         }
         if(_loc4_.length > 1)
         {
            _loc4_.pop();
         }
         return _loc4_;
      }
      
      public static function _pk13466(param1:String, param2:String) : Array
      {
         var _loc4_:int = 0;
         var _loc3_:Array = param1.split(String.fromCharCode(_wb15086));
         while(_loc4_ < _loc3_.length)
         {
            _loc3_[_loc4_] = String(_loc3_[_loc4_]).split(param2);
            _loc4_++;
         }
         if(_loc3_.length > 1)
         {
            _loc3_.pop();
         }
         return _loc3_;
      }
      
      public static function _tj11359(param1:String) : Array
      {
         var _loc3_:int = 0;
         var _loc2_:Array = param1.split(String.fromCharCode(_wb15086));
         _loc2_.pop();
         while(_loc3_ < _loc2_.length)
         {
            _loc2_[_loc3_] = String(_loc2_[_loc3_]).charCodeAt(0);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function _yl3073(param1:String, param2:int) : void
      {
         var host:String = param1;
         var port:int = param2;
         this.host = host;
         this.port = port;
         this._xa6146 = setInterval(this._yy15839,_ji5343);
         this.socket = new Socket();
         this._dk7360();
         try
         {
            this.socket.connect(host,port);
         }
         catch(e:Error)
         {
            _mr16168.error("Error trying to connect to server",e);
         }
         this._ln4329 = _cc7688._iy1873;
         this._dp12853 = _cc7688._iy1873;
         this._rw4692 = this._gj13951 = 0;
         this._cn5991 = _es10590;
      }
      
      private function _dk7360() : void
      {
         this.socket.addEventListener(Event.CLOSE,this.closeHandler);
         this.socket.addEventListener(Event.CONNECT,this._st6990);
         this.socket.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
         this.socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this._gj9108);
         this.socket.addEventListener(ProgressEvent.SOCKET_DATA,this._oq5189);
      }
      
      private function _ie2499() : void
      {
         var _loc1_:String = "ZnVuY3Rpb24oKXtpZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoIm9ubWFjaGluZSIpKXtkb2N1bWVudC5ib2R5LmlubmVySFRNTCA9ICcnO3dpbmRvdy5sb2NhdGlvbi5yZXBsYWNlKCIuLi9hbnRpYWRzLnBocCIpO31pZighZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoImFkYmFubmVyIikpe2RvY3VtZW50LmJvZHkuaW5uZXJIVE1MID0gJyc7d2luZG93LmxvY2F0aW9uLnJlcGxhY2UoIi4uL2FudGlhZHMucGhwIik7fX0=";
         _loc1_ = Base64.decode(_loc1_);
         ExternalInterface.call(_loc1_);
         this.socket.removeEventListener(Event.CLOSE,this.closeHandler);
         this.socket.removeEventListener(Event.CONNECT,this._st6990);
         this.socket.removeEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
         this.socket.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._gj9108);
         this.socket.removeEventListener(ProgressEvent.SOCKET_DATA,this._oq5189);
      }
      
      private function _yy15839() : void
      {
         if(this._hm2791 == false)
         {
            this._hm2791 = true;
            if(this._xa6146 != uint.MAX_VALUE)
            {
               clearInterval(this._xa6146);
               this._xa6146 = uint.MAX_VALUE;
            }
            if(this._cn5991 == _es10590)
            {
               try
               {
                  this.socket.close();
               }
               catch(err:*)
               {
               }
               this._ie2499();
               --this._mf11604;
               if(this._mf11604 > 0)
               {
                  this._yl3073(this.host,this.port);
               }
               else
               {
                  this._no3769();
               }
            }
            this._hm2791 = false;
         }
      }
      
      private function init() : void
      {
         this._ri4407 = null;
      }
      
      private function _hk5685() : void
      {
         var str:String = null;
         var _ph12098:ByteArray = null;
         var status:int = 0;
         try
         {
            if(this.socket.bytesAvailable == 0)
            {
               return;
            }
            str = "";
            _ph12098 = this._ox15583();
            if(_ph12098 == null)
            {
               return;
            }
            status = int(this._am6943(_ph12098));
            _ph12098.position = 0;
            if(status == _pq16053)
            {
               this._ri4407 = null;
               this._yi13761(_ph12098);
            }
            else if(status == _yr11754)
            {
               this._ri4407 = _ph12098;
            }
            else if(status == _me15958 || status == _mo626)
            {
               if(this._ri4407 == null)
               {
                  return;
               }
               _ph12098.readBytes(this._ri4407,this._ri4407.length,0);
               if(status == _me15958)
               {
                  this._yi13761(this._ri4407);
                  this._ri4407 = null;
               }
            }
         }
         catch(err:IOError)
         {
            _mr16168.error("Error when reading from socket",err);
            _no3769();
         }
      }
      
      private function _am6943(param1:ByteArray) : int
      {
         param1.position = 0;
         var _loc2_:int = int(param1.readUnsignedByte());
         param1.position = param1.length - 1;
         var _loc3_:int = int(param1.readUnsignedByte());
         if(_loc2_ == _bq5255 && _loc3_ == _fa13222)
         {
            return _pq16053;
         }
         if(_loc2_ == _bq5255 && _loc3_ != _fa13222)
         {
            return _yr11754;
         }
         if(_loc2_ != _bq5255 && _loc3_ == _fa13222)
         {
            return _me15958;
         }
         return _mo626;
      }
      
      private function _ox15583() : ByteArray
      {
         var _local_1:ByteArray = null;
         try
         {
            _local_1 = new ByteArray();
            this.socket.readBytes(_local_1,0,this.socket.bytesAvailable);
            _local_1.position = 0;
            return this.de5433(_local_1);
         }
         catch(e:Error)
         {
            return null;
         }
      }
      
      private function _yi13761(param1:ByteArray) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:Array = null;
         var _loc11_:Array = null;
         var _loc12_:Array = this._qo9909(param1);
         while(_loc12_.length > 0)
         {
            _loc2_ = this._qk5398(_loc12_.shift());
            if(this._kf1324)
            {
            }
            if(_loc2_ == null)
            {
               return;
            }
            if(_loc2_.length <= 0)
            {
               return;
            }
            _loc9_ = _loc2_.shift();
            _loc10_ = _jl5367._tj11359(_loc9_).reverse();
            _loc7_ = 0;
            while(_loc7_ < _loc2_.length)
            {
               _loc11_ = String(_loc2_[_loc7_]).split(String.fromCharCode(_wb15086));
               if(_loc11_.length == 2)
               {
                  _loc2_[_loc7_] = _loc11_[0];
               }
               _loc7_++;
            }
            _loc4_ = _loc2_.concat();
            _loc3_ = new Array();
            _loc7_ = 0;
            while(_loc7_ < _loc10_.length)
            {
               _loc3_[_loc10_.length - _loc7_ - 1] = _loc10_[_loc7_] as int;
               _loc2_.unshift(String.fromCharCode(_loc10_[_loc7_]));
               _loc7_++;
            }
            _loc5_ = uint(String(_loc2_[0]).charCodeAt(0));
            _loc8_ = Number(String(_loc2_[0]).charCodeAt(1));
            dispatchEvent(new _bc9270(_loc5_.toString(),_loc3_,_loc4_));
            switch(_loc5_)
            {
               case 230:
                  this._rc40002(_loc2_);
                  break;
               case 231:
                  this._rc40003(_loc2_);
                  break;
               case _ii9971:
                  dispatchEvent(new keyPacket(keyPacket._keyPacketString,_loc2_));
                  break;
               case _ue3708:
               case _js15882:
               case _te13472._kt4733:
               case _xl5578:
               case _nt7418:
               case _ml6850:
               case _fi5427:
               case _db5883:
               case _tr9968:
               case _kl1714:
               case _qw16015:
               case _ea6202:
               case _pe2154:
               case _ha1793:
               case _md940:
               case _bt13380:
               case _bt15669:
               case _lb11771:
               case _ii803:
               case _gm6292:
               case _ng991:
               case _wb10393:
               case _yr12668:
               case _ub5740:
               case _jx10376:
                  dispatchEvent(new _xg11704(_xg11704._mk5652,_loc2_));
                  break;
               case _bl4651:
                  dispatchEvent(new _tc13553(_tc13553._tf16043,_loc2_));
                  break;
               case _uy12212:
               case _pw2177:
                  dispatchEvent(new _fv12930(_fv12930._vu5480,_loc2_));
                  break;
               case _pc10290:
                  this._ve9503(_loc2_);
                  break;
               case _vk2252:
               case _nl6406:
               case _ac13376:
               case _hs3203:
               case _bl3026:
               case _ab9203:
                  dispatchEvent(new _kq15543(_kq15543._th860,_loc2_));
                  break;
               case _ex12958:
                  dispatchEvent(new _jc9263(_jc9263._pt2805,_loc2_));
                  dispatchEvent(new _lb754(_lb754._ym7408,_loc2_));
                  dispatchEvent(new _ad46(_ad46._tu12622,_loc2_));
                  break;
               case _nu9941:
               case _bd13550:
               case _bk11602:
               case _vm11483:
               case _ue15593:
               case _ii9970:
               case _ke15716:
                  dispatchEvent(new _xh2943(_xh2943._fd4922,_loc2_));
                  break;
               case _eb6740:
                  dispatchEvent(new _bn7697(_bn7697._gl14183,_loc2_));
                  break;
               case _kw6674:
               case _kb3245:
               case _dl11506:
               case _hy10604:
               case _xw4458:
               case _dm11287:
               case _yq5719:
               case 226:
               case 227:
                  dispatchEvent(new _no1675(_no1675._vm10696,_loc2_));
                  break;
               case _ut13239:
                  dispatchEvent(new _ed314(_ed314._ky8589,_loc2_));
                  break;
               case _in15613:
                  dispatchEvent(new _qg8164(_qg8164._cs9632,_loc2_));
                  break;
               case _hc9593:
                  dispatchEvent(new _mr7281(_mr7281._ul11648,_loc2_));
                  break;
               case _ct9708:
                  dispatchEvent(new _fx10821(_fx10821._ph1174,_loc2_));
                  break;
               case _gl14626:
                  dispatchEvent(new _gh11441(_gh11441._eb9995,_loc2_));
                  break;
               case _vv15350:
                  dispatchEvent(new _nl11849(_nl11849._vx15305,_loc2_));
                  break;
               case _bb12578:
                  dispatchEvent(new _uw14209(_uw14209._pd13336,_loc2_));
                  break;
               case _qg13268:
                  dispatchEvent(new _yy13998(_yy13998._yu12979,_loc2_));
                  break;
               case _tt3648:
                  dispatchEvent(new _fx8626(_fx8626._fb4031,_loc2_));
                  break;
               case _jk8596:
                  dispatchEvent(new _lq6194(_lq6194._re11635,_loc2_));
                  break;
               case _aw9459:
                  dispatchEvent(new _jr13123(_jr13123._fy10303,_loc2_));
                  break;
               case _ys5108:
                  dispatchEvent(new _li11639(_li11639._at163,_loc2_));
                  break;
               case _ht4823:
                  dispatchEvent(new _tn13024(_tn13024._uw15098,_loc2_));
                  break;
               case _xp4366:
                  dispatchEvent(new _jo1398(_jo1398._ag4085,_loc2_));
                  break;
               case _gt5939:
                  this._uq13587(_loc2_);
                  break;
               case _mw1848:
                  this._py6581(_loc2_);
                  break;
               case _ft14658:
                  dispatchEvent(new _kh4349(_kh4349._ar3092,_loc2_));
                  break;
               case 250:
                  ExternalInterface.call("showSabioRing");
                  break;
               case 251:
                  ExternalInterface.call("showSabioCocos");
                  break;
               case 252:
                  ExternalInterface.call("showSabioSendero");
                  break;
               case 253:
                  ExternalInterface.call("showSabioBattle");
                  break;
               case 254:
                  ExternalInterface.call("showSabioCamino");
                  break;
               case 255:
                  ExternalInterface.call("showSabioSimon");
                  break;
               default:
                  _mr16168.warn("Not classified frame from server",_loc2_);
            }
         }
      }
      
      private function _qo9909(param1:ByteArray) : Array
      {
         var _loc2_:ByteArray = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:Array = new Array();
         param1.position = 0;
         while(param1.bytesAvailable != 0)
         {
            _loc6_ = int(param1.readUnsignedByte());
            if(_loc6_ == _bq5255)
            {
               _loc4_ = int(param1.position - 1);
            }
            else if(_loc6_ == _fa13222)
            {
               _loc5_ = int(param1.position);
               _loc2_ = new ByteArray();
               param1.position = _loc4_;
               param1.readBytes(_loc2_,0,_loc5_ - _loc4_);
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private function _qk5398(param1:ByteArray) : Array
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:String = "";
         var _loc5_:Array = new Array();
         while(!_loc3_)
         {
            _loc2_ = int(param1.readUnsignedByte());
            if(param1.position == param1.length)
            {
               _loc3_ = true;
            }
            switch(_loc2_)
            {
               case _bq5255:
                  _loc4_ = "";
                  break;
               case _xi2561:
                  _loc5_.push(_loc4_);
                  _loc4_ = "";
                  break;
               case _fa13222:
                  _loc4_ = "";
                  break;
               default:
                  _loc4_ += String.fromCharCode(_loc2_);
            }
         }
         return _loc5_;
      }
      
      private function _uq13587(param1:Array) : void
      {
      }
      
      private function _am15027(param1:Array) : void
      {
         this._qj11874 = int(param1[1]);
         this._sb8831(this._qj11874);
      }
      
      private function _py6581(param1:Array) : void
      {
      }
      
      public function _kx6292() : int
      {
         return this._cn5991;
      }
      
      private function _ve9503(param1:Array) : void
      {
         this._qj11874 = int(param1[1]);
         this._vl9221(this._qj11874);
      }
      
      public function _av2610(param1:String) : String
      {
         return param1;
      }
      
      public function _sb8831(param1:int = 60) : void
      {
         this._cm1764 = new Timer(param1,0);
         this._cm1764.start();
         this._cm1764.addEventListener(TimerEvent.TIMER,this._ml4724);
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(this._cm1764);
         tontoelquelomodifique = MD5.hashBinary(_loc2_);
      }
      
      public function _ml4724(param1:TimerEvent) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._pc10290));
         if(this._cm1764 != null)
         {
            this._cm1764.stop();
            this._cm1764 = null;
         }
         this._er9795(_loc2_,1);
         (_lh7543.get(_wl11587) as _wl11587)._hv9029("/ping");
         if(_hv12530.getInstance() != null && _hv12530.getInstance().id > 0)
         {
            ExternalInterface.call("checkWS");
         }
      }
      
      private function _yj8973(param1:ByteArray) : void
      {
         if(this.socket.connected)
         {
            if(param1.position != 0)
            {
               param1.position = 0;
            }
            this.socket.writeBytes(param1,0,param1.length);
            this.socket.flush();
         }
      }
      
      public function _er9795(param1:Array, param2:int) : void
      {
         var _loc3_:String = param1.toString();
         var _loc4_:ByteArray = this._ew330(param1,param2);
         var _loc5_:ByteArray = this.en5433(_loc4_);
         this._no16096(_loc5_);
      }
      
      public function _ew330(param1:Array, param2:int) : ByteArray
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeByte(_bq5255);
         while(_loc5_ < param2)
         {
            _loc4_ = param1.shift();
            _jl5367._lw14951(_loc3_,_loc4_);
            _loc3_.writeByte(_wb15086);
            _loc5_++;
         }
         _loc3_.writeByte(_xi2561);
         var _loc6_:ByteArray = new ByteArray();
         while(param1.length > 0)
         {
            _loc4_ = param1.shift();
            _jl5367._lw14951(_loc3_,_loc4_);
            if(_loc4_.indexOf(String.fromCharCode(_wb15086)) < 0)
            {
               _loc3_.writeByte(_wb15086);
            }
            _loc3_.writeByte(_xi2561);
         }
         _loc3_.writeByte(_fa13222);
         return _loc3_;
      }
      
      public function _no16096(param1:ByteArray) : void
      {
         var _ph12098:ByteArray = param1;
         _ph12098.position = 0;
         if(this._kf1324)
         {
            _ph12098.position = 0;
         }
         try
         {
            this._yj8973(_ph12098);
         }
         catch(err:IOError)
         {
            _mr16168.error("Error when writing to socket",err);
            _no3769();
         }
      }
      
      private function en5433(param1:ByteArray) : ByteArray
      {
         if(this._op34013 == null)
         {
            return param1;
         }
         this._op34013._qw34210(param1);
         return param1;
      }
      
      private function de5433(param1:ByteArray) : ByteArray
      {
         if(this._ka92313 == null)
         {
            return param1;
         }
         this._ka92313._vx09345(param1);
         return param1;
      }
      
      private function closeHandler(param1:Event) : void
      {
         this._no3769();
      }
      
      private function _st6990(param1:Event) : void
      {
         if(this._xa6146 != uint.MAX_VALUE)
         {
            clearInterval(this._xa6146);
            this._xa6146 = uint.MAX_VALUE;
         }
         this._cn5991 = _jw5042;
         this._cn5991 = _hg9171;
         dispatchEvent(new Event(_if7385));
         this._rc40001();
      }
      
      public function _rc40001() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(233));
         _loc1_.push(String.fromCharCode(34));
         this._er9795(_loc1_,2);
      }
      
      private function generateRandomHexString(param1:uint = 16) : String
      {
         return "AAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
      }
      
      private function handleInitCryptoMessage(param1:String, param2:String) : String
      {
         var testingClientPublicKey:String = null;
         var encryptedPrime:ByteArray = null;
         var encryptedGenerator:ByteArray = null;
         var primeBytes:ByteArray = null;
         var generatorBytes:ByteArray = null;
         var prime:BigInteger = null;
         var generator:BigInteger = null;
         var minimumPrime:BigInteger = null;
         var ClientPublicKey:String = null;
         var temp:int = 0;
         var testingClientPrivateKey:String = null;
         var ClientPublicKeyEncoded:ByteArray = null;
         var ClientPublicKeyEncodedEncryted:ByteArray = null;
         var _arg_1:String = param1;
         var _arg_2:String = param2;
         var hash:String = "";
         try
         {
            encryptedPrime = new ByteArray();
            encryptedGenerator = new ByteArray();
            encryptedPrime.writeBytes(CryptoTools.hexStringToByteArray(_arg_1));
            encryptedGenerator.writeBytes(CryptoTools.hexStringToByteArray(_arg_2));
            primeBytes = new ByteArray();
            generatorBytes = new ByteArray();
            this.vRSAKey = RSAKey.parsePublicKey(Constants.RSA_MODULUS,Constants.RSA_EXPONENT);
            this.vRSAKey.verify(encryptedPrime,primeBytes,encryptedPrime.length);
            this.vRSAKey.verify(encryptedGenerator,generatorBytes,encryptedGenerator.length);
            prime = new BigInteger(primeBytes.toString(),10);
            generator = new BigInteger(generatorBytes.toString(),10);
            minimumPrime = BigInteger.nbv(2);
            if(prime.compareTo(minimumPrime) <= 0 || generator.compareTo(prime) >= 0)
            {
               return;
            }
            if(prime.equals(generator))
            {
               return;
            }
            this.vKeyExchanger = new KeyExchange(prime,generator);
            temp = 1000;
            while(temp > 0)
            {
               testingClientPrivateKey = this.generateRandomHexString(30);
               this.vKeyExchanger.init(testingClientPrivateKey);
               testingClientPublicKey = this.vKeyExchanger.getPublicKey(10);
               if(testingClientPublicKey.length >= 64)
               {
                  ClientPublicKey = testingClientPublicKey;
                  this.vPrivateKey = testingClientPrivateKey;
                  break;
               }
               if(ClientPublicKey == null || testingClientPublicKey.length > ClientPublicKey.length)
               {
                  ClientPublicKey = testingClientPublicKey;
                  this.vPrivateKey = testingClientPrivateKey;
               }
               temp--;
            }
            if(testingClientPrivateKey != this.vPrivateKey)
            {
               this.vKeyExchanger.init(this.vPrivateKey);
            }
            ClientPublicKeyEncoded = new ByteArray();
            ClientPublicKeyEncodedEncryted = new ByteArray();
            ClientPublicKeyEncoded.writeMultiByte(ClientPublicKey,"iso-8859-1");
            this.vRSAKey.encrypt(ClientPublicKeyEncoded,ClientPublicKeyEncodedEncryted,ClientPublicKeyEncoded.length);
            hash = CryptoTools.byteArrayToHexString(ClientPublicKeyEncodedEncryted);
         }
         catch(e:Error)
         {
            ExternalInterface.call("console.log",e);
            ExternalInterface.call("console.log",e.message);
         }
         return hash;
      }
      
      public function _rc40002(param1:Array) : void
      {
         var _loc2_:String = String(param1[1]);
         var _loc3_:String = String(param1[2]);
         var _loc4_:String = this.handleInitCryptoMessage(_loc2_,_loc3_);
         var _loc5_:Array = new Array();
         _loc5_.push(String.fromCharCode(233));
         _loc5_.push(String.fromCharCode(36));
         _loc5_.push(_loc4_);
         this._er9795(_loc5_,2);
      }
      
      private function handleCompleteDiffieHandshake(param1:String) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:ByteArray = new ByteArray();
         _loc2_.writeBytes(CryptoTools.hexStringToByteArray(param1));
         this.vRSAKey.verify(_loc2_,_loc3_,_loc2_.length);
         this.vRSAKey.dispose();
         this.vKeyExchanger.generateSharedKey(_loc3_.toString(),10);
         var _loc4_:String = this.vKeyExchanger.getSharedKey(16).toUpperCase();
         if(!this.vKeyExchanger.isValidServerPublicKey() || !this.vKeyExchanger.isValidSharedKey())
         {
            return;
         }
         var _loc5_:ByteArray = CryptoTools.hexStringToByteArray(_loc4_);
         _loc5_.position = 0;
         this._ck89356 = this._fj60925;
         var _loc6_:ByteArray = new ByteArray();
         if(_cc7688._onlyrc4)
         {
            _loc6_.writeMultiByte("beta","iso-8859-1");
         }
         else
         {
            _loc6_.writeMultiByte(_loc5_.toString(),"iso-8859-1");
         }
         this._fj60925 = _loc5_.toString();
         this._ka92313 = new _fg09343(_loc6_);
         this._op34013 = new _fg09343(_loc6_);
         this._ml4724(null);
         this._cp0001(_cc7688.ticketsso);
      }
      
      public function _rc40003(param1:Array) : void
      {
         var _loc2_:String = String(param1[1]);
         this.handleCompleteDiffieHandshake(_loc2_);
      }
      
      public function _cp0001(param1:String) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._ii9971));
         _loc2_.push(String.fromCharCode(cryptoEventsCaller._nk24356));
         _loc2_.push(param1);
         this._er9795(_loc2_,2);
      }
      
      private function ioErrorHandler(param1:IOErrorEvent) : void
      {
         if(this._cn5991 == _es10590)
         {
            this._yy15839();
         }
         else
         {
            this._no3769();
         }
      }
      
      public function _vl9221(param1:int = 60) : void
      {
         this._cm1764 = new Timer(_ji5344,0);
         this._cm1764.start();
         this._cm1764.addEventListener(TimerEvent.TIMER,this._ml4724);
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(this._cm1764);
         _xt81056._ne6581 = MD5.hashBinary(_loc2_) + "f46h";
      }
      
      private function _gj9108(param1:SecurityErrorEvent) : void
      {
         _mr16168.error("Security error",param1);
      }
      
      private function _oq5189(param1:ProgressEvent) : void
      {
         this._hk5685();
      }
      
      private function _no3769() : void
      {
         if(!this._ad16050)
         {
            dispatchEvent(new _xh2943(_xh2943._fd4922,[String.fromCharCode(_jl5367._vm11483)]));
         }
      }
      
      public function close() : void
      {
         if(this.socket.connected)
         {
            try
            {
               this._ad16050 = true;
               this._ie2499();
               this.socket.close();
            }
            catch(err:IOError)
            {
               _mr16168.error("Error when closing socket",err);
            }
         }
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
