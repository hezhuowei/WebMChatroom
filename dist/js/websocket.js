var ws_url = "ws://localhost:51780/Handler.ashx"
var ws = new WebSocket(ws_url);
//ws.addEventListener("cloes", function (evt) { alert("连接断开"); }, false);
//ws.addEventListener("open", function (evt) { alent("连接成功");}, false);
//ws.addEventListener("message", function (evt) { alert("服务器传来消息"); }, false);
//ws.addEventListener("error", function (evt) { alert("WebSocket报错"); }, false);
ws.onopen = function () { alent("连接成功") };
ws.onerror = function () { alert("web err"); };
ws.onclose = function () { alert("连接断开"); };

function sendgmsg() {
    var msg_text = document.getElementById("user_input").value;
    document.getElementById("user_input").value = "";
    var msg_username="test_user"                                        //测试用的用户名，目前写死
    var msg = { "name": msg_username, "msg_text": msg_text };
    alert(JSON.stringify(msg));
    ws.send(JSON.stringify(msg));
}
ws.onmessage = function (msg) {
    var json_msg_data = JSON.parse(msg.data);
    
    document.getElementById("chat_log").innerHTML += "<p class=\"text_error\"><font color=\"#753\">" +json_msg_data.name+":</font>"+json_msg_data.msg_text+ "</p>";
};