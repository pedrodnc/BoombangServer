package src.tv.boombang.library.windows
{
   import flash.display.*;
   import flash.utils.*;
   import src.*;
   
   public class UIDialog
   {
      
      private static var _instance:UIDialog;
      
      private var _yh11251:Dictionary;
      
      public function UIDialog(param1:_ea5266)
      {
         super();
         if(!(param1 is _ea5266))
         {
            throw new Error("CardsLauncher is a singleton class, use getInstance() instead");
         }
         this._yh11251 = new Dictionary();
      }
      
      public static function getInstance() : UIDialog
      {
         if(_instance == null)
         {
            _instance = new UIDialog(new _ea5266());
         }
         return _instance;
      }
      
      public function add(param1:*, param2:Number, param3:Number) : void
      {
         if(this._yh11251[param1] != null)
         {
            param1.destroy();
            return;
         }
         this._yh11251[param1] = param1;
         _xw1367.getInstance()._uc3178(param1 as MovieClip,_xw1367._wa4051,true);
         param1.x = param2;
         param1.y = param3;
      }
      
      public function _pk9279(param1:*, param2:Number, param3:Number) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         var _loc6_:String = getQualifiedClassName(param1);
         if(this._yh11251[param1] != null)
         {
            param1.destroy();
            return;
         }
         for each(_loc4_ in this._yh11251)
         {
            _loc5_ = getQualifiedClassName(_loc4_);
            if(_loc5_ == _loc6_)
            {
               param1.destroy();
               return;
            }
         }
         this._yh11251[param1] = param1;
         _xw1367.getInstance()._uc3178(param1 as MovieClip,_xw1367._wa4051,true);
         param1.x = param2;
         param1.y = param3;
      }
      
      public function remove(param1:*) : void
      {
         this._pg3861(param1);
      }
      
      private function _pg3861(param1:*, param2:Boolean = true) : void
      {
         if(param1)
         {
            param1.destroy();
            _xw1367.getInstance()._na10792(param1 as MovieClip,_xw1367._wa4051);
            if(param2)
            {
               delete this._yh11251[param1];
            }
         }
      }
      
      public function removeAll() : void
      {
         var _loc1_:* = undefined;
         for each(_loc1_ in this._yh11251)
         {
            if(_loc1_)
            {
               this._pg3861(_loc1_,false);
            }
         }
         this._yh11251 = new Dictionary();
      }
      
      public function _ig10757(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:int = 0;
         for(_loc3_ in this._yh11251)
         {
            _loc4_ = this._yh11251[_loc3_];
            _loc2_ = true;
            if(_loc4_)
            {
               _loc5_ = 0;
               while(_loc5_ < param1.length)
               {
                  if(_loc4_ == param1[_loc5_])
                  {
                     _loc2_ = false;
                     break;
                  }
                  _loc5_++;
               }
               if(_loc2_)
               {
                  this.remove(_loc4_);
               }
            }
         }
      }
   }
}

class _ea5266
{
   
   public function _ea5266()
   {
      super();
   }
}
