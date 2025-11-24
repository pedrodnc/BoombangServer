using Proyect_Base.app.Collections;
using Proyect_Base.app.Connection;
using Proyect_Base.app.Controllers;
using Proyect_Base.app.Handlers;
using Proyect_Base.app.Threads;
using Proyect_Base.web_socket;
using System;
using System.Threading;

namespace Proyect_Base
{
    class ProgramHeadless
    {
        static void Main(string[] args)
        {
            Console.WriteLine("╔══════════════════════════════════════════════════════════════╗");
            Console.WriteLine("║          BoomBang Server - Headless Mode (Mac/Linux)        ║");
            Console.WriteLine("╚══════════════════════════════════════════════════════════════╝");
            Console.WriteLine();

            DateTime startTime = DateTime.Now;

            try
            {
                Console.WriteLine("🚀 Iniciando servicios...");
                Console.WriteLine();

                // Initialize all server components
                Console.Write("   📡 Inicializando FlashSocket... ");
                FlashSocket.Initialize();
                Console.WriteLine("✓");

                Console.Write("   🔧 Inicializando HandlerManager... ");
                HandlerManager.Initialize();
                Console.WriteLine("✓");

                Console.Write("   🌐 Inicializando WebSocketHandler... ");
                WebSocketHandler.Initialize();
                Console.WriteLine("✓");

                Console.Write("   📦 Cargando Collections... ");
                CollectionsController.initCollections();
                Console.WriteLine("✓");

                Console.Write("   ⚙️  Iniciando Threads... ");
                ThreadsController.initThreads();
                Console.WriteLine("✓");

                TimeSpan span = DateTime.Now - startTime;
                Console.WriteLine();
                Console.WriteLine($"✅ Servidor iniciado en {Math.Round(span.TotalSeconds, 2)} segundos");
                Console.WriteLine("________________________________________________________________________________");
                Console.WriteLine();
                Console.WriteLine("Servicios activos:");
                Console.WriteLine($"   • FlashSocket:  Puerto {Config.FLASH_SOCKET_PORT}");
                Console.WriteLine($"   • WebSocket:    {Config.WEB_SOCKET_HOST}:{Config.WEB_SOCKET_PORT}");
                Console.WriteLine($"   • MySQL:        {Config.DB_HOST}:{Config.DB_PORT}");
                Console.WriteLine();
                Console.WriteLine("Presiona Ctrl+C para detener el servidor");
                Console.WriteLine("________________________________________________________________________________");
                Console.WriteLine();

                // Keep the application running
                while (true)
                {
                    Thread.Sleep(1000);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine();
                Console.WriteLine("❌ Error fatal:");
                Console.WriteLine(ex.Message);
                Console.WriteLine(ex.StackTrace);
                Console.WriteLine();
                Console.WriteLine("Presiona cualquier tecla para salir...");
                Console.ReadKey();
                Environment.Exit(1);
            }
        }
    }
}
