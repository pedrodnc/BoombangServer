package src.modules.chooseScene.panelTips
{
   import flash.display.MovieClip;
   import src.modules.chooseScene._nw11343;
   import src.utils.fichas.*;
   
   public class _pn3311 extends _wq1414
   {
      
      public static const _gl09455:String = "cce34636";
      
      private static var _ji8735:int = 0;
      
      private var _yo7341:MovieClip;
      
      private var _gy10361:_nw11343;
      
      private var _nd6595:Array;
      
      public function _pn3311(param1:MovieClip, param2:_nw11343, param3:Function)
      {
         param3 = null;
         this._nd6595 = param2._bn12118;
         this._yo7341 = param1;
         this._gy10361 = param2;
         this._sl1853();
         super(param1,_tr10766,param3);
      }
      
      override public function _db5584(param1:int, param2:int) : Boolean
      {
         this._sl1853();
         _je7979();
         this._nb15536();
         return super._db5584(param1,param2);
      }
      
      private function _sl1853() : void
      {
         _tr10766 = new _ox15379(this._gy10361._ey9558,this._nd6595[_ji8735]);
      }
      
      private function _nb15536() : void
      {
         ++_ji8735;
         if(_ji8735 >= this._nd6595.length)
         {
            _ji8735 = 0;
         }
      }
   }
}

