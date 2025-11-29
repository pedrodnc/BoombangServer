package src.modules.enterScene
{
   import flash.display.*;
   import flash.events.EventDispatcher;
   import src.allData.scene.typeEscenarios.*;
   import src.config.*;
   import src.loaders.*;
   import src.person.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class SceneManager extends EventDispatcher
   {
      
      private static var isEnabled:Boolean = false;
      
      private var isEnabled1:Boolean;
      
      public function SceneManager()
      {
         super();
      }
      
      public static function loadResource() : Array
      {
         return [AssetLoader.textString95,AssetLoader.textString96,AssetLoader.textString97,AssetLoader.textString98,AssetLoader.textString32,AssetLoader.textString102,AssetLoader.textString100,AssetLoader.textString99,AssetLoader.textString106,AssetLoader.textString107,AssetLoader.textString108,AssetLoader.textString109,AssetLoader.textString94,AssetLoader.textString104,AssetLoader.textString92,AssetLoader.textString93];
      }
      
      public function loadResource1(param1:int, param2:int, param3:String) : void
      {
         var count1:Array = loadResource();
         this.isEnabled1 = false;
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029(["concursos.swf"],this.initialize);
         count1.push(SceneTypePublic.loadResource(param1) + param2 + SceneTypePublic.loadResource1(param1));
         count1.push(SceneTypePublic.loadResource(param1) + param2);
         if(Configuration.isEnabled1)
         {
            count1.push(AssetLoader.textString78);
         }
         LoadersManager.getInstance().loadResource1();
         LoadersManager.getInstance()._bi8517(param3);
         LoadersManager.getInstance().addElements(count1);
         LoadersManager.getInstance().start();
      }
      
      private function initialize() : void
      {
         this.isEnabled1 = true;
      }
      
      public function loadResource2() : Boolean
      {
         if(Boolean(this.isEnabled1) && Boolean(LoadersManager.getInstance()._tg7298()))
         {
            if(!isEnabled)
            {
               PersonModel.getInstance()._iv14659(LoadersManager.getInstance()._xb9567(AssetLoader.textString92) as MovieClip);
            }
            isEnabled = true;
            return true;
         }
         return false;
      }
   }
}

