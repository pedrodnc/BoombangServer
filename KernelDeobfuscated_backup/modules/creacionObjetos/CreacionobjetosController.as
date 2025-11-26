package src.modules.creacionObjetos
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class _dx7471 extends EventDispatcher implements _bi12161
   {
      
      public static const _tn9545:int = 120;
      
      public static const _pf13519:int = 121;
      
      private var _gh9645:_jl5367;
      
      public function _dx7471()
      {
         super();
         this.multiuser = _jl5367.getInstance();
         this.multiuser.addEventListener(_yy13998._yu12979,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         dispatchEvent(new _yy13998(_yy13998._yu12979,param1._lv9976));
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(_yy13998._yu12979,this._bw11981);
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
      
      public function _ku9207(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._qg13268));
         _loc2_.push(String.fromCharCode(_tn9545));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _tg15562(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._qg13268));
         _loc3_.push(String.fromCharCode(_pf13519));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
   }
}

