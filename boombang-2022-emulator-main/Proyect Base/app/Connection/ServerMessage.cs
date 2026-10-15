using Proyect_Base.logs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyect_Base.app.Connection
{
    public class ServerMessage
    {
        private List<byte> Header = new List<byte>();
        private List<object[]> Parameters = new List<object[]>();
        public Encryption Encryption;
        public ServerMessage(byte[] Header, params object[] Parameters)
        {
            try
            {
                this.Encryption = new Encryption();
                foreach (byte ActualByte in Header)
                {
                    this.Header.Add(ActualByte);
                }

                foreach (object Parameter in Parameters)
                {
                    this.Parameters.Add(new object[] { Parameter });
                }
            }
            catch (Exception ex)
            {
                Log.error(ex);
            }
        }
        public void AppendParameter(object Parameter)
        {
            this.Parameters.Add(new object[] { Parameter });
        }
        public void AppendParameter(object[] ParameterGroup)
        {
            this.Parameters.Add(ParameterGroup);
        }
        private List<byte> ConstructMessage()
        {
            List<byte> Message = new List<byte>();
            Message.Add(0xb1);
            foreach (byte ActualHeader in Header)
            {
                Message.Add(ActualHeader);
                Message.Add(0xb3);
            }
            Message.Add(0xb2);
            foreach (object[] ParameterGroup in Parameters)
            {
                if (ParameterGroup != null)
                {
                    foreach (object Parameter in ParameterGroup)
                    {
                        string paramStr = Convert.ToString(Parameter);
                        if (!string.IsNullOrEmpty(paramStr))
                        {
                            foreach (byte ParameterByte in Encryption.Encoding.GetBytes(paramStr))
                            {
                                Message.Add(ParameterByte);
                            }
                        }
                        Message.Add(0xb3);
                    }
                }
                else
                {
                    Message.Add(0xb3);
                }
                Message.Add(0xb2);
            }
            Message.Add(0xb0);
            return Message;
        }
        public byte[] GetContent()
        {
            return ConstructMessage().ToArray();
        }
        public new string ToString()
        {
            return Encryption.Encoding.GetString(ConstructMessage().ToArray());
        }
    }
}
