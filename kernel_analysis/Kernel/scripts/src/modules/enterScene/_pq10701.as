package src.modules.enterScene
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   import src.tv.boombang.core.datatypes.navigationMenu._kn4108;
   
   public class _pq10701 extends EventDispatcher implements _bi12161
   {
      
      private var _gh9645:_jl5367;
      
      public function _pq10701()
      {
         super();
         this.multiuser = _jl5367.getInstance();
         this.multiuser.addEventListener(_fv12930._vu5480,this._bw11981);
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
            case _jl5367._al12707:
            case _jl5367._uy12212:
            case _jl5367._ha3183:
            case _jl5367._pw2177:
            case _jl5367._dx1133:
            case _jl5367._gl14626:
               dispatchEvent(new _fv12930(_fv12930._vu5480,_loc2_));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(_fv12930._vu5480,this._bw11981);
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
      
      public function _ql13733(param1:_kn4108, param2:String, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._uy12212));
         _loc4_.push(String.fromCharCode(_jl5367._ya8551));
         _loc4_.push(String(param1._kb5211.id));
         _loc4_.push(String(param1._eb11619));
         _loc4_.push(param2);
         _loc4_.push(param3);
         _loc4_.push(128);
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _jq14714(param1:_kn4108, param2:String, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._uy12212));
         _loc4_.push(String(param1._kb5211.id));
         _loc4_.push(String(param1._eb11619));
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,1);
      }
      
      public function _lu14453() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._uy12212));
         _loc1_.push(String.fromCharCode(_jl5367._sp15836));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _mx10477(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._hb6099));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,1);
      }
      
      public function _em15151() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._uy12212));
         _loc1_.push(String.fromCharCode(_jl5367._dx1133));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _lm10631(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._bt15669));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,1);
      }
   }
}

