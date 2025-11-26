package src.modules.singleplayerGames.games.atunino
{
   import flash.display.*;
   import src.allData.*;
   import src.events.*;
   import src.modules.singleplayerGames.*;
   import src.modules.singleplayerGames.games.GamesController;
   
   public class AtuninoModel extends GamesController
   {
      
      public static const _nr3911:int = 156;
      
      public static const _jj12423:int = 53;
      
      public function AtuninoModel(param1:MovieClip)
      {
         super(param1);
         this.init();
      }
      
      override public function init() : void
      {
         _jm390.stage.frameRate = 30;
         this._ef2831();
         this._xi15453();
         var _loc1_:int = UserSession.getInstance()._jn11596 - 1;
         var _loc2_:Array = UserSession.getInstance().colors.colors;
         this._ah10112(_loc1_,_loc2_);
         this.addListeners();
      }
      
      override public function _ah10112(param1:int, param2:Array) : void
      {
         _jm390.init(param1,param2);
      }
      
      override public function comenzarJuego(param1:Object) : void
      {
         _jm390.comenzarJuego(param1);
      }
      
      override public function _nc2597(param1:Object) : void
      {
         _jm390.comenzarNivelRespuesta(param1);
      }
      
      override public function _ha2745(param1:Object) : void
      {
         _jm390.terminarNivelRespuesta(param1);
      }
      
      override public function terminarJuego(param1:Object) : void
      {
         _jm390.terminarJuego(param1);
      }
      
      override public function _xv11864(param1:Object) : void
      {
         _jm390.perderVidaRespuesta(param1);
      }
      
      override public function _kj11324(param1:Object) : void
      {
         _jm390.recogerItemRespuesta(param1);
      }
      
      override public function destroy() : void
      {
         _jm390.stage.frameRate = 16;
         this.removeListeners();
      }
      
      override protected function addListeners() : void
      {
         _jm390.addEventListener(Singleplayergames._pv14527,this._ia11998);
         _jm390.addEventListener(Singleplayergames._ct7607,this._ia11998);
         _jm390.addEventListener(Singleplayergames._uh11266,this._ia11998);
         _jm390.addEventListener(Singleplayergames._va7347,this._ia11998);
         _jm390.addEventListener(Singleplayergames._jb4575,this._ia11998);
         _jm390.addEventListener(Singleplayergames._hp1156,this._ia11998);
         _jm390.addEventListener(Singleplayergames._wf6785,this._ia11998);
      }
      
      override protected function removeListeners() : void
      {
         _jm390.removeEventListener(Singleplayergames._pv14527,this._ia11998);
         _jm390.removeEventListener(Singleplayergames._ct7607,this._ia11998);
         _jm390.removeEventListener(Singleplayergames._uh11266,this._ia11998);
         _jm390.removeEventListener(Singleplayergames._va7347,this._ia11998);
         _jm390.removeEventListener(Singleplayergames._jb4575,this._ia11998);
         _jm390.removeEventListener(Singleplayergames._hp1156,this._ia11998);
         _jm390.removeEventListener(Singleplayergames._wf6785,this._ia11998);
      }
      
      override protected function _ef2831() : void
      {
         _jm390.x = _nr3911;
         _jm390.y = _jj12423;
      }
      
      private function _xi15453() : void
      {
         var _loc1_:Sprite = null;
         _loc1_ = new Sprite();
         _loc1_.graphics.lineStyle(1,0,0);
         _loc1_.graphics.beginFill(16711680,0.5);
         _loc1_.graphics.drawRect(0,0,700,500);
         _loc1_.graphics.endFill();
         _loc1_.x = _nr3911;
         _loc1_.y = _jj12423;
         DisplayObjectContainer(_jm390.parent).addChild(_loc1_);
         _jm390.mask = _loc1_;
      }
      
      private function _ia11998(param1:*) : void
      {
         var _loc2_:EventsModel = null;
         switch(param1.type)
         {
            case Singleplayergames._pv14527:
               _loc2_ = new EventsModel(Singleplayergames._pv14527);
               dispatchEvent(_loc2_);
               return;
            case Singleplayergames._ct7607:
               _loc2_ = new EventsModel(Singleplayergames._ct7607);
               _loc2_.data = param1.data;
               dispatchEvent(_loc2_);
               return;
            case Singleplayergames._jb4575:
               _loc2_ = new EventsModel(Singleplayergames._jb4575);
               _loc2_.data = param1.data;
               dispatchEvent(_loc2_);
               return;
            case Singleplayergames._uh11266:
               _loc2_ = new EventsModel(Singleplayergames._uh11266);
               _loc2_.data = param1.data;
               dispatchEvent(_loc2_);
               return;
            case Singleplayergames._va7347:
               _loc2_ = new EventsModel(Singleplayergames._va7347);
               _loc2_.data = param1.data;
               dispatchEvent(_loc2_);
               return;
            case Singleplayergames._hp1156:
               _loc2_ = new EventsModel(Singleplayergames._hp1156);
               _loc2_.data = param1.data;
               dispatchEvent(_loc2_);
               return;
            case Singleplayergames._wf6785:
               _loc2_ = new EventsModel(Singleplayergames._wf6785);
               _loc2_.data = param1.data;
               dispatchEvent(_loc2_);
               return;
            default:
               return;
         }
      }
   }
}

