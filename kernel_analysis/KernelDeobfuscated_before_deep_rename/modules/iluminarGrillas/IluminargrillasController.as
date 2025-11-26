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
      
      public static const _tt15046:int = 120;
      
      public static const _bg5077:int = 121;
      
      private static const _na10981:String = "mcBaldosaAnimada";
      
      private var _ix78:IluminargrillasController;
      
      private var logs:Logger;
      
      private var _ty15043:Array;
      
      private var _bl11315:SceneType;
      
      public function IluminargrillasController(param1:SceneType)
      {
         super();
         this._bl11315 = param1;
         this._ix78 = new IluminargrillasController();
         this._ix78.addEventListener(IluminargrillasEvents._fb4031,this._bw11981);
         this.logs = Logger.getInstance();
         this._ty15043 = new Array();
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
            this._ix78.removeEventListener(IluminargrillasEvents._fb4031,this._bw11981);
         }
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc2_:uint = 0;
         var _loc6_:Array = param1._lv9976;
         _loc2_ = uint(String(_loc6_[1]).charCodeAt(0));
         switch(_loc2_)
         {
            case _tt15046:
               if(_loc6_.length < 5)
               {
                  this.logs._kp3815(new Logs(Logger._ny10327,"IluminarGrillasModule.reciebeMsg",_loc6_.toString()));
                  return;
               }
               var _loc3_:Array = SocketManager._hp13280(_loc6_[2]);
               var _loc4_:Array = SocketManager._hp13280(_loc6_[3]);
               var _loc5_:Array = SocketManager._hp13280(_loc6_[4]);
               if(null.length == null.length && null.length == null.length)
               {
                  this._qs9561(null,null,null);
               }
               return;
               break;
            case _bg5077:
               if(_loc6_.length < 5)
               {
                  this.logs._kp3815(new Logs(Logger._ny10327,"IluminarGrillasModule.reciebeMsg",_loc6_.toString()));
                  return;
               }
               _loc3_ = SocketManager._hp13280(_loc6_[2]);
               _loc4_ = SocketManager._hp13280(_loc6_[3]);
               _loc5_ = SocketManager._hp13280(_loc6_[4]);
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
         var _loc4_:IluminargrillasModel = null;
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            _loc4_ = new IluminargrillasModel((ServiceLocator.get(ResourceManager) as ResourceManager)._bn15619("personsResources.swf",_na10981 + param3[_loc5_]),param1[_loc5_],param2[_loc5_]);
            _loc4_._db5584();
            this._ty15043.push(_loc4_);
            _loc5_++;
         }
      }
      
      public function _ph10270(param1:Array, param2:Array, param3:Array) : void
      {
         var _loc4_:IluminargrillasModel = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < param1.length)
         {
            _loc5_ = 0;
            while(_loc5_ < this._ty15043.length)
            {
               _loc4_ = IluminargrillasModel(this._ty15043[_loc5_]);
               if(_loc4_._jp13542 == param1[_loc6_] && _loc4_._eu7877 == param2[_loc6_])
               {
                  _loc4_._hu12389();
                  this._ty15043.splice(_loc5_,1);
                  break;
               }
               _loc5_++;
            }
            _loc6_++;
         }
      }
      
      public function _nv9589() : void
      {
         var _loc1_:IluminargrillasModel = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._ty15043.length)
         {
            _loc1_ = IluminargrillasModel(this._ty15043[_loc2_]);
            _loc1_._hu12389();
            _loc2_++;
         }
         this._ty15043.length = 0;
      }
   }
}

