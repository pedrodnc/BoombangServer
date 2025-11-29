package src.modules.myHomeMultiuser
{
   import src.allData.scene.typeEscenarios.*;
   import src.modules._hq14072;
   import src.modules.login.*;
   import src.multiuser.*;
   
   public class _pb2642
   {
      
      public function _pb2642()
      {
         super();
         _jl5367.getInstance().addEventListener(_tc13553._tf16043,this._bw11981);
      }
      
      public function _bw11981(param1:_hq14072) : void
      {
         var _loc2_:Array = null;
         var _loc3_:uint = 0;
         _loc2_ = param1._lv9976;
         _loc3_ = uint(String(_loc2_[0]).charCodeAt(0));
         switch(_loc3_)
         {
            case _jl5367._bl4651:
               var _loc4_:uint = uint(String(_loc2_[1]).charCodeAt(0));
               switch(0)
               {
                  case _qd13741._jb1969:
                     var _loc5_:int = int(_loc2_[2]);
                     var _loc6_:int = int(_loc2_[3]);
                     var _loc7_:int = int(_loc2_[4]);
                     var _loc8_:int = int(_loc2_[5]);
                     _il8993._ou13089(_it11308._ga7038,0,0,-1,0,0,"");
               }
               return;
            default:
               return;
         }
      }
      
      public function destroy() : void
      {
         _jl5367.getInstance().removeEventListener(_tc13553._tf16043,this._bw11981);
      }
   }
}

