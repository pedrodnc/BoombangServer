package src.modules.interfaz.fichaKeko.ninjaManager
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.allData.*;
   import src.modules.interfaz.InterfazController;
   import src.person.PersonController;
   import src.utils.*;
   
   public class NinjamanagerController extends EventDispatcher
   {
      
      private var _dg4724:UserSession;
      
      private var _jy4188:PersonController;
      
      private var _cy15918:InterfazController;
      
      private var _dt16173:NinjamanagerController;
      
      private var count:int;
      
      private var isEnabled:Boolean;
      
      public function NinjamanagerController(param1:int, param2:PersonController, param3:MovieClip, param4:InterfazController)
      {
         var count2:Boolean = false;
         super();
         this._jy4188 = param2;
         this._cy15918 = param4;
         this.count = param1;
         this._dg4724 = UserSession.getInstance();
         this.isEnabled = this._dg4724._wl10859(this.count);
         if(this._dg4724._cj5718 == this.count)
         {
            count2 = true;
         }
         this._dt16173 = new NinjamanagerController(param3,this._ae3231,this.isEnabled,count2,this._sm5059,this._hu8327);
      }
      
      public function get _cj5718() : int
      {
         return this.count;
      }
      
      public function destroy() : void
      {
         if(this._dt16173 != null)
         {
            this._dt16173.destroy();
            this._dt16173 = null;
         }
      }
      
      private function _hu8327() : void
      {
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OUT));
      }
      
      private function _sm5059() : void
      {
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OVER));
      }
      
      public function _su15800() : void
      {
         if(this._dt16173 != null)
         {
            if(this._dg4724._cj5718 == this.count)
            {
               this._dt16173.selected = true;
            }
            else
            {
               this._dt16173.selected = false;
            }
         }
      }
      
      public function _iv3666() : void
      {
         this.isEnabled = this._dg4724._wl10859(this.count);
         if(this.isEnabled)
         {
            this._dt16173.show();
            this._dt16173._dy867 = true;
         }
      }
      
      private function _ae3231() : void
      {
         if(!this.isEnabled)
         {
            return;
         }
         if(this._jy4188._su11409())
         {
            return;
         }
         if(this._dt16173._av12265())
         {
            return;
         }
         if(UtilsUtils._jx14255(UtilsUtils._vs16058,3000))
         {
            if(this._dt16173.selected)
            {
               this._cy15918.handleSocket16();
               this._dt16173.selected = false;
            }
            else
            {
               this._cy15918.handleSocket17(this.count);
               this._dt16173.selected = true;
            }
         }
      }
   }
}

