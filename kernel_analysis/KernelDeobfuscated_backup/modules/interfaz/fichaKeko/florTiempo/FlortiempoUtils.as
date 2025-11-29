package src.modules.interfaz.fichaKeko.florTiempo
{
   import flash.display.*;
   import src.person._um8624;
   import src.utils.*;
   
   public class _ym10720
   {
      
      private static const _ge10666:String = "mcPetal_";
      
      private static const _ve656:String = "mcPetalsShadow_";
      
      private static const _fl7445:int = 12;
      
      private static const _wn15854:String = "tfText";
      
      private static const _ck2112:int = 12;
      
      private var _jf8323:MovieClip;
      
      public function _ym10720(param1:MovieClip)
      {
         super();
         this._jf8323 = param1;
      }
      
      public function destroy() : void
      {
      }
      
      public function update(param1:_um8624) : void
      {
         var _loc4_:int = 0;
         var _loc2_:Number = param1._xp3365 / _ck2112;
         var _loc3_:int = (_loc2_ - int(_loc2_)) * _ck2112;
         while(_loc4_ < _fl7445)
         {
            if(_loc4_ <= _loc3_)
            {
               MovieClip(this._jf8323[_ge10666 + _loc4_]).visible = true;
               MovieClip(this._jf8323[_ve656 + _loc4_]).visible = true;
            }
            else
            {
               MovieClip(this._jf8323[_ge10666 + _loc4_]).visible = false;
               MovieClip(this._jf8323[_ve656 + _loc4_]).visible = false;
            }
            _loc4_++;
         }
         if(int(_loc2_) > 0)
         {
            _yq8362._xl9503(this._jf8323[_wn15854],int(_loc2_).toString());
         }
         else
         {
            _yq8362._xl9503(this._jf8323[_wn15854]," ");
         }
      }
   }
}

