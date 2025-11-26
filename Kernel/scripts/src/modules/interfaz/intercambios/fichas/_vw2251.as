package src.modules.interfaz.intercambios.fichas
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import src.modules.interfaz.intercambios.*;
   import src.utils.fichas._ox15379;
   
   public class _vw2251 extends _qi6762
   {
      
      private static const _vu12025:int = _le9907._qh11016;
      
      private static const _sm5178:int = _le9907._cj11822;
      
      private static const _ak11559:int = 590;
      
      private static const _ss14941:int = 800;
      
      private var _wg330:Function;
      
      private var _fw12448:Function;
      
      private var _el11828:Function;
      
      private var _wo1582:Point;
      
      public var _fc10878:_qi6762;
      
      public function _vw2251(param1:MovieClip, param2:_ox15379, param3:Function, param4:_to7430, param5:MovieClip, param6:Function, param7:Function)
      {
         super(param1,param2,param3,param4,param5);
         this._wg330 = param6;
         this._fw12448 = param7;
         this._el11828 = param3;
      }
      
      override public function _db5584(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = super._db5584(param1,param2);
         _kd11412();
         _ng13807();
         _yd2370();
         _vx11551._hu12389();
         this._wo1582 = null;
         if(_loc3_)
         {
            this._fn3450();
         }
         return _loc3_;
      }
      
      override public function _hu12389() : Boolean
      {
         this._hs9639();
         return super._hu12389();
      }
      
      override protected function _if13516() : void
      {
         if(this._wg330 != null)
         {
            _uh12820();
            this._wg330();
         }
      }
      
      override protected function _bb14211() : void
      {
         if(this._fw12448 != null)
         {
            this._fw12448();
         }
      }
      
      override protected function _oe1126() : void
      {
         if(this._el11828 != null)
         {
            this._el11828();
         }
      }
      
      protected function _fn3450() : void
      {
         MovieClip(_cw11838[_rj8907]).addEventListener(MouseEvent.MOUSE_DOWN,this._cb2206);
         MovieClip(_cw11838[_rj8907]).stage.addEventListener(MouseEvent.MOUSE_MOVE,this._cb2206);
         MovieClip(_cw11838[_rj8907]).stage.addEventListener(MouseEvent.MOUSE_UP,this._cb2206);
      }
      
      protected function _hs9639() : void
      {
         MovieClip(_cw11838[_rj8907]).removeEventListener(MouseEvent.MOUSE_DOWN,this._cb2206);
         if(MovieClip(_cw11838[_rj8907]).stage != null)
         {
            MovieClip(_cw11838[_rj8907]).stage.removeEventListener(MouseEvent.MOUSE_MOVE,this._cb2206);
            MovieClip(_cw11838[_rj8907]).stage.removeEventListener(MouseEvent.MOUSE_UP,this._cb2206);
         }
      }
      
      protected function _cb2206(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         switch(param1.type)
         {
            case MouseEvent.MOUSE_DOWN:
               this._wo1582 = new Point(param1.stageX,param1.stageY);
               return;
            case MouseEvent.MOUSE_UP:
               this._wo1582 = null;
               return;
            case MouseEvent.MOUSE_MOVE:
               if(this._wo1582 != null)
               {
                  _loc2_ = param1.stageX - this._wo1582.x;
                  _loc3_ = param1.stageY - this._wo1582.y;
                  _loc4_ = int(MovieClip(_cw11838[_rj8907]).width);
                  _loc5_ = int(MovieClip(_cw11838[_rj8907]).height);
                  if(_cw11838.x + _loc2_ < _vu12025)
                  {
                     _loc2_ = 0;
                  }
                  else if(_cw11838.x + _loc4_ + _loc2_ > _ss14941)
                  {
                     _loc2_ = 0;
                  }
                  if(_cw11838.y + _loc3_ < _sm5178)
                  {
                     _loc3_ = 0;
                  }
                  else if(this._fc10878._ew826() + _loc5_ + _loc3_ > _ak11559)
                  {
                     _loc3_ = 0;
                  }
                  this._wo1582.x = param1.stageX;
                  this._wo1582.y = param1.stageY;
                  _tg7746(_pj8617() + _loc2_);
                  _ii11517(_ew826() + _loc3_);
                  this._fc10878._tg7746(this._fc10878._pj8617() + _loc2_);
                  this._fc10878._ii11517(this._fc10878._ew826() + _loc3_);
               }
               return;
            default:
               return;
         }
      }
   }
}

