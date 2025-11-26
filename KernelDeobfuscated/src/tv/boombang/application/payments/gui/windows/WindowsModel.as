package src.tv.boombang.application.payments.gui.windows
{
   import flash.display.*;
   import src.tv.boombang.application.global.gui.components.*;
   import src.tv.boombang.application.global.gui.windows.WindowsView;
   import src.tv.boombang.application.payments.gui.components.ComponentsModel;
   import src.tv.boombang.commons.interfaces.*;
   import src.tv.boombang.core.*;
   import src.tv.boombang.core.datatypes.payments.PaymentsModel;
   
   public class WindowsModel extends WindowsView implements Interfaces
   {
      
      private var _bc46:ComponentsView;
      
      private var _xf11202:ComponentsView;
      
      private var _bg1129:ComponentsView;
      
      private var _af14672:ComponentsModel;
      
      private var _data:PaymentsModel;
      
      public function WindowsModel(param1:MovieClip, param2:String, param3:PaymentsModel)
      {
         var count1:* = null;
         super(param1,param2,ComponentsModel._hm8630);
         this._data = param3;
         if(_xo6614["descriptionTxt"])
         {
            this._bc46 = new ComponentsView(_xo6614["descriptionTxt"] as MovieClip);
            this._bc46.txt = "window.payments.wrongCode";
         }
         if(_xo6614["infoText"])
         {
            this._xf11202 = new ComponentsView(_xo6614["infoText"] as MovieClip);
            this._xf11202.txt = this._data.info;
         }
         if(_xo6614["cost"])
         {
            if(Boolean(this._data.change) && this._data.change.length > 0)
            {
               this._bg1129 = new ComponentsView(_xo6614["cost"] as MovieClip);
               count1 = CoreModel._mn8930.getString1("window.payments.circleCredits",this._data.change[0]._gd9340);
               count1 = count1 + ("<font color=\'#FFFFFF\'>" + this._data.change[0]._sb10522 + " " + this._data.change[0]._cr1013);
               count1 = count1 + "<br>";
               count1 = count1 + CoreModel._mn8930.getString1("window.payments.by" + this._data.type);
               count1 = count1 + "</font>";
               this._bg1129.txt = count1;
            }
            else
            {
               _xo6614["cost"].visible = false;
            }
         }
         this._mr4345._oi4498(170);
         this._mr4345._nd15322(9);
         this._mr4345._yi13970(6);
         this._sa10596._vr14785 = 86663;
         this._sa10596.text = "window.payments.btnValidate";
      }
      
      override public function destroy() : void
      {
         super.destroy();
         removeChild(_xo6614);
         _xo6614 = null;
      }
   }
}

