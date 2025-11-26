package src.allData.sceneObjects.dataObjects
{
   import src.allData.catObjects.CatobjectsController;
   
   public class SceneObjectData
   {
      
      public var count:int;
      
      public var _sl11700:CatobjectsController;
      
      public function SceneObjectData(param1:int, param2:CatobjectsController)
      {
         super();
         this.count = param1;
         this._sl11700 = param2;
      }
   }
}

