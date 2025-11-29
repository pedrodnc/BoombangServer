package src.utils.commonComponents
{
   import flash.display.*;
   
   public class _ld10202 extends MovieClip
   {
      
      public static const _ra14588:String = "Vacio";
      
      public static const _sw10226:String = "Correcto";
      
      public static const ERROR:String = "Error";
      
      public static const _hv1902:String = "Espera";
      
      protected var _mc:MovieClip;
      
      public function _ld10202(param1:MovieClip)
      {
         this._mc = param1;
         if(this._mc)
         {
            this._mc.mouseChildren = false;
         }
         super();
      }
      
      public function _yf12156(param1:String) : void
      {
         if(this._mc == null)
         {
            return;
         }
         switch(param1)
         {
            case _ra14588:
               MovieClip(this._mc).gotoAndStop(_ra14588);
               return;
            case _sw10226:
               MovieClip(this._mc).gotoAndStop(_sw10226);
               return;
            case ERROR:
               MovieClip(this._mc).gotoAndStop(ERROR);
               return;
            case _hv1902:
               MovieClip(this._mc).gotoAndStop(_hv1902);
               return;
            default:
               return;
         }
      }
   }
}

