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
      
      private static var _aj4512:Boolean;
      
      private var _bl11315:SceneType;
      
      private var _am2428:MovieClip;
      
      private var _fg9788:Boolean;
      
      private var contadorFrames:int;
      
      public function GrillasModel(param1:SceneType)
      {
         super();
         this._bl11315 = param1;
         this.contadorFrames = 0;
      }
      
      public function destroy() : void
      {
         this._pp583();
      }
      
      public function loop() : void
      {
         ++this.contadorFrames;
         if(_aj4512)
         {
            if(this.contadorFrames % 16 == 0)
            {
               if(this._am2428 == null || this._fg9788 == false)
               {
                  this._iy6117(this._fg9788);
               }
            }
         }
      }
      
      public function _qb16098() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < this._bl11315.matrix.length)
         {
            _loc1_ = _loc6_.toString();
            _loc2_ = "";
            if(_loc1_.length == 1)
            {
               _loc2_ = " ";
            }
            _loc3_ = irrcrpt("<spx je=\"",1) + _loc1_ + irrcrpt("\"",1) + _loc2_ + irrcrpt("  fcvc=\"",2);
            _loc4_ = 0;
            while(_loc4_ < this._bl11315.matrix[_loc6_].length)
            {
               _loc5_ = int(this._bl11315.matrix[_loc6_][_loc4_]);
               if(_loc4_ > 0)
               {
                  _loc3_ += ", ";
               }
               _loc3_ += _loc5_.toString();
               _loc4_++;
            }
            _loc3_ += irrcrpt("\"/>",4);
            ExternalInterface.call("console.log",_loc3_);
            _loc6_++;
         }
      }
      
      public function _iy6117(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         var _loc3_:uint = 0;
         var _loc4_:MovieClip = null;
         var _loc5_:Point = null;
         var _loc6_:int = 0;
         if(this._am2428 != null)
         {
            _xw1367.getInstance()._na10792(this._am2428,_xw1367._co9468);
            this._am2428 = null;
         }
         this._am2428 = new MovieClip();
         _xw1367.getInstance()._uc3178(this._am2428,_xw1367._co9468);
         if(param1)
         {
            this._am2428.mouseEnabled = true;
            this._am2428.mouseChildren = true;
         }
         while(_loc6_ < this._bl11315.matrix.length)
         {
            _loc2_ = 0;
            while(_loc2_ < this._bl11315.matrix[_loc6_].length)
            {
               _loc3_ = uint.MAX_VALUE;
               if((this._bl11315.matrix[_loc6_][_loc2_] == SceneModel.TIERRA || this._bl11315.matrix[_loc6_][_loc2_] == SceneModel._vs13425) && this._bl11315._ma6863[_loc6_][_loc2_] == 1)
               {
                  _loc3_ = 16711680;
               }
               else if(this._bl11315.matrix[_loc6_][_loc2_] == SceneModel.TIERRA)
               {
                  _loc3_ = 11184810;
               }
               else if(this._bl11315.matrix[_loc6_][_loc2_] == SceneModel._av3872)
               {
                  _loc3_ = 255;
               }
               else if(this._bl11315.matrix[_loc6_][_loc2_] == SceneModel._vs13425)
               {
                  _loc3_ = 16711680;
               }
               else if(param1)
               {
                  _loc3_ = 0;
               }
               if(_loc3_ != uint.MAX_VALUE)
               {
                  _loc4_ = new MovieClip();
                  _loc4_.graphics.beginFill(_loc3_);
                  _loc4_.graphics.drawCircle(0,0,5);
                  _loc4_.graphics.endFill();
                  this._am2428.addChild(_loc4_);
                  _loc5_ = SceneType.getPlotXY(new Point(_loc2_,_loc6_));
                  _loc4_.x = _loc5_.x;
                  _loc4_.y = _loc5_.y;
                  if(param1)
                  {
                     _loc4_.buttonMode = true;
                     _loc4_._eu7877 = _loc6_;
                     _loc4_._jp13542 = _loc2_;
                     _loc4_.addEventListener(MouseEvent.MOUSE_DOWN,this._ny15728);
                  }
               }
               _loc2_++;
            }
            _loc6_++;
         }
         _aj4512 = true;
         this._fg9788 = param1;
      }
      
      private function _ny15728(param1:MouseEvent) : void
      {
         var _loc2_:uint = 0;
         param1.stopImmediatePropagation();
         var _loc3_:MovieClip = MovieClip(param1.target);
         var _loc4_:int = int(_loc3_._jp13542);
         var _loc5_:int = int(_loc3_._eu7877);
         var _loc6_:int = int(this._bl11315.matrix[_loc5_][_loc4_]);
         _loc6_ = _loc6_ + 1;
         if(_loc6_ > 3)
         {
            _loc6_ = 0;
         }
         if(_loc6_ < 0)
         {
            _loc6_ = 3;
         }
         if(_loc6_ == SceneModel._ew12008)
         {
            _loc2_ = 0;
         }
         else if(_loc6_ == SceneModel.TIERRA)
         {
            _loc2_ = 11184810;
         }
         else if(_loc6_ == SceneModel._av3872)
         {
            _loc2_ = 255;
         }
         else if(_loc6_ == SceneModel._vs13425)
         {
            _loc2_ = 16711680;
         }
         _loc3_.graphics.clear();
         _loc3_.graphics.beginFill(_loc2_);
         _loc3_.graphics.drawCircle(0,0,5);
         _loc3_.graphics.endFill();
         var _loc7_:* = "Scenario #" + this._bl11315._nr6929._fq658 + " - Grid point: (" + _loc4_ + ", " + _loc5_ + ")";
         ThunderboltModel.info(_loc7_);
         this._bl11315.matrix[_loc5_][_loc4_] = _loc6_;
      }
      
      public function _pp583() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         if(this._am2428 != null)
         {
            _xw1367.getInstance()._na10792(this._am2428,_xw1367._co9468);
            if(this._fg9788)
            {
               _loc1_ = 0;
               while(_loc1_ < this._am2428.numChildren)
               {
                  _loc2_ = MovieClip(this._am2428.getChildAt(_loc1_));
                  _loc2_.removeEventListener(MouseEvent.MOUSE_DOWN,this._ny15728);
                  _loc1_++;
               }
            }
            this._am2428 = null;
         }
         _aj4512 = false;
      }
   }
}

