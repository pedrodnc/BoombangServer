package src.tv.boombang.library.steps
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.tv.boombang.commons.interfaces.*;
   
   public class _wo727 extends MovieClip implements _jk15536
   {
      
      protected var _mw12647:_pd14567;
      
      protected var _hq10369:Function;
      
      public function _wo727(param1:Function)
      {
         super();
         this._hq10369 = param1;
      }
      
      protected function init() : void
      {
      }
      
      public function destroy() : void
      {
         this._eb6943();
      }
      
      public function _lt3848(param1:_pd14567) : void
      {
         param1.addEventListener(Event.COMPLETE,this._mb5376,false,0,true);
         this._eb6943();
         this._mw12647 = param1;
         addChild(this._mw12647);
      }
      
      private function _mb5376(param1:_pm4313) : void
      {
         this._hq10369((param1.target as _dt4939).id,param1._kj8592,param1.data);
      }
      
      private function _eb6943() : void
      {
         if(this._mw12647)
         {
            this._mw12647.removeEventListener(Event.COMPLETE,this._mb5376);
            this._mw12647.destroy();
            removeChild(this._mw12647);
            this._mw12647 = null;
         }
      }
   }
}

