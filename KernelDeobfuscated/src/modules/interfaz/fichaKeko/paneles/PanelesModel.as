package src.modules.interfaz.fichaKeko.paneles
{
   import flash.display.MovieClip;
   import src.allData.*;
   import src.modules.interfaz.InterfazController;
   import src.modules.interfaz.fichaKeko.FichakekoView;
   import src.modules.interfaz.fichaKeko.booble.BoobleUtils;
   import src.modules.interfaz.fichaKeko.interacciones.*;
   import src.person.*;
   
   public class PanelesModel extends PanelesView
   {
      
      private static const textString:String = "mcEmoticon";
      
      public static const count:int = 8;
      
      public static const count1:int = 0;
      
      public static const count2:int = 1;
      
      public static const count3:int = 2;
      
      public static const count4:int = 3;
      
      public static const count5:int = 4;
      
      public static const count6:int = 5;
      
      public static const count7:int = 6;
      
      public static const count8:int = 7;
      
      private var items:Array;
      
      private var _fr6840:PersonController;
      
      private var _dv14621:InterfazController;
      
      public function PanelesModel(param1:MovieClip, param2:MovieClip, param3:PersonController, param4:InterfazController, param5:BoobleUtils)
      {
         var count7:InteraccionesView = null;
         var items:Object = null;
         var count8:int = 0;
         super(param1,param2,param5);
         this._fr6840 = param3;
         this._dv14621 = param4;
         this.items = new Array();
         while(count8 < count)
         {
            items = new Object();
            items.id = count8;
            if(count8 == count5)
            {
               count7 = new Interacciones(param3._md8722,param2[textString + count8],this._yf249,null,null,items);
            }
            else
            {
               count7 = new InteraccionesView(param3._md8722,param2[textString + count8],this._yf249,null,null,items);
            }
            this.items.push(count7);
            count8++;
         }
         this._ha80();
      }
      
      override public function show(param1:FichakekoView) : void
      {
         super.show(param1);
         this._ha80();
      }
      
      override public function authenticateUser2() : void
      {
         super.authenticateUser2();
      }
      
      override public function destroy() : void
      {
         var count2:InteraccionesView = null;
         super.destroy();
         for each(count2 in this.items)
         {
            count2.destroy();
            count2 = null;
         }
         this.items.length = 0;
      }
      
      private function _yf249(param1:InteraccionesView, param2:Object) : void
      {
         if(!this._fr6840._yi6398())
         {
            return;
         }
         var count3:Array = [PersonModel._ft11477,PersonModel._pq3567,PersonModel._hh6084,PersonModel._we2906,PersonModel._gd13066,PersonModel._lx10506,PersonModel._li10585,PersonModel._lo13715];
         this._dv14621.handleSocket1(this._fr6840._md8722.count25,count3[param2.id]);
      }
      
      public function _kc1802() : void
      {
         var count2:InteraccionesView = null;
         for each(count2 in this.items)
         {
            count2._kc1802(this._fr6840._md8722);
         }
      }
      
      override public function _ha80() : void
      {
         var count2:InteraccionesView = null;
         for each(count2 in this.items)
         {
            count2.setState(UserSession.getInstance().isEnabled4);
         }
      }
   }
}

