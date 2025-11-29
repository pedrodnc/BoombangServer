package src.allData.sceneObjects.loadObject
{
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.utils.*;
   import src.allData.sceneObjects.dataObjects.SceneObjectData;
   import src.loaders.*;
   import src.org.osflash.thunderbolt.*;
   
   public class LoadobjectController extends EventDispatcher
   {
      
      private static const _fg13046:int = 5;
      
      private static const _dk6625:int = 5;
      
      private static var _uf9432:Dictionary = new Dictionary();
      
      private static var _kf1360:int = 0;
      
      private static const PLAY:int = 1;
      
      private static const STOP:int = 2;
      
      private var _tm10496:int = 2;
      
      private var _rc12357:Array;
      
      public function LoadobjectController()
      {
         super();
      }
      
      public function addObject(param1:int, param2:SceneObjectData, param3:String, param4:Boolean) : void
      {
         var _loc5_:LoadobjectModel = null;
         var _loc7_:int = 0;
         if(this._rc12357 == null)
         {
            this._rc12357 = new Array();
         }
         var _loc6_:int = int(this._rc12357.length);
         while(_loc7_ < _loc6_)
         {
            _loc5_ = LoadobjectModel(this._rc12357[_loc7_]);
            if(_loc5_.type == param1 && _loc5_.obj._rm6352 == param2._rm6352)
            {
               if(param4 == false)
               {
                  _loc5_.cancelable = false;
               }
               this._rc12357.splice(_loc7_,1);
               this._rc12357.splice(0,0,_loc5_);
               return;
            }
            _loc7_++;
         }
         var _loc8_:LoadobjectModel = new LoadobjectModel(param2,param3,param1);
         _loc8_.cancelable = param4;
         this._rc12357.splice(0,0,_loc8_);
      }
      
      public function _fr14202(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:LoadobjectModel = null;
         if(this._rc12357 != null)
         {
            _loc3_ = int(this._rc12357.length);
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = LoadobjectModel(this._rc12357[_loc4_]);
               if(_loc5_.type == param1 && _loc5_.obj._rm6352 == param2)
               {
                  if(_loc5_.state == LoadobjectModel._nx5835 && _loc5_.cancelable == true)
                  {
                     this._rc12357.splice(_loc4_,1);
                     this._qx1635();
                     return;
                  }
               }
               _loc4_++;
            }
         }
      }
      
      public function _qx1635() : void
      {
         var _loc1_:LoadobjectModel = null;
         var _loc3_:int = 0;
         var _loc2_:int = int(this._rc12357.length);
         while(_loc3_ < _loc2_)
         {
            _loc1_ = LoadobjectModel(this._rc12357[_loc3_]);
            if(_loc1_.state != LoadobjectModel.COMPLETE)
            {
               return;
            }
            _loc3_++;
         }
         this._tm10496 = STOP;
         this._rc12357 = null;
      }
      
      public function start() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this._tm10496 == PLAY)
         {
            return;
         }
         this._tm10496 = PLAY;
         _loc1_ = int(this._rc12357.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            if(LoadobjectModel(this._rc12357[_loc2_]).state == LoadobjectModel._nx5835)
            {
               this._fl12040(LoadobjectModel(this._rc12357[_loc2_]));
               if(_kf1360 >= _fg13046)
               {
                  return;
               }
            }
            _loc2_++;
         }
      }
      
      private function _fl12040(param1:LoadobjectModel) : void
      {
         var _loc2_:String = null;
         param1._wb7100 = new URLLoader();
         param1._wb7100.dataFormat = URLLoaderDataFormat.BINARY;
         param1._wb7100.addEventListener(Event.COMPLETE,this._lx5179);
         param1._wb7100.addEventListener(IOErrorEvent.IO_ERROR,this._wh14566);
         param1._wb7100.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this._eh564);
         param1._wb7100.addEventListener(ProgressEvent.PROGRESS,this._pd1737);
         var _loc3_:String = param1._le1402;
         var _loc4_:String = LoadersManager.getInstance()._dd12886(param1._kr3650);
         if(_loc4_ != null)
         {
            _loc2_ = "?nocache=" + _loc4_;
         }
         else
         {
            _loc2_ = LoadersManager._av14707;
         }
         param1._wb7100.load(new URLRequest(_loc3_ + _loc2_));
         param1.state = LoadobjectModel._rw10615;
         ++_kf1360;
      }
      
      private function _pd1737(param1:ProgressEvent) : void
      {
      }
      
      private function _lx5179(param1:Event) : void
      {
         var _loc2_:LoadobjectModel = null;
         var _loc6_:int = 0;
         var _loc4_:URLLoader = URLLoader(param1.currentTarget);
         var _loc5_:int = int(this._rc12357.length);
         while(_loc6_ < _loc5_)
         {
            _loc2_ = LoadobjectModel(this._rc12357[_loc6_]);
            if(_loc4_ == URLLoader(_loc2_._wb7100))
            {
               this._mw12849(_loc2_);
               if(_loc4_.dataFormat == URLLoaderDataFormat.BINARY)
               {
                  var _loc3_:ByteArray = _loc4_.data;
                  _loc3_ = LoadersManager._vx3077(null);
                  _loc2_._sk4816 = new Loader();
                  _loc2_._sk4816.contentLoaderInfo.addEventListener(Event.COMPLETE,this._wv2684);
                  _loc2_._sk4816.loadBytes(null);
               }
               _loc2_._wb7100 = null;
               return;
            }
            _loc6_++;
         }
      }
      
      private function _wv2684(param1:Event) : void
      {
         var _loc2_:LoadobjectModel = null;
         var _loc5_:int = 0;
         var _loc3_:Loader = Loader(param1.currentTarget.loader);
         var _loc4_:int = int(this._rc12357.length);
         while(_loc5_ < _loc4_)
         {
            _loc2_ = LoadobjectModel(this._rc12357[_loc5_]);
            if(_loc3_ == Loader(_loc2_._sk4816))
            {
               _loc2_._sk4816.contentLoaderInfo.removeEventListener(Event.COMPLETE,this._wv2684);
               if(param1.target.contentType == "application/x-shockwave-flash")
               {
                  if(_loc3_.contentLoaderInfo.actionScriptVersion != ActionScriptVersion.ACTIONSCRIPT3)
                  {
                     ThunderboltModel.error("Loaded object is not AS3: " + _loc2_._kg3936);
                  }
               }
               _loc2_._vl10474(DisplayObject(param1.target.content));
               _loc2_._sk4816.unload();
               _loc2_._sk4816 = null;
               dispatchEvent(new LoadobjectModel(LoadobjectModel._bs1884,_loc2_));
               --_kf1360;
               this._pp1671();
               return;
            }
            _loc5_++;
         }
      }
      
      private function _pp1671() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:LoadobjectModel = null;
         if(_kf1360 >= _fg13046)
         {
            return;
         }
         if(this._tm10496 == PLAY)
         {
            _loc1_ = int(this._rc12357.length);
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               _loc3_ = LoadobjectModel(this._rc12357[_loc2_]);
               if(_loc3_.state == LoadobjectModel._nx5835)
               {
                  this._fl12040(_loc3_);
                  if(_kf1360 >= _fg13046)
                  {
                     return;
                  }
               }
               _loc2_++;
            }
         }
         this._qx1635();
      }
      
      private function _wh14566(param1:IOErrorEvent) : void
      {
         var _loc2_:LoadobjectModel = null;
         var _loc5_:int = 0;
         var _loc3_:URLLoader = URLLoader(param1.currentTarget);
         var _loc4_:int = int(this._rc12357.length);
         while(_loc5_ < _loc4_)
         {
            _loc2_ = LoadobjectModel(this._rc12357[_loc5_]);
            if(_loc2_._wb7100 != null && _loc3_ == _loc2_._wb7100)
            {
               this._mw12849(_loc2_);
               ++_loc2_._mf11604;
               if(_loc2_._mf11604 > _dk6625)
               {
                  _loc2_.state = LoadobjectModel.COMPLETE;
                  ThunderboltModel.error("Could not download file " + _loc2_._le1402);
               }
               else
               {
                  _loc2_.state = LoadobjectModel._nx5835;
                  ThunderboltModel.warn("Reintento nº " + _loc2_._mf11604 + " de descarga de objeto: " + _loc2_.obj._sl11700.name);
               }
               --_kf1360;
               this._pp1671();
               return;
            }
            _loc5_++;
         }
         this._qx1635();
      }
      
      private function _eh564(param1:SecurityErrorEvent) : void
      {
         var _loc2_:LoadobjectModel = null;
         var _loc5_:int = 0;
         var _loc3_:URLLoader = URLLoader(param1.currentTarget);
         var _loc4_:int = int(this._rc12357.length);
         while(_loc5_ < _loc4_)
         {
            _loc2_ = LoadobjectModel(this._rc12357[_loc5_]);
            if(_loc2_._wb7100 != null && _loc3_ == _loc2_._wb7100)
            {
               this._mw12849(_loc2_);
               _loc2_.state = LoadobjectModel.COMPLETE;
               ThunderboltModel.error("Security error for file: " + _loc2_._le1402);
               --_kf1360;
               this._pp1671();
               return;
            }
            _loc5_++;
         }
         this._qx1635();
      }
      
      private function _mw12849(param1:LoadobjectModel) : void
      {
         param1._wb7100.removeEventListener(Event.COMPLETE,this._lx5179);
         param1._wb7100.removeEventListener(IOErrorEvent.IO_ERROR,this._wh14566);
         param1._wb7100.removeEventListener(ProgressEvent.PROGRESS,this._pd1737);
         param1._wb7100.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this._eh564);
      }
   }
}

