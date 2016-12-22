<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chatroom.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-8 column">
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="well">
                                        <div id="chat_log" class="text-info" style="height: 350px; overflow: auto;scroll">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                        <div class="input-group">
                            <input type="text" style="display:none" />
                            <input id="user_input" type="text" class="form-control" value="" onkeyup="key()"/>
                            <span class="input-group-btn">
                                <button onclick="sendgmsg()" class="btn btn-default" type="button">发送</button>
                            </span>
                        </div>

                   
                </div>
                <div class="col-md-4 column">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="well" style="height: 140px; text-align: center">
                                <img src="img/445259.jpg" class="img-thumbnail" width="150" />
                            </div>
                            <div class="well" style="height: 285px;">
                                <ul>
                                    <li>tese1
                                    </li>
                                    <li>test2
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="js/websocket.js"></script>
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>function key()
{
    if (event.keyCode == 13) { sendgmsg(); }
}
    </script>
</body>
</html>
