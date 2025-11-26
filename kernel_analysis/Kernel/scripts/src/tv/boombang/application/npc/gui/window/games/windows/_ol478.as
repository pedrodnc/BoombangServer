package src.tv.boombang.application.npc.gui.window.games.windows
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class _ol478 extends _du6524 implements _jk15536
   {
      
      public static const _sr3780:String = "GameWindowEventPlay";
      
      public static const _yk12241:String = "GameWindowEventShowTutorial";
      
      private var _jh14441:_va5249;
      
      private var _ch1903:_va5249;
      
      private var _wd12110:int;
      
      private var _af10281:_ca11681;
      
      public function _ol478(param1:MovieClip, param2:String, param3:int, param4:int)
      {
         super(param1,param2,param3);
         this._wd12110 = param4;
         this._jh14441 = new _ly6718(_xo6614["btn2"],"button.compete");
         if(param4 >= 3)
         {
            this._jh14441.addEventListener(MouseEvent.CLICK,this._dd9650,false,0,true);
         }
         else
         {
            this._jh14441.addEventListener(MouseEvent.MOUSE_OVER,this._tq12592,false,0,true);
            this._jh14441.addEventListener(MouseEvent.MOUSE_OUT,this._ah6139,false,0,true);
            this._jh14441.enabled = false;
         }
         this._jh14441._im767(20,10);
         _qi5262.push(this._jh14441);
         this._ch1903 = new _va5249(_xo6614["btn1"],"button.practice");
         _eh1527();
      }
      
      override public function destroy() : void
      {
         if(this._af10281)
         {
            _xo6614.removeChild(this._af10281);
            this._af10281.destroy();
            this._af10281 = null;
         }
         this._jh14441.removeEventListener(MouseEvent.CLICK,this._pq8117);
         this._ch1903.removeEventListener(MouseEvent.CLICK,this._pq8117);
         this._jh14441.destroy();
         this._ch1903.destroy();
         super.destroy();
      }
      
      public function _tq12592(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(this._af10281 == null)
         {
            this._af10281 = new _ca11681();
            if(this._wd12110 == 2)
            {
               this._af10281.text = "games.multiplayer.tournamentNotAllowed.oneTime";
            }
            else
            {
               _loc2_ = 3 - this._wd12110;
               this._af10281.text = (_lh7543.get(_dw1395) as _dw1395)._ad13455("games.multiplayer.tournamentNotAllowed.nTimes",_loc2_);
            }
            this._af10281._xe10297 = _wk9007.TOP;
            this._af10281.fontSize = 15;
            this._af10281._ui11624 = 150;
            this._af10281.x = this._jh14441.x + this._jh14441.width / 2;
            this._af10281.y = this._jh14441.y + this._jh14441.height + 15;
            this._af10281.backgroundColor = 13382400;
            this._af10281.textColor = 16777215;
            this._af10281._sl14850();
            _xo6614.addChild(this._af10281);
         }
         this._af10281.visible = true;
      }
      
      public function _ah6139(param1:MouseEvent) : void
      {
         if(this._af10281)
         {
            this._af10281.visible = false;
         }
      }
      
      private function _dd9650(param1:MouseEvent) : void
      {
         var _loc2_:Object = {};
         _loc2_.id = 0;
         _nk11935(_sr3780,_loc2_);
      }
      
      private function _pq8117(param1:MouseEvent) : void
      {
         var _loc2_:Object = {};
         _loc2_.id = 1;
         _nk11935(_sr3780,_loc2_);
      }
   }
}

