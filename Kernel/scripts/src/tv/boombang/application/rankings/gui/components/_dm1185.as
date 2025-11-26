package src.tv.boombang.application.rankings.gui.components
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.rankings.events.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class _dm1185 extends MovieClip implements _jk15536
   {
      
      public static const _nf6130:int = 0;
      
      public static const _yb16034:int = 1;
      
      private var _ij8820:int;
      
      private var _jj5326:_va5249;
      
      private var _um2697:_va5249;
      
      private var _position:_om4028;
      
      private var _ng1021:_om4028;
      
      private var _cg10584:_om4028;
      
      private var _we10119:_om4028;
      
      private var _xo6614:MovieClip;
      
      public function _dm1185(param1:MovieClip)
      {
         super();
         this._xo6614 = param1;
         this._um2697 = new _va5249(this._xo6614["weekTabBtn"],"window.ranking.week","_selected");
         this._um2697.addEventListener(MouseEvent.MOUSE_DOWN,this._ab6153,false,0,true);
         this._jj5326 = new _va5249(this._xo6614["allTabButton"],"window.ranking.global",_qy9375._qd3237);
         this._jj5326.addEventListener(MouseEvent.MOUSE_DOWN,this._ir12956,false,0,true);
         this._ng1021 = new _om4028(this._xo6614["nick"]);
         this._ng1021.txt = "window.ranking.nick";
         this._position = new _om4028(this._xo6614["position"]);
         this._position.txt = "window.ranking.position";
         this._cg10584 = new _om4028(this._xo6614["points"]);
         this._cg10584.txt = "window.ranking.points";
         this._we10119 = new _om4028(this._xo6614["level"]);
         this._we10119.txt = "window.ranking.level";
      }
      
      public function destroy() : void
      {
         if(this._jj5326)
         {
            this._jj5326.removeEventListener(MouseEvent.MOUSE_DOWN,this._ir12956);
            this._jj5326.destroy();
            this._jj5326 = null;
         }
         if(this._um2697)
         {
            this._um2697.removeEventListener(MouseEvent.MOUSE_DOWN,this._ab6153);
            this._um2697.destroy();
            this._um2697 = null;
         }
         if(this._position)
         {
            this._position.destroy();
            this._position = null;
         }
         if(this._ng1021)
         {
            this._ng1021.destroy();
            this._ng1021 = null;
         }
         if(this._cg10584)
         {
            this._cg10584.destroy();
            this._cg10584 = null;
         }
         if(this._we10119)
         {
            this._we10119.destroy();
            this._we10119 = null;
         }
      }
      
      public function update(param1:int) : void
      {
         this._ia11084 = param1;
         if(this._ia11084 == _nf6130)
         {
            this._um2697.selected = true;
            this._jj5326.selected = false;
         }
         else
         {
            this._um2697.selected = false;
            this._jj5326.selected = true;
         }
      }
      
      public function get _ia11084() : int
      {
         return this._ij8820;
      }
      
      public function set _ia11084(param1:int) : void
      {
         this._ij8820 = param1;
      }
      
      private function _ab6153(param1:MouseEvent) : void
      {
         dispatchEvent(new _oe14918(_oe14918._rr2751,_nf6130));
      }
      
      private function _ir12956(param1:MouseEvent) : void
      {
         dispatchEvent(new _oe14918(_oe14918._rr2751,_yb16034));
      }
   }
}

