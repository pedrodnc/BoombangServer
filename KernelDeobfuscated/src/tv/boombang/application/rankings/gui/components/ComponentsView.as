package src.tv.boombang.application.rankings.gui.components
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.rankings.events.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class ComponentsView extends MovieClip implements Interfaces
   {
      
      public static const count:int = 0;
      
      public static const count1:int = 1;
      
      private var count:int;
      
      private var _jj5326:ComponentsView;
      
      private var _um2697:ComponentsView;
      
      private var _position:ComponentsView;
      
      private var _ng1021:ComponentsView;
      
      private var _cg10584:ComponentsView;
      
      private var count1:ComponentsView;
      
      private var _xo6614:MovieClip;
      
      public function ComponentsView(param1:MovieClip)
      {
         super();
         this._xo6614 = param1;
         this._um2697 = new ComponentsView(this._xo6614["weekTabBtn"],"window.ranking.week","_selected");
         this._um2697.addEventListener(MouseEvent.MOUSE_DOWN,this._ab6153,false,0,true);
         this._jj5326 = new ComponentsView(this._xo6614["allTabButton"],"window.ranking.global",ComponentsModel._qd3237);
         this._jj5326.addEventListener(MouseEvent.MOUSE_DOWN,this._ir12956,false,0,true);
         this._ng1021 = new ComponentsView(this._xo6614["nick"]);
         this._ng1021.txt = "window.ranking.nick";
         this._position = new ComponentsView(this._xo6614["position"]);
         this._position.txt = "window.ranking.position";
         this._cg10584 = new ComponentsView(this._xo6614["points"]);
         this._cg10584.txt = "window.ranking.points";
         this.count1 = new ComponentsView(this._xo6614["level"]);
         this.count1.txt = "window.ranking.level";
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
         if(this.count1)
         {
            this.count1.destroy();
            this.count1 = null;
         }
      }
      
      public function update(param1:int) : void
      {
         this._ia11084 = param1;
         if(this._ia11084 == count)
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
         return this.count;
      }
      
      public function set _ia11084(param1:int) : void
      {
         this.count = param1;
      }
      
      private function _ab6153(param1:MouseEvent) : void
      {
         dispatchEvent(new EventsModel(EventsModel.textString1,count));
      }
      
      private function _ir12956(param1:MouseEvent) : void
      {
         dispatchEvent(new EventsModel(EventsModel.textString1,count1));
      }
   }
}

