using Proyect_Base.app.Collections;
using Proyect_Base.app.Connection;
using Proyect_Base.forms;
using Proyect_Base.logs;
using Proyect_Base.web_socket;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;

namespace Proyect_Base.app.socket
{
	class WebSocketServer
	{
        /**  Socket vercion 1.2 superfluid **/
        public static Socket WebSocket = null;
        private static readonly string serverIP = Config.WEB_SOCKET_HOST;
        private static readonly int serverPort = Config.WEB_SOCKET_PORT;
        public static void Initialize()
        {
            if (Config.WEB_SOCKET_ACTIVE)
            {
                Socket socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                socket.Bind(new IPEndPoint(IPAddress.Parse(serverIP), serverPort));
                socket.Listen(0);
                App.Form.WriteLine("WebSocket connection open (Port: " + serverPort + ")", "success");

                var client = socket.Accept();
                WebSocket = client;

                while (true)
                {
                    reciveData(client);
                }
            }
        }
        private static void reciveData(Socket client)
        {
            if (client.Connected)
            {
                try
                {
                    byte[] lengthBuffer = ReadExactly(client, 4);
                    if (lengthBuffer == null)
                    {
                        client.Close();
                        return;
                    }

                    if (BitConverter.IsLittleEndian)
                        Array.Reverse(lengthBuffer);

                    int messageLength = BitConverter.ToInt32(lengthBuffer, 0);

                    // Validate length (max 10MB)
                    if (messageLength <= 0 || messageLength > 10 * 1024 * 1024)
                    {
                        client.Close();
                        return;
                    }

                    byte[] messageBuffer = ReadExactly(client, messageLength);
                    if (messageBuffer == null)
                    {
                        client.Close();
                        return;
                    }

                    WebMessage webMessage = new WebMessage(Encoding.UTF8.GetString(messageBuffer));
                    Session Session = SessionCollection.getSessionByUID(webMessage.GetUID(), webMessage.GetIP());
                    if (Session != null)
                    {
                        WebSocketHandler webSocketHandler = new WebSocketHandler(Session);
                        webSocketHandler.Excecute(Session, webMessage);
                    }
                }
                catch (Exception ex)
                {
                    Log.error(ex);
                    try { client.Close(); } catch { }
                }
            }
            else
            {
                Thread.Sleep(100);
            }
        }

        private static byte[] ReadExactly(Socket client, int length)
        {
            byte[] buffer = new byte[length];
            int offset = 0;
            while (offset < length)
            {
                int read = client.Receive(buffer, offset, length - offset, SocketFlags.None);
                if (read == 0) return null; // Connection closed
                offset += read;
            }
            return buffer;
        }
        public static void sendData(Socket client, string data)
        {
            if (Config.WEB_SOCKET_ACTIVE)
            {
                var buffer = Encoding.UTF8.GetBytes(data);
                client.Send(buffer, 0, buffer.Length, 0);
            }
        }
    }
}

