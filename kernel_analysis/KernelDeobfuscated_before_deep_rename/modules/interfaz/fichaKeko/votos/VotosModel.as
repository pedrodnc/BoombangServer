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
      
      public static const _my262:int = 6;
      
      private static const _bn7980:String = "mcVotesRestantes";
      
      private static const _lo7073:String = "tfVotosRestantes";
      
      private static const _tk7767:String = "tfVotos";
      
      private var parameters:Votos;
      
      private var _dp13650:int;
      
      private var _co7873:MovieClip;
      
      private var _bj12771:TextField;
      
      private var _gm3634:TextField;
      
      private var _gi14244:Array;
      
      public function VotosModel(param1:MovieClip, param2:MovieClip, param3:Votos, param4:BoobleUtils)
      {
         this._gi14244 = new Array();
         super(param1,param2,param4);
         this.parameters = param3;
         this._co7873 = MovieClip(param2.getChildByName(_bn7980));
         this._bj12771 = TextField(this._co7873.getChildByName(_lo7073));
         this._gm3634 = TextField(param2.getChildByName(_tk7767));
         this._dp13650 = -1;
         this._va4204();
         UtilsUtils._xl9503(this._gm3634,param3._im12039._uc14610);
         if(param3._qo15312)
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
         var _loc1_:VotosView = null;
         var _loc3_:int = 0;
         var _loc2_:Array = [this.parameters._im12039._lf7281,this.parameters._im12039._qj6005,this.parameters._im12039._ib1951,this.parameters._im12039._bs15657,this.parameters._im12039._he10005,this.parameters._im12039._rd10864];
         while(_loc3_ < _my262 / 2)
         {
            _loc1_ = new VotosView(_loc3_,_hg11010,this._eu12148,this.parameters._lp13903,_loc2_[_loc3_],_loc2_[_loc3_ + _my262 / 2],this.parameters._qo15312);
            this._gi14244.push(_loc1_);
            _loc3_++;
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:VotosView = null;
         var _loc2_:int = 0;
         super.destroy();
         while(_loc2_ < this._gi14244.length)
         {
            _loc1_ = VotosView(this._gi14244[_loc2_]);
            _loc1_.destroy();
            _loc1_ = null;
            _loc2_++;
         }
      }
      
      private function _eu12148(param1:int) : void
      {
         var _loc2_:int = 0;
         if(UserSession.getInstance()._uq11439 > 0)
         {
            if(param1 < 3)
            {
               _loc2_ = 1;
            }
            else
            {
               _loc2_ = -1;
            }
            this.parameters._dv14621._bu7133(this.parameters._lp13903.id,1 + param1 % (_my262 / 2),_loc2_);
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
         var _loc1_:VotosView = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._gi14244.length)
         {
            _loc1_ = VotosView(this._gi14244[_loc2_]);
            _loc1_.refresh();
            _loc2_++;
         }
      }
   }
}

