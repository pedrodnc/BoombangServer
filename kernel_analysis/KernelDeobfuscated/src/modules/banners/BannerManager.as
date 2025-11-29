package src.modules.banners
{
   import flash.events.*;
   import flash.net.*;
   import flash.utils.*;
   import src.modules.banners.vast.data.*;
   import src.tv.boombang.commons.*;
   
   public class BannerManager extends EventDispatcher
   {
      
      public static const urlString:String = "bannerDataReady";
      
      public static var count:int = 0;
      
      private var count1:int;
      
      private var _ce5419:VastParser;
      
      private var isEnabled:Boolean = false;
      
      private var isEnabled1:Boolean = false;
      
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
         var count2:* = false;
         if(count > 10)
         {
            count2 = count % 5 == 0;
         }
         else
         {
            count2 = count % 2 == 0;
         }
         ++count;
         return count2;
      }
      
      public function show() : void
      {
         this._bo4798 = null;
         var count2:int = Math.round(Math.random() * 1000000);
         _url = irrcrpt("https://www.boombang.nl/ads/client/show0.asp.xml?" + Math.round(Math.random() * 1000000),0);
         count = EventDispatcher.urlString;
         this.count1 = getTimer();
         this.isEnabled = true;
         this.isEnabled1 = false;
         load();
         this._fa11369 = new Dictionary();
         this._fa11369["firstQuartile"] = true;
         this._fa11369["midpoint"] = true;
         this._fa11369["thirdQuartile"] = true;
         this._fa11369["start"] = true;
         this._fa11369["complete"] = true;
      }
      
      override protected function decrypt(param1:Event = null) : void
      {
         this.destroy();
         var count3:XML = new XML(getData());
         if(count3.DataModel.Wrapper.length() > 0)
         {
            this._bo4798 = count3;
            var count:String = String(count3.DataModel.Wrapper.VASTAdTagURI);
            _url = null;
            count = EventDispatcher.urlString;
            load();
         }
         else
         {
            this.isEnabled = false;
            this.parseXML(count3);
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
            dispatchEvent(new Event(urlString));
            return;
         }
         if(this._ce5419.ad.creatives.length > 0)
         {
            this._ru5753();
         }
         else
         {
            dispatchEvent(new Event(urlString));
         }
      }
      
      public function _ru5753() : void
      {
         var count2:MediaFile = null;
         var count:int = 0;
         while(count < this._ce5419.ad.creatives[0].mediaFiles.length)
         {
            count2 = this._ce5419.ad.creatives[0].mediaFiles[count];
            if(Boolean(count2) && (count2.uri.indexOf(".flv") > 0 || count2.uri.indexOf(".mp4") > 0))
            {
               this._ck3635 = new BannersController(count2,this.destroy);
               this.addListeners();
               return;
            }
            if(Boolean(count2) && Boolean(this._pu4272(count2.uri)))
            {
               this._ck3635 = new BannersController(count2,this.destroy);
               this.addListeners();
               return;
            }
            count++;
         }
         dispatchEvent(new Event(urlString));
      }
      
      private function addListeners() : void
      {
         this.loadResource();
         this.isEnabled1 = true;
         this.count1 = getTimer() + 1000;
         this._ck3635.addEventListener(BannersEvents.textString,this.start);
      }
      
      private function _pi3241(param1:IOErrorEvent) : void
      {
      }
      
      private function start(param1:BannersEvents) : void
      {
         switch(param1._tc14632)
         {
            case BannersController.textString1:
               this.onClick();
               return;
            case BannersController.textString:
               this.destroy();
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
         var count:int = 0;
         if(!this._fa11369[param1])
         {
            return;
         }
         while(count < this._ce5419.ad.creatives[0].trackingEvents.length)
         {
            if(this._ce5419.ad.creatives[0].trackingEvents[count].event == param1 && this._ce5419.ad.creatives[0].trackingEvents[count].uri != "")
            {
               this._fa11369[param1] = false;
               this._mn11470 = new URLLoader();
               this._mn11470.addEventListener(IOErrorEvent.IO_ERROR,this._pi3241,false,0,true);
               this._mn11470.load(new URLRequest(this._ce5419.ad.creatives[0].trackingEvents[count].uri));
            }
            count++;
         }
      }
      
      private function loadResource() : void
      {
         var count2:int = 0;
         while(count2 < this._ce5419.ad.impressions.length)
         {
            if(this._ce5419.ad.impressions[count2].uri != "")
            {
               this._mn11470 = new URLLoader();
               this._mn11470.addEventListener(IOErrorEvent.IO_ERROR,this._pi3241,false,0,true);
               this._mn11470.load(new URLRequest(this._ce5419.ad.impressions[count2].uri));
            }
            count2++;
         }
      }
      
      private function onClick() : void
      {
         var count2:int = 0;
         var count:Array = this._ce5419.ad.creatives[0].videoClicks.clickThrough;
         var count3:Array = this._ce5419.ad.creatives[0].videoClicks.clickTracking;
         count2 = 0;
         while(count2 < count.length)
         {
            if(count[count2].id == "3rdparty" && count[count2].uri != "")
            {
               this._mn11470 = new URLLoader();
               this._mn11470.addEventListener(IOErrorEvent.IO_ERROR,this._pi3241,false,0,true);
               this._mn11470.load(new URLRequest(count[count2].uri));
            }
            else if(count[count2].uri != "")
            {
            }
            count2++;
         }
         count2 = 0;
         while(count2 < count3.length)
         {
            if(count3[count2].uri != "")
            {
               this._mn11470 = new URLLoader();
               this._mn11470.addEventListener(IOErrorEvent.IO_ERROR,this._pi3241,false,0,true);
               this._mn11470.load(new URLRequest(count3[count2].uri));
            }
            count2++;
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
            this._ck3635.removeEventListener(BannersEvents.textString,this.start);
            this._ck3635.destroy();
         }
         super.destroy();
      }
      
      private function destroy() : void
      {
         this._fs11949("complete");
         this._ck3635.destroy();
         this._ck3635 = null;
         dispatchEvent(new Event(urlString));
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
         if(!this.isEnabled && !this.isEnabled1)
         {
            return;
         }
         var count2:int = int(getTimer());
         if(Boolean(this.isEnabled) && this._bc11946 > 5000)
         {
            this.destroy();
            this.isEnabled = false;
            dispatchEvent(new Event(urlString));
         }
         else if(this.isEnabled1)
         {
            if(!this._ck3635._hc11714)
            {
               this._ck3635._yg556(this._bc11946);
            }
            if(this._ck3635 is BannersController)
            {
               if(this._bc11946 > 20000)
               {
                  this.destroy();
               }
            }
            if(this._ck3635 is BannersController)
            {
               (this._ck3635 as BannersController)._wg4647(this._ce5419.ad.creatives[0].duration);
               if(this._bc11946 > 8000 + this._ce5419.ad.creatives[0].duration)
               {
                  this.destroy();
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
         var count2:int = int(getTimer());
         return count2 - this.count1;
      }
   }
}

