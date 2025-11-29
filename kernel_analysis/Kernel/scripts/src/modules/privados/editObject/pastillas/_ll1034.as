package src.modules.privados.editObject.pastillas
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _ll1034 extends _di3958
   {
      
      private static const _um3148:String = "Empty";
      
      private static const _el2728:String = "txtLabel";
      
      protected var _xs11571:TextField;
      
      private var _ul15804:String;
      
      private var _if13463:Array;
      
      private var _ie12514:_fj3480;
      
      public function _ll1034(param1:int, param2:MovieClip, param3:Array, param4:int, param5:Function, param6:String)
      {
         super(param1,param2,param4,param5);
         this._if13463 = param3;
         this._ul15804 = param6;
         if(_jr1130 < 0)
         {
            _jr1130 = 0;
         }
         if(_jr1130 >= param3.length)
         {
            _jr1130 = param3.length - 1;
         }
         var _loc7_:Boolean = true;
         if(param3[param4] == _um3148)
         {
            _loc7_ = false;
         }
         this._ie12514 = new _fj3480(param2,_loc7_,this._jf14411);
         this._xs11571 = TextField(param2.getChildByName(_el2728));
         if(this._xs11571 != null)
         {
            _yq8362._bj8346(param2[_el2728],param6);
         }
      }
      
      public function _jf14411() : void
      {
         if(!this._ie12514._sh2391())
         {
            this._ie12514._iv1460();
         }
         ++_jr1130;
         if(_jr1130 >= this._if13463.length)
         {
            _jr1130 = 0;
         }
         _mx11236(id,_jr1130);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._ie12514 != null)
         {
            this._ie12514.destroy();
            this._ie12514 = null;
         }
      }
   }
}

