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
      
      private static var _ix11165:Boolean = false;
      
      private var _io2616:Boolean;
      
      public function SceneManager()
      {
         super();
      }
      
      public static function _vn628() : Array
      {
         return [AssetLoader._xs4489,AssetLoader._lv8941,AssetLoader._wb10734,AssetLoader._ml11032,AssetLoader._sr9067,AssetLoader._hb15107,AssetLoader._ql6999,AssetLoader._vl11343,AssetLoader._vf15119,AssetLoader._jm5162,AssetLoader._su13020,AssetLoader._ul4936,AssetLoader._jy5402,AssetLoader._ym5395,AssetLoader._up7733,AssetLoader._ov10880];
      }
      
      public function _cm2297(param1:int, param2:int, param3:String) : void
      {
         var _loc4_:Array = _vn628();
         this._io2616 = false;
         (ServiceLocator.get(ResourceManager) as ResourceManager)._vv13029(["concursos.swf"],this._hj11501);
         _loc4_.push(SceneTypePublic._dl10426(param1) + param2 + SceneTypePublic._fb12377(param1));
         _loc4_.push(SceneTypePublic._dl10426(param1) + param2);
         if(Configuration._io3885)
         {
            _loc4_.push(AssetLoader._nn13134);
         }
         LoadersManager.getInstance()._qx1635();
         LoadersManager.getInstance()._bi8517(param3);
         LoadersManager.getInstance().addElements(_loc4_);
         LoadersManager.getInstance().start();
      }
      
      private function _hj11501() : void
      {
         this._io2616 = true;
      }
      
      public function _kn5152() : Boolean
      {
         if(Boolean(this._io2616) && Boolean(LoadersManager.getInstance()._tg7298()))
         {
            if(!_ix11165)
            {
               PersonModel.getInstance()._iv14659(LoadersManager.getInstance()._xb9567(AssetLoader._up7733) as MovieClip);
            }
            _ix11165 = true;
            return true;
         }
         return false;
      }
   }
}

