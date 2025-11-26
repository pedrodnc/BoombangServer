package src.person.animations
{
   import flash.display.MovieClip;
   import src.allData.scene.typeEscenarios._il6324;
   import src.person._um8624;
   import src.utils.*;
   
   public class _ed4977 extends _je4353
   {
      
      private var _qj956:int;
      
      private var _ye5046:int;
      
      public function _ed4977(param1:_um8624, param2:_il6324, param3:MovieClip, param4:int, param5:int, param6:Function, param7:String)
      {
         super(param1,param3,param4,param5,param6);
         this._ej9531(param7);
      }
      
      public function _ej9531(param1:String) : void
      {
         var _loc2_:int = param1.length;
         if(_loc2_ < 5)
         {
            this._qj956 = 1;
         }
         else if(_loc2_ < 10)
         {
            this._qj956 = 2;
         }
         else if(_loc2_ < 15)
         {
            this._qj956 = 3;
         }
         else if(_loc2_ < 20)
         {
            this._qj956 = 4;
         }
         else
         {
            this._qj956 = 5;
         }
         this._ye5046 = 0;
      }
      
      override public function loop() : void
      {
         if(_xb9909())
         {
            ++this._ye5046;
            if(this._ye5046 >= this._qj956)
            {
               _dx13345();
            }
            else
            {
               _gb9590.gotoAndStop(1);
               _xv14798._tv8248(_gb9590);
            }
         }
      }
   }
}

