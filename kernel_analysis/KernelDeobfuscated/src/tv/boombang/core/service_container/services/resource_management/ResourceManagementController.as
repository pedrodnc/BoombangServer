package src.tv.boombang.core.service_container.services.resource_management
{
   import src.tv.boombang.commons.utils.ColorUtils;
   
   public class ResourceManagementController extends ColorUtils
   {
      
      public static const _au4855:ResourceManagementController = new ResourceManagementController(["swf"]);
      
      public static const TEXT:ResourceManagementController = new ResourceManagementController(["xml","txt","yml"]);
      
      public static const _vl3175:ResourceManagementController = new ResourceManagementController(["jpg","jpeg","png","bmp"]);
      
      _xy6875(ResourceManagementController);
      
      private var items:Array;
      
      public function ResourceManagementController(param1:Array)
      {
         super();
         this.items = param1.concat();
      }
      
      public static function _sj14912(param1:String) : ResourceManagementController
      {
         var count:ResourceManagementController = null;
         param1 = param1.toLowerCase();
         for each(count in ResourceManagementController.items)
         {
            if(count._lu359.indexOf(param1) >= 0)
            {
               return count;
            }
         }
         return null;
      }
      
      public static function get items() : Array
      {
         return [_au4855,TEXT,_vl3175];
      }
      
      public function get _lu359() : Array
      {
         return this.items;
      }
   }
}

