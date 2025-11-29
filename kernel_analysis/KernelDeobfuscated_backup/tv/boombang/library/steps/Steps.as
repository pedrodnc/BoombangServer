package src.tv.boombang.library.steps
{
   import flash.display.MovieClip;
   import src.tv.boombang.commons.interfaces.*;
   
   public class _pd14567 extends MovieClip implements _jk15536, _dt4939
   {
      
      protected var _id:String;
      
      public function _pd14567(param1:String)
      {
         super();
         this._id = param1;
      }
      
      public function destroy() : void
      {
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      protected function _nk11935(param1:String = null, param2:Object = null) : void
      {
         if(param1 == null)
         {
            param1 = _pm4313._yo4206;
         }
         dispatchEvent(new _pm4313(param1,param2));
      }
   }
}

