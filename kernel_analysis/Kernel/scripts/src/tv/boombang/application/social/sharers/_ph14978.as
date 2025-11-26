package src.tv.boombang.application.social.sharers
{
   import flash.external.*;
   import src.tv.boombang.application.social.datatypes._vw5755;
   
   public class _ph14978 implements _of6728
   {
      
      public function _ph14978()
      {
         super();
      }
      
      public function initialize(param1:Object = null) : void
      {
      }
      
      public function _si5405(param1:_vw5755, param2:Function = null) : void
      {
         var _loc3_:String = "http://twitter.com/share?via=boombang&text=" + encodeURIComponent(param1.message) + "&url=" + encodeURIComponent(param1._cx7785);
         if(ExternalInterface.available)
         {
            ExternalInterface.call("window.open",_loc3_,"_blank","width=500,height=450");
         }
      }
   }
}

