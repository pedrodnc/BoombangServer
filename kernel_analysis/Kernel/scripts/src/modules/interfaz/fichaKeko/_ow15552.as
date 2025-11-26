package src.modules.interfaz.fichaKeko
{
   import flash.display.*;
   import flash.geom.*;
   import src.allData.*;
   import src.modules.interfaz.fichaKeko.booble._aw14744;
   import src.person.*;
   import src.utils.*;
   
   public class _ow15552
   {
      
      private static const _nm4831:String = "mcPersonSel";
      
      private static const _ry14921:String = "mcBigCoin";
      
      private static const _dp3652:String = "mcBigCoinBorde";
      
      private static const _jn13778:String = "mcPersonTransicion";
      
      private static const _bf12400:String = "mcFondoCareto";
      
      private static const _sw90:String = "enter";
      
      private static const _vs9519:String = "leave";
      
      private var _dm5591:MovieClip;
      
      private var _so13485:MovieClip;
      
      private var _hx622:MovieClip;
      
      private var _lq10769:MovieClip;
      
      private var _wq9268:MovieClip;
      
      private var _df2120:_ga7956;
      
      private var _xy10892:Boolean;
      
      private var _dr1773:_hv12530;
      
      private var _fu6035:int;
      
      private var _bd6869:_um8624;
      
      private var _aw13132:_um8624;
      
      private var _un13257:Function;
      
      private var _ae7404:Function;
      
      private var _ng14736:MovieClip;
      
      private var _aq13823:MovieClip;
      
      private var _ff4604:MovieClip;
      
      private var _id2071:Boolean;
      
      private var _vc4824:_aw14744;
      
      private var colorTransform:ColorTransform;
      
      private var _miuser:_um8624;
      
      public function _ow15552(param1:MovieClip, param2:MovieClip, param3:_um8624, param4:Function, param5:Function, param6:MovieClip, param7:MovieClip, param8:_aw14744)
      {
         this.colorTransform = new ColorTransform();
         super();
         this._dm5591 = param1;
         this._so13485 = MovieClip(param1.getChildByName(_nm4831));
         this._hx622 = MovieClip(param1.getChildByName(_dp3652));
         this._lq10769 = MovieClip(param1.getChildByName(_ry14921));
         this._wq9268 = MovieClip(param1.getChildByName(_jn13778));
         this._df2120 = _ga7956.getInstance();
         this._un13257 = param4;
         this._ae7404 = param5;
         this._ng14736 = param6;
         this._aq13823 = param7;
         this._vc4824 = param8;
         this._ff4604 = param2;
         this._xy10892 = false;
         this._dr1773 = _hv12530.getInstance();
         this._fh1634(param3);
         this._vw14341(param3);
         this._miuser = param3;
      }
      
      public function _jp10978() : int
      {
         return this._fu6035;
      }
      
      public function _fh1634(param1:_um8624) : void
      {
         if(param1._vm2039 < 13)
         {
            return;
         }
      }
      
      public function _pr9930(param1:_um8624) : void
      {
         if(param1._vm2039 < 13)
         {
            return;
         }
      }
      
      public function _vw14341(param1:_um8624) : void
      {
         if(param1._vm2039 < 13)
         {
            return;
         }
         if(!param1.member)
         {
            return;
         }
      }
      
      public function _md3664(param1:_um8624) : void
      {
         if(param1._vm2039 < 13)
         {
            return;
         }
         if(!param1.member)
         {
            return;
         }
      }
      
      public function _jj5770(param1:_um8624) : void
      {
         _xv14798.cleanChildsMovieclip(this._so13485);
         var _loc2_:MovieClip = this._ml8750(param1);
         this._so13485.addChild(_loc2_);
         this.show();
      }
      
      public function _yx5650(param1:_kc6395, param2:int, param3:Boolean) : void
      {
         this._xy10892 = true;
         this._id2071 = param3;
         this._fu6035 = param2;
         this.colorTransform.color = param1._gi2816;
         this.colorTransform.blueMultiplier = -0.5;
         this.colorTransform.redMultiplier = -0.5;
         this.colorTransform.greenMultiplier = -0.5;
         this._hx622.transform.colorTransform = this.colorTransform;
         this._hx622.gotoAndPlay(3);
         this._lq10769.gotoAndPlay(3);
         this._vc4824._tw7636();
      }
      
      public function _rl2398(param1:_um8624, param2:_um8624, param3:Boolean = false, param4:Boolean = false) : Boolean
      {
         if(this._xy10892)
         {
            return false;
         }
         if(param1.id == param2.id && !param4)
         {
            return false;
         }
         if(param1._vm2039 >= 13)
         {
            if(param2._vm2039 < 13)
            {
               this._pr9930(param1);
            }
         }
         else if(param1.member)
         {
            if(!param2.member)
            {
               this._md3664(param1);
            }
            else if(param2._vm2039 >= 13)
            {
               this._md3664(param1);
            }
         }
         var _loc5_:_kc6395 = new _kc6395(param2.id == this._dr1773.id,param2);
         if(param2.id == this._dr1773.id)
         {
            this._fu6035 = _pf10232._oy5651;
         }
         else
         {
            this._fu6035 = _pf10232._ra3303;
         }
         this._yx5650(_loc5_,this._fu6035,param3);
         this._bd6869 = param2;
         this._aw13132 = param1;
         this.hide();
         return true;
      }
      
      private function _ml8750(param1:_um8624) : MovieClip
      {
         var _loc2_:MovieClip = new MovieClip();
         var _loc3_:_kc6395 = new _kc6395(param1.id == _hv12530.getInstance().id,param1);
         var _loc4_:MovieClip = MovieClip(this._ff4604[_bf12400 + _loc3_._vb6962]);
         var _loc5_:Bitmap = _xv14798._wl6502(_loc4_);
         var _loc6_:MovieClip = _xr3315._ku11706(param1,"ficha");
         _loc2_.addChild(_loc5_);
         _loc2_.addChild(_loc6_);
         return _loc2_;
      }
      
      public function loop() : void
      {
         var _loc1_:MovieClip = null;
         if(!this._xy10892)
         {
            return;
         }
         var _loc2_:int = int(this._lq10769.currentFrame);
         var _loc3_:int = int(this._lq10769.totalFrames);
         switch(_loc2_)
         {
            case 2:
               _loc1_ = this._ml8750(this._aw13132);
               break;
            case 3:
               _loc1_ = this._ml8750(this._aw13132);
               break;
            case 4:
               _loc1_ = this._ml8750(this._aw13132);
               break;
            case 5:
               if(this._un13257 != null)
               {
                  this._un13257(this._bd6869);
               }
               _loc1_ = this._ml8750(this._bd6869);
               break;
            case 6:
            case 7:
            case 8:
            case 9:
               _loc1_ = this._ml8750(this._bd6869);
         }
         _xv14798.cleanChildsMovieclip(this._wq9268);
         this._wq9268.addChild(_loc1_);
         var _loc4_:Array = new Array([0,0],[0,0],[19,66],[19,66],[46,18],[25,30],[10,64],[3,81],[2,88],[0,93]);
         _loc1_.x = _loc4_[_loc2_][0];
         _loc1_.width = _loc4_[_loc2_][1];
         if(_loc2_ == 9)
         {
            this._vc4824._tj8775();
            if(this._ae7404 != null)
            {
               this._ae7404(this._id2071,this._fu6035);
            }
            this._xy10892 = false;
            _xv14798.cleanChildsMovieclip(this._wq9268);
            if(this._bd6869._vm2039 >= 13)
            {
               if(this._aw13132._vm2039 < 13)
               {
                  this._fh1634(this._bd6869);
               }
            }
            else if(this._bd6869.member)
            {
               if(!this._aw13132.member)
               {
                  this._vw14341(this._bd6869);
               }
               else if(this._aw13132._vm2039 >= 13)
               {
                  this._vw14341(this._bd6869);
               }
            }
         }
      }
      
      public function _pq590(param1:int) : void
      {
         if(this._bd6869 == null)
         {
            return;
         }
         if(this._bd6869.id == this._dr1773.id)
         {
            return;
         }
         if(this._bd6869._jr9311 == param1)
         {
            this._rl2398(this._bd6869,this._dr1773,true,true);
         }
         else if(Boolean(this._xy10892) && this._bd6869._jr9311 == param1)
         {
            this._rl2398(this._bd6869,this._dr1773,true,true);
         }
      }
      
      private function show() : void
      {
         this._so13485.visible = true;
      }
      
      private function hide() : void
      {
         this._so13485.visible = false;
      }
   }
}

