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
      
      private static const count:int = 5;
      
      private static const count1:int = 5;
      
      private static var _uf9432:Dictionary = new Dictionary();
      
      private static var count2:int = 0;
      
      private static const PLAY:int = 1;
      
      private static const STOP:int = 2;
      
      private var count3:int = 2;
      
      private var items:Array;
      
      public function LoadobjectController()
      {
         super();
      }
      
      public function addObject(param1:int, param2:SceneObjectData, param3:String, param4:Boolean) : void
      {
         var count2:LoadobjectModel = null;
         var items:int = 0;
         if(this.items == null)
         {
            this.items = new Array();
         }
         var count7:int = int(this.items.length);
         while(items < count7)
         {
            count2 = LoadobjectModel(this.items[items]);
            if(count2.type == param1 && count2.obj.count == param2.count)
            {
               if(param4 == false)
               {
                  count2.cancelable = false;
               }
               this.items.splice(items,1);
               this.items.splice(0,0,count2);
               return;
            }
            items++;
         }
         var count8:LoadobjectModel = new LoadobjectModel(param2,param3,param1);
         count8.cancelable = param4;
         this.items.splice(0,0,count8);
      }
      
      public function loadResource(param1:int, param2:int) : void
      {
         var count3:int = 0;
         var count1:int = 0;
         var count2:LoadobjectModel = null;
         if(this.items != null)
         {
            count3 = int(this.items.length);
            count1 = 0;
            while(count1 < count3)
            {
               count2 = LoadobjectModel(this.items[count1]);
               if(count2.type == param1 && count2.obj.count == param2)
               {
                  if(count2.state == LoadobjectModel.count1 && count2.cancelable == true)
                  {
                     this.items.splice(count1,1);
                     this.loadResource1();
                     return;
                  }
               }
               count1++;
            }
         }
      }
      
      public function loadResource1() : void
      {
         var count2:LoadobjectModel = null;
         var count3:int = 0;
         var count:int = int(this.items.length);
         while(count3 < count)
         {
            count2 = LoadobjectModel(this.items[count3]);
            if(count2.state != LoadobjectModel.COMPLETE)
            {
               return;
            }
            count3++;
         }
         this.count3 = STOP;
         this.items = null;
      }
      
      public function start() : void
      {
         var count2:int = 0;
         var count:int = 0;
         if(this.count3 == PLAY)
         {
            return;
         }
         this.count3 = PLAY;
         count2 = int(this.items.length);
         count = 0;
         while(count < count2)
         {
            if(LoadobjectModel(this.items[count]).state == LoadobjectModel.count1)
            {
               this.loadData(LoadobjectModel(this.items[count]));
               if(count2 >= count)
               {
                  return;
               }
            }
            count++;
         }
      }
      
      private function loadData(param1:LoadobjectModel) : void
      {
         var count:String = null;
         param1._wb7100 = new URLLoader();
         param1._wb7100.dataFormat = URLLoaderDataFormat.BINARY;
         param1._wb7100.addEventListener(Event.COMPLETE,this.loadData1);
         param1._wb7100.addEventListener(IOErrorEvent.IO_ERROR,this.loadResource3);
         param1._wb7100.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.loadResource4);
         param1._wb7100.addEventListener(ProgressEvent.PROGRESS,this._pd1737);
         var count3:String = param1.textString17;
         var count1:String = LoadersManager.getInstance().getString(param1._kr3650);
         if(count1 != null)
         {
            count = "?nocache=" + count1;
         }
         else
         {
            count = LoadersManager._av14707;
         }
         param1._wb7100.load(new URLRequest(count3 + count));
         param1.state = LoadobjectModel.count;
         ++count2;
      }
      
      private function _pd1737(param1:ProgressEvent) : void
      {
      }
      
      private function loadData1(param1:Event) : void
      {
         var count:LoadobjectModel = null;
         var count7:int = 0;
         var count1:URLLoader = URLLoader(param1.currentTarget);
         var count2:int = int(this.items.length);
         while(count7 < count2)
         {
            count = LoadobjectModel(this.items[count7]);
            if(count1 == URLLoader(count._wb7100))
            {
               this.handleSocket1(count);
               if(count1.dataFormat == URLLoaderDataFormat.BINARY)
               {
                  var count3:ByteArray = count1.data;
                  count3 = LoadersManager._vx3077(null);
                  count._sk4816 = new Loader();
                  count._sk4816.contentLoaderInfo.addEventListener(Event.COMPLETE,this.loadData2);
                  count._sk4816.loadBytes(null);
               }
               count._wb7100 = null;
               return;
            }
            count7++;
         }
      }
      
      private function loadData2(param1:Event) : void
      {
         var count:LoadobjectModel = null;
         var count2:int = 0;
         var count3:Loader = Loader(param1.currentTarget.loader);
         var count1:int = int(this.items.length);
         while(count2 < count1)
         {
            count = LoadobjectModel(this.items[count2]);
            if(count3 == Loader(count._sk4816))
            {
               count._sk4816.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.loadData2);
               if(param1.target.contentType == "application/x-shockwave-flash")
               {
                  if(count3.contentLoaderInfo.actionScriptVersion != ActionScriptVersion.ACTIONSCRIPT3)
                  {
                     ThunderboltModel.error("Loaded object is not AS3: " + count.urlString2);
                  }
               }
               count._vl10474(DisplayObject(param1.target.content));
               count._sk4816.unload();
               count._sk4816 = null;
               dispatchEvent(new LoadobjectModel(LoadobjectModel._bs1884,count));
               --count2;
               this.loadResource2();
               return;
            }
            count2++;
         }
      }
      
      private function loadResource2() : void
      {
         var count2:int = 0;
         var count:int = 0;
         var count3:LoadobjectModel = null;
         if(count2 >= count)
         {
            return;
         }
         if(this.count3 == PLAY)
         {
            count2 = int(this.items.length);
            count = 0;
            while(count < count2)
            {
               count3 = LoadobjectModel(this.items[count]);
               if(count3.state == LoadobjectModel.count1)
               {
                  this.loadData(count3);
                  if(count2 >= count)
                  {
                     return;
                  }
               }
               count++;
            }
         }
         this.loadResource1();
      }
      
      private function loadResource3(param1:IOErrorEvent) : void
      {
         var count:LoadobjectModel = null;
         var count2:int = 0;
         var count3:URLLoader = URLLoader(param1.currentTarget);
         var count1:int = int(this.items.length);
         while(count2 < count1)
         {
            count = LoadobjectModel(this.items[count2]);
            if(count._wb7100 != null && count3 == count._wb7100)
            {
               this.handleSocket1(count);
               ++count.count4;
               if(count.count4 > count1)
               {
                  count.state = LoadobjectModel.COMPLETE;
                  ThunderboltModel.error("Could not download file " + count.textString17);
               }
               else
               {
                  count.state = LoadobjectModel.count1;
                  ThunderboltModel.warn("Reintento nº " + count.count4 + " de descarga de objeto: " + count.obj._sl11700.name);
               }
               --count2;
               this.loadResource2();
               return;
            }
            count2++;
         }
         this.loadResource1();
      }
      
      private function loadResource4(param1:SecurityErrorEvent) : void
      {
         var count:LoadobjectModel = null;
         var count2:int = 0;
         var count3:URLLoader = URLLoader(param1.currentTarget);
         var count1:int = int(this.items.length);
         while(count2 < count1)
         {
            count = LoadobjectModel(this.items[count2]);
            if(count._wb7100 != null && count3 == count._wb7100)
            {
               this.handleSocket1(count);
               count.state = LoadobjectModel.COMPLETE;
               ThunderboltModel.error("Security error for file: " + count.textString17);
               --count2;
               this.loadResource2();
               return;
            }
            count2++;
         }
         this.loadResource1();
      }
      
      private function handleSocket1(param1:LoadobjectModel) : void
      {
         param1._wb7100.removeEventListener(Event.COMPLETE,this.loadData1);
         param1._wb7100.removeEventListener(IOErrorEvent.IO_ERROR,this.loadResource3);
         param1._wb7100.removeEventListener(ProgressEvent.PROGRESS,this._pd1737);
         param1._wb7100.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.loadResource4);
      }
   }
}

