package src.modules.multiplayerGames.games.shuriken
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.*;
   import src.utils.*;
   
   public class _yi8671 extends MovieClip
   {
      
      private static const _ky7641:int = 0;
      
      private static const _nq6213:int = 2;
      
      private static const _sy13932:int = 3;
      
      private static const _rq7159:int = 6;
      
      private static const _wf12137:String = "NinjaHit";
      
      private const _ht9404:int = 4;
      
      private const _gl7621:Number = 6;
      
      private var estado:int = 0;
      
      private var _pu16028:int = 0;
      
      private var _lm13562:MovieClip;
      
      private var _ov7825:MovieClip;
      
      private var _eh6107:MovieClip;
      
      private var _oc15062:_uh13501;
      
      private var _hg820:Function;
      
      private var _dh6376:Point;
      
      private var _lb6264:Point;
      
      private var vector:Point;
      
      private var distance:Number;
      
      private var _ad8012:Number;
      
      private var _lm10998:Number = 0;
      
      private var _ax456:Number = 0;
      
      private var m:Number = 0;
      
      private var v:Number = 0;
      
      public function _yi8671(param1:MovieClip, param2:_uh13501, param3:MovieClip, param4:Function)
      {
         super();
         this._lm13562 = param1;
         this._ov7825 = param2._wu6437;
         this._oc15062 = param2;
         this._eh6107 = param3;
         this._lm13562.addChild(param3);
         this._hg820 = param4;
         this.vector = new Point(0,0);
         this.addListeners();
      }
      
      public function loop(param1:Event) : void
      {
         var e:Event = param1;
         switch(this.estado)
         {
            case _ky7641:
               if(this._eh6107 == null || this._ov7825 == null)
               {
                  this.destroy();
               }
               ++this._pu16028;
               try
               {
                  if(!(this._oc15062 != null && this._oc15062._wu6437[_wf12137] != null))
                  {
                     this.destroy();
                     return;
                  }
                  this._dh6376 = this._oc15062._wu6437[_wf12137].localToGlobal(new Point(0,0));
               }
               catch(e:Error)
               {
                  destroy();
                  return;
               }
               this._lb6264 = this._eh6107.localToGlobal(new Point(0,0));
               this._lm10998 = this._dh6376.x - this._lb6264.x;
               this._ax456 = this._dh6376.y - this._lb6264.y;
               this.distance = Math.sqrt(this._lm10998 * this._lm10998 + this._ax456 * this._ax456);
               if(this.v == 0)
               {
                  this.v = this.distance;
               }
               this.vector.x = this._lm10998 / this.distance;
               this.vector.y = this._ax456 / this.distance;
               this._eh6107.x += this.vector.x * this.v / this._gl7621;
               this._eh6107.y += this.vector.y * this.v / this._gl7621;
               if(this._pu16028 >= this._gl7621)
               {
                  this.estado = _nq6213;
                  this._pu16028 = 0;
               }
               return;
            case _nq6213:
               if(this._pu16028 == 0 && this._oc15062 != null)
               {
                  this._oc15062._pm7451();
               }
               if(this._eh6107 != null)
               {
                  this._eh6107.visible = false;
               }
               ++this._pu16028;
               if(this._pu16028 >= this._ht9404)
               {
                  this.estado = _sy13932;
               }
               return;
            case _sy13932:
               this.destroy();
               return;
            default:
               return;
         }
      }
      
      public function addListeners() : void
      {
         this.addEventListener(Event.ENTER_FRAME,this.loop);
      }
      
      public function removeListeners() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this.loop);
      }
      
      public function destroy() : void
      {
         this.removeListeners();
         if(this._oc15062 != null)
         {
            this._hg820(this._oc15062._je2588);
         }
         if(this._eh6107 != null && this._lm13562 != null)
         {
            _xv14798.cleanChildsMovieclip(this._lm13562);
         }
      }
      
      public function _uy3050() : int
      {
         if(this._oc15062 != null)
         {
            return this._oc15062._je2588;
         }
         return -1;
      }
   }
}

