package src.modules.interfaz.fichaKeko.votos
{
   import flash.display.*;
   import flash.text.*;
   import src.allData.*;
   import src.modules.interfaz.fichaKeko.booble.*;
   import src.modules.interfaz.fichaKeko.paneles.PanelesView;
   import src.utils.*;
   
   public class VotosModel extends PanelesView
   {
      
      public static const count:int = 6;
      
      private static const textString:String = "mcVotesRestantes";
      
      private static const textString1:String = "tfVotosRestantes";
      
      private static const textString2:String = "tfVotos";
      
      private var parameters:Votos;
      
      private var count1:int;
      
      private var _co7873:MovieClip;
      
      private var _bj12771:TextField;
      
      private var _gm3634:TextField;
      
      private var items:Array;
      
      public function VotosModel(param1:MovieClip, param2:MovieClip, param3:Votos, param4:BoobleUtils)
      {
         this.items = new Array();
         super(param1,param2,param4);
         this.parameters = param3;
         this._co7873 = MovieClip(param2.getChildByName(textString));
         this._bj12771 = TextField(this._co7873.getChildByName(textString1));
         this._gm3634 = TextField(param2.getChildByName(textString2));
         this.count1 = -1;
         this._va4204();
         UtilsUtils._xl9503(this._gm3634,param3._im12039.count2);
         if(param3.isEnabled)
         {
            this._co7873.visible = false;
         }
         else
         {
            this._co7873.visible = true;
         }
         this._yw581();
         this._bt10245();
      }
      
      public function _va4204() : void
      {
         UtilsUtils._xl9503(this._bj12771,String(UserSession.getInstance()._uq11439));
      }
      
      private function _yw581() : void
      {
         var count2:VotosView = null;
         var count3:int = 0;
         var count:Array = [this.parameters._im12039._lf7281,this.parameters._im12039._qj6005,this.parameters._im12039._ib1951,this.parameters._im12039._bs15657,this.parameters._im12039._he10005,this.parameters._im12039._rd10864];
         while(count3 < count / 2)
         {
            count2 = new VotosView(count3,_hg11010,this._eu12148,this.parameters._lp13903,count[count3],count[count3 + count / 2],this.parameters.isEnabled);
            this.items.push(count2);
            count3++;
         }
      }
      
      override public function destroy() : void
      {
         var count2:VotosView = null;
         var count:int = 0;
         super.destroy();
         while(count < this.items.length)
         {
            count2 = VotosView(this.items[count]);
            count2.destroy();
            count2 = null;
            count++;
         }
      }
      
      private function _eu12148(param1:int) : void
      {
         var count:int = 0;
         if(UserSession.getInstance()._uq11439 > 0)
         {
            if(param1 < 3)
            {
               count = 1;
            }
            else
            {
               count = -1;
            }
            this.parameters._dv14621.handleSocket9(this.parameters._lp13903.id,1 + param1 % (count / 2),count);
            --UserSession.getInstance()._uq11439;
            this._va4204();
         }
         else
         {
            _vc4824._ak11554(BoobleUtils._wg13189);
         }
      }
      
      public function _bt10245() : void
      {
         var count2:VotosView = null;
         var count:int = 0;
         while(count < this.items.length)
         {
            count2 = VotosView(this.items[count]);
            count2.refresh();
            count++;
         }
      }
   }
}

