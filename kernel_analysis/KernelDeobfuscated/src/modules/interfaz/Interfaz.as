package src.modules.interfaz
{
   import src.logs.*;
   import src.modules.interfaz.baseChat.*;
   import src.person.*;
   
   public class Interfaz
   {
      
      public function Interfaz()
      {
         super();
      }
      
      public static function _fc7829(param1:int, param2:PersonBase, param3:String = "") : Boolean
      {
         var count2:uint = 0;
         var count1:int = int(param2.items.length);
         while(count2 < count1)
         {
            if(param2.items[count2] != null)
            {
               if((param2.items[count2] as PersonController)._md8722.id == param1)
               {
                  return true;
               }
            }
            count2++;
         }
         Logger.getInstance()._kp3815(new Logs(Logger.count,param3,"idPerson invalid=" + param1));
         return false;
      }
      
      public static function _le11313(param1:int, param2:PersonBase) : Boolean
      {
         if(param1 < 0 || param1 >= param2.items.length)
         {
            return false;
         }
         if(param2.items[param1] == null)
         {
            return false;
         }
         return true;
      }
      
      public static function _vh3357(param1:int, param2:PersonBase) : PersonController
      {
         var count1:uint = 0;
         var count3:int = int(param2.items.length);
         while(count1 < count3)
         {
            if(param2.items[count1] != null)
            {
               if((param2.items[count1] as PersonController)._md8722.id == param1)
               {
                  return param2.items[count1] as PersonController;
               }
            }
            count1++;
         }
         return null;
      }
      
      public static function _pb10174(param1:Array, param2:uint, param3:String = "") : Boolean
      {
         if(param1.length < param2)
         {
            Logger.getInstance()._kp3815(new Logs(Logger.count2,param3,param1.toString()));
            return false;
         }
         return true;
      }
      
      public static function _vg1358() : void
      {
      }
      
      public static function _gq12169(param1:int, param2:String) : Boolean
      {
         if(param1 == Basechat.count || param1 == Basechat.count1 || param1 == Basechat.count2 || param1 == Basechat.count3 || param1 == 40 || param1 == 41 || param1 == Basechat.count4 || param1 == Basechat.count5 || param1 == Basechat.count6 || param1 == Basechat.count7 || param1 == Basechat.count8 || param1 == Basechat.count9 || param1 == Basechat.count10 || param1 == Basechat.count32 || param1 == Basechat.count33)
         {
            return true;
         }
         Logger.getInstance()._kp3815(new Logs(Logger.count,param2,"typeChat invalid=" + param1));
         return false;
      }
   }
}

