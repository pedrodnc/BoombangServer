package src.modules.banners.vast.data
{
   import flash.external.*;
   
   public class VastParser
   {
      
      public var ad:DataModel;
      
      public function VastParser()
      {
         super();
      }
      
      public function parse(param1:XML, param2:XML = null) : void
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         this.ad = new DataModel();
         this.ad.creatives = [];
         if(param2)
         {
            for each(_loc4_ in param2.DataModel.Wrapper.Creatives.Creative.Linear.TrackingEvents.Tracking)
            {
               for each(_loc3_ in param1.DataModel.InLine.Creatives.Creative)
               {
                  _loc3_.Linear.TrackingEvents.appendChild(_loc4_);
               }
            }
            for each(_loc4_ in param2.DataModel.Wrapper.Creatives.Creative.Linear.VideoClicks.ClickTracking)
            {
               for each(_loc3_ in param1.DataModel.InLine.Creatives.Creative)
               {
                  _loc3_.Linear.VideoClicks.appendChild(_loc4_);
               }
            }
         }
         for each(_loc3_ in param1.DataModel.InLine.Creatives.Creative)
         {
            this.ad.creatives.push(this.parseCreative(_loc3_));
         }
         this.ad.impressions = [];
         for each(_loc3_ in param1.DataModel.InLine.Impression)
         {
            this.ad.impressions.push(this.parseURIIdentifier(_loc3_));
         }
         if(param2)
         {
            for each(_loc3_ in param2.DataModel.Wrapper.Impression)
            {
               this.ad.impressions.push(this.parseURIIdentifier(_loc3_));
            }
         }
      }
      
      private function parseCreative(param1:XML) : Linear
      {
         if(param1.Linear.length() > 0)
         {
            var _loc2_:Linear = this.parseLinear(param1.Linear[0]);
         }
         return null;
      }
      
      private function parseLinear(param1:XML) : Linear
      {
         var _loc2_:XML = null;
         var _loc3_:Linear = new Linear();
         var _loc4_:String = param1.Duration;
         var _loc5_:Array = _loc4_.split(":");
         var _loc6_:int = (uint(_loc5_[1]) * 60 + uint(_loc5_[2])) * 1000;
         _loc3_.duration = _loc6_;
         _loc3_.trackingEvents = [];
         for each(_loc2_ in param1.TrackingEvents.Tracking)
         {
            _loc3_.trackingEvents.push(this.parseTrackingEvent(_loc2_));
         }
         if(param1.AdParameters.length() > 0)
         {
            _loc3_.adParameters = String(param1.AdParameters[0]);
         }
         if(param1.VideoClicks.length() > 0)
         {
            _loc3_.videoClicks = this.parseVideoClicks(param1.VideoClicks[0]);
         }
         _loc3_.mediaFiles = [];
         for each(_loc2_ in param1.MediaFiles.MediaFile)
         {
            _loc3_.mediaFiles.push(this.parseMediaFile(_loc2_));
         }
         return _loc3_;
      }
      
      private function parseTrackingEvent(param1:XML) : TrackingEvent
      {
         var _loc2_:TrackingEvent = new TrackingEvent();
         _loc2_.event = String(param1["event"]);
         _loc2_.uri = String(param1);
         return _loc2_;
      }
      
      private function parseMediaFile(param1:XML) : MediaFile
      {
         var _loc2_:MediaFile = new MediaFile();
         _loc2_.id = String(param1["id"]);
         ExternalInterface.call("console.log",_loc2_.id);
         _loc2_.delivery = String(param1["delivery"]);
         ExternalInterface.call("console.log",_loc2_.delivery);
         _loc2_.type = String(param1["type"]);
         ExternalInterface.call("console.log",_loc2_.type);
         if(param1["bitrate"] != undefined)
         {
            _loc2_.bitrate = int(param1["bitrate"]);
         }
         ExternalInterface.call("console.log",_loc2_.bitrate);
         _loc2_.width = int(param1["width"]);
         ExternalInterface.call("console.log",_loc2_.width);
         _loc2_.height = int(param1["height"]);
         ExternalInterface.call("console.log",_loc2_.height);
         if(param1["scaleable"] != undefined)
         {
            _loc2_.scalable = String(param1["scalable"]).toLowerCase() == "true";
         }
         ExternalInterface.call("console.log",_loc2_.scalable);
         if(param1["maintainAspectRatio"] != undefined)
         {
            _loc2_.maintainAspectRatio = String(param1["maintainAspectRatio"]).toLowerCase() == "true";
         }
         ExternalInterface.call("console.log",_loc2_.maintainAspectRatio);
         if(param1["apiFramework"] != undefined)
         {
            _loc2_.apiFramework = String(param1["apiFramework"]);
         }
         ExternalInterface.call("console.log",_loc2_.apiFramework);
         _loc2_.uri = param1.valueOf();
         ExternalInterface.call("console.log",_loc2_.uri);
         return _loc2_;
      }
      
      private function parseVideoClicks(param1:XML) : VideoClicks
      {
         var _loc2_:XML = null;
         var _loc3_:VideoClicks = new VideoClicks();
         _loc3_.clickThrough = [];
         for each(_loc2_ in param1.ClickThrough)
         {
            _loc3_.clickThrough.push(this.parseURIIdentifier(_loc2_));
         }
         _loc3_.clickTracking = [];
         for each(_loc2_ in param1.ClickTracking)
         {
            _loc3_.clickTracking.push(this.parseURIIdentifier(_loc2_));
         }
         if(param1.CustomClick.length() > 0)
         {
            _loc3_.customClicks = [];
            for each(_loc2_ in param1.CustomClick)
            {
               _loc3_.customClicks.push(this.parseURIIdentifier(_loc2_));
            }
         }
         return _loc3_;
      }
      
      private function parseURIIdentifier(param1:XML) : URIIdentifier
      {
         var _loc2_:URIIdentifier = new URIIdentifier();
         if(param1["id"] != undefined)
         {
            _loc2_.id = String(param1["id"]);
         }
         _loc2_.uri = String(param1);
         return _loc2_;
      }
   }
}

