package src.modules.interfaz.grillas
{
   import flash.display.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import src.*;
   import src.allData.scene.*;
   import src.allData.scene.typeEscenarios.*;
   import src.org.osflash.thunderbolt.*;
   
   public class GrillasModel
   {
      
      private static var isEnabled:Boolean;
      
      private var _bl11315:SceneType;
      
      private var _am2428:MovieClip;
      
      private var isEnabled1:Boolean;
      
      private var contadorFrames:int;
      
      public function GrillasModel(param1:SceneType)
      {
         super();
         this._bl11315 = param1;
         this.contadorFrames = 0;
      }
      
      public function destroy() : void
      {
         this.move();
      }
      
      public function loop() : void
      {
         ++this.contadorFrames;
         if(isEnabled)
         {
            if(this.contadorFrames % 16 == 0)
            {
               if(this._am2428 == null || this.isEnabled1 == false)
               {
                  this._iy6117(this.isEnabled1);
               }
            }
         }
      }
      
      public function _qb16098() : void
      {
         var count2:String = null;
         var count:String = null;
         var count3:* = null;
         var count1:int = 0;
         var count2:int = 0;
         var count7:int = 0;
         while(count7 < this._bl11315.matrix.length)
         {
            count2 = count7.toString();
            count = "";
            if(count2.length == 1)
            {
               count = " ";
            }
            count3 = irrcrpt("<spx je=\"",1) + count2 + irrcrpt("\"",1) + count + irrcrpt("  fcvc=\"",2);
            count1 = 0;
            while(count1 < this._bl11315.matrix[count7].length)
            {
               count2 = int(this._bl11315.matrix[count7][count1]);
               if(count1 > 0)
               {
                  count3 += ", ";
               }
               count3 += count2.toString();
               count1++;
            }
            count3 += irrcrpt("\"/>",4);
            ExternalInterface.call("console.log",count3);
            count7++;
         }
      }
      
      public function _iy6117(param1:Boolean) : void
      {
         var count:int = 0;
         var count3:uint = 0;
         var count1:MovieClip = null;
         var count2:Point = null;
         var count7:int = 0;
         if(this._am2428 != null)
         {
            _xw1367.getInstance().move2(this._am2428,_xw1367.count4);
            this._am2428 = null;
         }
         this._am2428 = new MovieClip();
         _xw1367.getInstance()._uc3178(this._am2428,_xw1367.count4);
         if(param1)
         {
            this._am2428.mouseEnabled = true;
            this._am2428.mouseChildren = true;
         }
         while(count7 < this._bl11315.matrix.length)
         {
            count = 0;
            while(count < this._bl11315.matrix[count7].length)
            {
               count3 = uint.MAX_VALUE;
               if((this._bl11315.matrix[count7][count] == SceneModel.TIERRA || this._bl11315.matrix[count7][count] == SceneModel.count1) && this._bl11315.items1[count7][count] == 1)
               {
                  count3 = 16711680;
               }
               else if(this._bl11315.matrix[count7][count] == SceneModel.TIERRA)
               {
                  count3 = 11184810;
               }
               else if(this._bl11315.matrix[count7][count] == SceneModel.count2)
               {
                  count3 = 255;
               }
               else if(this._bl11315.matrix[count7][count] == SceneModel.count1)
               {
                  count3 = 16711680;
               }
               else if(param1)
               {
                  count3 = 0;
               }
               if(count3 != uint.MAX_VALUE)
               {
                  count1 = new MovieClip();
                  count1.graphics.beginFill(count3);
                  count1.graphics.drawCircle(0,0,5);
                  count1.graphics.endFill();
                  this._am2428.addChild(count1);
                  count2 = SceneType.getPlotXY(new Point(count,count7));
                  count1.x = count2.x;
                  count1.y = count2.y;
                  if(param1)
                  {
                     count1.buttonMode = true;
                     count1.count1 = count7;
                     count1.count = count;
                     count1.addEventListener(MouseEvent.MOUSE_DOWN,this.stop);
                  }
               }
               count++;
            }
            count7++;
         }
         isEnabled = true;
         this.isEnabled1 = param1;
      }
      
      private function stop(param1:MouseEvent) : void
      {
         var count:uint = 0;
         param1.stopImmediatePropagation();
         var count3:MovieClip = MovieClip(param1.target);
         var count1:int = int(count3.count);
         var count2:int = int(count3.count1);
         var count7:int = int(this._bl11315.matrix[count2][count1]);
         count7 = count7 + 1;
         if(count7 > 3)
         {
            count7 = 0;
         }
         if(count7 < 0)
         {
            count7 = 3;
         }
         if(count7 == SceneModel.count)
         {
            count = 0;
         }
         else if(count7 == SceneModel.TIERRA)
         {
            count = 11184810;
         }
         else if(count7 == SceneModel.count2)
         {
            count = 255;
         }
         else if(count7 == SceneModel.count1)
         {
            count = 16711680;
         }
         count3.graphics.clear();
         count3.graphics.beginFill(count);
         count3.graphics.drawCircle(0,0,5);
         count3.graphics.endFill();
         var items:* = "Scenario #" + this._bl11315._nr6929._fq658 + " - Grid point: (" + count1 + ", " + count2 + ")";
         ThunderboltModel.info(items);
         this._bl11315.matrix[count2][count1] = count7;
      }
      
      public function move() : void
      {
         var count2:int = 0;
         var count:MovieClip = null;
         if(this._am2428 != null)
         {
            _xw1367.getInstance().move2(this._am2428,_xw1367.count4);
            if(this.isEnabled1)
            {
               count2 = 0;
               while(count2 < this._am2428.numChildren)
               {
                  count = MovieClip(this._am2428.getChildAt(count2));
                  count.removeEventListener(MouseEvent.MOUSE_DOWN,this.stop);
                  count2++;
               }
            }
            this._am2428 = null;
         }
         isEnabled = false;
      }
   }
}

