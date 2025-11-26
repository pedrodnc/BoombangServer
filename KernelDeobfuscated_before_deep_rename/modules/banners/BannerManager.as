package src.modules.banners
{
   import flash.events.*;
   import flash.net.*;
   import flash.utils.*;
   import src.modules.banners.vast.data.*;
   import src.tv.boombang.commons.*;
   
   public class BannerManager extends EventDispatcher
   {
      
      public static const _fw13664:String = "bannerDataReady";
      
      public static var _ft7382:int = 0;
      
      private var _sn6055:int;
      
      private var _ce5419:VastParser;
      
      private var _ry9750:Boolean = false;
      
      private var _ne15286:Boolean = false;
      
      private var _ck3635:BannersController;
      
      private var _fa11369:Dictionary;
      
      private var _bo4798:XML;
      
      private var _mn11470:URLLoader;
      
      public function BannerManager(param1:String = "")
      {
         super(param1);
      }
      
      public static function _ue1133() : Boolean
      {
         var _loc1_:* = false;
         if(_ft7382 > 10)
         {
            _loc1_ = _ft7382 % 5 == 0;
         }
         else
         {
            _loc1_ = _ft7382 % 2 == 0;
         }
         ++_ft7382;
         return _loc1_;
      }
      
      public function _ud14980() : void
      {
         this._bo4798 = null;
         var _loc1_:int = Math.round(Math.random() * 1000000);
         _url = irrcrpt("https://www.boombang.nl/ads/client/show0.asp.xml?" + Math.round(Math.random() * 1000000),0);
         _gn930 = EventDispatcher._yy8162;
         this._sn6055 = getTimer();
         this._ry9750 = true;
         this._ne15286 = false;
         load();
         this._fa11369 = new Dictionary();
         this._fa11369["firstQuartile"] = true;
         this._fa11369["midpoint"] = true;
         this._fa11369["thirdQuartile"] = true;
         this._fa11369["start"] = true;
         this._fa11369["complete"] = true;
      }
      
      override protected function _rm1014(param1:Event = null) : void
      {
         this.destroy();
         var _loc3_:XML = new XML(getData());
         if(_loc3_.DataModel.Wrapper.length() > 0)
         {
            this._bo4798 = _loc3_;
            var _loc2_:String = String(_loc3_.DataModel.Wrapper.VASTAdTagURI);
            _url = null;
            _gn930 = EventDispatcher._yy8162;
            load();
         }
         else
         {
            this._ry9750 = false;
            this.parseXML(_loc3_);
         }
      }
      
      private function parseXML(param1:XML) : void
      {
         var vastData:XML = param1;
         try
         {
            this._ce5419 = new VastParser();
            this._ce5419.parse(vastData,this._bo4798);
         }
         catch(err:Error)
         {
            dispatchEvent(new Event(_fw13664));
            return;
         }
         if(this._ce5419.ad.creatives.length > 0)
         {
            this._ru5753();
         }
         else
         {
            dispatchEvent(new Event(_fw13664));
         }
      }
      
      public function _ru5753() : void
      {
         var _loc1_:MediaFile = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._ce5419.ad.creatives[0].mediaFiles.length)
         {
            _loc1_ = this._ce5419.ad.creatives[0].mediaFiles[_loc2_];
            if(Boolean(_loc1_) && (_loc1_.uri.indexOf(".flv") > 0 || _loc1_.uri.indexOf(".mp4") > 0))
            {
               this._ck3635 = new BannersController(_loc1_,this._ek14606);
               this.addListeners();
               return;
            }
            if(Boolean(_loc1_) && Boolean(this._pu4272(_loc1_.uri)))
            {
               this._ck3635 = new BannersController(_loc1_,this._ek14606);
               this.addListeners();
               return;
            }
            _loc2_++;
         }
         dispatchEvent(new Event(_fw13664));
      }
      
      private function addListeners() : void
      {
         this._xx13828();
         this._ne15286 = true;
         this._sn6055 = getTimer() + 1000;
         this._ck3635.addEventListener(BannersEvents._jf1542,this._yo6793);
      }
      
      private function _pi3241(param1:IOErrorEvent) : void
      {
      }
      
      private function _yo6793(param1:BannersEvents) : void
      {
         switch(param1._tc14632)
         {
            case BannersController._xm13918:
               this._hi15977();
               return;
            case BannersController._xj9160:
               this._ek14606();
               return;
            case BannersController._xl5015:
               this._fs11949("start");
               return;
            default:
               return;
         }
      }
      
      private function _fs11949(param1:String) : void
      {
         var _loc2_:int = 0;
         if(!this._fa11369[param1])
         {
            return;
         }
         while(_loc2_ < this._ce5419.ad.creatives[0].trackingEvents.length)
         {
            if(this._ce5419.ad.creatives[0].trackingEvents[_loc2_].event == param1 && this._ce5419.ad.creatives[0].trackingEvents[_loc2_].uri != "")
            {
               this._fa11369[param1] = false;
               this._mn11470 = new URLLoader();
               this._mn11470.addEventListener(IOErrorEvent.IO_ERROR,this._pi3241,false,0,true);
               this._mn11470.load(new URLRequest(this._ce5419.ad.creatives[0].trackingEvents[_loc2_].uri));
            }
            _loc2_++;
         }
      }
      
      private function _xx13828() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._ce5419.ad.impressions.length)
         {
            if(this._ce5419.ad.impressions[_loc1_].uri != "")
            {
               this._mn11470 = new URLLoader();
               this._mn11470.addEventListener(IOErrorEvent.IO_ERROR,this._pi3241,false,0,true);
               this._mn11470.load(new URLRequest(this._ce5419.ad.impressions[_loc1_].uri));
            }
            _loc1_++;
         }
      }
      
      private function _hi15977() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Array = this._ce5419.ad.creatives[0].videoClicks.clickThrough;
         var _loc3_:Array = this._ce5419.ad.creatives[0].videoClicks.clickTracking;
         _loc1_ = 0;
         while(_loc1_ < _loc2_.length)
         {
            if(_loc2_[_loc1_].id == "3rdparty" && _loc2_[_loc1_].uri != "")
            {
               this._mn11470 = new URLLoader();
               this._mn11470.addEventListener(IOErrorEvent.IO_ERROR,this._pi3241,false,0,true);
               this._mn11470.load(new URLRequest(_loc2_[_loc1_].uri));
            }
            else if(_loc2_[_loc1_].uri != "")
            {
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < _loc3_.length)
         {
            if(_loc3_[_loc1_].uri != "")
            {
               this._mn11470 = new URLLoader();
               this._mn11470.addEventListener(IOErrorEvent.IO_ERROR,this._pi3241,false,0,true);
               this._mn11470.load(new URLRequest(_loc3_[_loc1_].uri));
            }
            _loc1_++;
         }
      }
      
      override public function destroy() : void
      {
         if(this._mn11470)
         {
            this._mn11470.removeEventListener(IOErrorEvent.IO_ERROR,this._pi3241);
         }
         if(this._ck3635)
         {
            this._ck3635.removeEventListener(BannersEvents._jf1542,this._yo6793);
            this._ck3635.destroy();
         }
         super.destroy();
      }
      
      private function _ek14606() : void
      {
         this._fs11949("complete");
         this._ck3635.destroy();
         this._ck3635 = null;
         dispatchEvent(new Event(_fw13664));
      }
      
      private function _pu4272(param1:String) : Boolean
      {
         if(param1.indexOf(".gif") > 0)
         {
            return true;
         }
         if(param1.indexOf(".jpg") > 0)
         {
            return true;
         }
         if(param1.indexOf(".png") > 0)
         {
            return true;
         }
         return false;
      }
      
      public function update() : void
      {
         if(!this._ry9750 && !this._ne15286)
         {
            return;
         }
         var _loc1_:int = int(getTimer());
         if(Boolean(this._ry9750) && this._bc11946 > 5000)
         {
            this.destroy();
            this._ry9750 = false;
            dispatchEvent(new Event(_fw13664));
         }
         else if(this._ne15286)
         {
            if(!this._ck3635._hc11714)
            {
               this._ck3635._yg556(this._bc11946);
            }
            if(this._ck3635 is BannersController)
            {
               if(this._bc11946 > 20000)
               {
                  this._ek14606();
               }
            }
            if(this._ck3635 is BannersController)
            {
               (this._ck3635 as BannersController)._wg4647(this._ce5419.ad.creatives[0].duration);
               if(this._bc11946 > 8000 + this._ce5419.ad.creatives[0].duration)
               {
                  this._ek14606();
                  return;
               }
               if((this._ck3635 as BannersController)._cn5923 > this._ce5419.ad.creatives[0].duration / 4)
               {
                  this._fs11949("firstQuartile");
               }
               if((this._ck3635 as BannersController)._cn5923 > this._ce5419.ad.creatives[0].duration / 2)
               {
                  this._fs11949("midpoint");
               }
               if((this._ck3635 as BannersController)._cn5923 > this._ce5419.ad.creatives[0].duration / 4 * 3)
               {
                  this._fs11949("thirdQuartile");
               }
            }
         }
      }
      
      private function get _bc11946() : int
      {
         var _loc1_:int = int(getTimer());
         return _loc1_ - this._sn6055;
      }
   }
}

