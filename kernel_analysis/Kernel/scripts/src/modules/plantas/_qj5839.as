package src.modules.plantas
{
   import src.allData.catObjects.*;
   import src.tv.boombang.core.service_container.*;
   import src.tv.boombang.core.service_container.services.*;
   
   public class _qj5839
   {
      
      private var _gc14510:String;
      
      private var _yw15109:String;
      
      private var _wq5289:String;
      
      private var _jx12776:String;
      
      private var _rm10962:String;
      
      private var _lk8664:String;
      
      private var _ws8900:String;
      
      private var _df14058:String;
      
      private var _eh14552:String;
      
      private var _uy4464:String;
      
      public function _qj5839()
      {
         super();
         this._gc14510 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("plantInterface.information.part1");
         this._yw15109 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("plantInterface.information.part2");
         this._wq5289 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("plantInterface.water");
         this._jx12776 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("plantInterface.evolution");
         this._rm10962 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("plantInterface.deadInformation");
         this._lk8664 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("dragonInterface.information.part1");
         this._ws8900 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("dragonInterface.information.part2");
         this._df14058 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("dragonInterface.water");
         this._eh14552 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("dragonInterface.evolution");
         this._uy4464 = (_lh7543.get(_dw1395) as _dw1395)._ad13455("dragonInterface.deadInformation");
      }
      
      public function _xv32(param1:int) : String
      {
         var _loc2_:String = null;
         if(param1 == _uq7753._jh10992)
         {
            _loc2_ = this._gc14510;
         }
         else if(param1 == _uq7753._of16060)
         {
            _loc2_ = this._lk8664;
         }
         return _loc2_;
      }
      
      public function _kw14833(param1:int) : String
      {
         var _loc2_:String = null;
         if(param1 == _uq7753._jh10992)
         {
            _loc2_ = this._yw15109;
         }
         else if(param1 == _uq7753._of16060)
         {
            _loc2_ = this._ws8900;
         }
         return _loc2_;
      }
      
      public function _or10490(param1:int) : String
      {
         var _loc2_:String = null;
         if(param1 == _uq7753._jh10992)
         {
            _loc2_ = this._wq5289;
         }
         else if(param1 == _uq7753._of16060)
         {
            _loc2_ = this._df14058;
         }
         return _loc2_;
      }
      
      public function _ng3024(param1:int) : String
      {
         var _loc2_:String = null;
         if(param1 == _uq7753._jh10992)
         {
            _loc2_ = this._jx12776;
         }
         else if(param1 == _uq7753._of16060)
         {
            _loc2_ = this._eh14552;
         }
         return _loc2_;
      }
      
      public function _pj15520(param1:int) : String
      {
         var _loc2_:String = null;
         if(param1 == _uq7753._jh10992)
         {
            _loc2_ = this._rm10962;
         }
         else if(param1 == _uq7753._of16060)
         {
            _loc2_ = this._uy4464;
         }
         return _loc2_;
      }
   }
}

