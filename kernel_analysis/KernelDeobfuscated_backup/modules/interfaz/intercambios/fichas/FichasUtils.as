package src.modules.interfaz.intercambios.fichas
{
   import flash.display.MovieClip;
   import src.modules.interfaz.intercambios._to7430;
   import src.utils.fichas._ox15379;
   
   public class _rl15781 extends _qi6762
   {
      
      public function _rl15781(param1:MovieClip, param2:_ox15379, param3:Function, param4:_to7430, param5:MovieClip)
      {
         super(param1,param2,param3,param4,param5);
         if(_rr3911 != null)
         {
            _rr3911._hu12389();
         }
      }
      
      override public function _db5584(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = super._db5584(param1,param2);
         _kd11412();
         _ng13807();
         _yd2370();
         _gd5603.setState(_gx10790._rf11928);
         _vx11551._hu12389();
         _wi14966._hu12389();
         return _loc3_;
      }
      
      override public function _gh11749() : void
      {
         _vx11551._db5584();
         _vx11551.setState(_gx10790._rf11928);
      }
   }
}

