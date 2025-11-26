package src.tv.boombang.core.config
{
   import flash.utils.*;
   import src.tv.boombang.core.datatypes.notifications.*;
   
   public class NotificationsConfigLoader
   {
      
      private var _jm975:Dictionary;
      
      private var _fo15723:Dictionary;
      
      private var _dv1504:String;
      
      public function NotificationsConfigLoader(param1:String)
      {
         var _loc2_:Object = null;
         var _loc3_:NotificationsModel = null;
         var _loc4_:XMLList = null;
         var _loc5_:uint = 0;
         var _loc8_:uint = 0;
         super();
         var _loc6_:XML = new XML(param1);
         var _loc7_:XMLList = _loc6_.child("icons").child("icon");
         this._fo15723 = new Dictionary();
         while(_loc8_ < _loc7_.length())
         {
            _loc2_ = new Object();
            _loc2_.id = _loc7_[_loc8_].attribute("id").toString();
            _loc2_.src = _loc7_[_loc8_].attribute("src").toString();
            this._fo15723[_loc2_.id] = _loc2_;
            _loc8_++;
         }
         var _loc9_:XMLList = _loc6_.child("*").child("notification");
         this._jm975 = new Dictionary();
         _loc8_ = 0;
         while(_loc8_ < _loc9_.length())
         {
            _loc3_ = new NotificationsModel();
            _loc3_.id = parseInt(_loc9_[_loc8_].attribute("id"));
            _loc3_.background = _loc9_[_loc8_].attribute("background").toString();
            _loc3_._co10268 = _loc9_[_loc8_].attribute("character").toString();
            _loc3_._be5941 = _loc9_[_loc8_].attribute("popupSrcId").toString();
            _loc4_ = _loc9_[_loc8_].child("images").child("image");
            _loc5_ = 0;
            while(_loc5_ < _loc4_.length())
            {
               _loc3_._fh3829(parseInt(_loc4_[_loc5_].attribute("level")),_loc4_[_loc5_].attribute("src"));
               _loc3_._yl1065(parseInt(_loc4_[_loc5_].attribute("level")),_loc4_[_loc5_].attribute("localization"));
               _loc5_++;
            }
            this._jm975[_loc3_.id] = _loc3_;
            _loc8_++;
         }
         this._dv1504 = _loc6_.child("fabookImagesUrl").attribute("src");
      }
      
      public function get _rv7011() : String
      {
         return this._dv1504;
      }
      
      public function _qb15298(param1:String) : String
      {
         return this._fo15723[param1] ? this._fo15723[param1].src : "";
      }
      
      public function _hs616(param1:int) : NotificationsModel
      {
         return this._jm975[param1];
      }
   }
}

