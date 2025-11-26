package src.modules.objetos
{
   import flash.events.EventDispatcher;
   import flash.external.*;
   import src.modules.*;
   import src.multiuser.*;
   
   public class _wc3183 extends EventDispatcher implements _bi12161
   {
      
      public static const _fk5845:int = 133;
      
      public static const _jr1939:int = 135;
      
      public static const _sq12140:int = 180;
      
      public static const _yd3055:int = 181;
      
      public static const _hv11028:int = 134;
      
      public static const _qg305:int = 137;
      
      public static const _ko12141:int = 0;
      
      public static const _td926:int = 1;
      
      public static const _vf4333:int = 2;
      
      public static const _oj617:int = 139;
      
      public static const _gn8348:int = 169;
      
      public static const _jm3861:int = 120;
      
      public static const _ft12395:int = 120;
      
      public static const _rp15173:int = 121;
      
      public static const _na15942:int = 122;
      
      public var FBr:int = ExternalInterface.call("FBr");
      
      private var _gh9645:_jl5367;
      
      public function _wc3183()
      {
         super();
         this.multiuser = _jl5367.getInstance();
         this.multiuser.addEventListener(_ad46._tu12622,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:uint = uint(String(param1._lv9976[1]).charCodeAt(0));
         switch(_loc2_)
         {
            case _qg305:
            case _hv11028:
            case _fk5845:
            case _jr1939:
            case _oj617:
            case _gn8348:
            case _sq12140:
            case _yd3055:
               dispatchEvent(new _ad46(_ad46._tu12622,param1._lv9976));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(_ad46._tu12622,this._bw11981);
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
      
      public function _rf1513(param1:int, param2:String, param3:String) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._ex12958));
         _loc4_.push(String.fromCharCode(_wc3183._hv11028));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _km8391(param1:int, param2:String, param3:String) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._ex12958));
         _loc4_.push(String.fromCharCode(_wc3183._qg305));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _ed9850() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._ex12958));
         _loc1_.push(String.fromCharCode(_wc3183._fk5845));
         _loc1_.push(this.FBr);
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _pk838() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._ex12958));
         _loc1_.push(String.fromCharCode(_wc3183._sq12140));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _sn16102(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._xf1672));
         _loc3_.push(String.fromCharCode(_wc3183._jm3861));
         _loc3_.push(String.fromCharCode(_wc3183._ft12395));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,3);
      }
      
      public function _ov7112(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:Array = new Array();
         _loc5_.push(String.fromCharCode(_jl5367._xf1672));
         _loc5_.push(String.fromCharCode(_wc3183._jm3861));
         _loc5_.push(String.fromCharCode(_wc3183._rp15173));
         _loc5_.push(param1);
         _loc5_.push(param2);
         _loc5_.push(param3);
         _loc5_.push(param4);
         this.multiuser._er9795(_loc5_,3);
      }
      
      public function _ve3136(param1:int, param2:int, param3:String) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._xf1672));
         _loc4_.push(String.fromCharCode(_wc3183._jm3861));
         _loc4_.push(String.fromCharCode(_wc3183._na15942));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,3);
      }
   }
}

