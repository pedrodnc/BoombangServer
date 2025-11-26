package src.modules.noticias.templates
{
   import flash.display.MovieClip;
   import src.modules.noticias.*;
   import src.utils.*;
   
   public class _vn13054 extends _eu10600
   {
      
      public function _vn13054(param1:_dh6227)
      {
         super(param1);
      }
      
      override public function _xo7981(param1:MovieClip) : Boolean
      {
         if(!super._xo7981(param1))
         {
            return false;
         }
         _cj5550 = param1[_el2728];
         _yq8362._xl9503(_cj5550,_vw13338);
         if(_ng2446.length <= 0)
         {
            return false;
         }
         _ie15596 = new _kv1552();
         _ie15596._dc1122(_ng2446[0],_mc[_ri2165]);
         return true;
      }
   }
}

