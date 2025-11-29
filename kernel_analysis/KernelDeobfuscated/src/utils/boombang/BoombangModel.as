package src.utils.boombang
{
   import flash.display.DisplayObject;
   import flash.system.*;
   import flash.utils.*;
   import src.config.*;
   import src.tv.boombang.core.datatypes.*;
   import src.utils.*;
   
   public class BoombangModel
   {
      
      public static const textString:String = "lang";
      
      public static const textString1:String = "target";
      
      public static const textString2:String = "VTR";
      
      public static const textString3:String = "flower_power";
      
      public static const textString4:String = "publicos";
      
      public static const textString5:String = "privados";
      
      public static const textString6:String = "hitsCheetos";
      
      public static const textString7:String = "bannerFP_PSU";
      
      public static const textString8:String = "impresionesCheetos";
      
      public function BoombangModel()
      {
         super();
      }
      
      public static function attack(param1:String, param2:String) : void
      {
         var count3:Dictionary = null;
         var count1:String = null;
         if(Configuration.urlString29 != null)
         {
            count3 = new Dictionary();
            switch(param1)
            {
               case textString2:
                  count1 = "VTR";
                  break;
               case textString3:
                  count1 = "flowerpower";
                  break;
               case textString6:
                  count1 = "hitsCheetos";
                  break;
               case textString8:
                  count1 = "impresionesCheetos";
                  break;
               case textString7:
                  count1 = "bannerFP_PSU";
                  break;
               case textString4:
                  count1 = UtilsUtils._uu6142(param2);
                  break;
               case textString5:
                  count1 = UtilsUtils._uu6142(param2);
            }
            count3[textString] = RuntimeParams._ns12055;
            count3[textString1] = count1;
         }
      }
      
      public static function _lx13412() : void
      {
         var count2:Dictionary = null;
         if(Configuration.urlString26 != null && Configuration.urlString26 != "")
         {
            count2 = new Dictionary();
            count2.o = "i";
            count2.rnd = String(int(Math.random() * int.MAX_VALUE));
         }
      }
      
      public static function getString(param1:DisplayObject = null) : String
      {
         var count:* = "OS: " + Capabilities.os + " Mem: " + Number(System.totalMemory / 1048576).toFixed(2) + " Mb";
         if(param1 != null && param1.stage != null)
         {
            count + " Resolution: " + param1.stage.stageWidth + "x" + param1.stage.stageHeight;
         }
         return count;
      }
      
      public static function _iu2197() : void
      {
         UtilsUtils.show("http://www.chilevision.cl/boombang/player.html?id=" + int(Math.random() * 5000),330,250);
      }
   }
}

