package src.tv.boombang.library.steps
{
   import flash.display.MovieClip;
   import src.tv.boombang.commons.interfaces.*;
   
   public class Steps extends MovieClip implements Interfaces, Interfaces
   {
      
      protected var _id:String;
      
      public function Steps(param1:String)
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
            param1 = StepsView.textString;
         }
         dispatchEvent(new StepsView(param1,param2));
      }
   }
}

