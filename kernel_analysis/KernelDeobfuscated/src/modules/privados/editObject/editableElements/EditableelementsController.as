package src.modules.privados.editObject.editableElements
{
   import flash.display.*;
   import flash.geom.*;
   import src.allData.color.ColorModel;
   import src.allData.scene.skins.managerObjectSkineables.ManagerobjectskineablesController;
   import src.allData.scene.skins.nodeTagsSkins.*;
   import src.allData.scene.typeEscenarios.SceneTypeIsland;
   import src.modules.privados.PrivadosController;
   import src.utils.*;
   
   public class EditableelementsController extends EditableelementsModel
   {
      
      private var _bl11315:SceneTypeIsland;
      
      private var _jr2324:NodetagsskinsController;
      
      private var _ec3819:NodetagsskinsController;
      
      public function EditableelementsController(param1:String, param2:SceneTypeIsland, param3:NodetagsskinsController, param4:NodetagsskinsController, param5:PrivadosController)
      {
         this._bl11315 = param2;
         this._jr2324 = param4;
         this._ec3819 = param3;
         super(param1,param5);
      }
      
      override public function _rx12234(param1:MovieClip) : void
      {
         var count:MovieClip = null;
         var count3:NodetagsskinsModel = null;
         var count1:int = 0;
         var count2:MovieClip = null;
         var count6:int = 0;
         StringUtils.cleanChildsMovieclip(param1);
         var count7:MovieClip = MovieClip(this._bl11315._wy2643.getChildByName(this._jr2324._hb13923));
         count = StringUtils._dx10334(count7);
         var items:int = count.numChildren;
         var count8:ColorTransform = new ColorTransform();
         while(count6 < this._jr2324._kr1527.length)
         {
            count3 = NodetagsskinsModel(this._jr2324._kr1527[count6]);
            if(count3._mn6947 != null)
            {
               count1 = 0;
               while(count1 < items)
               {
                  count2 = MovieClip(count.getChildAt(count1));
                  if(count2.name == count3._hb13923)
                  {
                     count8.color = count3._mn6947.color;
                     count8.blueMultiplier = -1;
                     count8.redMultiplier = -1;
                     count8.greenMultiplier = -1;
                     count2.transform.colorTransform = count8;
                  }
                  count1++;
               }
            }
            count6++;
         }
         param1.addChild(count);
         count.x = 0;
         count.y = 0;
         param1.scaleX = 1;
      }
      
      override public function _ef15943() : Boolean
      {
         return true;
      }
      
      override public function _pa13360() : Boolean
      {
         return false;
      }
      
      override public function _wr2641() : Boolean
      {
         return false;
      }
      
      override public function _hi3492() : Boolean
      {
         return false;
      }
      
      override public function _ve1617() : Boolean
      {
         return true;
      }
      
      override public function _eo13013(param1:ColorModel) : void
      {
         this._bl11315._af805(this._jr2324,param1);
      }
      
      override public function _ql12680(param1:ColorModel) : void
      {
         this._bl11315._af805(this._jr2324,param1);
      }
      
      override public function _ds11280() : Boolean
      {
         return true;
      }
      
      override public function _lh4081() : void
      {
         var count2:ManagerobjectskineablesController = this._bl11315._pr16032._nc6280(this._ec3819.id);
         _vp454.handleSocket18(count2);
      }
   }
}

