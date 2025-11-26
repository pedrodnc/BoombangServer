package src.tv.boombang.application.user.gui.windows.changeEmail
{
   import flash.display.MovieClip;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.utils.*;
   
   public class ChangeemailView extends WindowsView
   {
      
      public function ChangeemailView(param1:MovieClip, param2:String)
      {
         super(param1,param2);
         _xo6614["troubleshooting1"]["txt"]["width"] -= 20;
         _xo6614["troubleshooting2"]["txt"]["width"] -= 20;
         _xo6614["troubleshooting3"]["txt"]["width"] -= 20;
         _xo6614["processCompleteText"]["txt"].height = 100;
         _xo6614["troubleshooting2"]["txt"].height = 80;
      }
      
      public function set _lt13864(param1:String) : void
      {
         UtilsUtils._xl9503(_xo6614["processCompleteText"]["txt"],param1);
      }
      
      public function set _qb10255(param1:String) : void
      {
         UtilsUtils._bj8346(_xo6614["troubleshootingTitle"]["txt"],param1);
      }
      
      public function set _jj10740(param1:String) : void
      {
         UtilsUtils._bj8346(_xo6614["troubleshooting1"]["txt"],param1);
      }
      
      public function set _wj3692(param1:String) : void
      {
         UtilsUtils._bj8346(_xo6614["troubleshooting2"]["txt"],param1);
      }
      
      public function set _yd3812(param1:String) : void
      {
         UtilsUtils._bj8346(_xo6614["troubleshooting3"]["txt"],param1);
      }
   }
}

