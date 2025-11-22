using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyect_Base
{
    class Config
    {
        //App config
        public static string APP_NAME = "BoomBang Server";
        public static bool APP_SEND_NOT_PROGRAMMED_PACKETS = true;

        //FlashSocket config
        public static int FLASH_SOCKET_PORT = 2001;

        //API config
        public static string API_HOST = Environment.GetEnvironmentVariable("API_HOST") ?? "http://127.0.0.1:8000/webapi";

        //WebSocket config
        public static bool WEB_SOCKET_ACTIVE = true;
        public static readonly string WEB_SOCKET_HOST = Environment.GetEnvironmentVariable("WEB_SOCKET_HOST") ?? "127.0.0.1";
        public static readonly int WEB_SOCKET_PORT = int.Parse(Environment.GetEnvironmentVariable("WEB_SOCKET_PORT") ?? "3300");

        //Mysql connection config
        // SECURITY WARNING: Change default password for production!
        public static string DB_HOST = Environment.GetEnvironmentVariable("DB_HOST") ?? "localhost";
        public static uint DB_PORT = uint.Parse(Environment.GetEnvironmentVariable("DB_PORT") ?? "3306");
        public static string DB_DATABASE = Environment.GetEnvironmentVariable("DB_DATABASE") ?? "boombang";
        public static string DB_USERNAME = Environment.GetEnvironmentVariable("DB_USERNAME") ?? "root";
        public static string DB_PASSWORD = Environment.GetEnvironmentVariable("DB_PASSWORD") ?? "";
        public static uint DB_TIMEOUT = 100000;

        //SqlKata connection config
        public static string KATA_HOST = Environment.GetEnvironmentVariable("KATA_HOST") ?? DB_HOST;
        public static string KATA_PORT = Environment.GetEnvironmentVariable("KATA_PORT") ?? DB_PORT.ToString();
        public static string KATA_DATABASE = Environment.GetEnvironmentVariable("KATA_DATABASE") ?? DB_DATABASE;
        public static string KATA_USERNAME = Environment.GetEnvironmentVariable("KATA_USERNAME") ?? DB_USERNAME;
        public static string KATA_PASSWORD = Environment.GetEnvironmentVariable("KATA_PASSWORD") ?? DB_PASSWORD;
        public static string KATA_SSL_MODE = Environment.GetEnvironmentVariable("KATA_SSL_MODE") ?? "None";

        //Mailtrap config (optional)
        public static string MAILTRAP_HOST = Environment.GetEnvironmentVariable("MAILTRAP_HOST") ?? "";
        public static string MAILTRAP_USERNAME = Environment.GetEnvironmentVariable("MAILTRAP_USERNAME") ?? "";
        public static string MAILTRAP_PASSWORD = Environment.GetEnvironmentVariable("MAILTRAP_PASSWORD") ?? "";
        public static string MAILTRAP_FROM = Environment.GetEnvironmentVariable("MAILTRAP_FROM") ?? "";
        public static string MAILTRAP_TO = Environment.GetEnvironmentVariable("MAILTRAP_TO") ?? "";
    }
}
