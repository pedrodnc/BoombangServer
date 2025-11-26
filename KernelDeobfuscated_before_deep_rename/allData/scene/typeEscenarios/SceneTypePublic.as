package src.allData.scene.typeEscenarios
{
   import src.loaders.*;
   
   public class SceneTypePublic
   {
      
      public static const _jt6401:int = 0;
      
      public static const _sr6766:int = 1;
      
      public static const _ii14714:int = 2;
      
      public static const _vx8306:int = 3;
      
      public static const _ga7038:int = 4;
      
      public static const _ar4336:int = 5;
      
      public function SceneTypePublic()
      {
         super();
      }
      
      public static function _dl10426(param1:int) : String
      {
         switch(param1)
         {
            case _ar4336:
            case _sr6766:
               return AssetLoader._uu4835;
            case _ga7038:
            case _jt6401:
               return AssetLoader._kb5241;
            case _ii14714:
               return AssetLoader._ng4169;
            default:
               return "";
         }
      }
      
      public static function _fb12377(param1:int) : String
      {
         switch(param1)
         {
            case _ar4336:
            case _sr6766:
               return AssetLoader._ta4776;
            case _ga7038:
            case _jt6401:
               return AssetLoader._ih618;
            case _ii14714:
               return AssetLoader._ei2058;
            default:
               return "";
         }
      }
   }
}

