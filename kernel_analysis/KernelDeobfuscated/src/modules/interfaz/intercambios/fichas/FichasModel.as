package src.modules.interfaz.intercambios.fichas
{
   import flash.display.MovieClip;
   import src.allData.sceneObjects.dataObjects.*;
   import src.modules.interfaz.intercambios.IntercambiosModel;
   import src.modules.interfaz.intercambios.boobles.*;
   import src.person.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   import src.utils.fichas.FichasUtils;
   import src.utils.fichas.FichasController;
   
   public class FichasModel extends FichasController
   {
      
      private static const textString:String = "mcTooltip";
      
      private static const textString1:String = "mcTooltipValor";
      
      private static const textString2:String = "mcTooltipRare";
      
      private static const textString3:String = "mcBotonAceptar";
      
      private static const textString4:String = "mcBotonCambiar";
      
      private static const textString2:String = "mcBotonCancelar";
      
      private static const textString6:String = "mcBotonScrollMas";
      
      private static const textString7:String = "mcBotonScrollMenos";
      
      private static const textString8:String = "tfCantidadObjetos";
      
      private static const textString9:String = "tfName";
      
      private static const textString10:String = "mcCaraKeko";
      
      protected static const textString1:String = "mcFondo";
      
      private static const textString12:String = "mcObjeto";
      
      private static const count:int = 3;
      
      protected var _gd5603:FichasView;
      
      protected var _vx11551:FichasView;
      
      protected var _wi14966:FichasView;
      
      protected var _ip5122:CommoncomponentsController;
      
      protected var _as14930:CommoncomponentsController;
      
      protected var items:Array;
      
      protected var items:Array;
      
      protected var offset:int;
      
      protected var _im12039:IntercambiosModel;
      
      protected var _dl3635:MovieClip;
      
      protected var _kn15197:MovieClip;
      
      protected var _ra4999:MovieClip;
      
      protected var _rj10285:MovieClip;
      
      protected var _mx2207:MovieClip;
      
      public function FichasModel(param1:MovieClip, param2:FichasUtils, param3:Function, param4:IntercambiosModel, param5:MovieClip)
      {
         super(param1,param2,param3);
         this._im12039 = param4;
         this._dl3635 = param5;
         this._kn15197 = param1[textString10];
         this._gd5603 = new FichasView(param1[textString3],this._if13516,param4.textString3);
         this._vx11551 = new FichasView(param1[textString4],this._bb14211,param4.textString4);
         this._wi14966 = new FichasView(param1[textString2],this._oe1126,param4.textString2);
         this._ip5122 = new CommoncomponentsController(param1[textString6],this._by2486);
         this._as14930 = new CommoncomponentsController(param1[textString7],this._aj2155);
         this._ra4999 = param1[textString];
         this._rj10285 = param1[textString1];
         this._mx2207 = param1[textString2];
         this._ra4999.visible = false;
         this._rj10285.visible = false;
         this._mx2207.visible = false;
      }
      
      override public function show(param1:int, param2:int) : Boolean
      {
         var count3:Boolean = super.show(param1,param2);
         this.items = new Array();
         this.items = new Array();
         this.offset = 0;
         this._bk31();
         return count3;
      }
      
      override public function authenticateUser2() : Boolean
      {
         this.destroy();
         return super.authenticateUser2();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this._gd5603 != null)
         {
            this._gd5603.destroy();
            this._gd5603 = null;
         }
         if(this._vx11551 != null)
         {
            this._vx11551.destroy();
            this._vx11551 = null;
         }
         if(this._wi14966 != null)
         {
            this._wi14966.destroy();
            this._wi14966 = null;
         }
         if(this._ip5122 != null)
         {
            this._ip5122.destroy();
            this._ip5122 = null;
         }
         if(this._as14930 != null)
         {
            this._as14930.destroy();
            this._as14930 = null;
         }
         this.destroy();
      }
      
      private function destroy() : void
      {
         var count2:int = 0;
         var count:BooblesView = null;
         if(this.items != null)
         {
            count2 = 0;
            while(count2 < this.items.length)
            {
               count = BooblesView(this.items[count2]);
               if(count != null)
               {
                  count.destroy();
                  count = null;
               }
               count2++;
            }
            this.items.length = 0;
         }
      }
      
      protected function _bk31() : void
      {
         var count2:int = 0;
         var count:MovieClip = null;
         var count3:Boolean = false;
         var count1:BooblesView = null;
         var count2:DataobjectsModel = null;
         var count7:int = 0;
         this.destroy();
         this.items = new Array();
         while(count7 < count)
         {
            count2 = count7 + this.offset;
            count = _cw11838[textString12 + count7];
            count3 = this.items != null && count2 < this.items.length;
            if(count3)
            {
               count2 = DataobjectsModel(this.items[count2]);
               count1 = new BooblesModel(count,null,count2,this._dl3635,this._ra4999,this._rj10285,this._mx2207,this._im12039);
            }
            else
            {
               count1 = new BooblesUtils(count,null,this._im12039.textString2);
            }
            this.items.push(count1);
            count7++;
         }
         this._yh6926();
      }
      
      public function addObject(param1:DataobjectsModel) : void
      {
         var count:DataobjectsModel = null;
         if(param1._sl11700.isEnabled1)
         {
            this.items.push(param1);
         }
         else
         {
            count = this.getObject(param1.count);
            if(count == null)
            {
               this.items.push(param1);
            }
            else
            {
               count.cant += param1.cant;
            }
         }
         this._bk31();
      }
      
      protected function _if13516() : void
      {
      }
      
      protected function _bb14211() : void
      {
      }
      
      protected function _oe1126() : void
      {
      }
      
      public function _uh12820() : void
      {
         this._gd5603.setState(FichasView._vx16058);
      }
      
      public function _rg11676() : void
      {
         this._vx11551.setState(FichasView._vx16058);
      }
      
      public function _gh11749() : void
      {
         this._vx11551.show();
      }
      
      public function _ok8651() : void
      {
         this._wi14966.show();
         this._wi14966._qx2504(this._im12039._iq3045);
         this._wi14966.setState(FichasView._ig5666);
      }
      
      public function _ig2699() : void
      {
         this._wi14966.show();
         this._wi14966._qx2504(this._im12039.ERROR);
         this._wi14966.setState(FichasView.count12);
      }
      
      public function _pg5072() : void
      {
         this._gd5603.show();
         this._gd5603._qx2504(this._im12039._ao8380);
         this._gd5603.setState(FichasView._fw5940);
      }
      
      public function _he4312() : void
      {
         this._vx11551.show();
         this._vx11551._qx2504(this._im12039._ao8380);
         this._vx11551.setState(FichasView._fw5940);
      }
      
      public function _kd11412() : void
      {
         this._gd5603.show();
         this._gd5603._qx2504(this._im12039.textString3);
         this._gd5603.setState(FichasView._ob15171);
      }
      
      public function _ng13807() : void
      {
         this._vx11551.show();
         this._vx11551._qx2504(this._im12039.textString4);
         this._vx11551.setState(FichasView._ob15171);
      }
      
      public function _yd2370() : void
      {
         this._wi14966.show();
         this._wi14966._qx2504(this._im12039.textString2);
         this._wi14966.setState(FichasView._ob15171);
      }
      
      public function _wj5070() : int
      {
         if(this.items != null)
         {
            return this.items.length;
         }
         return 0;
      }
      
      public function _ek14044() : int
      {
         var count2:DataobjectsModel = null;
         var count:int = 0;
         for each(count2 in this.items)
         {
            if(count2._sl11700._ph8835())
            {
               count++;
            }
         }
         return count;
      }
      
      public function _is6188() : int
      {
         var count2:DataobjectsModel = null;
         var count:int = 0;
         for each(count2 in this.items)
         {
            count += count2._sl11700.count42;
         }
         return count;
      }
      
      public function getObject(param1:int) : DataobjectsModel
      {
         var count:DataobjectsModel = null;
         for each(count in this.items)
         {
            if(count.count == param1)
            {
               return count;
            }
         }
         return null;
      }
      
      public function _fo13643(param1:PersonAnimation) : void
      {
         UtilsUtils._xl9503(_cw11838[textString9],param1.name);
         var count:MovieClip = PersonController._ku11706(param1,"cara_mediana");
         count.x = -count.width / 2;
         count.y = -count.height / 2;
         StringUtils.cleanChildsMovieclip(this._kn15197);
         this._kn15197.addChild(count);
      }
      
      private function _yh6926() : void
      {
         UtilsUtils._xl9503(_cw11838[textString8],String(this.items.length));
         if(this.offset == 0)
         {
            this._as14930._dy867 = false;
         }
         else
         {
            this._as14930._dy867 = true;
         }
         if(this.offset + count >= this.items.length)
         {
            this._ip5122._dy867 = false;
         }
         else
         {
            this._ip5122._dy867 = true;
         }
      }
      
      private function _by2486() : void
      {
         if(this.offset + count < this.items.length)
         {
            ++this.offset;
            this._bk31();
         }
      }
      
      private function _aj2155() : void
      {
         if(this.offset > 0)
         {
            --this.offset;
            this._bk31();
         }
      }
   }
}

