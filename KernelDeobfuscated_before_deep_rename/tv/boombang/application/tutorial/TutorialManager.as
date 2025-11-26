package src.tv.boombang.application.tutorial
{
   import flash.events.Event;
   import src.tv.boombang.application.tutorial.gui.*;
   import src.tv.boombang.library.windows.*;
   
   public class TutorialManager
   {
      
      private static var _wm7633:TutorialGUI;
      
      private static var _rk8656:Boolean = false;
      
      public function TutorialManager()
      {
         super();
      }
      
      public static function _vo14571(param1:String) : void
      {
         if(_wm7633 == null)
         {
            _wm7633 = new TutorialGUI();
            _wm7633.addEventListener(TutorialGUI.COMPLETE,_wv5410);
         }
         UIDialog.getInstance().add(_wm7633,0,0);
         _wm7633.setState(param1);
      }
      
      private static function _wv5410(param1:Event) : void
      {
         destroy();
      }
      
      public static function destroy() : void
      {
         _rk8656 = false;
         UIDialog.getInstance().remove(_wm7633);
         _wm7633.removeEventListener(TutorialGUI.COMPLETE,_wv5410);
         _wm7633.destroy();
      }
      
      public static function get activate() : Boolean
      {
         return _rk8656;
      }
      
      public static function set activate(param1:Boolean) : void
      {
         _rk8656 = param1;
      }
   }
}

