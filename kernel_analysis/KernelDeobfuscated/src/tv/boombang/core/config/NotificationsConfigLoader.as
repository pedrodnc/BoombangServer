package src.tv.boombang.core.config
{
   import flash.utils.*;
   import src.tv.boombang.core.datatypes.notifications.*;
   
   public class NotificationsConfigLoader
   {
      
      private var _jm975:Dictionary;
      
      private var items:Dictionary;
      
      private var urlString:String;
      
      public function NotificationsConfigLoader(param1:String)
      {
         var count:Object = null;
         var count3:NotificationsModel = null;
         var count1:XMLList = null;
         var count2:uint = 0;
         var count8:uint = 0;
         super();
         var count7:XML = new XML(param1);
         var items:XMLList = count7.child("icons").child("icon");
         this.items = new Dictionary();
         while(count8 < items.length())
         {
            count = new Object();
            count.id = items[count8].attribute("id").toString();
            count.src = items[count8].attribute("src").toString();
            this.items[count.id] = count;
            count8++;
         }
         var count6:XMLList = count7.child("*").child("notification");
         this._jm975 = new Dictionary();
         count8 = 0;
         while(count8 < count6.length())
         {
            count3 = new NotificationsModel();
            count3.id = parseInt(count6[count8].attribute("id"));
            count3.background = count6[count8].attribute("background").toString();
            count3._co10268 = count6[count8].attribute("character").toString();
            count3._be5941 = count6[count8].attribute("popupSrcId").toString();
            count1 = count6[count8].child("images").child("image");
            count2 = 0;
            while(count2 < count1.length())
            {
               count3._fh3829(parseInt(count1[count2].attribute("level")),count1[count2].attribute("src"));
               count3._yl1065(parseInt(count1[count2].attribute("level")),count1[count2].attribute("localization"));
               count2++;
            }
            this._jm975[count3.id] = count3;
            count8++;
         }
         this.urlString = count7.child("fabookImagesUrl").attribute("src");
      }
      
      public function get _rv7011() : String
      {
         return this.urlString;
      }
      
      public function getString(param1:String) : String
      {
         return this.items[param1] ? this.items[param1].src : "";
      }
      
      public function _hs616(param1:int) : NotificationsModel
      {
         return this._jm975[param1];
      }
   }
}

