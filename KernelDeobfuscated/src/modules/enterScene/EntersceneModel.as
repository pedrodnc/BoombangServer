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
   import src.modules.interfaz.InterfazManager;
   import src.modules.interfaz.baseChat.*;
   import src.modules.multiplayerGames.MultiplayergamesModel;
   import src.modules.privados.PrivadosController;
   import src.person.PersonController;
   import src.person.PersonBase;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class EntersceneModel
   {
      
      private var _wg7925:BasechatModel;
      
      private var _vp454:PrivadosController;
      
      private var baseChat:ChatBase;
      
      private var _lp469:InterfazManager;
      
      private var _en5042:MultiplayergamesModel;
      
      private var _bl11315:SceneType;
      
      private var _ix11826:PersonBase;
      
      private var items6:Array;
      
      private var items1:Array;
      
      private var _os6801:Sound;
      
      private var _pj13605:SoundChannel;
      
      public function EntersceneModel(param1:BasechatModel, param2:PrivadosController, param3:ChatBase, param4:InterfazManager, param5:SceneType, param6:PersonBase = null)
      {
         this.items6 = new Array();
         this.items1 = new Array();
         super();
         this._wg7925 = param1;
         this._vp454 = param2;
         this.baseChat = param3;
         this._lp469 = param4;
         this._bl11315 = param5;
         this._ix11826 = param6;
      }
      
      public function _mv15029(param1:MultiplayergamesModel) : void
      {
         this._en5042 = param1;
      }
      
      public function simpleURLFromEscenarios(param1:String) : void
      {
         UtilsUtils.openPopup(param1);
      }
      
      public function videoClicked() : void
      {
         UtilsUtils.callJavaScript("trackImpresionVideoGeneric()");
      }
      
      public function escenarioPublicidadImpresion() : void
      {
         UtilsUtils.callJavaScript("trackImpresionSalaGeneric()");
      }
      
      public function isSpanishServer() : Boolean
      {
         return Configuration.urlString9 == Configuration.urlString4;
      }
      
      public function isEnglishServer() : Boolean
      {
         return Configuration.urlString9 == Configuration.urlString7;
      }
      
      public function isMexicanServer() : Boolean
      {
         return Configuration.urlString9 == Configuration.urlString6;
      }
      
      public function isChileServer() : Boolean
      {
         return Configuration.urlString9 == Configuration.urlString5;
      }
      
      public function isSpanishIp() : Boolean
      {
         return UserSession.getInstance().urlString9.toUpperCase() == CountryModel.textString3;
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
         var count2:String = null;
         var count:MathUtils = DateUtils._os4304(CreditsManager._cd5741);
         var count3:String = count.count4 >= 10 ? String(count.count4) : "0" + count.count4;
         var count1:String = count.count5 >= 10 ? String(count.count5) : "0" + count.count5;
         var count2:String = count.count6 >= 10 ? String(count.count6) : "0" + count.count6;
         if(count.count4 > 0)
         {
            count2 = count3 + ":" + count1 + ":" + count2;
         }
         else
         {
            count2 = count1 + ":" + count2;
         }
         return count2;
      }
      
      public function playAudio(param1:String, param2:Boolean = true) : void
      {
         var count3:Sound = (ServiceLocator.get(ResourceManager) as ResourceManager)._ix8228("audioLibrary.swf",param1);
         var count1:SoundChannel = new SoundChannel();
         if(param2)
         {
            count1 = count3.play(0,9999999);
         }
         else
         {
            count1 = count3.play(0,1);
         }
         this.items6.push(count3);
         this.items1.push(count1);
      }
      
      public function stopAudio() : void
      {
         var count2:Sound = null;
         var count:SoundChannel = null;
         var count3:int = 0;
         while(count3 < this.items6.length)
         {
            count2 = this.items6[count3];
            count2 = null;
            count = this.items1[count3];
            count.stop();
            count = null;
            count3++;
         }
      }
      
      public function pirataHablar(param1:int, param2:int, param3:String, param4:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count20,param4);
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
            this._wg7925._kg10630(param3,null,param1,param2,Basechat.count26,param4);
         }
      }
      
      public function vampiroHablar(param1:int, param2:int, param3:String, param4:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count26,param4);
      }
      
      public function pascuasHablar(param1:int, param2:int, param3:String, param4:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count27,param4);
      }
      
      public function radioFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count1);
      }
      
      public function violetaFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count28);
      }
      
      public function verdeFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count29);
      }
      
      public function azulFrase(param1:int, param2:int, param3:String) : void
      {
         this._wg7925._kg10630(param3,null,param1,param2,Basechat.count30);
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
         var count2:PersonController = null;
         var count7:Number = Number.MAX_VALUE;
         var items:Number = Number.MAX_VALUE;
         for each(count2 in this._ix11826.items)
         {
            if(count2 != null)
            {
               var count1:Point = SceneType.getPlotXY(count2._md8722._gn15250);
               items = Math.sqrt((param1 - null.x) * (param1 - null.x) + (param2 - null.y) * (param2 - null.y));
               count7 = items < count7 ? items : count7;
            }
         }
         if(count7 < param3)
         {
            return true;
         }
         return false;
      }
   }
}

