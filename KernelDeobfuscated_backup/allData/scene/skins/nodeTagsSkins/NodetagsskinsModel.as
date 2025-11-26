package src.allData.scene.skins.nodeTagsSkins
{
   import flash.geom.Point;
   import src.allData.color._pn12847;
   import src.allData.scene._xd7248;
   
   public class _ys12811 extends _xd7248
   {
      
      public var _mn6947:_pn12847;
      
      public var _tk11635:_pn12847;
      
      public var _lk8448:String;
      
      public var _mv4377:String;
      
      public function _ys12811(param1:String, param2:int, param3:Point, param4:int, param5:String, param6:String, param7:_pn12847, param8:String)
      {
         super(0,param1,param2,param3,param4,0,0,param5);
         this._lk8448 = param6;
         this._tk11635 = param7;
         this._mv4377 = param8;
      }
      
      public function _iu12125() : _ys12811
      {
         var _loc1_:_ys12811 = new _ys12811(name,_ok7591,_cd7708.clone(),_un11300,_hb13923,this._lk8448,this._tk11635._iu12125(),this._mv4377);
         if(this._mn6947 != null)
         {
            _loc1_._mn6947 = this._mn6947._iu12125();
         }
         return _loc1_;
      }
   }
}

