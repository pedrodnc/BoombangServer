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
         var count7:Bitmap = null;
         super(param1,param2,param3,param4,param5);
         param1._ts12318 = param2.count8;
         this.column = new MovieClip();
         var items:Number = param2._ja1725() - 1;
         while(items >= 0)
         {
            count7 = _tb5694._rd1942(_tb5694._sl11700.items4[_tb5694.count4] * param2.count8);
            this.column.addChild(count7);
            count7.y = -items * param1.count1 - param1.count1 / 2;
            items--;
         }
         this.column.alpha = 0.35;
         this.column.y = -param1.count1;
         _br9328.addChildAt(this.column,0);
         this._vj7475 = null;
         if(count2 == DragModel._jc11265)
         {
            this._vj7475 = SceneObjectRenderer(_tb5694);
            this.column.y = this._vj7475._dd6502 * param1.count1 - param1.count1;
         }
      }
      
      override protected function _qd10757() : void
      {
         _xw1367.getInstance()._uc3178(_br9328,_xw1367.count3,false,0);
      }
      
      override public function destroy() : void
      {
         removeEventListener(Event.ENTER_FRAME,this._ir4212);
         _xw1367.getInstance().move2(_br9328,_xw1367.count3);
         StringUtils.cleanChildsMovieclip(_br9328);
      }
      
      override protected function _ir4212(param1:Event) : void
      {
         super._ir4212(param1);
         _br9328.locz = _rt14669;
         if(Boolean(this._vj7475) && this._vj7475._dd6502 > 0)
         {
            _br9328.y = _ai997.y - this._vj7475._dd6502 * this._vj7475.count1;
            _br9328.locz += this._vj7475._dd6502 * this._vj7475.count1;
         }
      }
      
      override protected function _er10160() : Object
      {
         var count2:Object = {};
         count2._jo12299 = _br9328.stage.mouseX + count;
         count2._qu12668 = _br9328.stage.mouseY + count1;
         _cj15411 = 0;
         if(Boolean(this._vj7475) && this._vj7475._dd6502 > 0)
         {
            count2._qu12668 += this._vj7475._dd6502 * this._vj7475.count1;
         }
         return count2;
      }
      
      override protected function render() : Boolean
      {
         var count2:SceneObjectRenderer = null;
         var count:int = 0;
         var count1:Boolean = false;
         var count2:Boolean = false;
         var count3:Dictionary = new Dictionary();
         this._fq12761 = 0;
         _fb15132.y = this.column.y - _tb5694.count1 / 2;
         for each(count2 in _qr7703.objects)
         {
            if(count2 != _tb5694 && count2.x == _ai997.x && count2.y == _ai997.y)
            {
               count++;
               if(count2._sl11700.count46 == CatobjectsController.count39)
               {
                  count3[count2._dd6502] = true;
                  count1 = true;
                  ++this._fq12761;
               }
            }
         }
         if(count1)
         {
            while(count3[_cj15411] != null)
            {
               ++_cj15411;
            }
            if(_cj15411 > _qr7703._ja1725())
            {
               _cj15411 = 0;
            }
            _fb15132.y = this.column.y - _rt14669 * _tb5694.count1 - _tb5694.count1 / 2;
         }
         if(count > _qr7703._ja1725())
         {
            count2 = true;
         }
         return count2;
      }
   }
}

