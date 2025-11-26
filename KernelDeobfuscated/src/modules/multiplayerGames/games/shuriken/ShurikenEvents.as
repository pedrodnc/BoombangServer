package src.modules.multiplayerGames.games.shuriken
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.modules.multiplayerGames.MultiplayergamesController;
   
   public class ShurikenEvents
   {
      
      private static const textString:String = "Animar";
      
      private static const textString1:String = "NinjaHit";
      
      private var count:int;
      
      private var count1:int;
      
      private var position:int;
      
      private var _oc15062:MovieClip;
      
      private var _ye13935:MovieClip;
      
      private var _tv9779:MultiplayergamesController;
      
      public function ShurikenEvents(param1:int, param2:int, param3:int, param4:MovieClip, param5:MovieClip, param6:MultiplayergamesController)
      {
         super();
         this.count = param1;
         this._tv9779 = param6;
         this.count1 = param2;
         this.position = param3;
         this._oc15062 = param4;
         this._ye13935 = param5;
         this.init();
      }
      
      private function init() : void
      {
         this._ye13935.addChild(this._oc15062);
         this.addListeners();
         this._ye13935.mouseEnabled = true;
         this._ye13935.buttonMode = true;
         this._oc15062.gotoAndPlay(textString);
      }
      
      public function destroy() : void
      {
         this.removeListeners();
         this._ye13935.removeChild(this._oc15062);
         this._oc15062 = null;
         this._ye13935 = null;
      }
      
      public function loop() : void
      {
      }
      
      private function addListeners() : void
      {
         this._oc15062.addEventListener(MouseEvent.MOUSE_DOWN,this._fd15800);
      }
      
      private function removeListeners() : void
      {
         this._oc15062.removeEventListener(MouseEvent.MOUSE_DOWN,this._fd15800);
      }
      
      private function _fd15800(param1:MouseEvent) : void
      {
         this._tv9779.handleSocket3(this.count,param1.stageX,param1.stageY);
      }
      
      public function _pm7451() : void
      {
         if(this._oc15062 != null)
         {
            this._oc15062[textString1].gotoAndPlay(textString);
         }
      }
      
      public function get _je2588() : int
      {
         return this.count;
      }
      
      public function get _ou8824() : MovieClip
      {
         return this._ye13935;
      }
      
      public function get _wu6437() : MovieClip
      {
         return this._oc15062;
      }
      
      public function get _ey9519() : int
      {
         return this.position;
      }
   }
}

