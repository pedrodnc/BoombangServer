package src.modules.privados.editObject.pastillas
{
   import flash.display.MovieClip;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _ye9620 extends _di3958
   {
      
      public static const _ig7291:String = "mcButtonPrev";
      
      public static const _on13290:String = "mcButtonNext";
      
      private var _le2220:_kg183;
      
      private var _uw11256:_kg183;
      
      private var _if13463:Array;
      
      private var _ul15804:String;
      
      public function _ye9620(param1:int, param2:MovieClip, param3:Array, param4:int, param5:Function, param6:String)
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
         this._le2220 = new _kg183(param2[_ig7291],this._up7308);
         this._uw11256 = new _kg183(param2[_on13290],this._tm15586);
         this._cl5909();
      }
      
      public function _co14346() : String
      {
         return this._if13463[_jr1130];
      }
      
      public function _ec14195() : int
      {
         return _jr1130;
      }
      
      public function _av14604() : int
      {
         return id;
      }
      
      public function _ec9581() : void
      {
         if(label != null)
         {
            label.visible = false;
         }
         if(_wr9563 != null)
         {
            _wr9563.visible = false;
         }
      }
      
      public function _qn5067() : void
      {
         if(label != null)
         {
            label.visible = true;
         }
         if(_wr9563 != null)
         {
            _wr9563.visible = true;
         }
      }
      
      private function _cl5909() : void
      {
         if(label != null)
         {
            if(this._ul15804 == "")
            {
               _yq8362._bj8346(label,this._if13463[_jr1130]);
            }
            else
            {
               _yq8362._bj8346(label,this._ul15804);
            }
         }
         if(_wr9563 != null)
         {
            _yq8362._bj8346(_wr9563,_jr1130 + 1 + "/" + this._if13463.length);
         }
      }
      
      private function _up7308() : void
      {
         --_jr1130;
         if(_jr1130 < 0)
         {
            _jr1130 = this._if13463.length - 1;
         }
         this._cl5909();
         _mx11236(id,_jr1130);
      }
      
      private function _tm15586() : void
      {
         ++_jr1130;
         if(_jr1130 >= this._if13463.length)
         {
            _jr1130 = 0;
         }
         this._cl5909();
         _mx11236(id,_jr1130);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._le2220 != null)
         {
            this._le2220.destroy();
            this._le2220 = null;
         }
         if(this._uw11256 != null)
         {
            this._uw11256.destroy();
            this._uw11256 = null;
         }
      }
   }
}

