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
      
      private var count:int;
      
      private var _dl3635:MovieClip;
      
      public var isEnabled:Boolean;
      
      private var isEnabled1:Boolean = false;
      
      public function ShowobjectsController(param1:MovieClip, param2:CatobjectsController, param3:int, param4:MovieClip, param5:SceneObjectProperties = null)
      {
         super();
         this._ml5932 = param1;
         this._sl11700 = param2;
         this.count = param3;
         this._dl3635 = param4;
         this.obj = param5;
         this.isEnabled = false;
      }
      
      public function destroy() : void
      {
         SceneObjectManager.getInstance().removeEventListener(LoadobjectModel._bs1884,this.move);
         this._ml5932 = null;
         this._sl11700 = null;
         this._dl3635 = null;
         this.obj = null;
         this.isEnabled1 = true;
      }
      
      public function show() : void
      {
         var count2:MovieClip = null;
         var count:SceneObjectProperties = null;
         if(this._sl11700._kc6805 != null)
         {
            this._bg5434();
         }
         else
         {
            StringUtils.cleanChildsMovieclip(this._ml5932);
            count2 = StringUtils._so3313(this._dl3635);
            this._ml5932.addChild(count2);
            count2.x = -count2.width / 2;
            count2.y = -count2.height / 2;
            if(this._sl11700._su5362)
            {
               (ServiceLocator.get(ResourceManagementController) as ResourceManagementController)._vv13029([this._sl11700.textString17],this._bg5434);
            }
            else
            {
               SceneObjectManager.getInstance().addEventListener(LoadobjectModel._bs1884,this.move);
               count = new SceneObjectProperties(0,this._sl11700.id,1,1,this._sl11700.colors,this._sl11700,"");
               SceneObjectManager.getInstance().loadObject(count);
            }
         }
      }
      
      private function _bg5434() : void
      {
         var count2:SceneObjectProperties = null;
         if(this.isEnabled1)
         {
            return;
         }
         StringUtils.cleanChildsMovieclip(this._ml5932);
         if(this.obj != null)
         {
            count2 = this.obj;
         }
         else
         {
            count2 = new SceneObjectProperties(0,this._sl11700.id,1,1,this._sl11700.colors,this._sl11700,"");
         }
         count2._pc2090(this.count);
         this._ml5932.addChild(count2.graphics);
         this.isEnabled = true;
      }
      
      private function move(param1:LoadobjectModel) : void
      {
         var count:CatobjectsController = param1.obj.obj._sl11700;
         if(this._sl11700.id == count.id)
         {
            this._bg5434();
            SceneObjectManager.getInstance().removeEventListener(LoadobjectModel._bs1884,this.move);
         }
      }
      
      public function _yu10990() : void
      {
         if(this.obj != null && !this.isEnabled)
         {
            SceneObjectManager.getInstance().loadResource1(this.obj);
         }
      }
   }
}

