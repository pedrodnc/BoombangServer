package src.modules.chooseScene.panelInferior
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.allData.*;
   import src.modules.concursos.*;
   import src.tv.boombang.commons.utils.*;
   import src.utils.*;
   
   public class _if9447
   {
      
      private var _asset:MovieClip;
      
      private var _ix13272:MovieClip;
      
      private var _bk2556:MovieClip;
      
      private var _qu13612:MovieClip;
      
      private var _id:int;
      
      public function _if9447(param1:MovieClip)
      {
         super();
         this._asset = param1;
         this._qu13612 = this._asset["btn"];
         this._bk2556 = this._asset["help"];
         this._ix13272 = this._bk2556["closeBtn"];
         this._bk2556.visible = false;
         this._qu13612.addEventListener(MouseEvent.MOUSE_DOWN,this._hs3947,false,0,true);
         this._qu13612.mouseChildren = false;
         this._qu13612.buttonMode = true;
         if(this._ix13272)
         {
            this._ix13272.addEventListener(MouseEvent.MOUSE_DOWN,this._kx13029,false,0,true);
            this._ix13272.buttonMode = true;
         }
      }
      
      public function destroy() : void
      {
         if(this._ix13272)
         {
            this._ix13272.removeEventListener(MouseEvent.MOUSE_DOWN,this._kx13029);
         }
         this._qu13612.removeEventListener(MouseEvent.MOUSE_DOWN,this._hs3947);
      }
      
      public function _hs3947(param1:MouseEvent) : void
      {
         if(this._bk2556)
         {
            _yq8362._xl9503(this._bk2556["title"],"contest." + this._id + ".counter.help.title");
            _yq8362._xl9503(this._bk2556["body"],"contest." + this._id + ".counter.help.text");
            this._bk2556.visible = true;
         }
      }
      
      public function _kx13029(param1:MouseEvent) : void
      {
         if(this._bk2556)
         {
            this._bk2556.visible = false;
         }
      }
      
      public function _hu12389() : void
      {
         var _loc1_:_hb296 = null;
         for each(_loc1_ in _to3951.getInstance().concursos)
         {
            if(_loc1_._us4986)
            {
               if(Boolean(this._qu13612) && Boolean(this._qu13612.visible))
               {
                  this._qu13612.visible = true;
               }
            }
         }
         if(this._qu13612)
         {
            this._qu13612.visible = false;
         }
      }
      
      public function _db5584() : void
      {
         var _loc1_:_hb296 = null;
         this._qu13612.visible = false;
         for each(_loc1_ in _to3951.getInstance().concursos)
         {
            if(_loc1_._us4986)
            {
               if(this._qu13612)
               {
                  this._id = _loc1_.id;
                  _yq8362._xl9503(this._qu13612["title"] as TextField,"contest." + this._id + ".counter.itemName");
                  this._qu13612["title"].text = (this._qu13612["title"].text as String).toUpperCase();
                  _yq8362._xl9503(this._qu13612["amount"] as TextField,_hv12530.getInstance()._ml14381(this._id).toString());
                  this._qu13612.x = 585;
                  this._qu13612.y = _tq2768._ps6769().stage.stageHeight;
                  this._qu13612.visible = true;
               }
               if(this._bk2556)
               {
                  this._bk2556.x = 555;
                  this._bk2556.y = 425;
               }
            }
         }
      }
   }
}

