package src.modules.interfaz.mochila
{
   import flash.display.*;
   import flash.events.*;
   import src.allData.mochila.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class MochilaModel
   {
      
      private static const textString:String = "mcBarraSet";
      
      private static const textString1:String = "mcIconoSel";
      
      private static const urlString26:String = "mcClose";
      
      private static const textString3:String = "mcFichaBaseFiltro";
      
      private static const textString4:String = "tfText";
      
      private static const textString5:String = "tfTituloSet";
      
      private static const count:int = 100;
      
      private static const urlString44:String = "rollout";
      
      private static const textString1:String = "rollover";
      
      private static const textString8:String = "press";
      
      private var _ut4648:MovieClip;
      
      private var _ki1682:MochilaModel;
      
      private var _im12039:MochilaModel;
      
      private var count1:int;
      
      private var _rr3911:CommoncomponentsController;
      
      private var items:Array;
      
      public function MochilaModel(param1:MochilaModel, param2:MochilaModel, param3:MovieClip)
      {
         super();
         this._ut4648 = param3;
         this._ki1682 = param1;
         this._im12039 = param2;
         this.items = new Array();
         this._ma13571();
         this._rr3911 = new CommoncomponentsController(param3[urlString26],this.authenticateUser2);
         UtilsUtils._xl9503(param3[textString5],param2._jt11415);
         param3.visible = false;
      }
      
      public static function _iw12439(param1:int) : int
      {
         switch(param1)
         {
            case MochilaModel.count1:
               return 0;
            case MochilaModel.count2:
               return 1;
            case MochilaModel.count3:
            case MochilaModel.count4:
            case MochilaModel.count5:
            case MochilaModel.count6:
            case MochilaModel.count7:
            case MochilaModel.count8:
            case MochilaModel.count9:
               return param1;
            case MochilaModel.count10:
            case MochilaModel.count11:
            case MochilaModel.count12:
            case MochilaModel.count13:
            case MochilaModel.count14:
               return param1 - 1;
            default:
               return param1 + 1;
         }
      }
      
      public static function _qw8665(param1:int) : int
      {
         switch(param1)
         {
            case 0:
               return MochilaModel.count1;
            case 1:
               return MochilaModel.count2;
            case MochilaModel.count3:
            case MochilaModel.count4:
            case MochilaModel.count5:
            case MochilaModel.count6:
            case MochilaModel.count7:
            case MochilaModel.count8:
               return param1;
            case MochilaModel.count9:
            case MochilaModel.count10:
            case MochilaModel.count11:
            case MochilaModel.count12:
            case MochilaModel.count13:
            case MochilaModel.count14:
               return param1 + 1;
            default:
               return param1 - 1;
         }
      }
      
      public function _ma13571() : void
      {
         this.count1 = 0;
      }
      
      public function show() : void
      {
         if(this._ut4648.visible == false)
         {
            this._ut4648.visible = true;
            this._xm7394();
            this._ej3288();
            this._he10985();
         }
         else
         {
            this.authenticateUser2();
         }
      }
      
      public function authenticateUser2() : void
      {
         if(this._ut4648.visible == true)
         {
            this._ut4648.visible = false;
            this.move();
            this.destroy();
         }
      }
      
      public function destroy() : void
      {
         this.authenticateUser2();
         if(this._rr3911 != null)
         {
            this._rr3911.destroy();
            this._rr3911 = null;
         }
      }
      
      public function get _lx15907() : MovieClip
      {
         return this._ut4648;
      }
      
      private function _ej3288() : void
      {
         var count2:MovieClip = null;
         var count:CommoncomponentsView = null;
         var count3:int = 0;
         this.items = new Array();
         while(count3 < count)
         {
            count2 = MovieClip(this._ut4648[textString + count3]);
            count = new CommoncomponentsView(count2,this.stop1,this._im12039._hs11452[count3],count3);
            count._ct5529 = this.stop1;
            count._ix10516 = this.stop2;
            this.items.push(count);
            count3++;
         }
      }
      
      private function destroy() : void
      {
         var count2:CommoncomponentsView = null;
         var count:int = 0;
         while(count < this.items.length)
         {
            count2 = this.items[count];
            if(count2 != null)
            {
               count2.destroy();
               count2 = null;
            }
            count++;
         }
         this.items.length = 0;
      }
      
      private function stop(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function stop1(param1:CommoncomponentsView) : void
      {
         var count:int = param1.id;
         if(count != this.count1)
         {
            this.count1 = count;
            this._he10985();
            MovieClip(this._ut4648[textString1]).gotoAndStop(this.count1 + 1);
            this._ki1682._is11991(_qw8665(count),-1);
            this._ki1682._eu383();
         }
      }
      
      private function stop1(param1:CommoncomponentsView) : void
      {
         var count:int = param1.id;
         if(count != this.count1)
         {
            MovieClip(this._ut4648[textString1]).gotoAndStop(count + 1);
         }
      }
      
      private function stop2(param1:CommoncomponentsView) : void
      {
         var count:int = param1.id;
         if(count != this.count1)
         {
            MovieClip(this._ut4648[textString1]).gotoAndStop(this.count1 + 1);
         }
      }
      
      private function _he10985() : void
      {
         var count2:CommoncomponentsView = null;
         var count:int = 0;
         while(count < this.items.length)
         {
            count2 = CommoncomponentsView(this.items[count]);
            if(count2 != null)
            {
               count2.selected = false;
            }
            count++;
         }
         count2 = CommoncomponentsView(this.items[this.count1]);
         if(count2 != null)
         {
            count2.selected = true;
         }
      }
      
      public function stop4() : void
      {
         this.count1 = 0;
         this._he10985();
         MovieClip(this._ut4648[textString1]).gotoAndStop(this.count1 + 1);
      }
      
      public function stop5() : void
      {
         this.count1 = -1;
         this._he10985();
         MovieClip(this._ut4648[textString1]).gotoAndStop(this.count1 + 1);
      }
      
      private function _xm7394() : void
      {
         MovieClip(this._ut4648[textString3]).addEventListener(MouseEvent.MOUSE_DOWN,this.stop);
      }
      
      private function move() : void
      {
         MovieClip(this._ut4648[textString3]).removeEventListener(MouseEvent.MOUSE_DOWN,this.stop);
      }
   }
}

