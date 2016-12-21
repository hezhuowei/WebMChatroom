var ws_url = "ws://localhost:51780/Handler.ashx"
var ws = new WebSocket(ws_url);  //测试用的用户名，目前写死
var msg_username = "test_user";
ws.onopen = function () {
    document.getElementById("chat_log").innerHTML += "<p class=\"text_error\"><font color=\"#273 \">Server message:&nbsp</font>连接成功</p>";
    var msg = { "name": msg_username, "msg_text": "##加入聊天室" };
    ws.send(JSON.stringify(msg));
    
};
ws.onerror = function () { alert("web err"); };
ws.onclose = function () { alert("连接断开"); };  

function sendgmsg() {
    var msg_text = document.getElementById("user_input").value;
    document.getElementById("user_input").value = "";
    var msg = { "name": msg_username, "msg_text": msg_text };
    ws.send(JSON.stringify(msg));
}
ws.onmessage = function (msg) {
    var json_msg_data = JSON.parse(msg.data);
    
    document.getElementById("chat_log").innerHTML += "<p class=\"text_error\"><font color=\"#753 \">" + json_msg_data.name + ":&nbsp</font>" + json_msg_data.msg_text + "</p>";
    document.getElementById("chat_log").scrollTop = document.getElementById("chat_log").scrollHeight;
};