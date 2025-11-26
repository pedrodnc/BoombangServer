package src.utils
{
   import flash.events.*;
   import flash.media.*;
   import flash.net.*;
   import flash.system.*;
   
   public class Utils
   {
      
      private static const count:int = 5;
      
      private static var items:Array = new Array();
      
      public function Utils()
      {
         super();
      }
      
      public static function _iq4270(param1:Sound) : void
      {
         var count:SoundChannel = null;
         if(param1 != null)
         {
            if(items.length < count)
            {
               if(Boolean(Capabilities.hasAudio) && Boolean(Capabilities.hasMP3))
               {
                  try
                  {
                     count = param1.play();
                     if(count != null)
                     {
                        count.addEventListener(Event.SOUND_COMPLETE,_fp3020);
                        items.push(count);
                     }
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
         }
      }
      
      public static function loadResource(param1:String) : void
      {
         var count:Sound = null;
         if(items.length < count)
         {
            if(Boolean(Capabilities.hasAudio) && Boolean(Capabilities.hasMP3))
            {
               count = new Sound();
               count.addEventListener(Event.COMPLETE,_od2275);
               try
               {
                  count.load(new URLRequest(param1));
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      private static function _od2275(param1:Event) : void
      {
         var count:Sound = Sound(param1.target);
         _iq4270(count);
      }
      
      private static function _fp3020(param1:Event) : void
      {
         var count:SoundChannel = SoundChannel(param1.target);
         items.splice(items.indexOf(count),1);
      }
   }
}

