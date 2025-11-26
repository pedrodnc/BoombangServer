package src.modules.interfaz
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.modules.chooseScene.managerBanners.*;
   import src.multiuser.*;
   import src.tv.boombang.core.communications.*;
   
   public class _xt81056 extends EventDispatcher implements _bi12161
   {
      
      public static var _ne9581:String;
      
      public static var _ne9121:String;
      
      public static var _ne9111:String;
      
      public static var _ne9101:String;
      
      public static var _ne9181:String;
      
      public static var _ne9281:String;
      
      public static var _ne8281:String;
      
      public static var _ne9981:String;
      
      public static var _ne9081:String;
      
      public static var _ne9681:String;
      
      public static var _ne9561:String;
      
      public static var _ne9571:String;
      
      public static var _ne9521:String;
      
      public static var _ne9591:String;
      
      public static var _ne5581:String;
      
      public static var _ne6581:String;
      
      public static var _ne7581:String;
      
      public static var _ne8581:String;
      
      public static var _ne9582:String;
      
      public static var _ne9583:String;
      
      public static var _ne9584:String;
      
      public static var _h1002:String;
      
      private var _gh9645:_jl5367;
      
      public function _xt81056()
      {
         super();
         this.multiuser = _jl5367.getInstance();
         this.multiuser.addEventListener(_xg11704._mk5652,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:Array = param1._lv9976;
         var _loc3_:uint = uint(String(_loc2_[0]).charCodeAt(0));
         switch(_loc3_)
         {
            case _jl5367._nt7418:
            case _jl5367._ue3708:
            case _jl5367._js15882:
            case _te13472._kt4733:
            case _jl5367._xl5578:
            case _jl5367._ml6850:
            case _jl5367._fi5427:
            case _jl5367._db5883:
            case _jl5367._tr9968:
            case _jl5367._kl1714:
            case _jl5367._qw16015:
            case _jl5367._ea6202:
            case _jl5367._pe2154:
            case _jl5367._ha1793:
            case _jl5367._md940:
            case _jl5367._bt13380:
            case _jl5367._bt15669:
            case _jl5367._kw6674:
            case _jl5367._lb11771:
            case _jl5367._ii803:
            case _jl5367._gm6292:
            case _jl5367._ng991:
            case _jl5367._wb10393:
            case _jl5367._yr12668:
            case _jl5367._ub5740:
            case _jl5367._jx10376:
               dispatchEvent(new _xg11704(_xg11704._mk5652,_loc2_));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(_xg11704._mk5652,this._bw11981);
         this.multiuser = null;
      }
      
      public function get multiuser() : _jl5367
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:_jl5367) : void
      {
         this._gh9645 = param1;
      }
      
      public function _gs5811(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._nt7418));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _bh13015(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_jl5367.tontoelquelomodifique);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _mu5601(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._yr12668));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,1);
      }
      
      public function _xs15118(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._ub5740));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,1);
      }
      
      public function _ds7885(param1:int) : void
      {
         _gx6661.getInstance().show();
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._ml6850));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,1);
      }
      
      public function _kh4754(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._bt13380));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _ex11978(param1:int, param2:int, param3:String) : void
      {
         var _loc4_:Array = new Array();
         if(param1 == 0)
         {
            _loc4_.push(String.fromCharCode(_jl5367._fi5427));
         }
         else
         {
            _loc4_.push(String.fromCharCode(_jl5367._db5883));
         }
         _loc4_.push(param2 + 1);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,1);
      }
      
      public function _lk5294() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._tr9968));
         this.multiuser._er9795(_loc1_,1);
      }
      
      public function _bu7133(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._kl1714));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,1);
      }
      
      public function _jr7004(param1:String) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._qw16015));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,1);
      }
      
      public function _dt13215(param1:int, param2:String, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_te13472._kt4733));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,1);
      }
      
      public function _mb7976(param1:int, param2:int, param3:String, param4:int) : void
      {
         var _loc5_:Array = new Array();
         _loc5_.push(String.fromCharCode(_jl5367._xl5578));
         _loc5_.push(_jl5367._kx29([param2,param1]));
         _loc5_.push(param3);
         _loc5_.push(param4);
         this.multiuser._er9795(_loc5_,1);
      }
      
      public function _whisperGroup(param1:int, param2:String, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(137));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,1);
      }
      
      public function _xt15985(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ea6202));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _bp28392(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_ne9581);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _an1638(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._gm6292));
         _loc2_.push(String.fromCharCode(_te13472._mb11057));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _it5566() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._gm6292));
         _loc1_.push(String.fromCharCode(_te13472._my5503));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _pk10269() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._ng991));
         _loc1_.push(String.fromCharCode(_te13472._nv6386));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _um15681(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._ng991));
         _loc2_.push(String.fromCharCode(_te13472._xm8034));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _h1001(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_h1002);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _h1201(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_h1002);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _h1301(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_h1002);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _hp3856(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_h1002);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _hp3855(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_ne7581);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _hp3854(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_ne9521);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _hp3853(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_ne6581);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _hp3852(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_ne9101);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _hp3851(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_h1002);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _hp3835(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_ne9121);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _hp3815(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_ne8581);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _hp3865(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_h1002);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _hp3875(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_ne9101);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _ds7884(param1:int) : void
      {
         _gx6661.getInstance().show();
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(211));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,1);
      }
      
      public function _hp3885(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_h1002);
         this.multiuser._er9795(_loc3_,1);
      }
      
      public function _hp3385(param1:int, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ue3708));
         _loc3_.push(param2);
         _loc3_.push(_ne9583);
         this.multiuser._er9795(_loc3_,1);
      }
   }
}

