package src
{
   import flash.display.Sprite;
   import flash.events.*;
   import flash.system.*;
   import src.config.*;
   import src.multiuser.*;
   import src.utils.*;
   
   public class _yn5945 extends Sprite
   {
      
      protected var _fr7798:int;
      
      protected var _wp11097:_ub4607;
      
      protected var _lq4996:_jl5367;
      
      public function _yn5945(param1:_ub4607)
      {
         super();
         this._wp11097 = param1;
         Security.allowDomain("swf");
         _cr6121.init();
         this._be10590();
      }
      
      protected function _be10590() : void
      {
         this._lq4996 = _jl5367.getInstance();
         this._lq4996.addEventListener(_jl5367._if7385,this._wi15540,false,0,true);
         this._lq4996._yl3073(_cc7688._vx10360,int(_cc7688._ja1502));
      }
      
      protected function _wi15540(param1:Event) : void
      {
         this._lq4996.removeEventListener(_jl5367._if7385,this._wi15540);
         this.addEventListener(Event.ENTER_FRAME,this._gv13043);
      }
      
      public function get _dn11747() : int
      {
         return this._fr7798;
      }
      
      protected function _gv13043(param1:Event) : void
      {
      }
   }
}

