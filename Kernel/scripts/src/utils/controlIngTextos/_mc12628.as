package src.utils.controlIngTextos
{
   import flash.events.*;
   import flash.text.*;
   
   public class _mc12628
   {
      
      private var _wc2771:TextField;
      
      private var _dt15977:TextField = null;
      
      public var _hp2629:int;
      
      public function _mc12628(param1:TextField, param2:int = 0)
      {
         super();
         this._wc2771 = param1;
         this._hp2629 = param2;
         param1.addEventListener(TextEvent.TEXT_INPUT,this._ru6802);
      }
      
      public static function _st6176(param1:TextField, param2:String, param3:int = 0) : Boolean
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc6_:TextField = new TextField();
         _loc6_.wordWrap = false;
         _loc6_.setTextFormat(param1.getTextFormat());
         param1.text = "";
         while(_loc7_ < param2.length)
         {
            _loc4_ = param2.charAt(_loc7_);
            _loc6_.text = _loc4_;
            _loc5_ = _loc6_.getLineMetrics(0).width;
            if(param1.textWidth + _loc5_ >= param1.width - param3)
            {
               return true;
            }
            param1.appendText(_loc4_);
            _loc7_++;
         }
         return false;
      }
      
      public static function _nr8915(param1:TextField, param2:String, param3:Number) : Boolean
      {
         var _loc4_:String = param1.text;
         param1.text = param2;
         if(param1.getLineMetrics(0).width > param3)
         {
            param1.text = _loc4_;
            return false;
         }
         param1.text = _loc4_;
         return true;
      }
      
      public function destroy() : void
      {
         if(this._wc2771 != null)
         {
            this._wc2771.removeEventListener(TextEvent.TEXT_INPUT,this._ru6802);
         }
      }
      
      private function _ru6802(param1:TextEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:TextField = TextField(param1.target);
         if(this._dt15977 == null)
         {
            this._dt15977 = new TextField();
            this._dt15977.wordWrap = false;
         }
         this._dt15977.setTextFormat(_loc3_.getTextFormat());
         this._dt15977.text = param1.text;
         var _loc4_:int = int(this._dt15977.getLineMetrics(0).width);
         if(_loc3_.textWidth + _loc4_ >= _loc3_.width - this._hp2629)
         {
            this._dt15977.text = _loc3_.selectedText;
            _loc2_ = int(this._dt15977.getLineMetrics(0).width);
            if(_loc3_.textWidth + _loc4_ - _loc2_ >= _loc3_.width - this._hp2629)
            {
               param1.preventDefault();
            }
         }
      }
   }
}

