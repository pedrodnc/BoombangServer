package src.utils
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   
   public class _cj12538
   {
      
      private var _mc:MovieClip;
      
      private var _labels:Array;
      
      public function _cj12538(param1:MovieClip)
      {
         super();
         this._mc = param1;
         this._labels = param1.currentLabels;
      }
      
      public function _ah6327(param1:String, param2:Function) : void
      {
         var _loc3_:int = int(this._av9505(param1));
         _loc3_--;
         this._mc.addFrameScript(_loc3_,param2);
      }
      
      public function _yf7634(param1:String) : void
      {
         var _loc2_:int = int(this._av9505(param1));
         _loc2_--;
         this._mc.addFrameScript(_loc2_,null);
      }
      
      private function _av9505(param1:String) : int
      {
         var _loc2_:* = undefined;
         var _loc3_:FrameLabel = null;
         for(_loc2_ in this._labels)
         {
            _loc3_ = this._labels[_loc2_];
            if(param1 == _loc3_.name)
            {
               return _loc3_.frame;
            }
         }
         throw new Error("The label \'" + param1 + "\' does not exists at mc \'" + this._mc.name + "\'.");
      }
   }
}

