package src.modules.interfaz.fichaKeko.votos
{
   import flash.display.*;
   import flash.text.*;
   import src.person.PersonAnimation;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class VotosView
   {
      
      private static const textString:String = "mcVotesPastNum";
      
      private static const textString1:String = "ti_votos_num";
      
      private static const textString2:String = "mcVotesStar";
      
      private static const textString3:String = "mcVotesBarras";
      
      private static const textString4:String = "mcVotesBarrasProgreso";
      
      private static const textString5:String = "tfVotosDescItem";
      
      private static const textString6:String = "mcVotesBotonRollover";
      
      private var _lp13903:PersonAnimation;
      
      private var _ec6387:Function;
      
      private var _hg11010:MovieClip;
      
      private var count:int;
      
      private var textString7:String;
      
      private var textString8:String;
      
      private var _af5551:MovieClip;
      
      private var _qh11436:MovieClip;
      
      private var _dx15108:MovieClip;
      
      private var _xq15192:TextField;
      
      private var _qt9304:TextField;
      
      private var _iu13582:MovieClip;
      
      private var _jn1235:MovieClip;
      
      private var _qi13976:TextField;
      
      private var _lo15021:TextField;
      
      private var _yy699:CommoncomponentsController;
      
      private var _ow13413:CommoncomponentsController;
      
      private var isEnabled:Boolean;
      
      public function VotosView(param1:int, param2:MovieClip, param3:Function, param4:PersonAnimation, param5:String, param6:String, param7:Boolean)
      {
         super();
         this.count = param1;
         this._lp13903 = param4;
         this._ec6387 = param3;
         this._hg11010 = param2;
         this.textString7 = param5;
         this.textString8 = param6;
         this.isEnabled = param7;
         this._mb9782();
         this.refresh();
         if(!param7)
         {
            this._yy699 = new CommoncomponentsController(param2[textString6 + param1],this._af5705,this._uf13346,this._lk9289);
            this._ow13413 = new CommoncomponentsController(param2[textString6 + (param1 + VotosModel.count / 2)],this._vg2482,this._nk15889,this._gc9676);
         }
      }
      
      private function _af5705() : void
      {
         this._lk9289();
         this._ec6387(this.count);
      }
      
      private function _uf13346() : void
      {
         this._qh11436.visible = false;
         this._iu13582.visible = true;
         this._qi13976.alpha = 1;
      }
      
      private function _lk9289() : void
      {
         this._qh11436.visible = true;
         this._iu13582.visible = false;
         this._qi13976.alpha = 0.7;
      }
      
      private function _vg2482() : void
      {
         this._gc9676();
         this._ec6387(this.count + VotosModel.count / 2);
      }
      
      private function _nk15889() : void
      {
         this._dx15108.visible = false;
         this._jn1235.visible = true;
         this._lo15021.alpha = 1;
      }
      
      private function _gc9676() : void
      {
         this._dx15108.visible = true;
         this._jn1235.visible = false;
         this._lo15021.alpha = 0.7;
      }
      
      public function destroy() : void
      {
         if(this._yy699 != null)
         {
            this._yy699.destroy();
            this._yy699 = null;
         }
         if(this._ow13413 != null)
         {
            this._ow13413.destroy();
            this._ow13413 = null;
         }
      }
      
      private function _mb9782() : void
      {
         this._qh11436 = MovieClip(this._hg11010.getChildByName(textString + this.count));
         this._dx15108 = MovieClip(this._hg11010.getChildByName(textString + (this.count + VotosModel.count / 2)));
         this._xq15192 = TextField(this._qh11436.getChildByName(textString1));
         this._qt9304 = TextField(this._dx15108.getChildByName(textString1));
         this._iu13582 = MovieClip(this._hg11010.getChildByName(textString2 + this.count));
         this._jn1235 = MovieClip(this._hg11010.getChildByName(textString2 + (this.count + VotosModel.count / 2)));
         this._qi13976 = TextField(this._hg11010.getChildByName(textString5 + this.count));
         this._lo15021 = TextField(this._hg11010.getChildByName(textString5 + (this.count + VotosModel.count / 2)));
         this._af5551 = MovieClip(this._hg11010[textString3][textString4 + this.count]);
      }
      
      public function refresh() : void
      {
         var count2:int = int(this._lp13903.items3[this.count]);
         var count:int = 100 - count2;
         var count3:String = String(count2);
         var count1:String = String(count);
         if(count2 < 10)
         {
            count3 = "0" + count3;
         }
         if(count < 10)
         {
            count1 = "0" + count1;
         }
         this._qh11436.visible = true;
         this._dx15108.visible = true;
         UtilsUtils._xl9503(this._xq15192,count3);
         UtilsUtils._xl9503(this._qt9304,count1);
         this._iu13582.visible = false;
         this._jn1235.visible = false;
         UtilsUtils._xl9503(this._qi13976,this.textString7);
         UtilsUtils._xl9503(this._lo15021,this.textString8);
         this._qi13976.alpha = 0.7;
         this._lo15021.alpha = 0.7;
         this._af5551.width = count2 * 1.34;
      }
   }
}

