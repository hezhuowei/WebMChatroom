<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Threading.Tasks;
using System.Web;
using System.Web.WebSockets;
using Microsoft.Web.WebSockets;

public class Handler : IHttpHandler
{

    public void ProcessRequest(HttpContext http_context)
    {
        if (http_context.IsWebSocketRequest)
        {
            http_context.AcceptWebSocketRequest(new MyWebsocket());
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
    public class MyWebsocket:WebSocketHandler
    {
        private static WebSocketCollection myWSC = new WebSocketCollection();
        public override void OnOpen()
        {
            base.OnOpen();
        }
        public override void OnClose()
        {
            base.OnClose();
        }
        public override void OnError()
        {
            base.OnError();
        }
        public override void OnMessage(string message)
        {
            myWSC.Add(this);
            myWSC.Broadcast(message);

        }
    }


}