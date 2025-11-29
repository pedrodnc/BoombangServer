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
         SocketManager.getInstance().addEventListener(LoginEvents.textString,this.authenticateUser);
      }
      
      public function authenticateUser(param1:ModuleLoader) : void
      {
         var count:Array = null;
         var count3:uint = 0;
         count = param1.items;
         count3 = uint(String(count[0]).charCodeAt(0));
         switch(count3)
         {
            case SocketManager.count11:
               var count1:uint = uint(String(count[1]).charCodeAt(0));
               switch(0)
               {
                  case LoginProtocol.count26:
                     var count2:int = int(count[2]);
                     var count7:int = int(count[3]);
                     var items:int = int(count[4]);
                     var count8:int = int(count[5]);
                     SceneTypePrivate._ou13089(SceneTypePublic.count4,0,0,-1,0,0,"");
               }
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         SocketManager.getInstance().removeEventListener(LoginEvents.textString,this.authenticateUser);
      }
   }
}

