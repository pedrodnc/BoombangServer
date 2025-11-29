package src.modules.creacionObjetos.fichas
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import src.allData.catObjects.*;
   import src.modules.creacionObjetos._sq10136;
   import src.modules.creacionObjetos.formulas.*;
   import src.modules.creacionObjetos.skin._kd11296;
   import src.utils.*;
   import src.utils.buttonsFichas.*;
   import src.utils.showObjects.*;
   
   public class _gl10643 extends _sq10136
   {
      
      private static const _ne3758:int = 6;
      
      private static const _du1279:String = "mcObjectoAcrear";
      
      private var _ns1292:_lx11385;
      
      private var _wg2435:_lx11385;
      
      private var _dl3635:MovieClip;
      
      private var _gi11319:Function;
      
      private var _eb7826:_mq8492;
      
      private var catalogo:_dp11732;
      
      private var _il1123:_oi4058;
      
      private var _fv12956:TextField;
      
      public function _gl10643(param1:MovieClip, param2:MovieClip, param3:_mq8492, param4:_sw3551, param5:_kd11296, param6:Function, param7:String, param8:String)
      {
         super(param1,param4,param5,param7,param8);
         this._dl3635 = param2;
         this._gi11319 = param6;
         this._eb7826 = param3;
         this.catalogo = _dp11732.getInstance();
         this.init();
      }
      
      public function init() : void
      {
         this._wg2435 = new _lx11385(_kh2302[_hq5846],this._wp10139,_kg2026._kd6244,_ax15887._co4881,_ax15887._kk3956);
         _kh2302[_kg12560].visible = false;
         if(this._eb7826._co13951.member)
         {
            _kh2302[_kg12560].visible = true;
         }
         if(_it11049.getInstance()._pq12363(this._eb7826))
         {
            this._ns1292 = new _lx11385(_kh2302[_co12115],this._pj9169,_kg2026._im13843,_ax15887._fo3144,_ax15887._kk3956);
         }
         else
         {
            _kh2302[_co12115].alpha = 0.4;
            _yq8362._xl9503(_kh2302[_co12115][_el2728],_kg2026._im13843);
         }
         _yq8362._bj8346(_kh2302["description"],"formula." + this._eb7826._hw14129 + ".description");
         _xv14798._ts14032(_kh2302["description"],_ax15887._hx4022);
         this._fv12956 = _kh2302["neededTitle"];
         _yq8362._bj8346(this._fv12956,"objects.needed.title");
         _xv14798._ts14032(this._fv12956,_ax15887._hx4022);
         _xv14798._ts14032(_kh2302["mcCapsula"],_ax15887._co4881);
         _xv14798._ts14032(_kh2302["mcGlobo"],_ax15887._kk3956);
         _xv14798._ts14032(_kh2302["line"],_ax15887._cu8978);
         _yq8362._bj8346(_kh2302["title"],"objects.get");
         _xv14798._ts14032(_kh2302["title"],_ax15887._hx4022);
         if(this._eb7826._kn11986 > 0 && this._eb7826._gj4652.indexOf(-10000) == -1)
         {
            this._eb7826._gj4652.unshift(-10000);
            this._eb7826._mo6900.unshift(this._eb7826._kn11986);
         }
         if(this._eb7826._fk13397 > 0 && this._eb7826._gj4652.indexOf(-10001) == -1)
         {
            this._eb7826._gj4652.unshift(-10001);
            this._eb7826._mo6900.unshift(this._eb7826._fk13397);
         }
         this._ka12681();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _rd497();
         if(this._ns1292 != null)
         {
            this._ns1292.destroy();
            this._ns1292 = null;
         }
         if(this._wg2435 != null)
         {
            this._wg2435.destroy();
            this._wg2435 = null;
         }
         if(this._il1123 != null)
         {
            this._il1123.destroy();
            this._il1123 = null;
         }
      }
      
      public function _pj9169() : void
      {
         this._ns1292._hu12389();
         this._gi11319(_yp6174);
      }
      
      public function _wp10139() : void
      {
         this._gi11319(_lv13942);
      }
      
      public function _wb11783(param1:_ts335, param2:Object = null) : void
      {
      }
      
      override protected function _ka12681() : void
      {
         var _loc1_:_ts335 = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Boolean = false;
         var _loc4_:_uq7753 = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:int = 0;
         _rd497();
         _pn12868 = Math.ceil(this._eb7826._gj4652.length / _ne3758);
         this._il1123 = new _oi4058(_kh2302[_du1279],this._eb7826._co13951,_kh2302["mcCapsula"].width - 10,this._dl3635);
         this._il1123.show();
         _dm16168 = new Array();
         while(_loc11_ < _ne3758)
         {
            _loc5_ = _loc11_ + (_qf8183 - 1) * _ne3758;
            _loc2_ = _kh2302[_sp11158 + _loc11_];
            _loc3_ = this._eb7826._gj4652[_loc5_] != -1 && _loc5_ < this._eb7826._gj4652.length;
            if(_loc3_)
            {
               _loc7_ = int(this._eb7826._gj4652[_loc5_]);
               _loc9_ = false;
               _loc10_ = false;
               if(_loc7_ == -10000)
               {
                  _loc9_ = true;
                  _loc6_ = int(this._eb7826._kn11986);
                  _loc10_ = true;
               }
               else if(_loc7_ == -10001)
               {
                  _loc9_ = true;
                  _loc6_ = int(this._eb7826._fk13397);
               }
               else
               {
                  _loc4_ = this.catalogo._ms14382(_loc7_);
                  _loc6_ = int(this._eb7826._mo6900[_loc5_]);
               }
               _loc1_ = new _ts335(_loc2_,_loc3_,_loc4_,this._dl3635,_loc6_.toString(),this._wb11783,_ax15887._co4881,_ax15887._kk3956,_ax15887._hx4022,null,_loc9_,_loc10_);
               _loc1_._tn9748(this._eb7826._co13951.description,_wy11576,_ax15887._co4881,_ax15887._kk3956);
               if(!_loc9_ && !_it11049.getInstance()._og14142(_loc4_.id,_loc6_))
               {
                  _loc1_._dy867 = false;
               }
            }
            else
            {
               _loc1_ = new _ts335(_loc2_,_loc3_,null,this._dl3635,"",this._wb11783,_ax15887._kk3956,_ax15887._kk3956,_ax15887._hx4022);
            }
            _dm16168.push(_loc1_);
            super._ka12681();
            _loc11_++;
         }
      }
   }
}

