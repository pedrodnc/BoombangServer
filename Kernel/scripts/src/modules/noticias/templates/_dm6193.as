package src.modules.noticias.templates
{
   import flash.display.MovieClip;
   import src.modules.noticias.*;
   
   public class _dm6193 extends _eu10600
   {
      
      public function _dm6193(param1:_dh6227)
      {
         super(param1);
      }
      
      override public function _xo7981(param1:MovieClip) : Boolean
      {
         if(!super._xo7981(param1))
         {
            return false;
         }
         if(_ng2446.length < 3)
         {
            return false;
         }
         _ie15596 = new _kv1552();
         _ie15596._dc1122(_ng2446[0],_mc[_ri2165]);
         _ei895 = new _kv1552();
         _ei895._dc1122(_ng2446[1],_mc[_so7372]);
         _re2075 = new _kv1552();
         _re2075._dc1122(_ng2446[2],_mc[_oc2294]);
         _xl6127 = new _kv1552();
         _xl6127._dc1122(_ng2446[3],_mc[_od5485]);
         return true;
      }
   }
}

