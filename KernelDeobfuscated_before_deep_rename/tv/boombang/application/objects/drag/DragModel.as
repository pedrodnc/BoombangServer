package src.tv.boombang.application.objects.drag
{
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   import src.*;
   import src.allData.catObjects.*;
   import src.allData.scene.typeEscenarios.SceneType;
   import src.allData.sceneObjects.dataObjects.*;
   import src.utils.*;
   
   public class DragModel extends DragController
   {
      
      private var column:MovieClip;
      
      private var _vj7475:SceneObjectRenderer;
      
      private var _fq12761:uint;
      
      public function DragModel(param1:SceneObjectProperties, param2:SceneType, param3:int, param4:int = 0, param5:int = 0)
      {
         var _loc6_:Bitmap = null;
         super(param1,param2,param3,param4,param5);
         param1._ts12318 = param2._go7360;
         this.column = new MovieClip();
         var _loc7_:Number = param2._ja1725() - 1;
         while(_loc7_ >= 0)
         {
            _loc6_ = _tb5694._rd1942(_tb5694._sl11700._cg6545[_tb5694._vw12711] * param2._go7360);
            this.column.addChild(_loc6_);
            _loc6_.y = -_loc7_ * param1._vo2523 - param1._vo2523 / 2;
            _loc7_--;
         }
         this.column.alpha = 0.35;
         this.column.y = -param1._vo2523;
         _br9328.addChildAt(this.column,0);
         this._vj7475 = null;
         if(_ej376 == DragModel._jc11265)
         {
            this._vj7475 = SceneObjectRenderer(_tb5694);
            this.column.y = this._vj7475._dd6502 * param1._vo2523 - param1._vo2523;
         }
      }
      
      override protected function _qd10757() : void
      {
         _xw1367.getInstance()._uc3178(_br9328,_xw1367._jf1741,false,0);
      }
      
      override public function destroy() : void
      {
         removeEventListener(Event.ENTER_FRAME,this._ir4212);
         _xw1367.getInstance()._na10792(_br9328,_xw1367._jf1741);
         StringUtils.cleanChildsMovieclip(_br9328);
      }
      
      override protected function _ir4212(param1:Event) : void
      {
         super._ir4212(param1);
         _br9328.locz = _rt14669;
         if(Boolean(this._vj7475) && this._vj7475._dd6502 > 0)
         {
            _br9328.y = _ai997.y - this._vj7475._dd6502 * this._vj7475._vo2523;
            _br9328.locz += this._vj7475._dd6502 * this._vj7475._vo2523;
         }
      }
      
      override protected function _er10160() : Object
      {
         var _loc1_:Object = {};
         _loc1_._jo12299 = _br9328.stage.mouseX + _nm6639;
         _loc1_._qu12668 = _br9328.stage.mouseY + _pl15318;
         _cj15411 = 0;
         if(Boolean(this._vj7475) && this._vj7475._dd6502 > 0)
         {
            _loc1_._qu12668 += this._vj7475._dd6502 * this._vj7475._vo2523;
         }
         return _loc1_;
      }
      
      override protected function _xr735() : Boolean
      {
         var _loc1_:SceneObjectRenderer = null;
         var _loc2_:int = 0;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc3_:Dictionary = new Dictionary();
         this._fq12761 = 0;
         _fb15132.y = this.column.y - _tb5694._vo2523 / 2;
         for each(_loc1_ in _qr7703.objects)
         {
            if(_loc1_ != _tb5694 && _loc1_.x == _ai997.x && _loc1_.y == _ai997.y)
            {
               _loc2_++;
               if(_loc1_._sl11700._dv13852 == CatobjectsController._km4276)
               {
                  _loc3_[_loc1_._dd6502] = true;
                  _loc4_ = true;
                  ++this._fq12761;
               }
            }
         }
         if(_loc4_)
         {
            while(_loc3_[_cj15411] != null)
            {
               ++_cj15411;
            }
            if(_cj15411 > _qr7703._ja1725())
            {
               _cj15411 = 0;
            }
            _fb15132.y = this.column.y - _rt14669 * _tb5694._vo2523 - _tb5694._vo2523 / 2;
         }
         if(_loc2_ > _qr7703._ja1725())
         {
            _loc5_ = true;
         }
         return _loc5_;
      }
   }
}

