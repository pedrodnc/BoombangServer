package src.modules.iluminarGrillas
{
   import src.allData.scene.typeEscenarios.SceneType;
   import src.logs.*;
   import src.modules.ModuleLoader;
   import src.multiuser.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.resource_management.*;
   
   public class IluminargrillasController
   {
      
      public static const count:int = 120;
      
      public static const count1:int = 121;
      
      private static const textString:String = "mcBaldosaAnimada";
      
      private var _ix78:IluminargrillasController;
      
      private var logs:Logger;
      
      private var items:Array;
      
      private var _bl11315:SceneType;
      
      public function IluminargrillasController(param1:SceneType)
      {
         super();
         this._bl11315 = param1;
         this._ix78 = new IluminargrillasController();
         this._ix78.addEventListener(IluminargrillasEvents.textString,this.authenticateUser);
         this.logs = Logger.getInstance();
         this.items = new Array();
      }
      
      public function init() : void
      {
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
         this._nv9589();
         if(this._ix78 != null)
         {
            this._ix78.removeEventListener(IluminargrillasEvents.textString,this.authenticateUser);
         }
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:uint = 0;
         var count7:Array = param1.items;
         count = uint(String(count7[1]).charCodeAt(0));
         switch(count)
         {
            case count:
               if(count7.length < 5)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"IluminarGrillasModule.reciebeMsg",count7.toString()));
                  return;
               }
               var count3:Array = SocketManager.getList2(count7[2]);
               var count1:Array = SocketManager.getList2(count7[3]);
               var count2:Array = SocketManager.getList2(count7[4]);
               if(null.length == null.length && null.length == null.length)
               {
                  this._qs9561(null,null,null);
               }
               return;
               break;
            case count1:
               if(count7.length < 5)
               {
                  this.logs._kp3815(new Logs(Logger.count2,"IluminarGrillasModule.reciebeMsg",count7.toString()));
                  return;
               }
               count3 = SocketManager.getList2(count7[2]);
               count1 = SocketManager.getList2(count7[3]);
               count2 = SocketManager.getList2(count7[4]);
               if(null.length == null.length && null.length == null.length)
               {
                  this._ph10270(null,null,null);
               }
               return;
               break;
            default:
               return;
         }
      }
      
      public function _qs9561(param1:Array, param2:Array, param3:Array) : void
      {
         var count1:IluminargrillasModel = null;
         var count2:int = 0;
         while(count2 < param1.length)
         {
            count1 = new IluminargrillasModel((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("personsResources.swf",textString + param3[count2]),param1[count2],param2[count2]);
            count1.show();
            this.items.push(count1);
            count2++;
         }
      }
      
      public function _ph10270(param1:Array, param2:Array, param3:Array) : void
      {
         var count1:IluminargrillasModel = null;
         var count2:int = 0;
         var count7:int = 0;
         while(count7 < param1.length)
         {
            count2 = 0;
            while(count2 < this.items.length)
            {
               count1 = IluminargrillasModel(this.items[count2]);
               if(count1.count == param1[count7] && count1.count1 == param2[count7])
               {
                  count1.authenticateUser2();
                  this.items.splice(count2,1);
                  break;
               }
               count2++;
            }
            count7++;
         }
      }
      
      public function _nv9589() : void
      {
         var count2:IluminargrillasModel = null;
         var count:int = 0;
         while(count < this.items.length)
         {
            count2 = IluminargrillasModel(this.items[count]);
            count2.authenticateUser2();
            count++;
         }
         this.items.length = 0;
      }
   }
}

