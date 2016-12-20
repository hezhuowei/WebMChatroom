var ws_url = "ws://localhost:59766/Handler.ashx"
var ws = new WebSocket(ws_url);
//ws.addEventListener("cloes", function (evt) { alert("连接断开"); }, false);
//ws.addEventListener("open", function (evt) { alent("连接成功");}, false);
//ws.addEventListener("message", function (evt) { alert("服务器传来消息"); }, false);
//ws.addEventListener("error", function (evt) { alert("WebSocket报错"); }, false);
ws.onopen = function () { alent("连接成功") };
ws.onmessage = function (msg) { alert(msg.toString) };
ws.onerror = function () { alert("web err"); };
ws.onclose = function () { alert("连接断开") };
ws.send("hello");
ws.close();