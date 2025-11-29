package src.tv.boombang.application.social.sharers
{
   import com.facebook.graph.*;
   import src.tv.boombang.application.social.datatypes._vw5755;
   
   public class _is4546 implements _of6728
   {
      
      public function _is4546()
      {
         super();
      }
      
      public function initialize(param1:Object = null) : void
      {
      }
      
      public function _si5405(param1:_vw5755, param2:Function = null) : void
      {
         var _loc3_:Object = new Object();
         _loc3_["message"] = param1.message;
         _loc3_["link"] = param1._cx7785;
         _loc3_["picture"] = param1._mi1279;
         _loc3_["name"] = param1.title;
         _loc3_["description"] = param1._ac11275;
         _loc3_["caption"] = param1._do5415;
         _loc3_["display"] = "popup";
         Facebook.ui("feed",_loc3_,param2);
      }
   }
}

