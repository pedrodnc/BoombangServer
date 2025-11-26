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
         var _loc2_:MovieClip = null;
         var _loc3_:NodetagsskinsModel = null;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc9_:int = 0;
         StringUtils.cleanChildsMovieclip(param1);
         var _loc6_:MovieClip = MovieClip(this._bl11315._wy2643.getChildByName(this._jr2324._hb13923));
         _loc2_ = StringUtils._dx10334(_loc6_);
         var _loc7_:int = _loc2_.numChildren;
         var _loc8_:ColorTransform = new ColorTransform();
         while(_loc9_ < this._jr2324._kr1527.length)
         {
            _loc3_ = NodetagsskinsModel(this._jr2324._kr1527[_loc9_]);
            if(_loc3_._mn6947 != null)
            {
               _loc4_ = 0;
               while(_loc4_ < _loc7_)
               {
                  _loc5_ = MovieClip(_loc2_.getChildAt(_loc4_));
                  if(_loc5_.name == _loc3_._hb13923)
                  {
                     _loc8_.color = _loc3_._mn6947.color;
                     _loc8_.blueMultiplier = -1;
                     _loc8_.redMultiplier = -1;
                     _loc8_.greenMultiplier = -1;
                     _loc5_.transform.colorTransform = _loc8_;
                  }
                  _loc4_++;
               }
            }
            _loc9_++;
         }
         param1.addChild(_loc2_);
         _loc2_.x = 0;
         _loc2_.y = 0;
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
         var _loc1_:ManagerobjectskineablesController = this._bl11315._pr16032._nc6280(this._ec3819.id);
         _vp454._gr14049(_loc1_);
      }
   }
}

