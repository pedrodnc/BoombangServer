package src.modules.interfaz.fichaKeko.flecha
{
   import flash.display.MovieClip;
   import src.allData.*;
   import src.allData.scene.typeEscenarios.*;
   import src.modules.bpad.*;
   import src.modules.interfaz.fichaKeko.booble.*;
   import src.modules.interfaz.fichaKeko.fichaSelItemInteraction.*;
   import src.modules.interfaz.fichaKeko.interacciones.*;
   import src.modules.interfaz.fichaKeko.paneles.PanelesModel;
   import src.modules.interfaz.fichaKeko.paneles.PanelesView;
   import src.tv.boombang.application.communications.*;
   import src.tv.boombang.application.interactions.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas.*;
   
   public class FlechaModel extends PanelesView
   {
      
      public static const count:int = 100;
      
      public static const count1:int = 17;
      
      private static const textString:String = "mcSelPunch";
      
      private static const textString1:String = "mcSelCoco";
      
      private static const textString2:String = "mcInteraction";
      
      private static const textString3:String = "mcDoblon";
      
      public static const count2:int = 7;
      
      public static const count3:int = 0;
      
      public static const count4:int = 1;
      
      public static const count5:int = 2;
      
      public static const count6:int = 3;
      
      public static const count7:int = 4;
      
      public static const count8:int = 5;
      
      public static const count9:int = 6;
      
      private var items:Array;
      
      private var _cy6485:InteraccionesUtils;
      
      private var parameters:PanelesModel;
      
      private var _pg3581:CommoncomponentsController;
      
      private var _qb15276:CommoncomponentsController;
      
      private var _sr12883:FichaseliteminteractionView;
      
      public function FlechaModel(param1:MovieClip, param2:MovieClip, param3:PanelesModel, param4:BoobleUtils)
      {
         var count2:InteraccionesView = null;
         var count7:Object = null;
         var items:int = 0;
         super(param1,param2,param4);
         this.parameters = param3;
         this._cy6485 = new InteraccionesUtils(param2[textString3]);
         this.items = new Array();
         while(items < count2)
         {
            count7 = new Object();
            count7.id = items;
            if(items == count7)
            {
               count2 = new InteraccionesModel(items,param3._qa2185,this._cy6485,param3._dr1773,param3._bl11315,param2[textString2 + items],this._tw10855,null,null,count7);
            }
            else if(items == count8)
            {
               count2 = new InteraccionesModel(items,param3._qa2185,this._cy6485,param3._dr1773,param2[textString2 + items],this._tw10855,null,null,count7);
            }
            else
            {
               count2 = new InteraccionesModel(items,param3._qa2185,param3._dr1773,param2[textString2 + items],this._tw10855,this._xa10073,this._dk936,count7);
            }
            this.items.push(count2);
            items++;
         }
         this._pg3581 = new CommoncomponentsController(param2[textString],this._vx5663);
         this._qb15276 = new CommoncomponentsController(param2[textString1],this._ky1127);
         if(!param3.isEnabled)
         {
            this._qb15276.authenticateUser2();
         }
         this._ha80();
      }
      
      private function _dk936(param1:InteraccionesView, param2:Object) : void
      {
         if(param2.id == count6)
         {
            _vc4824._tj8775();
         }
      }
      
      private function _xa10073(param1:InteraccionesView, param2:Object) : void
      {
         if(param2.id == count6)
         {
            _vc4824._bt10174(BoobleUtils.count8);
         }
      }
      
      private function _vx5663() : void
      {
         this.destroy();
         this._sr12883 = new FichaseliteminteractionView(count1,UserSession.getInstance().count7 + 1,this._iv13019,this.parameters._nt221,new FichasUtils("",[]),null);
         this._sr12883.show(550,168);
      }
      
      private function _iv13019(param1:CommoncomponentsController, param2:Object) : void
      {
         this.parameters._dv14621.handleSocket3(param2.id);
         this._ha80();
         this.destroy();
      }
      
      private function _ky1127() : void
      {
         this.destroy();
         this._sr12883 = new FichaseliteminteractionView(10,UserSession.getInstance().count9 + 1,this._rc3367,this.parameters._nk12964,new FichasUtils("",[]),null);
         this._sr12883.show(550,168);
      }
      
      private function _rc3367(param1:CommoncomponentsController, param2:Object) : void
      {
         this.parameters._dv14621.handleSocket4(param2.id);
         this._ha80();
         this.destroy();
      }
      
      override public function destroy() : void
      {
         var count2:InteraccionesModel = null;
         super.destroy();
         for each(count2 in this.items)
         {
            count2.destroy();
            count2 = null;
         }
         if(this._cy6485 != null)
         {
            this._cy6485.destroy();
            this._cy6485 = null;
         }
         if(this._pg3581 != null)
         {
            this._pg3581.destroy();
            this._pg3581 = null;
         }
         if(this._qb15276 != null)
         {
            this._qb15276.destroy();
            this._qb15276 = null;
         }
         this.destroy();
         this.items.length = 0;
      }
      
      private function destroy() : void
      {
         if(this._sr12883 != null)
         {
            this._sr12883.destroy();
            this._sr12883 = null;
         }
      }
      
      private function _tw10855(param1:InteraccionesView, param2:Object) : void
      {
         var count3:int = 0;
         switch(param2.id)
         {
            case count3:
            case count4:
            case count5:
               if(param1.getState())
               {
                  Communications._ly9008(InteractionsUtils._ob13942(param2.id + 1),this.parameters._xn13211.count25);
                  this.parameters.saveData(param2.id,this.parameters._xn13211);
               }
               return;
            case count6:
               BPadController._np546._xv9548(this.parameters._xn13211);
               return;
            case count8:
               if(param1.getState())
               {
                  count3 = int(this.parameters._qa2185._ob10395(Interacciones._fm10949));
                  if(UserSession.getInstance()._ea4493 >= count3)
                  {
                     if(!(this.parameters._bl11315 is SceneTypeIsland) || this.parameters._bl11315._nr6929._fq658 != TypeescenariosModel._xa1375)
                     {
                        this.parameters._dv14621.handleSocket6(this.parameters._dr1773.count25,this.parameters._xn13211.count25);
                     }
                  }
                  else
                  {
                     this.parameters._lp469.move3();
                     _vc4824._ak11554(BoobleUtils._eb2553);
                  }
               }
               return;
            case count9:
               this.parameters._uf2723();
               return;
            case count7:
               this.parameters._dv14621.show(this.parameters._xn13211.count25);
               return;
            default:
               return;
         }
      }
      
      override public function _ha80() : void
      {
         var count2:InteraccionesView = null;
         for each(count2 in this.items)
         {
            count2._mr15523();
         }
      }
   }
}

