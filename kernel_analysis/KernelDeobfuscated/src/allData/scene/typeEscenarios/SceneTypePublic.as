package src.allData.scene.typeEscenarios
{
   import src.loaders.*;
   
   public class SceneTypePublic
   {
      
      public static const count:int = 0;
      
      public static const count1:int = 1;
      
      public static const count2:int = 2;
      
      public static const count3:int = 3;
      
      public static const count4:int = 4;
      
      public static const count5:int = 5;
      
      public function SceneTypePublic()
      {
         super();
      }
      
      public static function loadResource(param1:int) : String
      {
         switch(param1)
         {
            case count5:
            case count1:
               return AssetLoader.textString113;
            case count4:
            case count:
               return AssetLoader.textString115;
            case count2:
               return AssetLoader.textString117;
            default:
               return "";
         }
      }
      
      public static function loadResource1(param1:int) : String
      {
         switch(param1)
         {
            case count5:
            case count1:
               return AssetLoader.textString114;
            case count4:
            case count:
               return AssetLoader.textString116;
            case count2:
               return AssetLoader.textString118;
            default:
               return "";
         }
      }
   }
}

