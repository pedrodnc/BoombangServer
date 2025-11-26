package src.utils
{
   import flash.events.*;
   import flash.media.*;
   import flash.net.*;
   import flash.system.*;
   
   public class _eq14922
   {
      
      private static const _ho8190:int = 5;
      
      private static var _jn5748:Array = new Array();
      
      public function _eq14922()
      {
         super();
      }
      
      public static function _iq4270(param1:Sound) : void
      {
         var _loc2_:SoundChannel = null;
         if(param1 != null)
         {
            if(_jn5748.length < _ho8190)
            {
               if(Boolean(Capabilities.hasAudio) && Boolean(Capabilities.hasMP3))
               {
                  try
                  {
                     _loc2_ = param1.play();
                     if(_loc2_ != null)
                     {
                        _loc2_.addEventListener(Event.SOUND_COMPLETE,_fp3020);
                        _jn5748.push(_loc2_);
                     }
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
         }
      }
      
      public static function _ue3014(param1:String) : void
      {
         var _loc2_:Sound = null;
         if(_jn5748.length < _ho8190)
         {
            if(Boolean(Capabilities.hasAudio) && Boolean(Capabilities.hasMP3))
            {
               _loc2_ = new Sound();
               _loc2_.addEventListener(Event.COMPLETE,_od2275);
               try
               {
                  _loc2_.load(new URLRequest(param1));
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      private static function _od2275(param1:Event) : void
      {
         var _loc2_:Sound = Sound(param1.target);
         _iq4270(_loc2_);
      }
      
      private static function _fp3020(param1:Event) : void
      {
         var _loc2_:SoundChannel = SoundChannel(param1.target);
         _jn5748.splice(_jn5748.indexOf(_loc2_),1);
      }
   }
}

