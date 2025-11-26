package src.modules.doors
{
   import flash.display.MovieClip;
   import src.*;
   import src.allData.*;
   import src.modules.interfaz.InterfazManager;
   import src.tv.boombang.core.datatypes.navigationMenu.NavigationmenuModel;
   import src.utils.commonComponents.*;
   
   public class DoorsModel
   {
      
      public var _ut4147:NavigationmenuModel;
      
      public var _gr6380:Doors;
      
      private var _fv7771:MovieClip;
      
      private var _wp13295:InterfazManager;
      
      public var isEnabled:Boolean;
      
      public var count:int;
      
      public var count1:int;
      
      public var count2:int;
      
      private var isEnabled1:Boolean;
      
      private var _gu14138:CommoncomponentsController;
      
      private var _cb6554:MovieClip;
      
      public function DoorsModel(param1:int, param2:NavigationmenuModel, param3:Doors, param4:InterfazManager, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.count = param1;
         this._ut4147 = param2;
         this._gr6380 = param3;
         this._wp13295 = param4;
         this.isEnabled = param5;
         this.count1 = param6;
         this.count2 = param7;
         this.isEnabled1 = param8;
         this._lq897();
      }
      
      public function _lq897() : void
      {
         this._fv7771 = _xw1367.getInstance()._qd11184(this._gr6380.textString,_xw1367.count4);
         if(this._fv7771 != null)
         {
            this._gu14138 = new CommoncomponentsController(this._fv7771,this.hide,this._sm5059,this._hu8327);
         }
      }
      
      public function destroy() : void
      {
         if(this._gu14138 != null)
         {
            this._gu14138.destroy();
            this._gu14138 = null;
         }
      }
      
      public function _rd2341(param1:MovieClip) : void
      {
         this._cb6554 = param1;
      }
      
      public function destroy() : void
      {
         this.destroy();
      }
      
      public function _ol8098() : NavigationmenuModel
      {
         return this._ut4147;
      }
      
      public function _cj15551(param1:Boolean, param2:NavigationmenuModel, param3:int, param4:int) : void
      {
         this.isEnabled = param1;
         this._ut4147 = param2;
         this.count1 = param3;
         this.count2 = param4;
      }
      
      public function hide() : void
      {
         if(this.isEnabled)
         {
            if(UserSession.getInstance().isEnabled8)
            {
               this._wp13295._kw12357(this._ut4147,"");
            }
         }
         else
         {
            this._wp13295._ui11605.stop(this);
         }
      }
      
      public function _sm5059() : void
      {
         if(this.isEnabled)
         {
         }
      }
      
      public function _hu8327() : void
      {
         if(this.isEnabled)
         {
         }
      }
      
      public function get isEnabled() : Boolean
      {
         return this.isEnabled1;
      }
   }
}

