package src.modules.interfaz.mochila.buttons
{
   import flash.display.*;
   import flash.text.*;
   import src.allData.sceneObjects.dataObjects._gl6654;
   import src.allData.texts.*;
   import src.modules.interfaz.mochila._vu9089;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _qp15684
   {
      
      private static const _sy10352:String = "tfTexto";
      
      private static const _ed13921:String = "tfNumero";
      
      private static const _sv8356:String = "mcButtonIngOk";
      
      private var _cw11838:MovieClip;
      
      private var _wl10980:TextField;
      
      private var _cr7220:TextField;
      
      private var _qt4480:_kg183;
      
      private var _im12039:_vu9089;
      
      private var _bc15739:Function;
      
      private var _bw7168:_gl6654;
      
      public function _qp15684(param1:MovieClip, param2:Function, param3:_vu9089)
      {
         super();
         this._cw11838 = param1;
         this._im12039 = param3;
         this._bc15739 = param2;
         this._wl10980 = TextField(param1.getChildByName(_sy10352));
         this._cr7220 = TextField(param1.getChildByName(_ed13921));
         _yq8362._xl9503(this._wl10980,param3._jh9457);
         _yq8362._xl9503(this._cr7220,"");
         this._cr7220.restrict = _ei10851._cv15830;
         this._cr7220.maxChars = 5;
         this._qt4480 = new _kg183(MovieClip(param1.getChildByName(_sv8356)),this._wg330);
      }
      
      public function destroy() : void
      {
         if(this._qt4480 != null)
         {
            this._qt4480.destroy();
            this._qt4480 = null;
         }
      }
      
      private function _wg330() : void
      {
         var _loc1_:int = 0;
         if(this._bc15739 != null)
         {
            _loc1_ = int(this._cr7220.text);
            this._bc15739(this._bw7168,_loc1_);
         }
      }
      
      public function _db5584(param1:_gl6654, param2:int) : void
      {
         this._bw7168 = param1;
         this._cw11838.visible = true;
         this._cr7220.stage.focus = this._cr7220;
         _yq8362._xl9503(this._cr7220,String(param2));
      }
      
      public function _hu12389() : void
      {
         this._cw11838.visible = false;
      }
   }
}

