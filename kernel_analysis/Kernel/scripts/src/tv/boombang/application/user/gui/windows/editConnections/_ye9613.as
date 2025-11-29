package src.tv.boombang.application.user.gui.windows.editConnections
{
   import flash.display.MovieClip;
   import src.tv.boombang.application.global.gui.components._td7832;
   import src.tv.boombang.application.social.datatypes._sw5071;
   
   public class _ye9613 extends _td7832
   {
      
      public function _ye9613(param1:MovieClip, param2:_sw5071, param3:String)
      {
         super(param1,param2,null,param3);
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         _xo6614.mouseEnabled = param1;
         _xo6614.enabled = param1;
         _xo6614.useHandCursor = param1;
      }
   }
}

