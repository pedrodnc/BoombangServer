package src.tv.boombang.application.user.gui.windows.deleteAccount
{
   import flash.display.MovieClip;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.utils.*;
   
   public class DeleteaccountView extends WindowsView
   {
      
      public function DeleteaccountView(param1:MovieClip, param2:String)
      {
         super(param1,param2);
         _oi4498(407);
         backgroundColor = 10027110;
         _xl9813 = 7733587;
         _kf3772 = 5505340;
         _ty11227 = 16777215;
         title = "windows.deleteAccount.deleteAccount";
         this.text = "windows.deleteAccount.warningExplanation";
         this._mh13262 = "windows.deleteAccount.warning";
         _ed7197.text = "button.oopsNo";
      }
      
      public function set text(param1:String) : void
      {
         UtilsUtils._bj8346(_xo6614["text"]["txt"],param1);
      }
      
      public function set _mh13262(param1:String) : void
      {
         UtilsUtils._bj8346(_xo6614["warningText"]["txt"],param1);
      }
   }
}

