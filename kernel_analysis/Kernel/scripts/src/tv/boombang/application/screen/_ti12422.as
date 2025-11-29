package src.tv.boombang.application.screen
{
   import flash.display.MovieClip;
   import src.modules.multiplayerGames.dataGame.*;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.screen.windows.*;
   import src.tv.boombang.core.communications.*;
   import src.tv.boombang.core.datatypes.screen.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.windows._lx1779;
   
   public class _ti12422 extends _lx1779
   {
      
      public static const _md15410:String = "LASTWEEKWINNERS";
      
      public static const _bt10795:String = "THISWEEKWINNERS";
      
      private var _ck5194:int;
      
      private var _co15344:int;
      
      private var _vh14282:Array;
      
      public function _ti12422(param1:int)
      {
         super();
         this._ck5194 = param1;
         _kr10933._xo2736(_te13472._oj1220,this._sk542);
         _yu2106._at15478(this._ck5194);
      }
      
      override public function destroy() : void
      {
         _kr10933._mw12849(_te13472._oj1220,this._sk542);
         super.destroy();
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         switch(param1)
         {
            case _bt10795:
               _kr10933._xo2736(_te13472._oj1220,this._sk542);
               _yu2106._at15478(this._ck5194);
               return;
            case _md15410:
               this._js13951();
               return;
            default:
               return;
         }
      }
      
      private function _sk542(param1:_bc9270) : void
      {
         var _loc2_:Array = null;
         var _loc3_:_tr3910 = null;
         var _loc4_:int = int(param1._qp16092(0));
         if(_loc4_ == _te13472._oj1220)
         {
            _kr10933._mw12849(_te13472._oj1220,this._sk542);
            _loc2_ = param1.items.concat();
            _loc2_.splice(0,1);
            this._vh14282 = [];
            while(true)
            {
               _loc3_ = _tr3910.parse(_loc2_);
               if(_loc3_ == null)
               {
                  break;
               }
               this._vh14282.push(_loc3_);
            }
            this._ur15039();
         }
      }
      
      private function _ur15039() : void
      {
         var _loc1_:MovieClip = null;
         switch(this._ck5194)
         {
            case _oc1650._uh5110:
               _loc1_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619("ledScreenLibrary.swf","LedScreenRing");
               break;
            case _oc1650._ir2135:
               _loc1_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619("ledScreenLibrary.swf","LedScreenHiddenPath");
               break;
            case _oc1650._ot11105:
               _loc1_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619("ledScreenLibrary.swf","LedScreenCoconuts");
               break;
            case _oc1650._ro15425:
               _loc1_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619("ledScreenLibrary.swf","LedScreenNinjaWay");
         }
         var _loc2_:_dr16127 = new _dr16127(_loc1_,_md15410,this._ck5194,this._vh14282[_rd1956._rl14493.id],this._vh14282[_rd1956._qu9559.id]);
         _wj9062._lt3848(_loc2_);
      }
      
      private function _js13951() : void
      {
         var _loc1_:MovieClip = null;
         switch(this._ck5194)
         {
            case _oc1650._uh5110:
               _loc1_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619("ledScreenLibrary.swf","LedScreenRing");
               break;
            case _oc1650._ir2135:
               _loc1_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619("ledScreenLibrary.swf","LedScreenHiddenPath");
               break;
            case _oc1650._ot11105:
               _loc1_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619("ledScreenLibrary.swf","LedScreenCoconuts");
               break;
            case _oc1650._ro15425:
               _loc1_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619("ledScreenLibrary.swf","LedScreenNinjaWay");
         }
         var _loc2_:_dr16127 = new _dr16127(_loc1_,_bt10795,this._ck5194,this._vh14282[_rd1956._pb3637.id],this._vh14282[_rd1956._qu9559.id]);
         _wj9062._lt3848(_loc2_);
      }
      
      public function get _jr11615() : int
      {
         return this._co15344;
      }
      
      public function set _jr11615(param1:int) : void
      {
         this._co15344 = param1;
      }
   }
}

