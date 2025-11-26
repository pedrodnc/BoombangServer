package src.allData.sceneObjects.loadObject
{
   import flash.display.*;
   import flash.net.URLLoader;
   import src.allData.sceneObjects.dataObjects.SceneObjectData;
   import src.config.*;
   
   public class LoadobjectModel
   {
      
      public static const _lk8138:String = "mcObject";
      
      public static const _fb189:String = "mcObjectRef";
      
      public static const COMPLETE:int = 1;
      
      public static const _rw10615:int = 2;
      
      public static const _nx5835:int = 3;
      
      public static const _dt15459:int = 0;
      
      public static const _tr9213:int = 1;
      
      public var obj:SceneObjectData;
      
      public var _kg3936:String;
      
      public var _wb7100:URLLoader;
      
      public var _sk4816:Loader;
      
      public var state:int;
      
      public var type:int;
      
      public var cancelable:Boolean;
      
      public var _mf11604:int = 0;
      
      public function LoadobjectModel(param1:SceneObjectData, param2:String, param3:int)
      {
         super();
         this.obj = param1;
         this._kg3936 = Configuration._su9470 + param2;
         this.state = _nx5835;
         this.type = param3;
      }
      
      public function get _le1402() : String
      {
         return this._kg3936 + this._kr3650;
      }
      
      public function get _kr3650() : String
      {
         var _loc1_:* = "";
         switch(this.type)
         {
            case _dt15459:
               _loc1_ = this.obj._sl11700._hf10429 + ".swf";
               break;
            case _tr9213:
               _loc1_ = this.obj._sl11700._hf10429 + "Catalog.png";
         }
         return _loc1_;
      }
      
      public function _vl10474(param1:DisplayObject) : void
      {
         switch(this.type)
         {
            case _dt15459:
               var _loc2_:MovieClip = MovieClip(param1);
               this.obj._sl11700._kc6805 = null;
               break;
            case _tr9213:
               this.obj._sl11700._nk15832 = Bitmap(param1);
         }
         this.state = LoadobjectModel.COMPLETE;
      }
   }
}

