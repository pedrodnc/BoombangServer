package src.modules.interfaz.baseChat
{
   import flash.display.*;
   import flash.external.*;
   import flash.text.*;
   import flash.utils.*;
   import src.*;
   import src.allData.*;
   import src.person.*;
   
   public class _rw2740
   {
      
      private static const _ck14184:int = 70;
      
      private static const _jf3235:int = 780;
      
      private static const _pj2899:int = 20;
      
      private static const _nc1149:int = 20;
      
      private static const _dt719:int = 4;
      
      private static const _ap15254:int = int((_dt719 + _nc1149) / 3);
      
      private static const _dn3188:int = 10;
      
      private static const _bc2651:int = 160;
      
      private static const _id15157:String = "emoticon";
      
      private var _ko6143:Array;
      
      private var _bm104:int;
      
      private var _yh899:int = -1;
      
      private var _nl5944:Boolean = true;
      
      private var teatro:Boolean = ExternalInterface.call("teatro");
      
      public function _rw2740()
      {
         this._ko6143 = new Array();
         super();
      }
      
      public function destroy() : void
      {
         var _loc1_:MovieClip = null;
         for each(_loc1_ in this._ko6143)
         {
            _xw1367.getInstance()._na10792(_loc1_,_xw1367._hh2073);
         }
         this._ko6143.length = 0;
      }
      
      public function loop() : void
      {
         var _loc1_:int = 0;
         if(this._bm104 != 0)
         {
            this._fd300(_ap15254);
            this._bm104 -= _ap15254;
         }
         else
         {
            _loc1_ = int(getTimer() / 1000);
            if(this._yh899 != -1 && this._yh899 + _dn3188 <= _loc1_ && this._bm104 == 0)
            {
               this._bm104 = _nc1149 + _dt719;
               this._yh899 = _loc1_;
            }
         }
      }
      
      public function _kg10630(param1:String, param2:_um8624, param3:int, param4:int, param5:int, param6:String = null) : void
      {
         var _loc7_:TextField = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc11_:MovieClip = null;
         if(param1 == null)
         {
            return;
         }
         if(param2 != null)
         {
            param6 = param2.name;
         }
         else if(param6 == null)
         {
            param6 = "";
         }
         if(param2 != null && param2 != _hv12530.getInstance())
         {
            if(param2._vr14476._ow11561)
            {
               return;
            }
            if(param2._vr14476._bd247(param1) == false)
            {
               param5 = int(_db131._wr1537);
            }
         }
         var _loc10_:_tj12079 = new _db131()._wt13394(param5,param6,param1,param2);
         _loc11_ = new MovieClip();
         _loc7_ = this._bf7012(_loc10_._de8828);
         _loc7_.text = _loc10_.texto;
         _loc7_.y = 2;
         if(_loc10_._hs3693)
         {
            _loc7_.x = _pj2899 + 3 + _loc10_._nv1822;
         }
         else
         {
            _loc7_.x = 3 + _loc10_._nv1822;
         }
         if(_loc10_._vt9357 == false)
         {
            if(_loc10_._hs9331.length > 0)
            {
               this._qi1420(param2,_loc11_,_loc7_,_loc10_._hs9331.length - 1);
               this._lk733(_loc7_,0,_loc10_._hs9331.length - 1,true);
               this._lk733(_loc7_,_loc10_._hs9331.length - 1,-1,false);
            }
            else
            {
               this._lk733(_loc7_,0,-1,false);
            }
         }
         else
         {
            _loc8_ = _xr3315._ju6982("CorazonChat1");
            _loc7_.text = _loc10_._hs9331 + "  ";
            this._lk733(_loc7_,0,-1,false);
            _loc8_.x = int(_loc7_.getLineMetrics(0).width) + _loc10_._nv1822;
            _loc8_.y = 5;
            _loc7_.text = _loc10_._hs9331 + "    " + _loc10_.texto;
            _loc11_.addChild(_loc8_);
            this._lk733(_loc7_,0,-1,false);
         }
         _loc11_.addChild(_loc7_);
         if(!this._nl5944)
         {
            this._mc2850(_loc11_);
         }
         var _loc12_:int = _loc7_.getLineMetrics(0).width + 32;
         _loc7_.width = _loc12_;
         if(_loc10_._hs3693)
         {
            _loc9_ = _xr3315._ku11706(param2,"cara_peque");
            _loc9_.x = 2 + _loc10_._nv1822;
            _loc9_.y = 0;
            _loc11_.addChild(_loc9_);
         }
         _loc11_.graphics.beginFill(_loc10_._sf7808,_loc10_._ns998);
         if(_loc11_.height >= _nc1149 + _loc10_._tf1597)
         {
            _loc11_.graphics.drawRoundRect(0,0,_loc11_.width + _loc10_._nv1822,_loc11_.height,10);
         }
         else
         {
            _loc11_.graphics.drawRoundRect(0,-(_nc1149 + _loc10_._tf1597 - _loc11_.height) / 2,_loc11_.width + _loc10_._nv1822,_nc1149 + _loc10_._tf1597,10);
         }
         _loc11_.graphics.endFill();
         _loc11_.x = param3 - _loc11_.width / 2;
         _loc11_.y = _bc2651;
         if(this.teatro)
         {
            if(_loc11_.x < _ck14184)
            {
               _loc11_.x = _ck14184;
            }
            if(_loc11_.x + _loc11_.width > _jf3235)
            {
               _loc11_.x = _jf3235 - _loc11_.width;
            }
            _loc11_.y = 400;
         }
         else
         {
            if(_loc11_.x < _ck14184)
            {
               _loc11_.x = _ck14184;
            }
            if(_loc11_.x + _loc11_.width > _jf3235)
            {
               _loc11_.x = _jf3235 - _loc11_.width;
            }
            _loc11_.x = int(_loc11_.x);
            _loc11_.y = int(_loc11_.y);
         }
         if(this._bm104 != 0)
         {
            this._fd300(this._bm104);
         }
         this._bm104 = _nc1149 + _dt719;
         this._yh899 = int(getTimer() / 1000);
         this._ko6143.push(_loc11_);
         _xw1367.getInstance()._uc3178(_loc11_,_xw1367._hh2073);
         var _loc13_:_nb11644 = new _nb11644(param3,param4,_loc11_.y + _loc11_.height + 5);
         _xw1367.getInstance()._uc3178(_loc13_,_xw1367._hh2073);
      }
      
      public function _fd300(param1:int) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         var _loc4_:Array = new Array();
         for each(_loc2_ in this._ko6143)
         {
            _loc2_.y -= param1;
            if(_loc2_.y < 0)
            {
               _loc4_.push(_loc2_);
            }
         }
         for each(_loc3_ in _loc4_)
         {
            this._ko6143.splice(this._ko6143.indexOf(_loc3_),1);
            _xw1367.getInstance()._na10792(_loc3_,_xw1367._hh2073);
         }
      }
      
      public function _ky7789(param1:Boolean) : void
      {
         this._nl5944 = param1;
      }
      
      public function _ho14280(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         var _loc4_:MovieClip = null;
         this._nl5944 = param1;
         var _loc5_:int = int(_xw1367.getInstance()._ad12085(_xw1367._hh2073));
         _loc2_ = 0;
         while(_loc2_ < _loc5_)
         {
            _loc4_ = _xw1367.getInstance()._en5283(_loc2_,_xw1367._hh2073);
            if(param1)
            {
               this._hr13440(_loc4_);
            }
            else
            {
               this._mc2850(_loc4_);
            }
            _loc2_++;
         }
      }
      
      private function _mc2850(param1:MovieClip) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc5_:int = 0;
         var _loc4_:int = param1.numChildren;
         while(_loc5_ < _loc4_)
         {
            _loc2_ = param1.getChildAt(_loc5_);
            if(_loc2_ is TextField)
            {
               var _loc3_:TextField = TextField(_loc2_);
               null.htmlText = null.htmlText.replace(irrcrpt("GBDF=\"Wfsebob\"",1),irrcrpt("GBDF=\"Bsjbm\"",1));
               null.htmlText = null.htmlText.replace(irrcrpt("TJAF=\"21\"",1),irrcrpt("TJAF=\"22\"",1));
            }
            _loc5_++;
         }
      }
      
      private function _hr13440(param1:MovieClip) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc5_:int = 0;
         var _loc4_:int = param1.numChildren;
         while(_loc5_ < _loc4_)
         {
            _loc2_ = param1.getChildAt(_loc5_);
            if(_loc2_ is TextField)
            {
               var _loc3_:TextField = TextField(_loc2_);
               null.htmlText = null.htmlText.replace(irrcrpt("HCEG=\"Ctkcn\"",2),irrcrpt("JEGI=\"Zivhere\"",4));
               null.htmlText = null.htmlText.replace(irrcrpt("TJAF=\"22\"",1),irrcrpt("UKBG=\"32\"",2));
            }
            _loc5_++;
         }
      }
      
      private function _bf7012(param1:uint) : TextField
      {
         var _loc2_:TextField = new TextField();
         _loc2_.wordWrap = false;
         _loc2_.type = TextFieldType.DYNAMIC;
         _loc2_.textColor = param1;
         _loc2_.height = _nc1149 - 2;
         _loc2_.selectable = false;
         var _loc3_:TextFormat = _loc2_.getTextFormat();
         _loc3_.font = "Verdana";
         _loc3_.align = TextFormatAlign.LEFT;
         _loc3_.size = 10;
         _loc2_.setTextFormat(_loc3_);
         _loc2_.defaultTextFormat = _loc3_;
         return _loc2_;
      }
      
      private function _lk733(param1:TextField, param2:int, param3:int, param4:Boolean) : void
      {
         var _loc5_:TextFormat = param1.getTextFormat(param2,param3);
         _loc5_.bold = param4;
         param1.setTextFormat(_loc5_,param2,param3);
      }
      
      private function changeemoji(param1:int, param2:String, param3:String, param4:MovieClip, param5:TextField, param6:int) : String
      {
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:String = param5.text;
         var _loc10_:int = int(_loc9_.toUpperCase().indexOf(param3,param6));
         while(_loc10_ >= 0)
         {
            if(_loc8_ == null)
            {
               _loc8_ = new MovieClip();
               _loc8_.cacheAsBitmap = true;
               _loc8_.x = int(param5.x);
               _loc8_.y = int(param5.y);
               _loc8_.name = _id15157;
               param4.addChild(_loc8_);
            }
            param5.text = _loc9_.substr(0,_loc10_) + "  ";
            this._lk733(param5,0,param6,true);
            this._lk733(param5,param6,-1,false);
            _loc7_ = _xr3315._ju6982(param2);
            _loc7_.x = int(param5.getLineMetrics(0).width - 1);
            _loc7_.y = param1;
            _loc8_.addChild(_loc7_);
            _loc9_ = _loc9_.substr(0,_loc10_) + "       " + _loc9_.substr(_loc10_ + param3.length);
            _loc10_ = int(_loc9_.toUpperCase().indexOf(param3,param6));
         }
         param5.text = _loc9_;
      }
      
      private function _qi1420(param1:_um8624, param2:MovieClip, param3:TextField, param4:int) : void
      {
         var _loc7_:String = param3.text;
         if(param1 != null)
         {
            if(param1.member == 0 || param1.member == 1 || param1.member == 2)
            {
               this.changeemoji(-1,"Emoji1","(E1)",param2,param3,param4);
               this.changeemoji(-1,"Emoji2","(E2)",param2,param3,param4);
               this.changeemoji(-1,"Emoji3","(E3)",param2,param3,param4);
               this.changeemoji(-1,"Emoji4","(E4)",param2,param3,param4);
               this.changeemoji(-1,"Emoji5","(E5)",param2,param3,param4);
               this.changeemoji(-1,"Emoji6","(E6)",param2,param3,param4);
               this.changeemoji(-1,"Emoji7","(E7)",param2,param3,param4);
               this.changeemoji(-1,"Emoji8","(E8)",param2,param3,param4);
               this.changeemoji(-1,"Emoji9","(E9)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol1","(S1)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol2","(S2)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol3","(S3)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol4","(S4)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol5","(S5)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol6","(S6)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol7","(S7)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol8","(S8)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol9","(S9)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol10","(S10)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object1","(O1)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object2","(O2)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object3","(O3)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object4","(O4)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object5","(O5)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object6","(O6)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object7","(O7)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object8","(O8)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object9","(O9)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object10","(O10)",param2,param3,param4);
            }
            if(param1.member == 1 || param1.member == 2)
            {
               this.changeemoji(-1,"Emoji10","(E10)",param2,param3,param4);
               this.changeemoji(-1,"Emoji11","(E11)",param2,param3,param4);
               this.changeemoji(-1,"Emoji12","(E12)",param2,param3,param4);
               this.changeemoji(-1,"Emoji13","(E13)",param2,param3,param4);
               this.changeemoji(-1,"Emoji14","(E14)",param2,param3,param4);
               this.changeemoji(-1,"Emoji15","(E15)",param2,param3,param4);
               this.changeemoji(-1,"Emoji16","(E16)",param2,param3,param4);
               this.changeemoji(-1,"Emoji17","(E17)",param2,param3,param4);
               this.changeemoji(-1,"Emoji18","(E18)",param2,param3,param4);
               this.changeemoji(-1,"Emoji19","(E19)",param2,param3,param4);
               this.changeemoji(-1,"Emoji20","(E20)",param2,param3,param4);
               this.changeemoji(-1,"Emoji21","(E21)",param2,param3,param4);
               this.changeemoji(-1,"Emoji22","(E22)",param2,param3,param4);
               this.changeemoji(-1,"Emoji23","(E23)",param2,param3,param4);
               this.changeemoji(-1,"Emoji24","(E24)",param2,param3,param4);
               this.changeemoji(-1,"Emoji25","(E25)",param2,param3,param4);
               this.changeemoji(-1,"Emoji26","(E26)",param2,param3,param4);
               this.changeemoji(-1,"Emoji27","(E27)",param2,param3,param4);
               this.changeemoji(-1,"Emoji28","(E28)",param2,param3,param4);
               this.changeemoji(-1,"Emoji29","(E29)",param2,param3,param4);
               this.changeemoji(-1,"Emoji30","(E30)",param2,param3,param4);
               this.changeemoji(-1,"Emoji31","(E31)",param2,param3,param4);
               this.changeemoji(-1,"Emoji32","(E32)",param2,param3,param4);
               this.changeemoji(-1,"Emoji33","(E33)",param2,param3,param4);
               this.changeemoji(-1,"Emoji34","(E34)",param2,param3,param4);
               this.changeemoji(-1,"Emoji35","(E35)",param2,param3,param4);
               this.changeemoji(-1,"Emoji36","(E36)",param2,param3,param4);
               this.changeemoji(-1,"Emoji37","(E37)",param2,param3,param4);
               this.changeemoji(-1,"Emoji38","(E38)",param2,param3,param4);
               this.changeemoji(-1,"Emoji39","(E39)",param2,param3,param4);
               this.changeemoji(-1,"Emoji40","(E40)",param2,param3,param4);
               this.changeemoji(-1,"Emoji41","(E41)",param2,param3,param4);
               this.changeemoji(-1,"Emoji42","(E42)",param2,param3,param4);
               this.changeemoji(-1,"Emoji43","(E43)",param2,param3,param4);
               this.changeemoji(-1,"Emoji44","(E44)",param2,param3,param4);
               this.changeemoji(-1,"Emoji45","(E45)",param2,param3,param4);
               this.changeemoji(-1,"Emoji46","(E46)",param2,param3,param4);
               this.changeemoji(-1,"Emoji47","(E47)",param2,param3,param4);
               this.changeemoji(-1,"Emoji48","(E48)",param2,param3,param4);
               this.changeemoji(-1,"Emoji49","(E49)",param2,param3,param4);
               this.changeemoji(-1,"Emoji50","(E50)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol11","(S11)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol12","(S12)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol13","(S13)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol14","(S14)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol15","(S15)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol16","(S16)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol17","(S17)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol18","(S18)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol19","(S19)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol20","(S20)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol21","(S21)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol22","(S22)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol23","(S23)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol24","(S24)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol25","(S25)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol26","(S26)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol27","(S27)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol28","(S28)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol29","(S29)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol30","(S30)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object11","(O11)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object12","(O12)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object13","(O13)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object14","(O14)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object15","(O15)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object16","(O16)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object17","(O17)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object18","(O18)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object19","(O19)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object20","(O20)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object21","(O21)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object22","(O22)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object23","(O23)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object24","(O24)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object25","(O25)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object26","(O26)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object27","(O27)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object28","(O28)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object29","(O29)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object30","(O30)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object31","(O31)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object32","(O32)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object33","(O33)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object34","(O34)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object35","(O35)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object36","(O36)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object37","(O37)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object38","(O38)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object39","(O39)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object40","(O40)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object41","(O41)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object42","(O42)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object43","(O43)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object44","(O44)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object45","(O45)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object46","(O46)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object47","(O47)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object48","(O48)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object49","(O49)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object50","(O50)",param2,param3,param4);
            }
            if(param1.member == 2)
            {
               this.changeemoji(-1,"Emoji51","(E51)",param2,param3,param4);
               this.changeemoji(-1,"Emoji52","(E52)",param2,param3,param4);
               this.changeemoji(-1,"Emoji53","(E53)",param2,param3,param4);
               this.changeemoji(-1,"Emoji54","(E54)",param2,param3,param4);
               this.changeemoji(-1,"Emoji55","(E55)",param2,param3,param4);
               this.changeemoji(-1,"Emoji56","(E56)",param2,param3,param4);
               this.changeemoji(-1,"Emoji57","(E57)",param2,param3,param4);
               this.changeemoji(-1,"Emoji58","(E58)",param2,param3,param4);
               this.changeemoji(-1,"Emoji59","(E59)",param2,param3,param4);
               this.changeemoji(-1,"Emoji60","(E60)",param2,param3,param4);
               this.changeemoji(-1,"Emoji61","(E61)",param2,param3,param4);
               this.changeemoji(-1,"Emoji62","(E62)",param2,param3,param4);
               this.changeemoji(-1,"Emoji63","(E63)",param2,param3,param4);
               this.changeemoji(-1,"Emoji64","(E64)",param2,param3,param4);
               this.changeemoji(-1,"Emoji65","(E65)",param2,param3,param4);
               this.changeemoji(-1,"Emoji66","(E66)",param2,param3,param4);
               this.changeemoji(-1,"Emoji67","(E67)",param2,param3,param4);
               this.changeemoji(-1,"Emoji68","(E68)",param2,param3,param4);
               this.changeemoji(-1,"Emoji69","(E69)",param2,param3,param4);
               this.changeemoji(-1,"Emoji70","(E70)",param2,param3,param4);
               this.changeemoji(-1,"Emoji71","(E71)",param2,param3,param4);
               this.changeemoji(-1,"Emoji72","(E72)",param2,param3,param4);
               this.changeemoji(-1,"Emoji73","(E73)",param2,param3,param4);
               this.changeemoji(-1,"Emoji74","(E74)",param2,param3,param4);
               this.changeemoji(-1,"Emoji75","(E75)",param2,param3,param4);
               this.changeemoji(-1,"Emoji76","(E76)",param2,param3,param4);
               this.changeemoji(-1,"Emoji77","(E77)",param2,param3,param4);
               this.changeemoji(-1,"Emoji78","(E78)",param2,param3,param4);
               this.changeemoji(-1,"Emoji79","(E79)",param2,param3,param4);
               this.changeemoji(-1,"Emoji80","(E80)",param2,param3,param4);
               this.changeemoji(-1,"Emoji81","(E81)",param2,param3,param4);
               this.changeemoji(-1,"Emoji82","(E82)",param2,param3,param4);
               this.changeemoji(-1,"Emoji83","(E83)",param2,param3,param4);
               this.changeemoji(-1,"Emoji84","(E84)",param2,param3,param4);
               this.changeemoji(-1,"Emoji85","(E85)",param2,param3,param4);
               this.changeemoji(-1,"Emoji86","(E86)",param2,param3,param4);
               this.changeemoji(-1,"Emoji87","(E87)",param2,param3,param4);
               this.changeemoji(-1,"Emoji88","(E88)",param2,param3,param4);
               this.changeemoji(-1,"Emoji89","(E89)",param2,param3,param4);
               this.changeemoji(-1,"Emoji90","(E90)",param2,param3,param4);
               this.changeemoji(-1,"Emoji91","(E91)",param2,param3,param4);
               this.changeemoji(-1,"Emoji92","(E92)",param2,param3,param4);
               this.changeemoji(-1,"Emoji93","(E93)",param2,param3,param4);
               this.changeemoji(-1,"Emoji94","(E94)",param2,param3,param4);
               this.changeemoji(-1,"Emoji95","(E95)",param2,param3,param4);
               this.changeemoji(-1,"Emoji96","(E96)",param2,param3,param4);
               this.changeemoji(-1,"Emoji97","(E97)",param2,param3,param4);
               this.changeemoji(-1,"Emoji98","(E98)",param2,param3,param4);
               this.changeemoji(-1,"Emoji99","(E99)",param2,param3,param4);
               this.changeemoji(-1,"Emoji100","(E100)",param2,param3,param4);
               this.changeemoji(-1,"Emoji101","(E101)",param2,param3,param4);
               this.changeemoji(-1,"Emoji102","(E102)",param2,param3,param4);
               this.changeemoji(-1,"Emoji103","(E103)",param2,param3,param4);
               this.changeemoji(-1,"Emoji104","(E104)",param2,param3,param4);
               this.changeemoji(-1,"Emoji105","(E105)",param2,param3,param4);
               this.changeemoji(-1,"Emoji106","(E106)",param2,param3,param4);
               this.changeemoji(-1,"Emoji107","(E107)",param2,param3,param4);
               this.changeemoji(-1,"Emoji108","(E108)",param2,param3,param4);
               this.changeemoji(-1,"Emoji109","(E109)",param2,param3,param4);
               this.changeemoji(-1,"Emoji110","(E110)",param2,param3,param4);
               this.changeemoji(-1,"Emoji111","(E111)",param2,param3,param4);
               this.changeemoji(-1,"Emoji112","(E112)",param2,param3,param4);
               this.changeemoji(-1,"Emoji113","(E113)",param2,param3,param4);
               this.changeemoji(-1,"Emoji114","(E114)",param2,param3,param4);
               this.changeemoji(-1,"Emoji115","(E115)",param2,param3,param4);
               this.changeemoji(-1,"Emoji116","(E116)",param2,param3,param4);
               this.changeemoji(-1,"Emoji117","(E117)",param2,param3,param4);
               this.changeemoji(-1,"Emoji118","(E118)",param2,param3,param4);
               this.changeemoji(-1,"Emoji119","(E119)",param2,param3,param4);
               this.changeemoji(-1,"Emoji120","(E120)",param2,param3,param4);
               this.changeemoji(-1,"Emoji121","(E121)",param2,param3,param4);
               this.changeemoji(-1,"Emoji122","(E122)",param2,param3,param4);
               this.changeemoji(-1,"Emoji123","(E123)",param2,param3,param4);
               this.changeemoji(-1,"Emoji124","(E124)",param2,param3,param4);
               this.changeemoji(-1,"Emoji125","(E125)",param2,param3,param4);
               this.changeemoji(-1,"Emoji126","(E126)",param2,param3,param4);
               this.changeemoji(-1,"Emoji127","(E127)",param2,param3,param4);
               this.changeemoji(-1,"Emoji128","(E128)",param2,param3,param4);
               this.changeemoji(-1,"Emoji129","(E129)",param2,param3,param4);
               this.changeemoji(-1,"Emoji130","(E130)",param2,param3,param4);
               this.changeemoji(-1,"Emoji131","(E131)",param2,param3,param4);
               this.changeemoji(-1,"Emoji132","(E132)",param2,param3,param4);
               this.changeemoji(-1,"Emoji133","(E133)",param2,param3,param4);
               this.changeemoji(-1,"Emoji134","(E134)",param2,param3,param4);
               this.changeemoji(-1,"Emoji135","(E135)",param2,param3,param4);
               this.changeemoji(-1,"Emoji136","(E136)",param2,param3,param4);
               this.changeemoji(-1,"Emoji137","(E137)",param2,param3,param4);
               this.changeemoji(-1,"Emoji138","(E138)",param2,param3,param4);
               this.changeemoji(-1,"Emoji139","(E139)",param2,param3,param4);
               this.changeemoji(-1,"Emoji140","(E140)",param2,param3,param4);
               this.changeemoji(-1,"Emoji141","(E141)",param2,param3,param4);
               this.changeemoji(-1,"Emoji142","(E142)",param2,param3,param4);
               this.changeemoji(-1,"Emoji143","(E143)",param2,param3,param4);
               this.changeemoji(-1,"Emoji144","(E144)",param2,param3,param4);
               this.changeemoji(-1,"Emoji145","(E145)",param2,param3,param4);
               this.changeemoji(-1,"Emoji146","(E146)",param2,param3,param4);
               this.changeemoji(-1,"Emoji147","(E147)",param2,param3,param4);
               this.changeemoji(-1,"Emoji148","(E148)",param2,param3,param4);
               this.changeemoji(-1,"Emoji149","(E149)",param2,param3,param4);
               this.changeemoji(-1,"Emoji150","(E150)",param2,param3,param4);
               this.changeemoji(-1,"Emoji151","(E151)",param2,param3,param4);
               this.changeemoji(-1,"Emoji152","(E152)",param2,param3,param4);
               this.changeemoji(-1,"Emoji153","(E153)",param2,param3,param4);
               this.changeemoji(-1,"Emoji154","(E154)",param2,param3,param4);
               this.changeemoji(-1,"Emoji155","(E155)",param2,param3,param4);
               this.changeemoji(-1,"Emoji156","(E156)",param2,param3,param4);
               this.changeemoji(-1,"Emoji157","(E157)",param2,param3,param4);
               this.changeemoji(-1,"Emoji158","(E158)",param2,param3,param4);
               this.changeemoji(-1,"Emoji159","(E159)",param2,param3,param4);
               this.changeemoji(-1,"Emoji160","(E160)",param2,param3,param4);
               this.changeemoji(-1,"Emoji161","(E161)",param2,param3,param4);
               this.changeemoji(-1,"Emoji162","(E162)",param2,param3,param4);
               this.changeemoji(-1,"Emoji163","(E163)",param2,param3,param4);
               this.changeemoji(-1,"Emoji164","(E164)",param2,param3,param4);
               this.changeemoji(-1,"Emoji165","(E165)",param2,param3,param4);
               this.changeemoji(-1,"Emoji166","(E166)",param2,param3,param4);
               this.changeemoji(-1,"Emoji167","(E167)",param2,param3,param4);
               this.changeemoji(-1,"Emoji168","(E168)",param2,param3,param4);
               this.changeemoji(-1,"Emoji169","(E169)",param2,param3,param4);
               this.changeemoji(-1,"Emoji170","(E170)",param2,param3,param4);
               this.changeemoji(-1,"Emoji171","(E171)",param2,param3,param4);
               this.changeemoji(-1,"Emoji172","(E172)",param2,param3,param4);
               this.changeemoji(-1,"Emoji173","(E173)",param2,param3,param4);
               this.changeemoji(-1,"Emoji174","(E174)",param2,param3,param4);
               this.changeemoji(-1,"Emoji175","(E175)",param2,param3,param4);
               this.changeemoji(-1,"Emoji176","(E176)",param2,param3,param4);
               this.changeemoji(-1,"Emoji177","(E177)",param2,param3,param4);
               this.changeemoji(-1,"Emoji178","(E178)",param2,param3,param4);
               this.changeemoji(-1,"Emoji179","(E179)",param2,param3,param4);
               this.changeemoji(-1,"Emoji180","(E180)",param2,param3,param4);
               this.changeemoji(-1,"Emoji181","(E181)",param2,param3,param4);
               this.changeemoji(-1,"Emoji182","(E182)",param2,param3,param4);
               this.changeemoji(-1,"Emoji183","(E183)",param2,param3,param4);
               this.changeemoji(-1,"Emoji184","(E184)",param2,param3,param4);
               this.changeemoji(-1,"Emoji185","(E185)",param2,param3,param4);
               this.changeemoji(-1,"Emoji186","(E186)",param2,param3,param4);
               this.changeemoji(-1,"Emoji187","(E187)",param2,param3,param4);
               this.changeemoji(-1,"Emoji188","(E188)",param2,param3,param4);
               this.changeemoji(-1,"Emoji189","(E189)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol31","(S31)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol32","(S32)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol33","(S33)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol34","(S34)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol35","(S35)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol36","(S36)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol37","(S37)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol38","(S38)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol39","(S39)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol40","(S40)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol41","(S41)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol42","(S42)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol43","(S43)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol44","(S44)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol45","(S45)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol46","(S46)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol47","(S47)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol48","(S48)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol49","(S49)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol50","(S50)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol51","(S51)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol52","(S52)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol53","(S53)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol54","(S54)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol55","(S55)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol56","(S56)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol57","(S57)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol58","(S58)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol59","(S59)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol60","(S60)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol61","(S61)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol62","(S62)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol63","(S63)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol64","(S64)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol65","(S65)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol66","(S66)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol67","(S67)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol68","(S68)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol69","(S69)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol70","(S70)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol71","(S71)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol72","(S72)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol73","(S73)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol74","(S74)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol75","(S75)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Symbol76","(S76)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object51","(O51)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object52","(O52)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object53","(O53)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object54","(O54)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object55","(O55)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object56","(O56)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object57","(O57)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object58","(O58)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object59","(O59)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object60","(O60)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object61","(O61)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object62","(O62)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object63","(O63)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object64","(O64)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object65","(O65)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object66","(O66)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object67","(O67)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object68","(O68)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object69","(O69)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object70","(O70)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object71","(O71)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object72","(O72)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object73","(O73)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object74","(O74)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object75","(O75)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object76","(O76)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object77","(O77)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object78","(O78)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object79","(O79)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object80","(O80)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object81","(O81)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object82","(O82)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object83","(O83)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object84","(O84)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object85","(O85)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object86","(O86)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object87","(O87)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object88","(O88)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object89","(O89)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object90","(O90)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object91","(O91)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object92","(O92)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object93","(O93)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object94","(O94)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object95","(O95)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object96","(O96)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object97","(O97)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object98","(O98)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object99","(O99)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object100","(O100)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object101","(O101)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object102","(O102)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object103","(O103)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object104","(O104)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object105","(O105)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object106","(O106)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object107","(O107)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object108","(O108)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object109","(O109)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object110","(O110)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object111","(O111)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object112","(O112)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object113","(O113)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object114","(O114)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object115","(O115)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object116","(O116)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object117","(O117)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object118","(O118)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object119","(O119)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object120","(O120)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object121","(O121)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object122","(O122)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object123","(O123)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object124","(O124)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object125","(O125)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object126","(O126)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object127","(O127)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object128","(O128)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object129","(O129)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object130","(O130)",param2,param3,param4);
               this.changeemoji(-1,"Emoji_Object131","(O131)",param2,param3,param4);
            }
         }
         else
         {
            this.changeemoji(-1,"Emoji1","(E1)",param2,param3,param4);
            this.changeemoji(-1,"Emoji2","(E2)",param2,param3,param4);
            this.changeemoji(-1,"Emoji3","(E3)",param2,param3,param4);
            this.changeemoji(-1,"Emoji4","(E4)",param2,param3,param4);
            this.changeemoji(-1,"Emoji5","(E5)",param2,param3,param4);
            this.changeemoji(-1,"Emoji6","(E6)",param2,param3,param4);
            this.changeemoji(-1,"Emoji7","(E7)",param2,param3,param4);
            this.changeemoji(-1,"Emoji8","(E8)",param2,param3,param4);
            this.changeemoji(-1,"Emoji9","(E9)",param2,param3,param4);
            this.changeemoji(-1,"Emoji10","(E10)",param2,param3,param4);
            this.changeemoji(-1,"Emoji11","(E11)",param2,param3,param4);
            this.changeemoji(-1,"Emoji12","(E12)",param2,param3,param4);
            this.changeemoji(-1,"Emoji13","(E13)",param2,param3,param4);
            this.changeemoji(-1,"Emoji14","(E14)",param2,param3,param4);
            this.changeemoji(-1,"Emoji15","(E15)",param2,param3,param4);
            this.changeemoji(-1,"Emoji16","(E16)",param2,param3,param4);
            this.changeemoji(-1,"Emoji17","(E17)",param2,param3,param4);
            this.changeemoji(-1,"Emoji18","(E18)",param2,param3,param4);
            this.changeemoji(-1,"Emoji19","(E19)",param2,param3,param4);
            this.changeemoji(-1,"Emoji20","(E20)",param2,param3,param4);
            this.changeemoji(-1,"Emoji21","(E21)",param2,param3,param4);
            this.changeemoji(-1,"Emoji22","(E22)",param2,param3,param4);
            this.changeemoji(-1,"Emoji23","(E23)",param2,param3,param4);
            this.changeemoji(-1,"Emoji24","(E24)",param2,param3,param4);
            this.changeemoji(-1,"Emoji25","(E25)",param2,param3,param4);
            this.changeemoji(-1,"Emoji26","(E26)",param2,param3,param4);
            this.changeemoji(-1,"Emoji27","(E27)",param2,param3,param4);
            this.changeemoji(-1,"Emoji28","(E28)",param2,param3,param4);
            this.changeemoji(-1,"Emoji29","(E29)",param2,param3,param4);
            this.changeemoji(-1,"Emoji30","(E30)",param2,param3,param4);
            this.changeemoji(-1,"Emoji31","(E31)",param2,param3,param4);
            this.changeemoji(-1,"Emoji32","(E32)",param2,param3,param4);
            this.changeemoji(-1,"Emoji33","(E33)",param2,param3,param4);
            this.changeemoji(-1,"Emoji34","(E34)",param2,param3,param4);
            this.changeemoji(-1,"Emoji35","(E35)",param2,param3,param4);
            this.changeemoji(-1,"Emoji36","(E36)",param2,param3,param4);
            this.changeemoji(-1,"Emoji37","(E37)",param2,param3,param4);
            this.changeemoji(-1,"Emoji38","(E38)",param2,param3,param4);
            this.changeemoji(-1,"Emoji39","(E39)",param2,param3,param4);
            this.changeemoji(-1,"Emoji40","(E40)",param2,param3,param4);
            this.changeemoji(-1,"Emoji41","(E41)",param2,param3,param4);
            this.changeemoji(-1,"Emoji42","(E42)",param2,param3,param4);
            this.changeemoji(-1,"Emoji43","(E43)",param2,param3,param4);
            this.changeemoji(-1,"Emoji44","(E44)",param2,param3,param4);
            this.changeemoji(-1,"Emoji45","(E45)",param2,param3,param4);
            this.changeemoji(-1,"Emoji46","(E46)",param2,param3,param4);
            this.changeemoji(-1,"Emoji47","(E47)",param2,param3,param4);
            this.changeemoji(-1,"Emoji48","(E48)",param2,param3,param4);
            this.changeemoji(-1,"Emoji49","(E49)",param2,param3,param4);
            this.changeemoji(-1,"Emoji50","(E50)",param2,param3,param4);
            this.changeemoji(-1,"Emoji51","(E51)",param2,param3,param4);
            this.changeemoji(-1,"Emoji52","(E52)",param2,param3,param4);
            this.changeemoji(-1,"Emoji53","(E53)",param2,param3,param4);
            this.changeemoji(-1,"Emoji54","(E54)",param2,param3,param4);
            this.changeemoji(-1,"Emoji55","(E55)",param2,param3,param4);
            this.changeemoji(-1,"Emoji56","(E56)",param2,param3,param4);
            this.changeemoji(-1,"Emoji57","(E57)",param2,param3,param4);
            this.changeemoji(-1,"Emoji58","(E58)",param2,param3,param4);
            this.changeemoji(-1,"Emoji59","(E59)",param2,param3,param4);
            this.changeemoji(-1,"Emoji60","(E60)",param2,param3,param4);
            this.changeemoji(-1,"Emoji61","(E61)",param2,param3,param4);
            this.changeemoji(-1,"Emoji62","(E62)",param2,param3,param4);
            this.changeemoji(-1,"Emoji63","(E63)",param2,param3,param4);
            this.changeemoji(-1,"Emoji64","(E64)",param2,param3,param4);
            this.changeemoji(-1,"Emoji65","(E65)",param2,param3,param4);
            this.changeemoji(-1,"Emoji66","(E66)",param2,param3,param4);
            this.changeemoji(-1,"Emoji67","(E67)",param2,param3,param4);
            this.changeemoji(-1,"Emoji68","(E68)",param2,param3,param4);
            this.changeemoji(-1,"Emoji69","(E69)",param2,param3,param4);
            this.changeemoji(-1,"Emoji70","(E70)",param2,param3,param4);
            this.changeemoji(-1,"Emoji71","(E71)",param2,param3,param4);
            this.changeemoji(-1,"Emoji72","(E72)",param2,param3,param4);
            this.changeemoji(-1,"Emoji73","(E73)",param2,param3,param4);
            this.changeemoji(-1,"Emoji74","(E74)",param2,param3,param4);
            this.changeemoji(-1,"Emoji75","(E75)",param2,param3,param4);
            this.changeemoji(-1,"Emoji76","(E76)",param2,param3,param4);
            this.changeemoji(-1,"Emoji77","(E77)",param2,param3,param4);
            this.changeemoji(-1,"Emoji78","(E78)",param2,param3,param4);
            this.changeemoji(-1,"Emoji79","(E79)",param2,param3,param4);
            this.changeemoji(-1,"Emoji80","(E80)",param2,param3,param4);
            this.changeemoji(-1,"Emoji81","(E81)",param2,param3,param4);
            this.changeemoji(-1,"Emoji82","(E82)",param2,param3,param4);
            this.changeemoji(-1,"Emoji83","(E83)",param2,param3,param4);
            this.changeemoji(-1,"Emoji84","(E84)",param2,param3,param4);
            this.changeemoji(-1,"Emoji85","(E85)",param2,param3,param4);
            this.changeemoji(-1,"Emoji86","(E86)",param2,param3,param4);
            this.changeemoji(-1,"Emoji87","(E87)",param2,param3,param4);
            this.changeemoji(-1,"Emoji88","(E88)",param2,param3,param4);
            this.changeemoji(-1,"Emoji89","(E89)",param2,param3,param4);
            this.changeemoji(-1,"Emoji90","(E90)",param2,param3,param4);
            this.changeemoji(-1,"Emoji91","(E91)",param2,param3,param4);
            this.changeemoji(-1,"Emoji92","(E92)",param2,param3,param4);
            this.changeemoji(-1,"Emoji93","(E93)",param2,param3,param4);
            this.changeemoji(-1,"Emoji94","(E94)",param2,param3,param4);
            this.changeemoji(-1,"Emoji95","(E95)",param2,param3,param4);
            this.changeemoji(-1,"Emoji96","(E96)",param2,param3,param4);
            this.changeemoji(-1,"Emoji97","(E97)",param2,param3,param4);
            this.changeemoji(-1,"Emoji98","(E98)",param2,param3,param4);
            this.changeemoji(-1,"Emoji99","(E99)",param2,param3,param4);
            this.changeemoji(-1,"Emoji100","(E100)",param2,param3,param4);
            this.changeemoji(-1,"Emoji101","(E101)",param2,param3,param4);
            this.changeemoji(-1,"Emoji102","(E102)",param2,param3,param4);
            this.changeemoji(-1,"Emoji103","(E103)",param2,param3,param4);
            this.changeemoji(-1,"Emoji104","(E104)",param2,param3,param4);
            this.changeemoji(-1,"Emoji105","(E105)",param2,param3,param4);
            this.changeemoji(-1,"Emoji106","(E106)",param2,param3,param4);
            this.changeemoji(-1,"Emoji107","(E107)",param2,param3,param4);
            this.changeemoji(-1,"Emoji108","(E108)",param2,param3,param4);
            this.changeemoji(-1,"Emoji109","(E109)",param2,param3,param4);
            this.changeemoji(-1,"Emoji110","(E110)",param2,param3,param4);
            this.changeemoji(-1,"Emoji111","(E111)",param2,param3,param4);
            this.changeemoji(-1,"Emoji112","(E112)",param2,param3,param4);
            this.changeemoji(-1,"Emoji113","(E113)",param2,param3,param4);
            this.changeemoji(-1,"Emoji114","(E114)",param2,param3,param4);
            this.changeemoji(-1,"Emoji115","(E115)",param2,param3,param4);
            this.changeemoji(-1,"Emoji116","(E116)",param2,param3,param4);
            this.changeemoji(-1,"Emoji117","(E117)",param2,param3,param4);
            this.changeemoji(-1,"Emoji118","(E118)",param2,param3,param4);
            this.changeemoji(-1,"Emoji119","(E119)",param2,param3,param4);
            this.changeemoji(-1,"Emoji120","(E120)",param2,param3,param4);
            this.changeemoji(-1,"Emoji121","(E121)",param2,param3,param4);
            this.changeemoji(-1,"Emoji122","(E122)",param2,param3,param4);
            this.changeemoji(-1,"Emoji123","(E123)",param2,param3,param4);
            this.changeemoji(-1,"Emoji124","(E124)",param2,param3,param4);
            this.changeemoji(-1,"Emoji125","(E125)",param2,param3,param4);
            this.changeemoji(-1,"Emoji126","(E126)",param2,param3,param4);
            this.changeemoji(-1,"Emoji127","(E127)",param2,param3,param4);
            this.changeemoji(-1,"Emoji128","(E128)",param2,param3,param4);
            this.changeemoji(-1,"Emoji129","(E129)",param2,param3,param4);
            this.changeemoji(-1,"Emoji130","(E130)",param2,param3,param4);
            this.changeemoji(-1,"Emoji131","(E131)",param2,param3,param4);
            this.changeemoji(-1,"Emoji132","(E132)",param2,param3,param4);
            this.changeemoji(-1,"Emoji133","(E133)",param2,param3,param4);
            this.changeemoji(-1,"Emoji134","(E134)",param2,param3,param4);
            this.changeemoji(-1,"Emoji135","(E135)",param2,param3,param4);
            this.changeemoji(-1,"Emoji136","(E136)",param2,param3,param4);
            this.changeemoji(-1,"Emoji137","(E137)",param2,param3,param4);
            this.changeemoji(-1,"Emoji138","(E138)",param2,param3,param4);
            this.changeemoji(-1,"Emoji139","(E139)",param2,param3,param4);
            this.changeemoji(-1,"Emoji140","(E140)",param2,param3,param4);
            this.changeemoji(-1,"Emoji141","(E141)",param2,param3,param4);
            this.changeemoji(-1,"Emoji142","(E142)",param2,param3,param4);
            this.changeemoji(-1,"Emoji143","(E143)",param2,param3,param4);
            this.changeemoji(-1,"Emoji144","(E144)",param2,param3,param4);
            this.changeemoji(-1,"Emoji145","(E145)",param2,param3,param4);
            this.changeemoji(-1,"Emoji146","(E146)",param2,param3,param4);
            this.changeemoji(-1,"Emoji147","(E147)",param2,param3,param4);
            this.changeemoji(-1,"Emoji148","(E148)",param2,param3,param4);
            this.changeemoji(-1,"Emoji149","(E149)",param2,param3,param4);
            this.changeemoji(-1,"Emoji150","(E150)",param2,param3,param4);
            this.changeemoji(-1,"Emoji151","(E151)",param2,param3,param4);
            this.changeemoji(-1,"Emoji152","(E152)",param2,param3,param4);
            this.changeemoji(-1,"Emoji153","(E153)",param2,param3,param4);
            this.changeemoji(-1,"Emoji154","(E154)",param2,param3,param4);
            this.changeemoji(-1,"Emoji155","(E155)",param2,param3,param4);
            this.changeemoji(-1,"Emoji156","(E156)",param2,param3,param4);
            this.changeemoji(-1,"Emoji157","(E157)",param2,param3,param4);
            this.changeemoji(-1,"Emoji158","(E158)",param2,param3,param4);
            this.changeemoji(-1,"Emoji159","(E159)",param2,param3,param4);
            this.changeemoji(-1,"Emoji160","(E160)",param2,param3,param4);
            this.changeemoji(-1,"Emoji161","(E161)",param2,param3,param4);
            this.changeemoji(-1,"Emoji162","(E162)",param2,param3,param4);
            this.changeemoji(-1,"Emoji163","(E163)",param2,param3,param4);
            this.changeemoji(-1,"Emoji164","(E164)",param2,param3,param4);
            this.changeemoji(-1,"Emoji165","(E165)",param2,param3,param4);
            this.changeemoji(-1,"Emoji166","(E166)",param2,param3,param4);
            this.changeemoji(-1,"Emoji167","(E167)",param2,param3,param4);
            this.changeemoji(-1,"Emoji168","(E168)",param2,param3,param4);
            this.changeemoji(-1,"Emoji169","(E169)",param2,param3,param4);
            this.changeemoji(-1,"Emoji170","(E170)",param2,param3,param4);
            this.changeemoji(-1,"Emoji171","(E171)",param2,param3,param4);
            this.changeemoji(-1,"Emoji172","(E172)",param2,param3,param4);
            this.changeemoji(-1,"Emoji173","(E173)",param2,param3,param4);
            this.changeemoji(-1,"Emoji174","(E174)",param2,param3,param4);
            this.changeemoji(-1,"Emoji175","(E175)",param2,param3,param4);
            this.changeemoji(-1,"Emoji176","(E176)",param2,param3,param4);
            this.changeemoji(-1,"Emoji177","(E177)",param2,param3,param4);
            this.changeemoji(-1,"Emoji178","(E178)",param2,param3,param4);
            this.changeemoji(-1,"Emoji179","(E179)",param2,param3,param4);
            this.changeemoji(-1,"Emoji180","(E180)",param2,param3,param4);
            this.changeemoji(-1,"Emoji181","(E181)",param2,param3,param4);
            this.changeemoji(-1,"Emoji182","(E182)",param2,param3,param4);
            this.changeemoji(-1,"Emoji183","(E183)",param2,param3,param4);
            this.changeemoji(-1,"Emoji184","(E184)",param2,param3,param4);
            this.changeemoji(-1,"Emoji185","(E185)",param2,param3,param4);
            this.changeemoji(-1,"Emoji186","(E186)",param2,param3,param4);
            this.changeemoji(-1,"Emoji187","(E187)",param2,param3,param4);
            this.changeemoji(-1,"Emoji188","(E188)",param2,param3,param4);
            this.changeemoji(-1,"Emoji189","(E189)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol1","(S1)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol2","(S2)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol3","(S3)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol4","(S4)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol5","(S5)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol6","(S6)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol7","(S7)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol8","(S8)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol9","(S9)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol10","(S10)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol11","(S11)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol12","(S12)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol13","(S13)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol14","(S14)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol15","(S15)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol16","(S16)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol17","(S17)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol18","(S18)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol19","(S19)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol20","(S20)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol21","(S21)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol22","(S22)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol23","(S23)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol24","(S24)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol25","(S25)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol26","(S26)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol27","(S27)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol28","(S28)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol29","(S29)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol30","(S30)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol31","(S31)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol32","(S32)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol33","(S33)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol34","(S34)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol35","(S35)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol36","(S36)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol37","(S37)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol38","(S38)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol39","(S39)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol40","(S40)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol41","(S41)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol42","(S42)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol43","(S43)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol44","(S44)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol45","(S45)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol46","(S46)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol47","(S47)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol48","(S48)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol49","(S49)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol50","(S50)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol51","(S51)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol52","(S52)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol53","(S53)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol54","(S54)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol55","(S55)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol56","(S56)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol57","(S57)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol58","(S58)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol59","(S59)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol60","(S60)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol61","(S61)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol62","(S62)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol63","(S63)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol64","(S64)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol65","(S65)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol66","(S66)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol67","(S67)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol68","(S68)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol69","(S69)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol70","(S70)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol71","(S71)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol72","(S72)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol73","(S73)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol74","(S74)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol75","(S75)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Symbol76","(S76)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object1","(O1)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object2","(O2)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object3","(O3)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object4","(O4)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object5","(O5)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object6","(O6)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object7","(O7)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object8","(O8)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object9","(O9)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object10","(O10)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object11","(O11)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object12","(O12)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object13","(O13)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object14","(O14)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object15","(O15)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object16","(O16)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object17","(O17)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object18","(O18)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object19","(O19)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object20","(O20)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object21","(O21)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object22","(O22)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object23","(O23)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object24","(O24)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object25","(O25)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object26","(O26)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object27","(O27)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object28","(O28)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object29","(O29)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object30","(O30)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object31","(O31)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object32","(O32)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object33","(O33)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object34","(O34)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object35","(O35)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object36","(O36)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object37","(O37)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object38","(O38)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object39","(O39)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object40","(O40)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object41","(O41)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object42","(O42)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object43","(O43)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object44","(O44)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object45","(O45)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object46","(O46)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object47","(O47)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object48","(O48)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object49","(O49)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object50","(O50)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object51","(O51)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object52","(O52)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object53","(O53)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object54","(O54)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object55","(O55)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object56","(O56)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object57","(O57)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object58","(O58)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object59","(O59)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object60","(O60)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object61","(O61)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object62","(O62)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object63","(O63)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object64","(O64)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object65","(O65)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object66","(O66)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object67","(O67)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object68","(O68)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object69","(O69)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object70","(O70)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object71","(O71)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object72","(O72)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object73","(O73)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object74","(O74)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object75","(O75)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object76","(O76)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object77","(O77)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object78","(O78)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object79","(O79)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object80","(O80)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object81","(O81)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object82","(O82)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object83","(O83)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object84","(O84)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object85","(O85)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object86","(O86)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object87","(O87)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object88","(O88)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object89","(O89)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object90","(O90)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object91","(O91)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object92","(O92)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object93","(O93)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object94","(O94)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object95","(O95)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object96","(O96)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object97","(O97)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object98","(O98)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object99","(O99)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object100","(O100)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object101","(O101)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object102","(O102)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object103","(O103)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object104","(O104)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object105","(O105)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object106","(O106)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object107","(O107)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object108","(O108)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object109","(O109)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object110","(O110)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object111","(O111)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object112","(O112)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object113","(O113)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object114","(O114)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object115","(O115)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object116","(O116)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object117","(O117)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object118","(O118)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object119","(O119)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object120","(O120)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object121","(O121)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object122","(O122)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object123","(O123)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object124","(O124)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object125","(O125)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object126","(O126)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object127","(O127)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object128","(O128)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object129","(O129)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object130","(O130)",param2,param3,param4);
            this.changeemoji(-1,"Emoji_Object131","(O131)",param2,param3,param4);
         }
      }
   }
}

