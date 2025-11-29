package src.modules.multiplayerGames.fichas
{
   import src.utils.fichas.FichasUtils;
   
   public class FichasUtils extends FichasUtils
   {
      
      public var items:Array;
      
      public var items1:Array;
      
      public var count:int;
      
      public var count1:int;
      
      public function FichasUtils(param1:String, param2:Array, param3:Array, param4:Array, param5:int = 0, param6:int = 0)
      {
         super(param1,param2);
         this.items = param3;
         this.items1 = param4;
         this.count = param5;
         this.count1 = param6;
      }
   }
}

