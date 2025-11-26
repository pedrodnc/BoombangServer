package src.modules.noticias
{
   import flash.display.MovieClip;
   import flash.text.*;
   import src.tv.boombang.core.*;
   import src.utils.commonComponents.*;
   
   public class _bf261
   {
      
      private static const _hj6171:int = 8;
      
      private static const _vl3920:String = "mcBotonAnterior";
      
      private static const _su9206:String = "mcBotonSiguiente";
      
      private static const _ll4929:String = "mcBotonNoticia_";
      
      private static const TF_TITULO:String = "tfTitulo";
      
      private var _xx14985:int;
      
      private var _li9369:uint;
      
      private var _rs2054:Array;
      
      private var _aq5903:Function;
      
      private var _yk5446:Function;
      
      private var _tf7952:Function;
      
      private var _il12031:Array;
      
      private var _oo13742:Boolean;
      
      private var _vh13301:_qo7568;
      
      private var _oe5060:_qo7568;
      
      public function _bf261(param1:int, param2:uint, param3:Array, param4:Function, param5:Function, param6:Function)
      {
         super();
         this._xx14985 = param1;
         this._li9369 = param2;
         this._rs2054 = param3;
         this._aq5903 = param4;
         this._yk5446 = param5;
         this._tf7952 = param6;
         this._il12031 = new Array();
      }
      
      public function _mn15453(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = null;
         var _loc6_:int = 0;
         if(this._il12031 == null)
         {
            this._il12031 = new Array();
         }
         while(_loc6_ < _hj6171)
         {
            _loc2_ = param1[_ll4929 + _loc6_];
            if(_loc6_ < this._li9369)
            {
               var _loc3_:int = int(this._rs2054[_loc6_][0]);
               var _loc4_:String = this._rs2054[_loc6_][1];
               var _loc5_:String = this._rs2054[_loc6_][2];
               this._il12031.push(new _ql3702(_loc2_,this._xx14985,0,null,null,this._aq5903));
            }
            else
            {
               _loc2_.visible = false;
            }
            _loc6_++;
         }
         this._vh13301 = new _qo7568(param1[_su9206],this._yk5446,"");
         this._oe5060 = new _qo7568(param1[_vl3920],this._tf7952,"");
         TextField(param1[TF_TITULO]).text = _fg1060._mn8930._ad13455("news.Title");
         this._oo13742 = true;
         if(this._il12031 != null && this._il12031.length < _hj6171)
         {
            this._ue12701();
         }
      }
      
      public function _cj7282() : void
      {
         var _loc1_:_ql3702 = null;
         if(!this._oo13742)
         {
            return;
         }
         this._vh13301.destroy();
         this._oe5060.destroy();
         for each(_loc1_ in this._il12031)
         {
            if(_loc1_ != null)
            {
               _loc1_.destroy();
            }
         }
         this._oo13742 = false;
         this._il12031 = null;
      }
      
      public function _ue12701() : void
      {
         if(this._vh13301 != null)
         {
            this._vh13301._hu12389();
         }
      }
      
      public function _fv1756() : void
      {
         if(this._vh13301 != null)
         {
            this._vh13301._db5584();
         }
      }
      
      public function _bd12836() : void
      {
         if(this._oe5060 != null)
         {
            this._oe5060._hu12389();
         }
      }
      
      public function _rl15950() : void
      {
         if(this._oe5060 != null)
         {
            this._oe5060._db5584();
         }
      }
      
      public function get _kg8871() : int
      {
         return this._xx14985;
      }
   }
}

