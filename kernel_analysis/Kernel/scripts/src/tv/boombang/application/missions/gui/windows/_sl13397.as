package src.tv.boombang.application.missions.gui.windows
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.steps.*;
   import src.tv.boombang.library.windows._lx1779;
   
   public class _sl13397 extends _lx1779 implements _jk15536
   {
      
      public static const _qm3080:String = "missionsButton";
      
      public static const _wr10050:String = "missionsList";
      
      public static const _wc11086:String = "missionOpenMenu";
      
      private var _qf955:_tn795;
      
      public function _sl13397()
      {
         super();
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
      
      override protected function init() : void
      {
         _lh7543._un2007([_ht14109],this._uj3682);
      }
      
      private function _uj3682() : void
      {
         if(!(_lh7543.get(_ht14109) as _ht14109)._cj12262)
         {
            (_lh7543.get(_vy3822) as _vy3822)._vv13029(["missionsAssets.swf"],this._da4911);
         }
      }
      
      private function _da4911() : void
      {
         this._kr9723();
      }
      
      private function open(param1:Event) : void
      {
         ExternalInterface.call("openBattlePassWindow");
      }
      
      private function _kr9723() : void
      {
         ExternalInterface.call("showZombieWolfContest");
         ExternalInterface.call("OutArea");
         ExternalInterface.call("hideBadges");
         var _loc1_:MovieClip = (_lh7543.get(_vy3822) as _vy3822)._bn15619("missionsAssets.swf","MissionsWindowButton") as MovieClip;
         _loc1_.addEventListener(MouseEvent.CLICK,this.open);
         this._qf955 = new _tn795(_loc1_,_sl13397._qm3080);
         _wj9062._lt3848(this._qf955);
      }
      
      override protected function _jp7690(param1:String, param2:String, param3:Object) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:_ej9925 = null;
         if(param2 == _pm4313._by10560)
         {
            if(param1 == _sl13397._wr10050)
            {
               this._kr9723();
            }
         }
         if(param2 == _pm4313._dh1979)
         {
            if(param1 == _sl13397._qm3080)
            {
               _loc4_ = (_lh7543.get(_vy3822) as _vy3822)._bn15619("missionsAssets.swf","MissionsWindowContainer") as MovieClip;
               _loc5_ = new _ej9925(_loc4_,_sl13397._wr10050);
               _wj9062._lt3848(_loc5_);
               dispatchEvent(new Event(_sl13397._wc11086));
            }
         }
      }
   }
}

