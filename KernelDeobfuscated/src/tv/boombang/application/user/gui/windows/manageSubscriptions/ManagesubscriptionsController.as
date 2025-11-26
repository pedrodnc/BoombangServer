package src.tv.boombang.application.user.gui.windows.manageSubscriptions
{
   import flash.display.MovieClip;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.commons.interfaces.*;
   
   public class ManagesubscriptionsController extends WindowsView implements Interfaces
   {
      
      private var _ye750:ComponentsView;
      
      private var _fu4677:ComponentsView;
      
      private var _mc15708:ComponentsView;
      
      public function ManagesubscriptionsController(param1:MovieClip, param2:String, param3:Boolean)
      {
         super(param1,param2);
         this._ye750 = new ComponentsView(_xo6614["description"]);
         this._fu4677 = new ComponentsView(_xo6614["newsLetter"]);
         this._mc15708 = new ComponentsView(_xo6614["checkBox"]);
         _qi5262.push(this._mc15708);
         super.title = "windows.manageSubscriptions.title";
         this._ye750.txt = "windows.manageSubscriptions.description";
         this._fu4677.txt = "windows.validateEmail.newsletter";
         this._mc15708.selected = param3;
      }
      
      override protected function _ly12555() : Object
      {
         var count2:Object = new Object();
         count2["newsletterEnabled"] = this._mc15708.selected;
         return count2;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         removeChild(_xo6614);
         _xo6614 = null;
      }
   }
}

