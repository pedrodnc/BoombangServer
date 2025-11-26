package src.modules.interfaz.fichaKeko.paneles
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.*;
   import src.modules.interfaz.InterfazController;
   import src.modules.interfaz.fichaKeko.FichakekoView;
   import src.modules.interfaz.fichaKeko.FichakekoModel;
   import src.modules.interfaz.fichaKeko.booble.BoobleUtils;
   import src.modules.interfaz.fichaKeko.fichaStatics.*;
   import src.modules.interfaz.fichaKeko.ninjaManager.*;
   import src.person.*;
   import src.utils.*;
   
   public class PanelesController extends PanelesView
   {
      
      private static const textString:String = "mcSwapPage";
      
      private const textString1:String = "mcIconoGorroToro";
      
      private const textString2:String = "mcIconoGorroCaca";
      
      private const textString3:String = "mcIconoGorroRana";
      
      private const textString4:String = "mcIconoGorroPanda";
      
      private const textString5:String = "mcIconoGorroCustom1";
      
      private const textString6:String = "mcIconoGorroCustom2";
      
      private const textString7:String = "mcIconoGorroCustom3";
      
      private const textString8:String = "mcIconoGorroCustom4";
      
      private const textString9:String = "mcIconoGorroCustom5";
      
      private const textString10:String = "mcIconoGorroCustom6";
      
      private const textString11:String = "mcIconoGorroConejo";
      
      private const textString12:String = "tfTituloComplementos";
      
      private var _jy4188:PersonController;
      
      private var _cy15918:InterfazController;
      
      private var _ab7564:FichakekoModel;
      
      private var _xw5076:TextField;
      
      private var items:Array;
      
      private var _sr8386:FichastaticsView;
      
      public function PanelesController(param1:MovieClip, param2:MovieClip, param3:PersonController, param4:InterfazController, param5:BoobleUtils, param6:FichakekoModel, param7:Function)
      {
         var count8:int = 0;
         super(param1,param2,param5);
         var count6:PersonModel = PersonModel.getInstance();
         this._jy4188 = param3;
         this._cy15918 = param4;
         this._ab7564 = param6;
         this.items = new Array();
         this._sr8386 = new FichastaticsView(param2[textString],param7);
         count8 = 0;
         while(count8 < count6._oq16154())
         {
            if(param2[count6._oc7008(count8)] != null)
            {
               this.items.push(new NinjamanagerController(count8,this._jy4188,param2[count6._oc7008(count8)],this._cy15918));
            }
            count8++;
         }
         count8 = 0;
         while(count8 < this.items.length)
         {
            this.items[count8].addEventListener(MouseEvent.MOUSE_OVER,this._se5412,false,0,true);
            this.items[count8].addEventListener(MouseEvent.MOUSE_OUT,this._rr8320,false,0,true);
            count8++;
         }
         this._xw5076 = TextField(param2.getChildByName(this.textString12));
         if(this._xw5076 != null)
         {
            UtilsUtils._xl9503(this._xw5076,param6.count5);
         }
      }
      
      override public function show(param1:FichakekoView) : void
      {
         super.show(param1);
         this._sr8386._dn10392(param1);
      }
      
      override public function authenticateUser2() : void
      {
         super.authenticateUser2();
      }
      
      override public function destroy() : void
      {
         var count2:int = 0;
         if(this._sr8386 != null)
         {
            this._sr8386.destroy();
            this._sr8386 = null;
         }
         super.destroy();
         while(count2 < this.items.length)
         {
            this.items[count2].removeEventListener(MouseEvent.MOUSE_OVER,this._se5412);
            this.items[count2].removeEventListener(MouseEvent.MOUSE_OUT,this._rr8320);
            count2++;
         }
      }
      
      public function _ov12579() : void
      {
         var count2:int = 0;
         while(count2 < this.items.length)
         {
            this.items[count2]._su15800();
            count2++;
         }
      }
      
      public function _iv3666() : void
      {
         var count2:int = 0;
         while(count2 < this.items.length)
         {
            this.items[count2]._iv3666();
            count2++;
         }
      }
      
      private function _se5412(param1:MouseEvent) : void
      {
         var count3:NinjamanagerController = param1.target as NinjamanagerController;
         if(count3)
         {
            var count:String = "complement.help." + count3._cj5718;
            _vc4824._qg5125(null);
         }
      }
      
      private function _rr8320(param1:Event) : void
      {
         _vc4824._tj8775();
      }
   }
}

