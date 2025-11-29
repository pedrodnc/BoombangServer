package
{
   import flash.display.MovieClip;
   
   public class BaseBanner extends MovieClip
   {
      
      public static const CODE_PRESS_NONE:int = 1;
      
      public static const CODE_PRESS_CLICK_BANNER:int = 2;
      
      public static const CODE_PRESS_CLOSE:int = 3;
      
      protected var idBanner:int;
      
      protected var link:String;
      
      protected var nameBanner:String;
      
      protected var codePress:int;
      
      protected var integracionBanner:String;
      
      public function BaseBanner()
      {
         super();
         this.codePress = CODE_PRESS_NONE;
      }
      
      public function init() : void
      {
      }
      
      public function loop() : void
      {
      }
      
      public function destroy() : void
      {
      }
      
      public function getCodePress() : int
      {
         return this.codePress;
      }
      
      public function setPropsBanner(param1:int, param2:String, param3:String, param4:String) : void
      {
         this.idBanner = param1;
         this.link = param2;
         this.nameBanner = param3;
         this.integracionBanner = param4;
      }
      
      public function _BaseBannerInit() : void
      {
         this.init();
      }
      
      public function _BaseBannerLoop() : void
      {
         this.loop();
      }
      
      public function _BaseBannerDestroy() : void
      {
         this.destroy();
      }
      
      public function _BaseBannerSetPropsBanner(param1:int, param2:String, param3:String, param4:String) : void
      {
         this.setPropsBanner(param1,param2,param3,param4);
      }
      
      public function _BaseBannerGetCodePress() : int
      {
         return this.getCodePress();
      }
   }
}

