package src.modules.privados.editObject.pastillas
{
   import flash.display.MovieClip;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class PastillasView extends Pastillas
   {
      
      public static const textString:String = "mcButtonPrev";
      
      public static const textString1:String = "mcButtonNext";
      
      private var _le2220:CommoncomponentsController;
      
      private var _uw11256:CommoncomponentsController;
      
      private var items:Array;
      
      private var textString2:String;
      
      public function PastillasView(param1:int, param2:MovieClip, param3:Array, param4:int, param5:Function, param6:String)
      {
         super(param1,param2,param4,param5);
         this.items = param3;
         this.textString2 = param6;
         if(count < 0)
         {
            count = 0;
         }
         if(count >= param3.length)
         {
            count = param3.length - 1;
         }
         this._le2220 = new CommoncomponentsController(param2[textString],this._up7308);
         this._uw11256 = new CommoncomponentsController(param2[textString1],this._tm15586);
         this._cl5909();
      }
      
      public function getString() : String
      {
         return this.items[count];
      }
      
      public function _ec14195() : int
      {
         return count;
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
            if(this.textString2 == "")
            {
               UtilsUtils._bj8346(label,this.items[count]);
            }
            else
            {
               UtilsUtils._bj8346(label,this.textString2);
            }
         }
         if(_wr9563 != null)
         {
            UtilsUtils._bj8346(_wr9563,count + 1 + "/" + this.items.length);
         }
      }
      
      private function _up7308() : void
      {
         --count;
         if(count < 0)
         {
            count = this.items.length - 1;
         }
         this._cl5909();
         _mx11236(id,count);
      }
      
      private function _tm15586() : void
      {
         ++count;
         if(count >= this.items.length)
         {
            count = 0;
         }
         this._cl5909();
         _mx11236(id,count);
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

