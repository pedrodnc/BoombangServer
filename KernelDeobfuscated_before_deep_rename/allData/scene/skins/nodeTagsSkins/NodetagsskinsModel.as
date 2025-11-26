package src.allData.scene.skins.nodeTagsSkins
{
   import flash.geom.Point;
   import src.allData.color.ColorModel;
   import src.allData.scene.SceneModel;
   
   public class NodetagsskinsModel extends SceneModel
   {
      
      public var _mn6947:ColorModel;
      
      public var _tk11635:ColorModel;
      
      public var _lk8448:String;
      
      public var _mv4377:String;
      
      public function NodetagsskinsModel(param1:String, param2:int, param3:Point, param4:int, param5:String, param6:String, param7:ColorModel, param8:String)
      {
         super(0,param1,param2,param3,param4,0,0,param5);
         this._lk8448 = param6;
         this._tk11635 = param7;
         this._mv4377 = param8;
      }
      
      public function _iu12125() : NodetagsskinsModel
      {
         var _loc1_:NodetagsskinsModel = new NodetagsskinsModel(name,_ok7591,_cd7708.clone(),_un11300,_hb13923,this._lk8448,this._tk11635._iu12125(),this._mv4377);
         if(this._mn6947 != null)
         {
            _loc1_._mn6947 = this._mn6947._iu12125();
         }
         return _loc1_;
      }
   }
}

