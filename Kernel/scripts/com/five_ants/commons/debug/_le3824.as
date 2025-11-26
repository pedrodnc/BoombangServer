package com.five_ants.commons.debug
{
   import com.five_ants.commons.debug.logging._vw7000;
   import com.five_ants.commons.utils.*;
   import flash.external.*;
   import flash.system.*;
   
   public class _le3824
   {
      
      public static const _so12685:String = "FADebugger";
      
      private static var _ps2411:int = -1;
      
      public function _le3824()
      {
         super();
      }
      
      public static function _at11141(param1:String, param2:_vw7000) : void
      {
         if(available)
         {
            ExternalInterface.call("FALogging.log",param1,param2._hb1544);
         }
      }
      
      public static function _gm1009(param1:String, param2:Number) : void
      {
         if(available)
         {
            ExternalInterface.call("FAVariableTracking.pushValue",param1,param2);
         }
      }
      
      public static function _on308(param1:Number, param2:Number) : void
      {
         if(available)
         {
            ExternalInterface.call("FAPerformance.setFrameStats",param1,param2);
         }
      }
      
      public static function _ev7315(param1:String, param2:Number) : void
      {
         if(available)
         {
            ExternalInterface.call("FAPerformance.addMeasurementFor",param1,param2);
         }
      }
      
      public static function _un7540(param1:Number) : void
      {
         if(available)
         {
            ExternalInterface.call("FACommunication.registerBytes",true,param1);
         }
      }
      
      public static function _ec14937(param1:Number) : void
      {
         if(available)
         {
            ExternalInterface.call("FACommunication.registerBytes",false,param1);
         }
      }
      
      public static function _lu1418(param1:Number, param2:Number, param3:Object, param4:Number) : void
      {
         if(available)
         {
            ExternalInterface.call("FACommunication.registerMessage",true,param1,param2,_fc9199(param3),param3,param4);
         }
      }
      
      public static function _xk13468(param1:Number, param2:Number, param3:Object, param4:Number) : void
      {
         if(available)
         {
            ExternalInterface.call("FACommunication.registerMessage",false,param1,param2,_fc9199(param3),param3,param4);
         }
      }
      
      private static function get available() : Boolean
      {
         var _loc3_:Boolean = false;
         if(_ps2411 >= 0)
         {
            return _ps2411 == 1 ? true : false;
         }
         var _loc4_:Boolean = Capabilities.playerType == "ActiveX" || Capabilities.playerType == "PlugIn";
         _loc3_ = false;
         _ps2411 = _loc3_ ? 1 : 0;
         return _loc3_;
      }
   }
}

