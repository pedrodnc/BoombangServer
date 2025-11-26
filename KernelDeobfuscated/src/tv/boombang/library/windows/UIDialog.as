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
         _xw1367.getInstance()._uc3178(param1 as MovieClip,_xw1367.count5,true);
         param1.x = param2;
         param1.y = param3;
      }
      
      public function destroy(param1:*, param2:Number, param3:Number) : void
      {
         var count1:* = undefined;
         var count2:String = null;
         var count7:String = getQualifiedClassName(param1);
         if(this._yh11251[param1] != null)
         {
            param1.destroy();
            return;
         }
         for each(count1 in this._yh11251)
         {
            count2 = getQualifiedClassName(count1);
            if(count2 == count7)
            {
               param1.destroy();
               return;
            }
         }
         this._yh11251[param1] = param1;
         _xw1367.getInstance()._uc3178(param1 as MovieClip,_xw1367.count5,true);
         param1.x = param2;
         param1.y = param3;
      }
      
      public function remove(param1:*) : void
      {
         this.destroy1(param1);
      }
      
      private function destroy1(param1:*, param2:Boolean = true) : void
      {
         if(param1)
         {
            param1.destroy();
            _xw1367.getInstance().move2(param1 as MovieClip,_xw1367.count5);
            if(param2)
            {
               delete this._yh11251[param1];
            }
         }
      }
      
      public function removeAll() : void
      {
         var count2:* = undefined;
         for each(count2 in this._yh11251)
         {
            if(count2)
            {
               this.destroy1(count2,false);
            }
         }
         this._yh11251 = new Dictionary();
      }
      
      public function _ig10757(param1:Array) : void
      {
         var count:Boolean = false;
         var count3:* = undefined;
         var count1:* = undefined;
         var count2:int = 0;
         for(count3 in this._yh11251)
         {
            count1 = this._yh11251[count3];
            count = true;
            if(count1)
            {
               count2 = 0;
               while(count2 < param1.length)
               {
                  if(count1 == param1[count2])
                  {
                     count = false;
                     break;
                  }
                  count2++;
               }
               if(count)
               {
                  this.remove(count1);
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
