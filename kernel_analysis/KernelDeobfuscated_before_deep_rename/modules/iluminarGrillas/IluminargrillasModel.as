package src.modules.iluminarGrillas
{
   import flash.display.MovieClip;
   import flash.geom.*;
   import src.*;
   import src.allData.scene.typeEscenarios.*;
   import src.allData.sceneObjects.SceneObject;
   
   public class IluminargrillasModel extends SceneObject
   {
      
      private var _ij8722:MovieClip;
      
      public var _jp13542:int;
      
      public var _eu7877:int;
      
      private var isVisible:Boolean;
      
      public function IluminargrillasModel(param1:MovieClip, param2:int, param3:int)
      {
         super();
         this._ij8722 = param1;
         this._jp13542 = param2;
         this._eu7877 = param3;
         this.locz = -50;
         this.isVisible = false;
         addChild(this._ij8722);
      }
      
      public function _db5584() : void
      {
         if(!this.isVisible)
         {
            this.isVisible = true;
            _xw1367.getInstance()._uc3178(this,_xw1367._jf1741);
            this.x = SceneType.getPlotXY(new Point(this._jp13542,this._eu7877)).x;
            this.y = SceneType.getPlotXY(new Point(this._jp13542,this._eu7877)).y;
         }
      }
      
      public function _hu12389() : void
      {
         if(this.isVisible)
         {
            this.isVisible = false;
            _xw1367.getInstance()._na10792(this,_xw1367._jf1741);
         }
      }
   }
}

