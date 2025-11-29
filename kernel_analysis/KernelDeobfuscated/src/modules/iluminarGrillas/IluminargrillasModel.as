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
      
      public var count:int;
      
      public var count1:int;
      
      private var isVisible:Boolean;
      
      public function IluminargrillasModel(param1:MovieClip, param2:int, param3:int)
      {
         super();
         this._ij8722 = param1;
         this.count = param2;
         this.count1 = param3;
         this.locz = -50;
         this.isVisible = false;
         addChild(this._ij8722);
      }
      
      public function show() : void
      {
         if(!this.isVisible)
         {
            this.isVisible = true;
            _xw1367.getInstance()._uc3178(this,_xw1367.count3);
            this.x = SceneType.getPlotXY(new Point(this.count,this.count1)).x;
            this.y = SceneType.getPlotXY(new Point(this.count,this.count1)).y;
         }
      }
      
      public function authenticateUser2() : void
      {
         if(this.isVisible)
         {
            this.isVisible = false;
            _xw1367.getInstance().move2(this,_xw1367.count3);
         }
      }
   }
}

