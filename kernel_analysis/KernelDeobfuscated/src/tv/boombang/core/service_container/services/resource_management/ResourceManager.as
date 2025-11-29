package src.tv.boombang.core.service_container.services.resource_management
{
   import flash.display.*;
   import flash.events.*;
   import flash.media.*;
   import flash.utils.*;
   import src.org.osflash.thunderbolt.*;
   import src.tv.boombang.commons.loadables.*;
   import src.tv.boombang.core.errors.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.Resources.*;
   
   public class ResourceManager extends EventDispatcher implements ServiceContainer
   {
      
      private var _su10810:Dictionary;
      
      protected var _ku15912:Dictionary;
      
      private var items:Array;
      
      private var isEnabled:Boolean;
      
      public function ResourceManager()
      {
         super();
      }
      
      public function start(param1:Object) : Boolean
      {
         if(param1 == null || !param1.hasOwnProperty("filelist") || !(param1["filelist"] is String))
         {
            return false;
         }
         this._ku15912 = new Dictionary();
         this._su10810 = new Dictionary();
         this.items = new Array();
         this.isEnabled = false;
         this._wb11204(param1["filelist"]);
         dispatchEvent(new ServiceContainerEvents(this,ServiceContainerEvents.textString));
         return true;
      }
      
      public function stop() : Boolean
      {
         var count2:Object = null;
         if(this._ku15912 != null)
         {
            for(count2 in this._ku15912)
            {
               delete this._ku15912[count2];
            }
            this._ku15912 = null;
         }
         this.items = null;
         dispatchEvent(new ServiceContainerEvents(this,ServiceContainerEvents.textString1));
         return true;
      }
      
      public function get loadResource2() : Boolean
      {
         return this._ku15912 != null;
      }
      
      public function destroy(param1:String) : void
      {
         (this._ku15912[param1] as ResourcesController).destroy();
         delete this._ku15912[param1];
      }
      
      public function _mv15948(param1:Function) : void
      {
         addEventListener(ServiceContainerEvents.textString,param1);
      }
      
      public function move(param1:Function) : void
      {
         removeEventListener(ServiceContainerEvents.textString1,param1);
      }
      
      public function getString(param1:String, param2:Boolean = false) : String
      {
         var count3:int = int(param1.lastIndexOf("/"));
         var count1:ResourceManagementController = new ResourceManagementController();
         count1.urlString2 = param1.slice(0,count3);
         count1._fa5988 = param1.slice(count3 + 1);
         count1.type = ResourceManagementController._sj14912(count1.extension);
         if(param2)
         {
            count1._vx10703 = "rnd-" + Math.round(Math.random() * 100000);
         }
         this._xo9753(count1);
         return count1.id;
      }
      
      public function _vv13029(param1:Array, param2:Function) : void
      {
         var count2:String = null;
         var count7:RegExp = null;
         var items:Array = new Array();
         for each(count2 in param1)
         {
            count7 = /(\t|\n|\r)/gi;
            count2 = count2.replace(count7,"");
            if(!this._ku15912.hasOwnProperty(count2))
            {
               var count1:ResourcesController = this._lt13919(count2);
               if(count1 == null)
               {
                  throw new Errors("Resource with id " + count2 + " not found. Check that the id is correct and that the filelist is updated.");
               }
               items.push(null);
            }
         }
         new LoadablesEvents(items,param2);
         if(items.length > 0)
         {
            this.items = this.items.concat(items);
            if(!this.isEnabled)
            {
               this.flush();
            }
         }
      }
      
      public function hasPermission(param1:String) : Boolean
      {
         return this._ku15912.hasOwnProperty(param1);
      }
      
      public function initialize(param1:String, param2:String) : Boolean
      {
         if(Boolean(this._ku15912.hasOwnProperty(param1)) && this._ku15912[param1] is ResourcesController)
         {
            return (this._ku15912[param1] as ResourcesController).hasDefinition(param2);
         }
         return false;
      }
      
      public function getString1(param1:String) : String
      {
         if(this._su10810[param1] != null)
         {
            return (this._su10810[param1] as ResourceManagementController)._lv11027;
         }
         throw new Errors("Resource with id " + param1 + " not found. Check that the id is correct and that the filelist is updated.");
      }
      
      public function _mk1240(param1:String) : int
      {
         if(this._su10810[param1] != null)
         {
            return (this._su10810[param1] as ResourceManagementController).size;
         }
         throw new Errors("Resource with id " + param1 + " not found. Check that the id is correct and that the filelist is updated.");
      }
      
      public function getString2(param1:String, param2:Boolean = false, param3:Boolean = false) : String
      {
         var count1:String = null;
         if(Boolean(this._ku15912.hasOwnProperty(param1)) && this._ku15912[param1] is ResourcesController)
         {
            if(!param3)
            {
               count1 = (this._ku15912[param1] as ResourcesController)._mg5102();
            }
            else
            {
               count1 = (this._ku15912[param1] as ResourcesController)._fp2025();
            }
            if(param2)
            {
               this.destroy(param1);
            }
            return count1;
         }
         return null;
      }
      
      public function _ix8228(param1:String, param2:String, param3:Boolean = false) : Sound
      {
         var count1:Sound = null;
         if(Boolean(this._ku15912.hasOwnProperty(param1)) && this._ku15912[param1] is ResourcesController)
         {
            count1 = (this._ku15912[param1] as ResourcesController)._ix8228(param2) as Sound;
            if(param3)
            {
               this.destroy(param1);
            }
            return count1;
         }
         return null;
      }
      
      public function _bn15619(param1:String, param2:String, param3:Boolean = false) : MovieClip
      {
         var count1:MovieClip = null;
         if(Boolean(this._ku15912.hasOwnProperty(param1)) && this._ku15912[param1] is ResourcesController)
         {
            count1 = (this._ku15912[param1] as ResourcesController)._bn15619(param2) as MovieClip;
            if(param3)
            {
               this.destroy(param1);
            }
            return count1;
         }
         return null;
      }
      
      public function _at9587(param1:String, param2:String, param3:Boolean = false) : Bitmap
      {
         var count1:Bitmap = null;
         if(Boolean(this._ku15912.hasOwnProperty(param1)) && this._ku15912[param1] is ResourcesController)
         {
            count1 = (this._ku15912[param1] as ResourcesController)._qy6605(param2);
            if(param3)
            {
               this.destroy(param1);
            }
            return count1;
         }
         return null;
      }
      
      public function _pf13231(param1:String, param2:Boolean = false) : Bitmap
      {
         var count3:Bitmap = null;
         if(Boolean(this._ku15912.hasOwnProperty(param1)) && this._ku15912[param1] is ResourcesController)
         {
            count3 = (this._ku15912[param1] as ResourcesController)._yu5186();
            if(param2)
            {
               this.destroy(param1);
            }
            return count3;
         }
         return null;
      }
      
      public function _if2642(param1:String, param2:Boolean = false) : MovieClip
      {
         var count3:MovieClip = null;
         if(Boolean(this._ku15912.hasOwnProperty(param1)) && this._ku15912[param1] is ResourcesController)
         {
            count3 = (this._ku15912[param1] as ResourcesController)._dr16162() as MovieClip;
            if(param2)
            {
               this.destroy(param1);
            }
            return count3;
         }
         return null;
      }
      
      private function _lt13919(param1:String) : ResourcesController
      {
         var count:ResourceManagementController = null;
         var count3:ResourcesController = null;
         count = this._su10810[param1];
         if(count != null)
         {
            switch(count.type)
            {
               case ResourceManagementController._au4855:
                  count3 = new ResourcesController(count._lv11027,param1);
                  break;
               case ResourceManagementController.TEXT:
                  count3 = new ResourcesController(count._lv11027,param1);
                  break;
               case ResourceManagementController._vl3175:
                  count3 = new ResourcesController(count._lv11027,param1);
            }
         }
         return count3;
      }
      
      private function flush() : void
      {
         var count2:ResourcesController = null;
         if(this.items.length > 0)
         {
            this.isEnabled = true;
            count2 = this.items.shift() as ResourcesController;
            count2.addEventListener(Event.COMPLETE,this._st11087,false,1,true);
            count2.load();
         }
         else
         {
            this.isEnabled = false;
         }
      }
      
      protected function _st11087(param1:Event) : void
      {
         var count:ResourcesController = param1.target as ResourcesController;
         this._ku15912[count.id] = count;
         this.flush();
      }
      
      private function _wb11204(param1:String) : void
      {
         var count:Array = null;
         var count3:ResourceManagementController = null;
         var count1:String = null;
         var count2:Array = param1.split(";");
         for each(count1 in count2)
         {
            count1 = count1.replace("\n","");
            count1 = count1.replace("\r","");
            count = count1.split(",");
            if(count.length >= 4)
            {
               count3 = new ResourceManagementController();
               count3.urlString2 = count[0];
               count3._fa5988 = count[1];
               count3.type = ResourceManagementController._sj14912(count3.extension);
               count3.size = count[2];
               count3._vx10703 = count[3];
               this._xo9753(count3);
            }
         }
      }
      
      private function _xo9753(param1:ResourceManagementController) : void
      {
         if(this._su10810.hasOwnProperty(param1.id))
         {
            ThunderboltModel.warn("Adding duplicated filelist entry with id: " + param1.id,param1);
         }
         this._su10810[param1.id] = param1;
      }
   }
}

