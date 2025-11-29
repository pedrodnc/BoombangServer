package src.modules.notificaciones
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class _ql14014 extends EventDispatcher implements _bi12161
   {
      
      public static const _us3253:int = 209;
      
      public static const _kt12388:int = 120;
      
      public static const _jj9994:int = 121;
      
      public static const _gd3627:int = 122;
      
      public static const _jy2432:int = 123;
      
      public static const _kl11234:int = 124;
      
      public static const _bf10334:int = 125;
      
      public static const _du11711:int = 126;
      
      private var _gh9645:_jl5367;
      
      public function _ql14014()
      {
         super();
         this._gh9645 = _jl5367.getInstance();
         this._gh9645.addEventListener(_tn13024._uw15098,this._bw11981);
      }
      
      public function get multiuser() : _jl5367
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:_jl5367) : void
      {
         this._gh9645 = param1;
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this._gh9645.removeEventListener(_tn13024._uw15098,this._bw11981);
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:Array = param1._lv9976;
         var _loc3_:int = int(String(_loc2_[0]).charCodeAt(0));
         var _loc4_:int = int(String(_loc2_[1]).charCodeAt(0));
         _loc2_.shift();
         switch(_loc4_)
         {
            case _jy2432:
            case _jj9994:
            case _gd3627:
            case _kt12388:
            case _kl11234:
            case _bf10334:
            case _du11711:
               dispatchEvent(new _tn13024(_tn13024._uw15098,_loc2_));
               return;
            default:
               return;
         }
      }
   }
}

