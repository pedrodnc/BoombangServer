package src.tv.boombang.application.popup
{
   import flash.display.*;
   import flash.events.*;
   import src.loaders.*;
   import src.modules.multiplayerGames.dataGame.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.popup.components.tutorials.*;
   import src.tv.boombang.commons.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.popup.*;
   import src.utils.*;
   
   public class _iy5611 extends _aq4817
   {
      
      private var _ig5144:_qy9375;
      
      private var _er5836:_wq11080;
      
      private var _ck5194:int;
      
      private var _lf15550:_om4028;
      
      private var _pd9899:_om4028;
      
      private var _bl14396:_va5249;
      
      private var _br8675:_va5249;
      
      private var _vt5934:_va5249;
      
      private var _fo15207:MovieClip;
      
      private var _pt13369:MovieClip;
      
      private var _ea5298:_nd4859;
      
      private var _xy15758:MovieClip;
      
      private var _lt5613:int;
      
      private var _mw12647:int;
      
      public function _iy5611(param1:int)
      {
         super();
         this._ck5194 = param1;
         this._er5836 = new _wq11080();
         addChild(this._er5836);
         (_lh7543.get(_vy3822) as _vy3822)._vv13029(["gameTutorial.swf"],this._lu7260);
      }
      
      override public function destroy() : void
      {
         this._ea5298.destroy();
         if(this._bl14396)
         {
            this._bl14396.removeEventListener(MouseEvent.CLICK,this._ls3532);
            this._bl14396.destroy();
            this._bl14396 = null;
         }
         if(this._br8675)
         {
            this._br8675.removeEventListener(MouseEvent.CLICK,this._sq11472);
            this._br8675.destroy();
            this._br8675 = null;
         }
         if(this._ig5144)
         {
            this._ig5144.removeEventListener(MouseEvent.CLICK,this._qn6887);
            this._ig5144.destroy();
            this._ig5144 = null;
         }
         if(this._vt5934)
         {
            this._vt5934.removeEventListener(MouseEvent.CLICK,this._qn6887);
            this._vt5934.destroy();
            this._vt5934 = null;
         }
      }
      
      private function _lu7260() : void
      {
         _xo6614 = (_lh7543.get(_vy3822) as _vy3822)._bn15619("gameTutorial.swf","Popup");
         if(_xo6614.getChildByName("closeBtn"))
         {
            this._ig5144 = new _qy9375(_xo6614.getChildByName("closeBtn") as MovieClip);
            this._ig5144.addEventListener(MouseEvent.CLICK,this._qn6887,false,0,true);
         }
         this._xy15758 = _xo6614["tutorialContent"] as MovieClip;
         this._fo15207 = _xo6614["back"]["content"] as MovieClip;
         this._pt13369 = _xo6614["back"]["line"] as MovieClip;
         this._lf15550 = new _om4028(_xo6614["titleField"]);
         this._lf15550.txt = "";
         this._pd9899 = new _om4028(_xo6614["explanationField"]);
         this._pd9899.txt = "";
         this._bl14396 = new _va5249(_xo6614["prevButton"] as MovieClip,"button.previous");
         this._br8675 = new _va5249(_xo6614["nextButton"] as MovieClip,"button.next");
         this._vt5934 = new _va5249(_xo6614["finishButton"] as MovieClip,"button.finish");
         this._vt5934.addEventListener(MouseEvent.CLICK,this._qn6887,false,0,true);
         this._bl14396.addEventListener(MouseEvent.CLICK,this._ls3532,false,0,true);
         this._br8675.addEventListener(MouseEvent.CLICK,this._sq11472,false,0,true);
         this._br8675.visible = false;
         this._bl14396.visible = false;
         this._vt5934.visible = false;
         switch(this._ck5194)
         {
            case _oc1650._hx13454:
               this._ea5298 = new _nd4859(_mk16025._ad2814);
               this._lt5613 = 4;
               this._ls9146(12931922);
               _xv14798._ts14032(this._fo15207,8269615);
               _xv14798._ts14032(this._pt13369,3937814);
               break;
            case _oc1650._qf5633:
               this._ea5298 = new _nd4859(_mk16025._qq6239);
               this._lt5613 = 4;
               this._ls9146(104756);
               _xv14798._ts14032(this._fo15207,26112);
               _xv14798._ts14032(this._pt13369,19712);
               break;
            case _oc1650._ik10140:
               this._ea5298 = new _nd4859(_mk16025._eq16024);
               this._lt5613 = 4;
               this._ls9146(10040319);
               _xv14798._ts14032(this._fo15207,7149927);
               _xv14798._ts14032(this._pt13369,4721988);
               break;
            case _oc1650._de12066:
               this._ea5298 = new _nd4859(_mk16025._ih8617);
               this._lt5613 = 5;
               this._ls9146(4811644);
               _xv14798._ts14032(this._fo15207,2372925);
               _xv14798._ts14032(this._pt13369,1252384);
         }
         this._ea5298.addEventListener(_is380._om2683,this._ie5369,false,0,true);
         this._ea5298._pj15434();
         _er5800();
      }
      
      private function _ls9146(param1:uint) : void
      {
         this._br8675._vr14785 = param1;
         this._bl14396._vr14785 = param1;
         this._ig5144._vr14785 = param1;
         this._vt5934._vr14785 = param1;
      }
      
      private function _ie5369(param1:_is380) : void
      {
         this._ea5298.removeEventListener(_is380._om2683,this._ie5369);
         this._wc7355(0);
         this._xy15758.addChild(this._ea5298);
         this._er5836.destroy();
         removeChild(this._er5836);
      }
      
      private function _ls3532(param1:MouseEvent) : void
      {
         if(this._mw12647 > 0)
         {
            this._wc7355(this._mw12647 - 1);
         }
      }
      
      private function _sq11472(param1:MouseEvent) : void
      {
         if(this._mw12647 < this._lt5613)
         {
            this._wc7355(this._mw12647 + 1);
         }
      }
      
      private function _wc7355(param1:int) : void
      {
         this._mw12647 = param1;
         if(this._mw12647 <= 0)
         {
            this._bl14396.visible = false;
         }
         else
         {
            this._bl14396.visible = true;
         }
         if(this._mw12647 >= this._lt5613)
         {
            this._br8675.visible = false;
            this._vt5934.visible = true;
         }
         else
         {
            this._br8675.visible = true;
            this._vt5934.visible = false;
         }
         this._lf15550.txt = "games.tutorials.title.game_" + this._ck5194 + "_step_" + this._mw12647;
         this._pd9899.txt = "games.tutorials.description.game_" + this._ck5194 + "_step_" + this._mw12647;
         this._ea5298._wc7355(this._mw12647);
      }
      
      protected function _qn6887(param1:MouseEvent) : void
      {
         this.destroy();
         PopUpManager.removePopUp(this);
      }
   }
}

