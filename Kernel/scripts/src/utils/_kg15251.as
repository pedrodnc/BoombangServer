package src.utils
{
   import flash.events.*;
   import flash.net.*;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class _kg15251
   {
      
      private static var _km5109:Array;
      
      public static const _at13592:int = 1;
      
      public static const _tk309:int = 2;
      
      public static const _hl13182:int = 3;
      
      public function _kg15251()
      {
         super();
      }
      
      public static function _dd8786(param1:String, param2:ByteArray, param3:Function = null, param4:Function = null) : void
      {
         var _loc5_:URLRequest = new URLRequest(param1);
         _loc5_.contentType = "application/octet-stream";
         _loc5_.method = URLRequestMethod.POST;
         _loc5_.data = param2;
         if(param3 == null && param4 == null)
         {
            sendToURL(_loc5_);
         }
         else
         {
            _ju14283(_loc5_,param3,param4);
         }
      }
      
      public static function _uq5146(param1:String, param2:Function) : void
      {
         _ju14283(new URLRequest(param1),param2,null);
      }
      
      public static function _ju14283(param1:URLRequest, param2:Function, param3:Function = null) : void
      {
         var _kf14095:URLLoader = null;
         var urlRequest:URLRequest = param1;
         var _vw8300:Function = param2;
         var progress:Function = param3;
         _kf14095 = new URLLoader();
         _fm7459(_kf14095,_vw8300,progress);
         try
         {
            _kf14095.load(urlRequest);
         }
         catch(e:Error)
         {
            _bl3320(_kf14095,null);
         }
      }
      
      private static function _fm7459(param1:URLLoader, param2:Function, param3:Function) : void
      {
         var _loc4_:Object = new Object();
         param1.addEventListener(Event.COMPLETE,_fd8862);
         param1.addEventListener(IOErrorEvent.IO_ERROR,_gp9795);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,_gp9795);
         if(param3 != null)
         {
            param1.addEventListener(ProgressEvent.PROGRESS,param3);
         }
         if(_km5109 == null)
         {
            _km5109 = new Array();
         }
         _loc4_._kf14095 = param1;
         _loc4_._vw8300 = param2;
         _loc4_.progress = param3;
         _km5109.push(_loc4_);
      }
      
      private static function _bl3320(param1:URLLoader, param2:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Function = null;
         param1.removeEventListener(Event.COMPLETE,_fd8862);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,_gp9795);
         param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,_gp9795);
         for each(_loc3_ in _km5109)
         {
            if(param1 == _loc3_._kf14095)
            {
               break;
            }
         }
         _loc4_ = _loc3_.progress;
         if(_loc4_ != null && param1.hasEventListener(ProgressEvent.PROGRESS))
         {
            param1.removeEventListener(ProgressEvent.PROGRESS,_loc4_);
         }
         _km5109.splice(_km5109.indexOf(_loc3_),1);
         var _loc5_:Function = _loc3_._vw8300;
         if(_loc5_ != null)
         {
            _loc5_(param2);
         }
      }
      
      private static function _gp9795(param1:Event) : void
      {
         _bl3320(URLLoader(param1.target),null);
      }
      
      private static function _fd8862(param1:Event) : void
      {
         var _loc2_:String = String(param1.target.data);
         var _loc3_:URLLoader = URLLoader(param1.target);
         _bl3320(_loc3_,_loc2_);
      }
      
      public static function openPopup(param1:String, param2:String = null, param3:Dictionary = null) : void
      {
         var _loc4_:URLVariables = null;
         var _loc5_:String = null;
         var _loc6_:URLRequest = new URLRequest(param1);
         if(param2 != null && param3 != null)
         {
            _loc4_ = new URLVariables();
            for(_loc5_ in param3)
            {
               _loc4_[_loc5_] = param3[_loc5_];
            }
            _loc6_.data = _loc4_;
            _loc6_.method = param2;
         }
         try
         {
            navigateToURL(_loc6_,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      public static function _mr14436(param1:String, param2:String = null, param3:Dictionary = null) : void
      {
         var _loc4_:URLVariables = null;
         var _loc5_:String = null;
         if(param1 == null)
         {
            return;
         }
         var _loc6_:URLRequest = new URLRequest(param1);
         if(param2 != null && param3 != null)
         {
            _loc4_ = new URLVariables();
            for(_loc5_ in param3)
            {
               _loc4_[_loc5_] = param3[_loc5_];
            }
            _loc6_.data = _loc4_;
            _loc6_.method = param2;
         }
         try
         {
            sendToURL(_loc6_);
         }
         catch(e:Error)
         {
         }
      }
   }
}

