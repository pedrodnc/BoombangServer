package src.modules.chooseIsla
{
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import flash.ui.*;
   import src.allData.texts.*;
   import src.utils.*;
   import src.utils.commonComponents.*;
   
   public class _jv13391
   {
      
      private static const _mp6100:String = "mcFichasAmigosEnemigos";
      
      private static const _oa3195:String = "tfMejoresAmigos";
      
      private static const _jw4902:String = "tfMejoresEnemigos";
      
      private static const _sg1773:String = "mcCapsulaEnemigo";
      
      private static const _ym4542:String = "mcCapsulaAmigo";
      
      private static const _jf28:String = "mcListadoAmigos";
      
      private static const _cm5212:String = "mcListadoEnemigos";
      
      private static const _dr2405:String = "inName";
      
      private static const _ic10161:String = "mcCapsulaAmigos";
      
      private static const _ks6532:String = "icono";
      
      private static const _vf9803:uint = 16777215;
      
      private static const _ow11874:uint = 0;
      
      private static const _px1939:uint = 81509;
      
      private static const _rx4043:uint = _vf9803;
      
      private static const _jq8520:uint = 52275;
      
      private static const _ha8920:uint = 16724838;
      
      private var _ka3027:MovieClip;
      
      private var _bx8167:_qw14876;
      
      private var _hp11587:_hk11848;
      
      private var _wv14295:_gb11119;
      
      public function _jv13391(param1:MovieClip, param2:_qw14876)
      {
         super();
         this._ka3027 = param1[_mp6100];
         this._bx8167 = param2;
         this._hp11587 = param2._hp11587;
         this._wv14295 = param2._wv14295;
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:int = 0;
         if(this._hp11587 == null)
         {
            return;
         }
         this._bo13783();
         MovieClip(this._ka3027[_jf28]).visible = false;
         MovieClip(this._ka3027[_cm5212]).visible = false;
         TextField(this._ka3027[_oa3195]).mouseEnabled = false;
         TextField(this._ka3027[_jw4902]).mouseEnabled = false;
         this._ln12196(this._ka3027[_cm5212]);
         this._ln12196(this._ka3027[_jf28]);
         while(_loc1_ < _hk11848._lo12177)
         {
            TextField(this._ka3027[_cm5212][_dr2405 + _loc1_]).mouseEnabled = false;
            TextField(this._ka3027[_jf28][_dr2405 + _loc1_]).mouseEnabled = false;
            TextField(this._ka3027[_cm5212][_dr2405 + _loc1_]).tabEnabled = false;
            TextField(this._ka3027[_jf28][_dr2405 + _loc1_]).tabEnabled = false;
            TextField(this._ka3027[_jf28][_dr2405 + _loc1_]).restrict = _ei10851._qe9613;
            TextField(this._ka3027[_jf28][_dr2405 + _loc1_]).maxChars = _ei10851._cb8664;
            TextField(this._ka3027[_cm5212][_dr2405 + _loc1_]).restrict = _ei10851._qe9613;
            TextField(this._ka3027[_cm5212][_dr2405 + _loc1_]).maxChars = _ei10851._cb8664;
            _loc1_++;
         }
         this._qa2331();
      }
      
      public function destroy() : void
      {
         this._it11164();
         this._ka3027 = null;
         this._bx8167 = null;
         this._hp11587 = null;
         this._wv14295 = null;
      }
      
      public function _db5584() : void
      {
         if(this._ka3027.visible == false)
         {
            this._ka3027.visible = true;
         }
      }
      
      public function _hu12389() : void
      {
         if(this._ka3027.visible == true)
         {
            this._ka3027.visible = false;
         }
      }
      
      public function _qa2331() : void
      {
         var _loc1_:int = 0;
         MovieClip(this._ka3027[_sg1773]).addEventListener(MouseEvent.ROLL_OUT,this._in11061);
         MovieClip(this._ka3027[_sg1773]).addEventListener(MouseEvent.ROLL_OVER,this._on4798);
         MovieClip(this._ka3027[_sg1773]).addEventListener(MouseEvent.MOUSE_DOWN,this._yq1848);
         MovieClip(this._ka3027[_ym4542]).addEventListener(MouseEvent.ROLL_OUT,this._in11061);
         MovieClip(this._ka3027[_ym4542]).addEventListener(MouseEvent.ROLL_OVER,this._on4798);
         MovieClip(this._ka3027[_ym4542]).addEventListener(MouseEvent.MOUSE_DOWN,this._wa5184);
         while(_loc1_ < _hk11848._lo12177)
         {
            MovieClip(this._ka3027[_jf28][_ic10161 + _loc1_]).addEventListener(MouseEvent.ROLL_OUT,this._gr8997);
            MovieClip(this._ka3027[_jf28][_ic10161 + _loc1_]).addEventListener(MouseEvent.ROLL_OVER,this._gr8997);
            MovieClip(this._ka3027[_jf28][_ic10161 + _loc1_]).addEventListener(MouseEvent.MOUSE_DOWN,this._gr8997);
            MovieClip(this._ka3027[_cm5212][_ic10161 + _loc1_]).addEventListener(MouseEvent.ROLL_OUT,this._gr8997);
            MovieClip(this._ka3027[_cm5212][_ic10161 + _loc1_]).addEventListener(MouseEvent.ROLL_OVER,this._gr8997);
            MovieClip(this._ka3027[_cm5212][_ic10161 + _loc1_]).addEventListener(MouseEvent.MOUSE_DOWN,this._gr8997);
            TextField(this._ka3027[_cm5212][_dr2405 + _loc1_]).addEventListener(FocusEvent.FOCUS_OUT,this._tc6566);
            TextField(this._ka3027[_jf28][_dr2405 + _loc1_]).addEventListener(FocusEvent.FOCUS_OUT,this._vr7590);
            TextField(this._ka3027[_jf28][_dr2405 + _loc1_]).addEventListener(KeyboardEvent.KEY_DOWN,this._bi10307);
            TextField(this._ka3027[_cm5212][_dr2405 + _loc1_]).addEventListener(KeyboardEvent.KEY_DOWN,this._uj15856);
            _loc1_++;
         }
      }
      
      public function _it11164() : void
      {
         var _loc1_:int = 0;
         MovieClip(this._ka3027[_sg1773]).removeEventListener(MouseEvent.ROLL_OUT,this._in11061);
         MovieClip(this._ka3027[_sg1773]).removeEventListener(MouseEvent.ROLL_OVER,this._on4798);
         MovieClip(this._ka3027[_sg1773]).removeEventListener(MouseEvent.MOUSE_DOWN,this._yq1848);
         MovieClip(this._ka3027[_ym4542]).removeEventListener(MouseEvent.ROLL_OUT,this._in11061);
         MovieClip(this._ka3027[_ym4542]).removeEventListener(MouseEvent.ROLL_OVER,this._on4798);
         MovieClip(this._ka3027[_ym4542]).removeEventListener(MouseEvent.MOUSE_DOWN,this._wa5184);
         while(_loc1_ < _hk11848._lo12177)
         {
            MovieClip(this._ka3027[_jf28][_ic10161 + _loc1_]).removeEventListener(MouseEvent.ROLL_OUT,this._gr8997);
            MovieClip(this._ka3027[_jf28][_ic10161 + _loc1_]).removeEventListener(MouseEvent.ROLL_OVER,this._gr8997);
            MovieClip(this._ka3027[_jf28][_ic10161 + _loc1_]).removeEventListener(MouseEvent.MOUSE_DOWN,this._gr8997);
            MovieClip(this._ka3027[_cm5212][_ic10161 + _loc1_]).removeEventListener(MouseEvent.ROLL_OUT,this._gr8997);
            MovieClip(this._ka3027[_cm5212][_ic10161 + _loc1_]).removeEventListener(MouseEvent.ROLL_OVER,this._gr8997);
            MovieClip(this._ka3027[_cm5212][_ic10161 + _loc1_]).removeEventListener(MouseEvent.MOUSE_DOWN,this._gr8997);
            TextField(this._ka3027[_cm5212][_dr2405 + _loc1_]).removeEventListener(FocusEvent.FOCUS_OUT,this._tc6566);
            TextField(this._ka3027[_jf28][_dr2405 + _loc1_]).removeEventListener(FocusEvent.FOCUS_OUT,this._vr7590);
            TextField(this._ka3027[_jf28][_dr2405 + _loc1_]).removeEventListener(KeyboardEvent.KEY_DOWN,this._bi10307);
            TextField(this._ka3027[_cm5212][_dr2405 + _loc1_]).removeEventListener(KeyboardEvent.KEY_DOWN,this._uj15856);
            _loc1_++;
         }
      }
      
      private function _bo13783() : void
      {
         var _loc1_:int = 0;
         if(this._hp11587 == null)
         {
            return;
         }
         _yq8362._xl9503(this._ka3027[_oa3195],this._wv14295._ct15757);
         _yq8362._xl9503(this._ka3027[_jw4902],this._wv14295._xn12817);
         while(_loc1_ < _hk11848._lo12177)
         {
            _yq8362._xl9503(this._ka3027[_cm5212][_dr2405 + _loc1_],String(this._hp11587._px16074[_loc1_]));
            _yq8362._xl9503(this._ka3027[_jf28][_dr2405 + _loc1_],String(this._hp11587._sg8660[_loc1_]));
            _loc1_++;
         }
      }
      
      private function _on4798(param1:MouseEvent) : void
      {
         if(param1.currentTarget is MovieClip)
         {
            _xv14798._nw2053(param1.currentTarget as MovieClip,_ax13262._jo8252);
         }
      }
      
      private function _in11061(param1:MouseEvent) : void
      {
         if(param1.currentTarget is MovieClip)
         {
            var _loc2_:MovieClip = MovieClip(param1.currentTarget);
            if(null == this._ka3027[_ym4542] && Boolean(MovieClip(this._ka3027[_jf28]).visible))
            {
               return;
            }
            if(null == this._ka3027[_sg1773] && Boolean(MovieClip(this._ka3027[_cm5212]).visible))
            {
               return;
            }
            _xv14798._nw2053(param1.currentTarget as MovieClip,_ax13262._vk6252);
         }
      }
      
      private function _gr8997(param1:MouseEvent) : void
      {
         if(param1.currentTarget is MovieClip)
         {
            var _loc2_:MovieClip = MovieClip(param1.currentTarget);
            var _loc3_:String = null.name;
            var _loc4_:MovieClip = MovieClip(null.parent);
            null.charAt(null.length - 1);
            var _loc5_:TextField = TextField(null[_dr2405 + null.charAt(null.length - 1)]);
            if(param1.type == MouseEvent.ROLL_OVER)
            {
               _yq8362._np7275(null,_vf9803);
               _xv14798._ts14032(MovieClip(param1.currentTarget),null == this._ka3027[_jf28] ? uint(_jq8520) : uint(_ha8920));
            }
            else if(param1.type == MouseEvent.ROLL_OUT && null != this._ka3027.stage.focus)
            {
               _yq8362._np7275(null,_rx4043);
               _xv14798._ts14032(MovieClip(param1.currentTarget),_px1939);
            }
            else if(param1.type == MouseEvent.MOUSE_DOWN)
            {
               this._ln12196(this._ka3027[_cm5212]);
               this._ln12196(this._ka3027[_jf28]);
               this._ka3027.stage.focus = null;
               _yq8362._np7275(null,_vf9803);
               _xv14798._ts14032(MovieClip(param1.currentTarget),null == this._ka3027[_jf28] ? uint(_jq8520) : uint(_ha8920));
               var _loc6_:int = int(null.length);
               null.setSelection(0,0);
            }
         }
      }
      
      private function _wa5184(param1:MouseEvent) : void
      {
         if(!MovieClip(this._ka3027[_jf28]).visible)
         {
            MovieClip(this._ka3027[_jf28]).visible = true;
            this._ln12196(this._ka3027[_jf28]);
            MovieClip(this._ka3027[_ym4542]).alpha = 0;
         }
         else
         {
            MovieClip(this._ka3027[_jf28]).visible = false;
            MovieClip(this._ka3027[_ym4542]).alpha = 1;
         }
      }
      
      private function _yq1848(param1:MouseEvent) : void
      {
         if(!MovieClip(this._ka3027[_cm5212]).visible)
         {
            MovieClip(this._ka3027[_cm5212]).visible = true;
            this._ln12196(this._ka3027[_cm5212]);
            MovieClip(this._ka3027[_sg1773]).alpha = 0;
         }
         else
         {
            MovieClip(this._ka3027[_cm5212]).visible = false;
            MovieClip(this._ka3027[_sg1773]).alpha = 1;
         }
      }
      
      private function _ln12196(param1:MovieClip) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < _hk11848._lo12177)
         {
            _yq8362._np7275(param1[_dr2405 + _loc2_],_rx4043);
            _xv14798._ts14032(param1[_ic10161 + _loc2_],_px1939);
            _loc2_++;
         }
      }
      
      private function _tc6566(param1:FocusEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = new Array();
         while(_loc2_ < _hk11848._lo12177)
         {
            _loc3_[_loc2_] = this._ka3027[_cm5212][_dr2405 + _loc2_].text;
            _loc2_++;
         }
         this._bx8167._ae12832(_loc3_);
         var _loc4_:String = String(param1.currentTarget.name);
         var _loc5_:String = _loc4_.charAt(_loc4_.length - 1);
         _xv14798._ts14032(this._ka3027[_cm5212][_ic10161 + _loc5_],_px1939);
      }
      
      private function _vr7590(param1:FocusEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = new Array();
         while(_loc2_ < _hk11848._lo12177)
         {
            _loc3_[_loc2_] = this._ka3027[_jf28][_dr2405 + _loc2_].text;
            _loc2_++;
         }
         this._bx8167._ji5185(_loc3_);
         var _loc4_:String = String(param1.currentTarget.name);
         var _loc5_:String = _loc4_.charAt(_loc4_.length - 1);
         _xv14798._ts14032(this._ka3027[_jf28][_ic10161 + _loc5_],_px1939);
      }
      
      private function _uj15856(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER || param1.keyCode == Keyboard.NUMPAD_ENTER)
         {
            this._ka3027.stage.focus = null;
         }
      }
      
      private function _bi10307(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER || param1.keyCode == Keyboard.NUMPAD_ENTER)
         {
            this._ka3027.stage.focus = null;
         }
      }
   }
}

