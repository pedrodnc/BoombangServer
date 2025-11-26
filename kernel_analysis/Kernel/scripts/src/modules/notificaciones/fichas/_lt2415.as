package src.modules.notificaciones.fichas
{
   import src.allData.texts.*;
   
   public class _lt2415
   {
      
      private static const _of7212:String = "notificaciones";
      
      public var _yu9298:String;
      
      public var _sw3647:String;
      
      public var _dx4931:Array;
      
      public var _nu6666:String;
      
      public var _rd7434:String;
      
      public var _cg588:String;
      
      public var _hi7754:String;
      
      public var _sy11760:String;
      
      public var _ri13350:String;
      
      public var _lf7030:String;
      
      private var _pk11557:XML;
      
      public function _lt2415()
      {
         super();
         this._ah13783();
         this._qc13224();
         this._xf11205();
      }
      
      private function _ah13783() : void
      {
         this._pk11557 = new XML(_yh6510._eo5308[_of7212].toXMLString());
      }
      
      private function _xf11205() : void
      {
         this._pk11557 = null;
      }
      
      private function _qc13224() : void
      {
         var _loc1_:int = 0;
         this._yu9298 = this._pk11557.attribute("silverPanel_textoFichaSilver");
         this._sw3647 = this._pk11557.attribute("silverPanel_textoFichaSilverEmail");
         this._dx4931 = new Array();
         while(_loc1_ < 25)
         {
            this._dx4931[_loc1_] = this._pk11557.attribute("dailyBonus_gifTitle" + (_loc1_ + 1));
            _loc1_++;
         }
         this._nu6666 = this._pk11557.attribute("dailyBonus_fichaTitle");
         this._rd7434 = this._pk11557.attribute("dailyBonus_fichaText");
         this._cg588 = this._pk11557.attribute("dailyBonus_bubble1");
         this._hi7754 = this._pk11557.attribute("dailyBonus_bubble2");
         this._sy11760 = this._pk11557.attribute("dailyBonus_bubble3");
         this._ri13350 = this._pk11557.attribute("dailyBonus_bubble4");
         this._lf7030 = this._pk11557.attribute("dailyBonus_timeText");
      }
   }
}

