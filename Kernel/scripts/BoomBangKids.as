package
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import flash.net.*;
   import flash.system.*;
   import src.*;
   import src.allData.texts.*;
   import src.config.*;
   import src.modules.interfaz.baseChat.*;
   import src.org.osflash.thunderbolt.*;
   import src.tv.boombang.application.rankings.gui.windows._ch13727;
   import src.tv.boombang.commons.utils.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.tv.boombang.library.objects.*;
   import src.tv.boombang.library.windows.*;
   import src.utils.boombang.*;
   
   public class BoomBangKids extends Sprite
   {
      
      public static var logEnable:Boolean = false;
      
      public static var _en0923:String = "";
      
      public static var _en0003:String = "0A87D7B07775F1045731B2DCB12E415479EBA4154C6FA6EE4F6D6B0AD67E59C7B26B9";
      
      public static var _en0004:String = "FF5B4CED4E3D79D28136BC6FF54CE84DBE849F7631214C3891BD29C8CCE";
      
      public static var _datos:String = "";
      
      private var socket:Socket;
      
      private var _wp11097:_ub4607;
      
      private var _as8760:_wc15106;
      
      private var _fo13443:Boolean = false;
      
      public function BoomBangKids()
      {
         super();
         this.addEventListener(Event.ADDED_TO_STAGE,this._lb15297,false,0,true);
      }
      
      public static function _am32424(param1:String) : void
      {
         _en0923 += param1;
      }
      
      private function _lb15297(param1:Event) : void
      {
         Security.allowDomain("*");
         this.removeEventListener(Event.ADDED_TO_STAGE,this._lb15297);
         _tq2768._gc10281(this.stage);
         this.stage.scaleMode = StageScaleMode.EXACT_FIT;
         this.init();
         stage.removeChildAt(0);
      }
      
      public function init() : void
      {
         var currentUrl:String;
         var staticRoutesUrl:String;
         var urlRequest:URLRequest;
         var urlLoader:URLLoader;
         _cc7688.init();
         _cc7688._wc13865 = stage.stageWidth;
         _cc7688._kl10731 = stage.stageHeight;
         _mr16168.hide = true;
         _qa14528._bm3024(this);
         currentUrl = "";
         staticRoutesUrl = "https://housekeeping.boombang.tv/Catalog/StaticRoutes";
         try
         {
            currentUrl = ExternalInterface.call("function(){return window.location.href;}");
            if(currentUrl != null)
            {
               if(currentUrl.indexOf("client.boombang.tv") != -1)
               {
                  staticRoutesUrl = "https://housekeeping.boombang.tv/Catalog/StaticRoutes";
               }
               else if(currentUrl.indexOf("www.boombang.tv") != -1)
               {
                  staticRoutesUrl = "https://www.boombang.tv/StaticRoutes";
               }
            }
         }
         catch(e:Error)
         {
            ExternalInterface.call("console.log","Error detectando URL: " + e.message);
         }
         ExternalInterface.call("console.log","URL detectada: " + currentUrl + " -> Usando: " + staticRoutesUrl);
         urlRequest = new URLRequest(staticRoutesUrl);
         urlLoader = new URLLoader();
         urlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         urlLoader.addEventListener(Event.COMPLETE,this.onUrlLoadComplete);
         urlLoader.load(urlRequest);
         ExternalInterface.call("console.log","[_bw11981] _arg_1._lv9976:");
      }
      
      public function despuesdedatos() : void
      {
         this._wp11097 = new _ub4607();
         this._wp11097.addEventListener("embedParamenterComplete",this._rk10444,false,0,true);
         this._wp11097.init();
         this._mq10068();
         this.socket = new Socket();
         _am32424("f2b2996d5b");
         this.loadHtml5();
      }
      
      private function onUrlLoadComplete(param1:Event) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.target);
         _datos = _loc2_.data;
         this.despuesdedatos();
      }
      
      private function loadHtml5() : void
      {
         ExternalInterface.addCallback("openRankingRing",this.openRankingRing);
         ExternalInterface.addCallback("openRankingCocos",this.openRankingCocos);
         ExternalInterface.addCallback("openRankingSendero",this.openRankingSendero);
         ExternalInterface.addCallback("openRankingBattle",this.openRankingBattle);
         ExternalInterface.addCallback("writeBasechat",this.writeBasechat);
         ExternalInterface.addCallback("openRankingSimon",this.openRankingSimon);
      }
      
      private function writeBasechat(param1:String) : void
      {
         ExternalInterface.call("console.log","Test Basechat");
         _na10583.Instance._ac10872.text += param1;
         stage.focus = _na10583.Instance._ac10872;
      }
      
      private function openRankingRing() : void
      {
         var _pj12454:_ch13727 = null;
         ExternalInterface.call("console.log","test callback");
         try
         {
            _pj12454 = new _ch13727(2);
            _pj12454.addEventListener("onCloseWindow",this.loadHtml5,false,0,true);
            _pr2018.getInstance()._pk9279(_pj12454,50,50);
         }
         catch(e:Error)
         {
            ExternalInterface.call("console.log",e);
            ExternalInterface.call("console.log",e.message);
         }
      }
      
      private function openRankingCocos() : void
      {
         var _pj12454:_ch13727 = null;
         ExternalInterface.call("console.log","test callback");
         try
         {
            _pj12454 = new _ch13727(8);
            _pj12454.addEventListener("onCloseWindow",this.loadHtml5,false,0,true);
            _pr2018.getInstance()._pk9279(_pj12454,50,50);
         }
         catch(e:Error)
         {
            ExternalInterface.call("console.log",e);
            ExternalInterface.call("console.log",e.message);
         }
      }
      
      private function openRankingSendero() : void
      {
         var _pj12454:_ch13727 = null;
         ExternalInterface.call("console.log","test callback");
         try
         {
            _pj12454 = new _ch13727(6);
            _pj12454.addEventListener("onCloseWindow",this.loadHtml5,false,0,true);
            _pr2018.getInstance()._pk9279(_pj12454,50,50);
         }
         catch(e:Error)
         {
            ExternalInterface.call("console.log",e);
            ExternalInterface.call("console.log",e.message);
         }
      }
      
      private function openRankingBattle() : void
      {
         var _pj12454:_ch13727 = null;
         ExternalInterface.call("console.log","test callback");
         try
         {
            _pj12454 = new _ch13727(12);
            _pj12454.addEventListener("onCloseWindow",this.loadHtml5,false,0,true);
            _pr2018.getInstance()._pk9279(_pj12454,50,50);
         }
         catch(e:Error)
         {
            ExternalInterface.call("console.log",e);
            ExternalInterface.call("console.log",e.message);
         }
      }
      
      private function openRankingSimon() : void
      {
         var _pj12454:_ch13727 = null;
         ExternalInterface.call("console.log","test callback");
         try
         {
            _pj12454 = new _ch13727(3);
            _pj12454.addEventListener("onCloseWindow",this.loadHtml5,false,0,true);
            _pr2018.getInstance()._pk9279(_pj12454,50,50);
         }
         catch(e:Error)
         {
            ExternalInterface.call("console.log",e);
            ExternalInterface.call("console.log",e.message);
         }
      }
      
      private function _rk10444(param1:Event) : void
      {
         this._wp11097.removeEventListener("embedParamenterComplete",this._rk10444);
         var _loc2_:Object = new Object();
         _loc2_["filelist"] = this._wp11097._ow1158;
         _lh7543.add(_vy3822,_loc2_);
         _lh7543.add(_hc11274,_loc2_);
         _loc2_ = new Object();
         _loc2_["lang_resource_id"] = _cc7688._yg212 + ".xml";
         _lh7543.add(_dw1395,_loc2_);
         _lh7543.add(_wl11587);
         _lh7543._un2007([_dw1395,_vy3822,_wl11587],this._dp15136);
      }
      
      private function _dp15136() : void
      {
         (_lh7543.get(_wl11587) as _wl11587)._hv9029("/boombangKids");
         (_lh7543.get(_wl11587) as _wl11587)._fs11949("misc","services_loaded");
         (_lh7543.get(_vy3822) as _vy3822)._vv13029(["commonLibrary.swf",_cc7688._qs3725,"functionality.xml"],this._hj11501);
      }
      
      private function _hj11501() : void
      {
         _yh6510._eo5308 = new XML((_lh7543.get(_vy3822) as _vy3822)._eb710(_cc7688._qs3725,true));
         var _loc1_:String = (_lh7543.get(_vy3822) as _vy3822)._eb710("functionality.xml",true);
         _fk7766._ws15664(_loc1_);
         this._as8760 = new _wc15106(this._wp11097);
         this._as8760.addEventListener("onApplicationComplete",this._ga14338,false,0,true);
         addChild(this._as8760);
      }
      
      private function _ga14338(param1:Event) : void
      {
         this._as8760.removeEventListener("onApplicationComplete",this._ga14338);
         dispatchEvent(new Event("onApplicationComplete"));
      }
      
      private function _mq10068() : void
      {
         var _loc1_:Shape = new Shape();
         _loc1_.graphics.beginFill(16777215,1);
         _loc1_.graphics.drawRect(0,0,_cc7688._wc13865,_cc7688._kl10731);
         _loc1_.graphics.endFill();
         _am32424("9918eddc78");
         _loc1_.cacheAsBitmap = true;
         this.mask = _loc1_;
      }
   }
}

