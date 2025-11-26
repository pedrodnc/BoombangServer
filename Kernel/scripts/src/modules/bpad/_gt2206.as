package src.modules.bpad
{
   import flash.events.EventDispatcher;
   import src.logs.*;
   import src.modules.*;
   import src.multiuser.*;
   import src.tv.boombang.core.communications.*;
   
   public class _gt2206 extends EventDispatcher implements _bi12161
   {
      
      public static const _ws10774:int = 120;
      
      public static const _fa2418:int = 121;
      
      public static const _qs14307:int = 122;
      
      public static const _eg10836:int = 130;
      
      public static const _sa6740:int = 124;
      
      public static const _dr15599:int = 128;
      
      public static const _eo13394:int = 125;
      
      public static const _tj6467:int = 126;
      
      public static const _rm9199:int = 129;
      
      public static const _aw595:int = 131;
      
      public static const _li7411:int = 1;
      
      public static const _sp4619:int = -1;
      
      public static const _pm6314:int = -2;
      
      private var _gh9645:_jl5367;
      
      public function _gt2206()
      {
         super();
         this.multiuser = _jl5367.getInstance();
         this.multiuser.addEventListener(_qg8164._cs9632,this._bw11981);
      }
      
      public function init() : void
      {
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(_qg8164._cs9632,this._bw11981);
         this.multiuser = null;
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Array = param1._lv9976;
         _loc2_ = uint(String(_loc3_[1]).charCodeAt(0));
         switch(_loc2_)
         {
            case _ws10774:
            case _fa2418:
            case _te13472._ma13722:
            case _qs14307:
            case _te13472._vy9712:
            case _eo13394:
            case _rm9199:
            case _sa6740:
            case _aw595:
               dispatchEvent(new _qg8164(_qg8164._cs9632,_loc3_));
               return;
            default:
               _qn13596.getInstance()._kp3815(new _ex15859(_qn13596._dj10628,"BPadMultiuser.reciebeMsg",_loc3_.toString()));
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
      
      public function _pc4823() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._in15613));
         _loc1_.push(String.fromCharCode(_ws10774));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _xw329() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._in15613));
         _loc1_.push(String.fromCharCode(_fa2418));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _lu9928(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._in15613));
         _loc2_.push(String.fromCharCode(_eg10836));
         _loc2_.push(String(param1));
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _bi193(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._in15613));
         _loc2_.push(String.fromCharCode(_sa6740));
         _loc2_.push(String(param1));
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _ch14699(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._in15613));
         _loc2_.push(String.fromCharCode(_dr15599));
         _loc2_.push(String(param1));
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _kw7646() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(String.fromCharCode(_jl5367._in15613));
         _loc1_.push(String.fromCharCode(_qs14307));
         this.multiuser._er9795(_loc1_,2);
      }
      
      public function _vu15525(param1:Array, param2:String) : void
      {
         var _loc3_:Array = new Array();
         _loc3_.push(String.fromCharCode(_jl5367._in15613));
         _loc3_.push(String.fromCharCode(_te13472._ma13722));
         _loc3_.push(_jl5367._kx29(param1));
         _loc3_.push(param2);
         this.multiuser._er9795(_loc3_,2);
      }
      
      public function _jo1081(param1:Array) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._in15613));
         _loc2_.push(String.fromCharCode(_eo13394));
         _loc2_.push(_jl5367._kx29(param1));
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _kg9137(param1:int, param2:String, param3:int) : void
      {
         var _loc4_:Array = new Array();
         _loc4_.push(String.fromCharCode(_jl5367._in15613));
         _loc4_.push(String.fromCharCode(_tj6467));
         _loc4_.push(param1.toString());
         _loc4_.push(param2);
         _loc4_.push(param3.toString());
         this.multiuser._er9795(_loc4_,2);
      }
      
      public function _uv15295(param1:String) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._in15613));
         _loc2_.push(String.fromCharCode(_rm9199));
         _loc2_.push(param1);
         this.multiuser._er9795(_loc2_,2);
      }
      
      public function _qq16004(param1:int) : void
      {
         var _loc2_:Array = new Array();
         _loc2_.push(String.fromCharCode(_jl5367._in15613));
         _loc2_.push(String.fromCharCode(_te13472._vy9712));
         _loc2_.push(param1.toString());
         this.multiuser._er9795(_loc2_,2);
      }
   }
}

