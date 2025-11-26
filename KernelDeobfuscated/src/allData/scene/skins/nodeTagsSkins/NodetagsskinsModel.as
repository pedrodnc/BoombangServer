package src.allData.scene.skins.nodeTagsSkins
{
   import flash.geom.Point;
   import src.allData.color.ColorModel;
   import src.allData.scene.SceneModel;
   
   public class NodetagsskinsModel extends SceneModel
   {
      
      public var _mn6947:ColorModel;
      
      public var _tk11635:ColorModel;
      
      public var textString:String;
      
      public var textString1:String;
      
      public function NodetagsskinsModel(param1:String, param2:int, param3:Point, param4:int, param5:String, param6:String, param7:ColorModel, param8:String)
      {
         super(0,param1,param2,param3,param4,0,0,param5);
         this.textString = param6;
         this._tk11635 = param7;
         this.textString1 = param8;
      }
      
      public function render() : NodetagsskinsModel
      {
         var count2:NodetagsskinsModel = new NodetagsskinsModel(name,_ok7591,_cd7708.clone(),_un11300,_hb13923,this.textString,this._tk11635.render(),this.textString1);
         if(this._mn6947 != null)
         {
            count2._mn6947 = this._mn6947.render();
         }
         return count2;
      }
   }
}

