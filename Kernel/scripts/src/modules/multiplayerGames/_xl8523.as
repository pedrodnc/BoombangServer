package src.modules.multiplayerGames
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class _xl8523 extends EventDispatcher implements _bi12161
   {
      
      public static const _ts15834:int = 120;
      
      public static const _gr7166:int = 121;
      
      public static const _aj6247:int = 122;
      
      public static const _fs14835:int = 123;
      
      public static const _bt15137:int = 124;
      
      public static const _fw3416:int = 125;
      
      public static const _jo10076:int = 126;
      
      public static const _lu3692:int = 127;
      
      public static const _vl9023:int = 129;
      
      public static const _pr10056:int = 130;
      
      public static const _dw4538:int = 131;
      
      public static const _qy11845:int = 132;
      
      public static const _xd6971:int = 133;
      
      public static const _hf10378:int = 134;
      
      public static const _at6311:int = 135;
      
      public static const _ih13792:int = 136;
      
      public static const _cf9462:int = 137;
      
      public static const _fa2209:int = 138;
      
      public static const _rb6849:int = 139;
      
      public static const _ac1096:int = 120;
      
      public static const _jy5145:int = 120;
      
      public static const _xf3515:int = 121;
      
      public static const _ir3761:int = 122;
      
      public static const _ia2599:int = 120;
      
      public static const _kk6890:String = "2";
      
      private var _gh9645:_jl5367;
      
      private var _ys5052:Array;
      
      public function _xl8523()
      {
         super();
         this.multiuser = _jl5367.getInstance();
         this.multiuser.addEventListener(_gh11441._eb9995,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:Array = param1._lv9976;
         var _loc3_:uint = uint(String(_loc2_[1]).charCodeAt(0));
         switch(_loc3_)
         {
            case _ts15834:
            case _gr7166:
            case _fw3416:
            case _jo10076:
            case _lu3692:
            case _vl9023:
            case _pr10056:
            case _fs14835:
            case _dw4538:
            case _bt15137:
            case _qy11845:
            case _xd6971:
            case _hf10378:
            case _at6311:
            case _ih13792:
            case _cf9462:
            case _fa2209:
            case _rb6849:
               dispatchEvent(new _gh11441(_gh11441._eb9995,_loc2_));
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(_gh11441._eb9995,this._bw11981);
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
      
      public function _tt10264(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._gl14626));
         _loc2_.push(String.fromCharCode(_ts15834));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
         this._ys5052 = new Array();
      }
      
      public function _vp15698(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._gl14626));
         _loc2_.push(String.fromCharCode(_gr7166));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _sk619(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._gl14626));
         _loc2_.push(String.fromCharCode(_aj6247));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _nw10476(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._gl14626));
         _loc4_.push(String.fromCharCode(_fa2209));
         _loc4_.push(String.fromCharCode(_ir3761));
         _loc4_.push(param1);
         _loc4_.push(param2);
         _loc4_.push(param3);
         this.multiuser._er9795(_loc4_,3);
      }
   }
}

