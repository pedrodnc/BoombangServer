package src.modules.npc
{
   import flash.events.EventDispatcher;
   import src.modules.*;
   import src.multiuser.*;
   
   public class _su1595 extends EventDispatcher implements _bi12161
   {
      
      public static const _yl844:int = 121;
      
      public static const _xm6969:int = 122;
      
      public static const _pj8314:int = 123;
      
      public static const _gx9686:int = 124;
      
      private var _gh9645:_jl5367;
      
      private var _ec6646:Boolean;
      
      public function _su1595()
      {
         super();
         this.multiuser = _jl5367.getInstance();
         this.multiuser.addEventListener(_jo1398._ag4085,this._bw11981,false,0,true);
         this._ec6646 = false;
      }
      
      public function init() : void
      {
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         dispatchEvent(new _jo1398(_jo1398._ag4085,param1._lv9976));
      }
      
      public function destroy() : void
      {
         this.multiuser.removeEventListener(_jo1398._ag4085,this._bw11981);
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
      
      public function _ds12000() : Boolean
      {
         return this._ec6646;
      }
   }
}

