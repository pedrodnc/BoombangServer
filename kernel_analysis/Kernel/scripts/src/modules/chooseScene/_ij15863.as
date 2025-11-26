package src.modules.chooseScene
{
   import flash.events.EventDispatcher;
   import flash.external.*;
   import src.modules.*;
   import src.modules.interfaz.*;
   import src.modules.login.*;
   import src.multiuser.*;
   import src.tv.boombang.core.communications.*;
   
   public class _ij15863 extends EventDispatcher implements _bi12161
   {
      
      private var vJS:String = ExternalInterface.call("fJS");
      
      private var _gh9645:_jl5367;
      
      private var _lg3292:String = _xt81056._ne6581;
      
      public function _ij15863()
      {
         super();
         this.multiuser = _jl5367.getInstance();
         this.multiuser.addEventListener(_kq15543._th860,this._bw11981);
         this.multiuser.addEventListener(_tc13553._tf16043,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Array = param1._lv9976;
         _loc2_ = uint(String(_loc3_[0]).charCodeAt(0));
         switch(_loc2_)
         {
            case _jl5367._vk2252:
            case _jl5367._nl6406:
            case _jl5367._ac13376:
            case _jl5367._hs3203:
            case _jl5367._bl3026:
            case _jl5367._ab9203:
               dispatchEvent(new _kq15543(_kq15543._th860,_loc3_));
               return;
            case _jl5367._bl4651:
               dispatchEvent(new _tc13553(_tc13553._tf16043,_loc3_));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(_kq15543._th860,this._bw11981);
         this.multiuser.removeEventListener(_tc13553._tf16043,this._bw11981);
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
      
      public function _ql11937(param1:String, param2:Array) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._bl4651));
         _loc3_.push(String.fromCharCode(_qd13741._bc6971));
         _loc3_.push(param1);
         _loc3_.push(_jl5367._kx29(param2));
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _od13245() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._bl4651));
         _loc1_.push(String.fromCharCode(_qd13741._ak10346));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _mu10811() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._bl4651));
         _loc1_.push(String.fromCharCode(_qd13741._jb1969));
         _loc1_.push(_qd13741._jb1969);
         _loc1_.push(_xt81056._ne6581);
         _loc1_.push(this.vJS);
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _ce2942(param1:String, param2:int, param3:Boolean) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._bl4651));
         _loc4_.push(String.fromCharCode(_qd13741._rd11568));
         _loc4_.push(param2);
         _loc4_.push(param1);
         if(param3)
         {
            _loc4_.push("1");
         }
         else
         {
            _loc4_.push("0");
         }
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _ch15741() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._bl4651));
         _loc1_.push(String.fromCharCode(_qd13741._kb2862));
         _loc1_.push(this._lg3292);
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _hb2985(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._bl4651));
         _loc2_.push(String.fromCharCode(_qd13741._cw879));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _lt13599() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._bl4651));
         _loc1_.push(String.fromCharCode(_te13472._gp3729));
         _loc1_.push(String.fromCharCode(_qd13741._ar9210));
         this.multiuser._er9795(_loc1_,3);
      }
      
      public function _ho11227(param1:String, param2:String, param3:String, param4:int, param5:Array, param6:String, param7:String, param8:Boolean, param9:String, param10:int, param11:int, param12:String, param13:Array, param14:Array, param15:String, param16:String, param17:String) : void
      {
         var _loc18_:uint = 0;
         var _loc19_:String = null;
         var _loc22_:int = 0;
         var _loc20_:String = this.multiuser._av2610(param3);
         var _loc21_:* = "";
         while(_loc22_ < 7)
         {
            _loc18_ = uint(param5[_loc22_]);
            _loc19_ = _loc18_.toString(16);
            while(_loc19_.length < 6)
            {
               _loc19_ = "0" + _loc19_;
            }
            _loc21_ += _loc19_.toUpperCase();
            _loc22_++;
         }
         var _loc23_:Array = new Array();
         _loc23_.push(String.fromCharCode(_jl5367._bl4651));
         _loc23_.push(String.fromCharCode(_qd13741._es2379));
         _loc23_.push(param1);
         _loc23_.push(param2);
         _loc23_.push(_loc20_);
         _loc23_.push(param4);
         _loc23_.push(_loc21_);
         _loc23_.push(param6);
         _loc23_.push(param7);
         if(param8)
         {
            _loc23_.push("1");
         }
         else
         {
            _loc23_.push("0");
         }
         _loc23_.push(param9);
         _loc23_.push(param10);
         _loc23_.push(param11);
         _loc23_.push(param12);
         _loc23_.push(param13[0]);
         _loc23_.push(param13[1]);
         _loc23_.push(param13[2]);
         _loc23_.push(param14[0]);
         _loc23_.push(param14[1]);
         _loc23_.push(param14[2]);
         _loc23_.push(param15);
         _loc23_.push(param16);
         _loc23_.push(param17);
         this.multiuser._er9795(_loc23_,2);
      }
   }
}

