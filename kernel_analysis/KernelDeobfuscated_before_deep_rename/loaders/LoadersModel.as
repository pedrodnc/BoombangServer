package src.loaders
{
   import flash.display.Loader;
   import flash.net.URLLoader;
   
   public class LoadersModel
   {
      
      public static const COMPLETE:int = 1;
      
      public static const _rw10615:int = 2;
      
      public static const _nx5835:int = 3;
      
      public var _dg12846:LoadersManager;
      
      public var _wb7100:URLLoader;
      
      public var _sk4816:Loader;
      
      public var state:int;
      
      public var element:Object;
      
      public var _mf11604:int = 0;
      
      public var url:String;
      
      public function LoadersModel(param1:LoadersManager)
      {
         super();
         this._dg12846 = param1;
         this.state = _nx5835;
      }
   }
}

