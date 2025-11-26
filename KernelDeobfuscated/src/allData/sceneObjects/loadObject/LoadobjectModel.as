package src.allData.sceneObjects.loadObject
{
   import flash.display.*;
   import flash.net.URLLoader;
   import src.allData.sceneObjects.dataObjects.SceneObjectData;
   import src.config.*;
   
   public class LoadobjectModel
   {
      
      public static const urlString:String = "mcObject";
      
      public static const urlString1:String = "mcObjectRef";
      
      public static const COMPLETE:int = 1;
      
      public static const count:int = 2;
      
      public static const count1:int = 3;
      
      public static const count2:int = 0;
      
      public static const count3:int = 1;
      
      public var obj:SceneObjectData;
      
      public var urlString2:String;
      
      public var _wb7100:URLLoader;
      
      public var _sk4816:Loader;
      
      public var state:int;
      
      public var type:int;
      
      public var cancelable:Boolean;
      
      public var count4:int = 0;
      
      public function LoadobjectModel(param1:SceneObjectData, param2:String, param3:int)
      {
         super();
         this.obj = param1;
         this.urlString2 = Configuration.urlString28 + param2;
         this.state = count1;
         this.type = param3;
      }
      
      public function get textString17() : String
      {
         return this.urlString2 + this._kr3650;
      }
      
      public function get _kr3650() : String
      {
         var count2:* = "";
         switch(this.type)
         {
            case count2:
               count2 = this.obj._sl11700._hf10429 + ".swf";
               break;
            case count3:
               count2 = this.obj._sl11700._hf10429 + "Catalog.png";
         }
         return count2;
      }
      
      public function _vl10474(param1:DisplayObject) : void
      {
         switch(this.type)
         {
            case count2:
               var count:MovieClip = MovieClip(param1);
               this.obj._sl11700._kc6805 = null;
               break;
            case count3:
               this.obj._sl11700._nk15832 = Bitmap(param1);
         }
         this.state = LoadobjectModel.COMPLETE;
      }
   }
}

