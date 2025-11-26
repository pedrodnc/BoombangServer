package src.utils.commonComponents
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.utils.*;
   
   public class _fv7127 extends _ld10202
   {
      
      private static const _me3568:String = "tfText";
      
      private var _yx15145:String;
      
      private var _lj470:String;
      
      private var _mj1795:String;
      
      private var _cj5550:TextField;
      
      public function _fv7127(param1:MovieClip, param2:String = null, param3:String = null, param4:String = null)
      {
         super(param1);
         this._cj5550 = _mc[_me3568] as TextField;
         this._yx15145 = param2;
         this._lj470 = param3;
         this._mj1795 = param4;
      }
      
      override public function _yf12156(param1:String) : void
      {
         var _loc2_:String = null;
         super._yf12156(param1);
         if(this._cj5550 == null)
         {
            return;
         }
         switch(param1)
         {
            case _sw10226:
               if(this._yx15145 == null)
               {
                  return;
               }
               _loc2_ = this._yx15145;
               break;
            case ERROR:
               if(this._lj470 == null)
               {
                  return;
               }
               _loc2_ = this._lj470;
               break;
            case _hv1902:
               if(this._mj1795 == null)
               {
                  return;
               }
               _loc2_ = this._mj1795;
               break;
            case _ra14588:
               _loc2_ = "";
         }
         _yq8362._xl9503(this._cj5550,_loc2_);
      }
   }
}

