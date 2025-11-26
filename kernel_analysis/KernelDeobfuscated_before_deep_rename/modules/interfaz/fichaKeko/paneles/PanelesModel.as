package src.modules.interfaz.fichaKeko.paneles
{
   import flash.display.MovieClip;
   import src.allData.*;
   import src.modules.interfaz.InterfazController;
   import src.modules.interfaz.fichaKeko.FichakekoView;
   import src.modules.interfaz.fichaKeko.booble.BoobleUtils;
   import src.modules.interfaz.fichaKeko.interacciones.*;
   import src.person.*;
   
   public class PanelesModel extends PanelesView
   {
      
      private static const _pm11907:String = "mcEmoticon";
      
      public static const _kc13660:int = 8;
      
      public static const _ky12016:int = 0;
      
      public static const _ms12376:int = 1;
      
      public static const _sm7414:int = 2;
      
      public static const _rv15822:int = 3;
      
      public static const _fy4507:int = 4;
      
      public static const _ui14003:int = 5;
      
      public static const _eh2655:int = 6;
      
      public static const _oe11814:int = 7;
      
      private var _gw3116:Array;
      
      private var _fr6840:PersonController;
      
      private var _dv14621:InterfazController;
      
      public function PanelesModel(param1:MovieClip, param2:MovieClip, param3:PersonController, param4:InterfazController, param5:BoobleUtils)
      {
         var _loc6_:InteraccionesView = null;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         super(param1,param2,param5);
         this._fr6840 = param3;
         this._dv14621 = param4;
         this._gw3116 = new Array();
         while(_loc8_ < _kc13660)
         {
            _loc7_ = new Object();
            _loc7_.id = _loc8_;
            if(_loc8_ == _fy4507)
            {
               _loc6_ = new Interacciones(param3._md8722,param2[_pm11907 + _loc8_],this._yf249,null,null,_loc7_);
            }
            else
            {
               _loc6_ = new InteraccionesView(param3._md8722,param2[_pm11907 + _loc8_],this._yf249,null,null,_loc7_);
            }
            this._gw3116.push(_loc6_);
            _loc8_++;
         }
         this._ha80();
      }
      
      override public function _db5584(param1:FichakekoView) : void
      {
         super._db5584(param1);
         this._ha80();
      }
      
      override public function _hu12389() : void
      {
         super._hu12389();
      }
      
      override public function destroy() : void
      {
         var _loc1_:InteraccionesView = null;
         super.destroy();
         for each(_loc1_ in this._gw3116)
         {
            _loc1_.destroy();
            _loc1_ = null;
         }
         this._gw3116.length = 0;
      }
      
      private function _yf249(param1:InteraccionesView, param2:Object) : void
      {
         if(!this._fr6840._yi6398())
         {
            return;
         }
         var _loc3_:Array = [PersonModel._ft11477,PersonModel._pq3567,PersonModel._hh6084,PersonModel._we2906,PersonModel._gd13066,PersonModel._lx10506,PersonModel._li10585,PersonModel._lo13715];
         this._dv14621._gs5811(this._fr6840._md8722._jr9311,_loc3_[param2.id]);
      }
      
      public function _kc1802() : void
      {
         var _loc1_:InteraccionesView = null;
         for each(_loc1_ in this._gw3116)
         {
            _loc1_._kc1802(this._fr6840._md8722);
         }
      }
      
      override public function _ha80() : void
      {
         var _loc1_:InteraccionesView = null;
         for each(_loc1_ in this._gw3116)
         {
            _loc1_.setState(UserSession.getInstance()._bo414);
         }
      }
   }
}

