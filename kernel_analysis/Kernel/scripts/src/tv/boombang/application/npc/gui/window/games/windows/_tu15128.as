package src.tv.boombang.application.npc.gui.window.games.windows
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class _tu15128 extends _du6524 implements _jk15536
   {
      
      public static const _lk9875:String = "GameWindowEventOption1";
      
      public static const _ej907:String = "GameWindowEventOption2";
      
      private var _ix4304:_va5249;
      
      private var _cj1531:_va5249;
      
      public function _tu15128(param1:MovieClip, param2:String, param3:int)
      {
         super(param1,param2,param3);
         this._ix4304 = new _va5249(_xo6614["btn1"],"");
         this._ix4304._im767(20,10);
         this._ix4304.addEventListener(MouseEvent.CLICK,this._ai14690,false,0,true);
         _qi5262.push(this._ix4304);
         this._cj1531 = new _va5249(_xo6614["btn2"],"");
         this._cj1531._im767(20,10);
         this._cj1531.addEventListener(MouseEvent.CLICK,this._qw711,false,0,true);
         _qi5262.push(this._cj1531);
         _eh15270();
      }
      
      override public function destroy() : void
      {
         this._ix4304.removeEventListener(MouseEvent.CLICK,this._ai14690);
         this._cj1531.removeEventListener(MouseEvent.CLICK,this._qw711);
         this._ix4304.destroy();
         this._cj1531.destroy();
         super.destroy();
      }
      
      public function set _qe12407(param1:String) : void
      {
         this._ix4304.text = param1;
         this._ix4304._im767(20,10);
         _eh15270();
      }
      
      public function set _te7012(param1:String) : void
      {
         this._cj1531.text = param1;
         this._cj1531._im767(20,10);
         _eh15270();
      }
      
      private function _ai14690(param1:MouseEvent) : void
      {
         _nk11935(_lk9875);
      }
      
      private function _qw711(param1:MouseEvent) : void
      {
         _nk11935(_ej907);
      }
   }
}

