package src.modules.noticias.templates
{
   import flash.display.MovieClip;
   import src.modules.noticias.*;
   import src.utils.*;
   
   public class TemplatesUtils extends TemplatesView
   {
      
      public function TemplatesUtils(param1:Templates)
      {
         super(param1);
      }
      
      override public function _xo7981(param1:MovieClip) : Boolean
      {
         if(!super._xo7981(param1))
         {
            return false;
         }
         _cj5550 = param1[textString2];
         UtilsUtils._xl9503(_cj5550,textString13);
         if(items.length <= 0)
         {
            return false;
         }
         _ie15596 = new NoticiasController();
         _ie15596._dc1122(items[0],_mc[textString3]);
         return true;
      }
   }
}

