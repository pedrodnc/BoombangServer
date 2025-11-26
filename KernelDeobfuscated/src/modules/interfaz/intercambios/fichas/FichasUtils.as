package src.modules.interfaz.intercambios.fichas
{
   import flash.display.MovieClip;
   import src.modules.interfaz.intercambios.IntercambiosModel;
   import src.utils.fichas.FichasUtils;
   
   public class FichasUtils extends FichasModel
   {
      
      public function FichasUtils(param1:MovieClip, param2:FichasUtils, param3:Function, param4:IntercambiosModel, param5:MovieClip)
      {
         super(param1,param2,param3,param4,param5);
         if(_rr3911 != null)
         {
            _rr3911.authenticateUser2();
         }
      }
      
      override public function show(param1:int, param2:int) : Boolean
      {
         var count3:Boolean = super.show(param1,param2);
         _kd11412();
         _ng13807();
         _yd2370();
         _gd5603.setState(FichasView._rf11928);
         _vx11551.authenticateUser2();
         _wi14966.authenticateUser2();
         return count3;
      }
      
      override public function _gh11749() : void
      {
         _vx11551.show();
         _vx11551.setState(FichasView._rf11928);
      }
   }
}

