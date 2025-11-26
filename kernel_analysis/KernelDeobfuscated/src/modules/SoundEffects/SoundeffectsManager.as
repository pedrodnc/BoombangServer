package src.modules.SoundEffects
{
   import flash.display.*;
   import flash.media.*;
   import src.loaders.LoadersManager;
   
   public class SoundeffectsManager extends MovieClip
   {
      
      private static var isEnabled:Boolean;
      
      private static var items:Array;
      
      private static const textString:String = "sounds";
      
      private static const textString:String = "getMovieClip";
      
      private static const textString2:String = "Music";
      
      private static const textString3:String = "name";
      
      private static const textString4:String = "repeatTimes";
      
      private static const textString5:String = "volume";
      
      private static const textString6:String = "panning";
      
      private static const textString7:String = "azarTime";
      
      private static const textString8:String = "offsetTime";
      
      private static const textString9:String = "automaticPlay";
      
      public function SoundeffectsManager()
      {
         super();
         isEnabled = false;
      }
      
      public static function _ea6943(param1:String) : void
      {
         var count:SoundEffect = null;
         for each(count in items)
         {
            if(count.name == param1)
            {
               if(isEnabled)
               {
                  count.isEnabled();
               }
               count._vj7763();
               break;
            }
         }
      }
      
      public static function stop(param1:String) : void
      {
         var count:SoundEffect = null;
         for each(count in items)
         {
            if(count.name == param1)
            {
               count.stopSound();
               break;
            }
         }
      }
      
      public static function stop1() : void
      {
         var count2:SoundEffect = null;
         for each(count2 in items)
         {
            count2.stopSound();
         }
      }
      
      public static function _yn13469() : void
      {
         var count2:SoundEffect = null;
         stop1();
         for each(count2 in items)
         {
            if(isEnabled)
            {
               count2.isEnabled();
            }
            if(count2._gg8683)
            {
               count2._vj7763();
            }
         }
      }
      
      public static function _wp3955() : void
      {
         stop1();
         items = null;
         items = new Array();
      }
      
      public static function addSound(param1:Sound, param2:String, param3:int = 0, param4:Number = 1, param5:Number = 0, param6:Boolean = false, param7:int = 0) : void
      {
         var count8:SoundEffect = null;
         var count6:int = 0;
         if(param1 == null)
         {
            return;
         }
         while(count6 < items.length)
         {
            count8 = items[count6];
            if(count8.name == param2)
            {
               return;
            }
            count6++;
         }
         var count:SoundEffect = new SoundEffect(param2,param3,param4,param5,param6,param7);
         count._ck8211(param1);
         items.push(count);
      }
      
      public static function removeSound(param1:String) : void
      {
         var count:SoundEffect = null;
         var count3:int = 0;
         while(count3 < items.length)
         {
            count = items[count3] as SoundEffect;
            if(count.name == param1)
            {
               count.stopSound();
               items.slice(count3,1);
            }
            count3++;
         }
      }
      
      public static function isEnabled() : void
      {
         var count2:SoundEffect = null;
         isEnabled = !isEnabled;
         for each(count2 in items)
         {
            count2.isEnabled();
         }
      }
      
      public static function get _vc6855() : Boolean
      {
         return isEnabled;
      }
      
      public static function _mq8951(param1:XML, param2:LoadersManager) : void
      {
         var count3:String = null;
         var count1:int = 0;
         var count2:Number = NaN;
         var count7:Number = NaN;
         var items:Boolean = false;
         var count8:int = 0;
         var count6:Boolean = false;
         var count10:int = 0;
         _wp3955();
         if(param1.child(textString).length() <= 0)
         {
            return;
         }
         var count:XMLList = param1[textString].children();
         while(count10 < count.length())
         {
            count3 = XMLList(count[count10]).attribute(textString3);
            count1 = int(XMLList(count[count10]).attribute(textString4));
            count2 = Number(XMLList(count[count10]).attribute(textString5));
            count7 = Number(XMLList(count[count10]).attribute(textString6));
            items = Boolean(int(XMLList(count[count10]).attribute(textString6)));
            count8 = int(XMLList(count[count10]).attribute(textString8));
            count6 = Boolean(int(XMLList(count[count10]).attribute(textString9)));
            items.push(new SoundEffect(count3,count1,count2,count7,items,count8,count6));
            param2.addElement(count3);
            count10++;
         }
         param2.start();
      }
      
      public static function _kn13713(param1:LoadersManager) : void
      {
         var count:SoundEffect = null;
         var count3:MovieClip = null;
         for each(count in items)
         {
            count3 = MovieClip(param1._xb9567(count.name));
            count._ck8211(count3[textString](textString2) as Sound);
         }
      }
   }
}

