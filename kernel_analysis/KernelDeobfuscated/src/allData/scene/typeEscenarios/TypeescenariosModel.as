package src.allData.scene.typeEscenarios
{
   import flash.display.MovieClip;
   import src.tv.boombang.core.datatypes.navigationMenu.NavigationmenuModel;
   
   public class TypeescenariosModel extends TypeescenariosModel
   {
      
      public function TypeescenariosModel(param1:NavigationmenuModel, param2:int, param3:MovieClip, param4:XML)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function getString() : String
      {
         return "multiuserGame";
      }
   }
}

