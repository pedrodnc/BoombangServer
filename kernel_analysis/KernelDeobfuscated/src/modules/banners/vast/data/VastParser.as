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
         var count3:XML = null;
         var count1:XML = null;
         this.ad = new DataModel();
         this.ad.creatives = [];
         if(param2)
         {
            for each(count1 in param2.DataModel.Wrapper.Creatives.Creative.Linear.TrackingEvents.Tracking)
            {
               for each(count3 in param1.DataModel.InLine.Creatives.Creative)
               {
                  count3.Linear.TrackingEvents.appendChild(count1);
               }
            }
            for each(count1 in param2.DataModel.Wrapper.Creatives.Creative.Linear.VideoClicks.ClickTracking)
            {
               for each(count3 in param1.DataModel.InLine.Creatives.Creative)
               {
                  count3.Linear.VideoClicks.appendChild(count1);
               }
            }
         }
         for each(count3 in param1.DataModel.InLine.Creatives.Creative)
         {
            this.ad.creatives.push(this.parseCreative(count3));
         }
         this.ad.impressions = [];
         for each(count3 in param1.DataModel.InLine.Impression)
         {
            this.ad.impressions.push(this.parseURIIdentifier(count3));
         }
         if(param2)
         {
            for each(count3 in param2.DataModel.Wrapper.Impression)
            {
               this.ad.impressions.push(this.parseURIIdentifier(count3));
            }
         }
      }
      
      private function parseCreative(param1:XML) : Linear
      {
         if(param1.Linear.length() > 0)
         {
            var count:Linear = this.parseLinear(param1.Linear[0]);
         }
         return null;
      }
      
      private function parseLinear(param1:XML) : Linear
      {
         var count:XML = null;
         var count3:Linear = new Linear();
         var count1:String = param1.Duration;
         var count2:Array = count1.split(":");
         var count7:int = (uint(count2[1]) * 60 + uint(count2[2])) * 1000;
         count3.duration = count7;
         count3.trackingEvents = [];
         for each(count in param1.TrackingEvents.Tracking)
         {
            count3.trackingEvents.push(this.parseTrackingEvent(count));
         }
         if(param1.AdParameters.length() > 0)
         {
            count3.adParameters = String(param1.AdParameters[0]);
         }
         if(param1.VideoClicks.length() > 0)
         {
            count3.videoClicks = this.parseVideoClicks(param1.VideoClicks[0]);
         }
         count3.mediaFiles = [];
         for each(count in param1.MediaFiles.MediaFile)
         {
            count3.mediaFiles.push(this.parseMediaFile(count));
         }
         return count3;
      }
      
      private function parseTrackingEvent(param1:XML) : TrackingEvent
      {
         var count:TrackingEvent = new TrackingEvent();
         count.event = String(param1["event"]);
         count.uri = String(param1);
         return count;
      }
      
      private function parseMediaFile(param1:XML) : MediaFile
      {
         var count:MediaFile = new MediaFile();
         count.id = String(param1["id"]);
         ExternalInterface.call("console.log",count.id);
         count.delivery = String(param1["delivery"]);
         ExternalInterface.call("console.log",count.delivery);
         count.type = String(param1["type"]);
         ExternalInterface.call("console.log",count.type);
         if(param1["bitrate"] != undefined)
         {
            count.bitrate = int(param1["bitrate"]);
         }
         ExternalInterface.call("console.log",count.bitrate);
         count.width = int(param1["width"]);
         ExternalInterface.call("console.log",count.width);
         count.height = int(param1["height"]);
         ExternalInterface.call("console.log",count.height);
         if(param1["scaleable"] != undefined)
         {
            count.scalable = String(param1["scalable"]).toLowerCase() == "true";
         }
         ExternalInterface.call("console.log",count.scalable);
         if(param1["maintainAspectRatio"] != undefined)
         {
            count.maintainAspectRatio = String(param1["maintainAspectRatio"]).toLowerCase() == "true";
         }
         ExternalInterface.call("console.log",count.maintainAspectRatio);
         if(param1["apiFramework"] != undefined)
         {
            count.apiFramework = String(param1["apiFramework"]);
         }
         ExternalInterface.call("console.log",count.apiFramework);
         count.uri = param1.valueOf();
         ExternalInterface.call("console.log",count.uri);
         return count;
      }
      
      private function parseVideoClicks(param1:XML) : VideoClicks
      {
         var count:XML = null;
         var count3:VideoClicks = new VideoClicks();
         count3.clickThrough = [];
         for each(count in param1.ClickThrough)
         {
            count3.clickThrough.push(this.parseURIIdentifier(count));
         }
         count3.clickTracking = [];
         for each(count in param1.ClickTracking)
         {
            count3.clickTracking.push(this.parseURIIdentifier(count));
         }
         if(param1.CustomClick.length() > 0)
         {
            count3.customClicks = [];
            for each(count in param1.CustomClick)
            {
               count3.customClicks.push(this.parseURIIdentifier(count));
            }
         }
         return count3;
      }
      
      private function parseURIIdentifier(param1:XML) : URIIdentifier
      {
         var count:URIIdentifier = new URIIdentifier();
         if(param1["id"] != undefined)
         {
            count.id = String(param1["id"]);
         }
         count.uri = String(param1);
         return count;
      }
   }
}

