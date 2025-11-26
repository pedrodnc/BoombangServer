package src.modules.myHomeMultiuser
{
   import src.allData.scene.typeEscenarios.*;
   import src.modules.ModuleLoader;
   import src.modules.login.*;
   import src.multiuser.*;
   
   public class MyhomemultiuserModel
   {
      
      public function MyhomemultiuserModel()
      {
         super();
         SocketManager.getInstance().addEventListener(LoginEvents._tf16043,this._bw11981);
      }
      
      public function _bw11981(param1:ModuleLoader) : void
      {
         var _loc2_:Array = null;
         var _loc3_:uint = 0;
         _loc2_ = param1._lv9976;
         _loc3_ = uint(String(_loc2_[0]).charCodeAt(0));
         switch(_loc3_)
         {
            case SocketManager._bl4651:
               var _loc4_:uint = uint(String(_loc2_[1]).charCodeAt(0));
               switch(0)
               {
                  case LoginProtocol._jb1969:
                     var _loc5_:int = int(_loc2_[2]);
                     var _loc6_:int = int(_loc2_[3]);
                     var _loc7_:int = int(_loc2_[4]);
                     var _loc8_:int = int(_loc2_[5]);
                     SceneTypePrivate._ou13089(SceneTypePublic._ga7038,0,0,-1,0,0,"");
               }
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         SocketManager.getInstance().removeEventListener(LoginEvents._tf16043,this._bw11981);
      }
   }
}

