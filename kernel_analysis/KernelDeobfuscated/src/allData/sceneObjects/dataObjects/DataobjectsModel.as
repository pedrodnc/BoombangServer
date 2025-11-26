package src.allData.sceneObjects.dataObjects
{
   import src.allData.catObjects.CatobjectsController;
   
   public class DataobjectsModel extends SceneObjectProperties
   {
      
      private var isEnabled:Boolean;
      
      public var items:Array;
      
      public var cant:int;
      
      public function DataobjectsModel(param1:int, param2:int, param3:int, param4:int, param5:Array, param6:CatobjectsController, param7:Boolean, param8:String, param9:Array, param10:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param8);
         this.isEnabled = param7;
         this.items = param9;
         this.cant = param10;
      }
      
      public function _sr13322() : void
      {
         if(count4 == 0)
         {
            graphics.scaleX = 1;
         }
         else
         {
            graphics.scaleX = -1;
         }
      }
      
      public function render() : DataobjectsModel
      {
         return new DataobjectsModel(count2,count,count4,count4,color,_sl11700,this.isEnabled,textString1,this.items,this.cant);
      }
      
      override public function show6() : Boolean
      {
         if(_sl11700._kc6805 is BaseObjectsMascota)
         {
            return true;
         }
         return false;
      }
      
      public function _ym3380() : Boolean
      {
         return this.isEnabled;
      }
   }
}

