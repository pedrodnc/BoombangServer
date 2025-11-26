package src.tv.boombang.application.rankings.gui.components
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.rankings.events.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class ComponentsController extends EventDispatcher implements Interfaces
   {
      
      private static const count:int = 0;
      
      private static const count1:int = 1;
      
      private var _xo6614:MovieClip;
      
      private var textString:ComponentsView;
      
      private var _kk2649:ComponentsController;
      
      private var _ex6729:ComponentsController;
      
      private var count1:int;
      
      public function ComponentsController(param1:MovieClip)
      {
         super();
         this._xo6614 = param1;
         this.textString = new ComponentsView(this._xo6614["title"]);
         this.textString.txt = "window.rankings.filters";
         this._kk2649 = new ComponentsController("window.rankings.friendsFilter",count1.toString());
         this._kk2649.addEventListener("onSelected",this.parseData,false,0,true);
         this._kk2649._uf3495 = 39423;
         this._kk2649.x = 7;
         this._kk2649.y = 31;
         this._ex6729 = new ComponentsController("window.rankings.allFilter",count.toString());
         this._ex6729.addEventListener("onSelected",this.parseData,false,0,true);
         this._ex6729._uf3495 = 39423;
         this._ex6729.x = 7;
         this._ex6729.y = 57;
         this._xo6614.addChild(this._kk2649);
         this._xo6614.addChild(this._ex6729);
      }
      
      public function destroy() : void
      {
         if(this._kk2649)
         {
            this._kk2649.removeEventListener("onSelected",this.parseData);
            this._kk2649.destroy();
            this._kk2649 = null;
         }
         if(this._ex6729)
         {
            this._ex6729.removeEventListener("onSelected",this.parseData);
            this._ex6729.destroy();
            this._ex6729 = null;
         }
         if(this.textString)
         {
            this.textString.destroy();
            this.textString = null;
         }
      }
      
      private function parseData(param1:Event) : void
      {
         if(param1.target is ComponentsController)
         {
            dispatchEvent(new EventsModel(EventsModel.textString1,parseInt(param1.target._ga12867)));
         }
      }
      
      public function update(param1:int) : void
      {
         this._rb8780 = param1;
         if(this._rb8780 == count)
         {
            this._ex6729._bq7340 = true;
            this._kk2649._bq7340 = false;
         }
         else
         {
            this._ex6729._bq7340 = false;
            this._kk2649._bq7340 = true;
         }
      }
      
      public function get _rb8780() : int
      {
         return this.count1;
      }
      
      public function set _rb8780(param1:int) : void
      {
         this.count1 = param1;
      }
   }
}

