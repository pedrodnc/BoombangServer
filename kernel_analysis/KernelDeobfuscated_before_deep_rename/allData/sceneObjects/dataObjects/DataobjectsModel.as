package src.allData.sceneObjects.dataObjects
{
   import src.allData.catObjects.CatobjectsController;
   
   public class DataobjectsModel extends SceneObjectProperties
   {
      
      private var _qw8853:Boolean;
      
      public var _cs7497:Array;
      
      public var cant:int;
      
      public function DataobjectsModel(param1:int, param2:int, param3:int, param4:int, param5:Array, param6:CatobjectsController, param7:Boolean, param8:String, param9:Array, param10:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param8);
         this._qw8853 = param7;
         this._cs7497 = param9;
         this.cant = param10;
      }
      
      public function _sr13322() : void
      {
         if(_iy10701 == 0)
         {
            graphics.scaleX = 1;
         }
         else
         {
            graphics.scaleX = -1;
         }
      }
      
      public function _iu12125() : DataobjectsModel
      {
         return new DataobjectsModel(_hw14129,_rm6352,_iy10701,_vw12711,color,_sl11700,this._qw8853,_uf1803,this._cs7497,this.cant);
      }
      
      override public function _uw12896() : Boolean
      {
         if(_sl11700._kc6805 is BaseObjectsMascota)
         {
            return true;
         }
         return false;
      }
      
      public function _ym3380() : Boolean
      {
         return this._qw8853;
      }
   }
}

