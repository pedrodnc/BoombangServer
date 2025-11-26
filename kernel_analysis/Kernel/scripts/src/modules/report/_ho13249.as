package src.modules.report
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class _ho13249 extends EventDispatcher implements _bi12161
   {
      
      public static const _ha9785:int = 121;
      
      public static const _on11753:int = 120;
      
      public static const _rp13082:int = 122;
      
      private var _gh9645:_jl5367;
      
      public function _ho13249()
      {
         super();
         this.multiuser = _jl5367.getInstance();
         this.multiuser.addEventListener(_mr7281._ul11648,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         dispatchEvent(new _mr7281(_mr7281._ul11648,param1._lv9976));
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(_mr7281._ul11648,this._bw11981);
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
      
      public function _qv3758(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._hc9593));
         _loc2_.push(String.fromCharCode(_ha9785));
         _loc2_.push(param1.toString());
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _xm12392(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._hc9593));
         _loc2_.push(String.fromCharCode(_rp13082));
         _loc2_.push(param1.toString());
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _sd12129(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._hc9593));
         _loc2_.push(String.fromCharCode(_on11753));
         _loc2_.push(param1.toString());
         this.multiuser._er9795(_loc2_,2);
      }
   }
}

