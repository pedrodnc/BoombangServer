package src.modules.multiplayerGames.games.shuriken
{
   import flash.display.MovieClip;
   import flash.events.*;
   import src.modules.multiplayerGames._xl8523;
   
   public class _uh13501
   {
      
      private static const _fo1524:String = "Animar";
      
      private static const _wf12137:String = "NinjaHit";
      
      private var _ga10958:int;
      
      private var _qo6460:int;
      
      private var position:int;
      
      private var _oc15062:MovieClip;
      
      private var _ye13935:MovieClip;
      
      private var _tv9779:_xl8523;
      
      public function _uh13501(param1:int, param2:int, param3:int, param4:MovieClip, param5:MovieClip, param6:_xl8523)
      {
         super();
         this._ga10958 = param1;
         this._tv9779 = param6;
         this._qo6460 = param2;
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
         this._oc15062.gotoAndPlay(_fo1524);
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
         this._tv9779._nw10476(this._ga10958,param1.stageX,param1.stageY);
      }
      
      public function _pm7451() : void
      {
         if(this._oc15062 != null)
         {
            this._oc15062[_wf12137].gotoAndPlay(_fo1524);
         }
      }
      
      public function get _je2588() : int
      {
         return this._ga10958;
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

