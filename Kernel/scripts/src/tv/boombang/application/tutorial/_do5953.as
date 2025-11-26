package src.tv.boombang.application.tutorial
{
   import flash.events.Event;
   import src.tv.boombang.application.tutorial.gui.*;
   import src.tv.boombang.library.windows.*;
   
   public class _do5953
   {
      
      private static var _wm7633:_vk15050;
      
      private static var _rk8656:Boolean = false;
      
      public function _do5953()
      {
         super();
      }
      
      public static function _vo14571(param1:String) : void
      {
         if(_wm7633 == null)
         {
            _wm7633 = new _vk15050();
            _wm7633.addEventListener(_vk15050.COMPLETE,_wv5410);
         }
         _pr2018.getInstance().add(_wm7633,0,0);
         _wm7633.setState(param1);
      }
      
      private static function _wv5410(param1:Event) : void
      {
         destroy();
      }
      
      public static function destroy() : void
      {
         _rk8656 = false;
         _pr2018.getInstance().remove(_wm7633);
         _wm7633.removeEventListener(_vk15050.COMPLETE,_wv5410);
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

