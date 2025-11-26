package src.utils.showObjects
{
   import flash.display.MovieClip;
   import src.allData.catObjects.CatobjectsController;
   import src.allData.sceneObjects.*;
   import src.allData.sceneObjects.dataObjects.*;
   import src.allData.sceneObjects.loadObject.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   import src.utils.*;
   
   public class ShowobjectsController
   {
      
      private var _ml5932:MovieClip;
      
      private var obj:SceneObjectProperties;
      
      private var _sl11700:CatobjectsController;
      
      private var _mw1047:int;
      
      private var _dl3635:MovieClip;
      
      public var _iy9936:Boolean;
      
      private var _wd6131:Boolean = false;
      
      public function ShowobjectsController(param1:MovieClip, param2:CatobjectsController, param3:int, param4:MovieClip, param5:SceneObjectProperties = null)
      {
         super();
         this._ml5932 = param1;
         this._sl11700 = param2;
         this._mw1047 = param3;
         this._dl3635 = param4;
         this.obj = param5;
         this._iy9936 = false;
      }
      
      public function destroy() : void
      {
         SceneObjectManager.getInstance().removeEventListener(LoadobjectModel._bs1884,this._sg14613);
         this._ml5932 = null;
         this._sl11700 = null;
         this._dl3635 = null;
         this.obj = null;
         this._wd6131 = true;
      }
      
      public function show() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:SceneObjectProperties = null;
         if(this._sl11700._kc6805 != null)
         {
            this._bg5434();
         }
         else
         {
            StringUtils.cleanChildsMovieclip(this._ml5932);
            _loc1_ = StringUtils._so3313(this._dl3635);
            this._ml5932.addChild(_loc1_);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            if(this._sl11700._su5362)
            {
               (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._vv13029([this._sl11700._le1402],this._bg5434);
            }
            else
            {
               SceneObjectManager.getInstance().addEventListener(LoadobjectModel._bs1884,this._sg14613);
               _loc2_ = new SceneObjectProperties(0,this._sl11700.id,1,1,this._sl11700.colors,this._sl11700,"");
               SceneObjectManager.getInstance().loadObject(_loc2_);
            }
         }
      }
      
      private function _bg5434() : void
      {
         var _loc1_:SceneObjectProperties = null;
         if(this._wd6131)
         {
            return;
         }
         StringUtils.cleanChildsMovieclip(this._ml5932);
         if(this.obj != null)
         {
            _loc1_ = this.obj;
         }
         else
         {
            _loc1_ = new SceneObjectProperties(0,this._sl11700.id,1,1,this._sl11700.colors,this._sl11700,"");
         }
         _loc1_._pc2090(this._mw1047);
         this._ml5932.addChild(_loc1_.graphics);
         this._iy9936 = true;
      }
      
      private function _sg14613(param1:LoadobjectModel) : void
      {
         var _loc2_:CatobjectsController = param1.obj.obj._sl11700;
         if(this._sl11700.id == _loc2_.id)
         {
            this._bg5434();
            SceneObjectManager.getInstance().removeEventListener(LoadobjectModel._bs1884,this._sg14613);
         }
      }
      
      public function _yu10990() : void
      {
         if(this.obj != null && !this._iy9936)
         {
            SceneObjectManager.getInstance()._gp13572(this.obj);
         }
      }
   }
}

