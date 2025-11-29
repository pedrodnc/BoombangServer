package src.modules.noticias
{
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class _cd14242 extends EventDispatcher implements _bi12161
   {
      
      public static const _pn9056:int = 120;
      
      public static const _ij7018:int = 121;
      
      public static const _uk8818:int = 122;
      
      private var _gh9645:_jl5367;
      
      public function _cd14242(param1:IEventDispatcher = null)
      {
         super();
         this._gh9645 = _jl5367.getInstance();
         this._gh9645.addEventListener(_li11639._at163,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this._gh9645.removeEventListener(_li11639._at163,this._bw11981);
         this._gh9645 = null;
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:Array = param1._lv9976;
         _loc2_.shift();
         var _loc3_:int = int(String(_loc2_.shift()).charCodeAt(0));
         switch(_loc3_)
         {
            case _pn9056:
               dispatchEvent(new _li11639(_li11639._mc6789,_loc2_));
               return;
            case _ij7018:
               dispatchEvent(new _li11639(_li11639._wi8818,_loc2_));
               return;
            case _uk8818:
               dispatchEvent(new _li11639(_li11639._dw9271,_loc2_));
               return;
            default:
               return;
         }
      }
      
      public function get multiuser() : _jl5367
      {
         return this._gh9645;
      }
      
      public function set multiuser(param1:_jl5367) : void
      {
         this._gh9645 = param1;
      }
      
      public function _bp16095(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ys5108));
         _loc3_.push(String.fromCharCode(_pn9056));
         _loc3_.push(_pn9056);
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _cl10392(param1:int, param2:int) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._ys5108));
         _loc3_.push(String.fromCharCode(_ij7018));
         _loc3_.push(param1);
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
   }
}

