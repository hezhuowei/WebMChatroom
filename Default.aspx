<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="dist/css/bootstrap.min.css" rel="stylesheet" />
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
                                        <div class="text-info" id="chatlog" style="height: 350px; overflow: auto;">
                                            <p class="text_error">test</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <form role="form">
                        <div class="input-group">
                            <input type="text" class="form-control">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">发送</button>
                            </span>
                        </div>

                    </form>
                </div>
                <div class="col-md-4 column">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="well" style="height:140px;text-align:center">
                                <img src="img/445259.jpg" class="img-thumbnail" width="150"/>
                            </div>
                            <div class="well" style="height:285px;">
                                <ul>
                                    <li>
                                        tese1
                                    </li>
                                    <li>
                                        test2
                                    </li>
                                </ul>
                            </div>
                        </div>
        </div>
        </div>
            </div>
        </div>
    </form>
    <script src="dist/js/jquery-3.1.1.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>
</body>
</html>
