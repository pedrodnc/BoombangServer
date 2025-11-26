package src.modules.enterScene
{
   import flash.geom.Point;
   import flash.media.*;
   import src.*;
   import src.allData.*;
   import src.allData.country.*;
   import src.allData.scene.typeEscenarios.*;
   import src.config.*;
   import src.modules.creditos.*;
   import src.modules.interfaz._je14031;
   import src.modules.interfaz.baseChat.*;
   import src.modules.multiplayerGames._cx9701;
   import src.modules.privados._bx10683;
   import src.person._ta2443;
   import src.person._tl4091;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class _aw742
   {
      
      private var _wg7925:_rw2740;
      
      private var _vp454:_bx10683;
      
      private var baseChat:_na10583;
      
      private var _lp469:_je14031;
      
      private var _en5042:_cx9701;
      
      private var _bl11315:_il6324;
      
      private var _ix11826:_tl4091;
      
      private var _bl526:Array;
      
      private var _rk14457:Array;
      
      private var _os6801:Sound;
      
      private var _pj13605:SoundChannel;
      
      public function _aw742(param1:_rw2740, param2:_bx10683, param3:_na10583, param4:_je14031, param5:_il6324, param6:_tl4091 = null)
      {
         this._bl526 = new Array();
         this._rk14457 = new Array();
         super();
         this._wg7925 = param1;
         this._vp454 = param2;
         this.baseChat = param3;
         this._lp469 = param4;
         this._bl11315 = param5;
         this._ix11826 = param6;
      }
      
      public function _mv15029(param1:_cx9701) : void
      {
         this._en5042 = param1;
      }
      
      public function simpleURLFromEscenarios(param1:String) : void
      {
         _kg15251.openPopup(param1);
      }
      
      public function videoClicked() : void
      {
         _jp4046.callJavaScript("trackImpresionVideoGeneric()");
      }
      
      public function escenarioPublicidadImpresion() : void
      {
         _jp4046.callJavaScript("trackImpresionSalaGeneric()");
      }
      
      public function isSpanishServer() : Boolean
      {
         return _cc7688._qs3725 == _cc7688._gk8815;
      }
      
      public function isEnglishServer() : Boolean
      {
         return _cc7688._qs3725 == _cc7688._gl650;
      }
      
      public function isMexicanServer() : Boolean
      {
         return _cc7688._qs3725 == _cc7688._mi124;
      }
      
      public function isChileServer() : Boolean
      {
         return _cc7688._qs3725 == _cc7688._uo6813;
      }
      
      public function isSpanishIp() : Boolean
      {
         return _hv12530.getInstance()._my547.toUpperCase() == _mu10856._pu2140;
      }
      
      public function _ve5111() : void
      {
         this._bl11315._qk13047();
      }
      
      public function _ym8623() : void
      {
         this._bl11315._pr4733();
      }
      
      public function get timeNextSilverBonusFormated() : String
      {
         var _loc1_:String = null;
         var _loc2_:_cy398 = _kg12861._os4304(_sd10289._cd5741);
         var _loc3_:String = _loc2_._df6810 >= 10 ? String(_loc2_._df6810) : "0" + _loc2_._df6810;
         var _loc4_:String = _loc2_._js12081 >= 10 ? String(_loc2_._js12081) : "0" + _loc2_._js12081;
         var _loc5_:String = _loc2_._np9789 >= 10 ? String(_loc2_._np9789) : "0" + _loc2_._np9789;
         if(_loc2_._df6810 > 0)
         {
            _loc1_ = _loc3_ + ":" + _loc4_ + ":" + _loc5_;
         }
         else
         {
            _loc1_ = _loc4_ + ":" + _loc5_;
         }
         return _loc1_;
      }
      
      public function playAudio(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Sound = (_lh7543.get(_vy3822) as _vy3822)._ix8228("audioLibrary.swf",param1);
         var _loc4_:SoundChannel = new SoundChannel();
         if(param2)
         {
            _loc4_ = _loc3_.play(0,9999999);
         }
         else
         {
            _loc4_ = _loc3_.play(0,1);
         }
         this._bl526.push(_loc3_);
         this._rk14457.push(_loc4_);
      }
      
      public function stopAudio() : void
      {
         var _loc1_:Sound = null;
         var _loc2_:SoundChannel = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._bl526.length)
         {
            _loc1_ = this._bl526[_loc3_];
            _loc1_ = null;
            _loc2_ = this._rk14457[_loc3_];
            _loc2_.stop();
            _loc2_ = null;
            _loc3_++;
         }
      }
      
      public function pirataHablar(param1:int, param2:int, param3:String, param4:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,_db131._im13214,param4);
      }
      
      public function maquinaChicleHablar(param1:String, param2:int) : void
      {
         this.baseChat._ef13202(param1);
         this.baseChat._ht9941(param2);
      }
      
      public function viejoHablar(param1:int, param2:int, param3:String, param4:String) : void
      {
         if(this._wg7925 != null)
         {
            this._wg7925._kg10630(param3,null,param1,param2,_db131._bo5191,param4);
         }
      }
      
      public function vampiroHablar(param1:int, param2:int, param3:String, param4:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,_db131._bo5191,param4);
      }
      
      public function pascuasHablar(param1:int, param2:int, param3:String, param4:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,_db131._ar1854,param4);
      }
      
      public function radioFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,_db131._tg4679);
      }
      
      public function violetaFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,_db131._bm296);
      }
      
      public function verdeFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,_db131._pd10410);
      }
      
      public function azulFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,_db131._kl8694);
      }
      
      public function animarStageMiddleX(param1:Number) : void
      {
         _xw1367.getInstance()._rg1051(param1);
      }
      
      public function animarStageMiddleY(param1:Number) : void
      {
         _xw1367.getInstance()._df13671(param1);
      }
      
      public function showFichaCreacionObjetos() : void
      {
         this._lp469._to4684();
      }
      
      public function showFichaIstructionsMultiplayerGames() : void
      {
         if(this._en5042 != null)
         {
            this._en5042._yj110();
         }
      }
      
      public function checkDistanceAllKekos(param1:int, param2:int, param3:int) : Boolean
      {
         var _loc5_:_ta2443 = null;
         var _loc6_:Number = Number.MAX_VALUE;
         var _loc7_:Number = Number.MAX_VALUE;
         for each(_loc5_ in this._ix11826._pf8204)
         {
            if(_loc5_ != null)
            {
               var _loc4_:Point = _il6324.getPlotXY(_loc5_._md8722._gn15250);
               _loc7_ = Math.sqrt((param1 - null.x) * (param1 - null.x) + (param2 - null.y) * (param2 - null.y));
               _loc6_ = _loc7_ < _loc6_ ? _loc7_ : _loc6_;
            }
         }
         if(_loc6_ < param3)
         {
            return true;
         }
         return false;
      }
   }
}

