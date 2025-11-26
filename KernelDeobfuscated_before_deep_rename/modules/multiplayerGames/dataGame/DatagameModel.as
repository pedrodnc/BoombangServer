package src.modules.multiplayerGames.dataGame
{
   import flash.display.MovieClip;
   
   public class DatagameModel
   {
      
      public static const _ct10078:int = 4;
      
      public var _dt3794:Array;
      
      public var _lg13977:MovieClip;
      
      public var _xm10115:XML;
      
      public var _oa3310:int;
      
      public var _nb15238:int;
      
      public var _xx6456:int;
      
      public var _fl1604:MovieClip;
      
      public var _da1009:MovieClip;
      
      public function DatagameModel()
      {
         super();
      }
      
      public function init(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:DatagameModel = null;
         this._dt3794 = new Array();
         if(param1.length % _ct10078 == 0)
         {
            _loc2_ = 0;
            while(_loc2_ < param1.length / _ct10078)
            {
               _loc3_ = int(param1[_loc2_ * _ct10078]);
               _loc4_ = String(param1[_loc2_ * _ct10078 + 1]);
               _loc5_ = int(param1[_loc2_ * _ct10078 + 2]);
               _loc6_ = int(param1[_loc2_ * _ct10078 + 3]);
               _loc7_ = new DatagameModel(_loc3_,_loc4_,_loc5_,_loc6_);
               this._dt3794.push(DatagameModel(_loc7_));
               _loc2_++;
            }
         }
      }
   }
}

