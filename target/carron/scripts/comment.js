let prv_cmt;
function ValidateEmail(email)
{
    var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
    if (email.match(mailformat))
    {
        return true;
    } else
    {
        return false;
    }
}
$(document).ready(
        function () {
            var page = window.location.pathname;
            var request = $.ajax({
                url: "/get_comments",
                method: "POST",
                data: {page: page},
                dataType: "html"
            });
            request.done(function (msg) {
                load_comments(msg);
            });
        }
);

function sho_form(btn_id) {

    var usp = /^[a-zA-Z0-9][a-zA-Z0-9_]*[a-zA-Z0-9](?<![-?\d+\.?\d*$]{6,}.*)$/;
    var un = $(".comment" + btn_id + " #comment-uname" + btn_id).val();
    var em = $(".comment" + btn_id + " #comment-email" + btn_id).val();
    var msg = $(".comment" + btn_id + " #comment-msg" + btn_id).val();
    var page = window.location.pathname;
    if (usp.test(un) === false) {
        $(".comment" + btn_id + " .u-error").text("Please enter valid user name");
    } else if (ValidateEmail(em) === false) {
        $(".comment" + btn_id + " .e-error").text("Please enter user email");
    } else if (/^[a-zA-Z ]+$/.test(msg) === false) {
        $(".comment" + btn_id + " .msg-error").text("Please enter user msg");
    } else {
        $(this).attr("disabled", true);
        var request = $.ajax({
            url: "/comment",
            method: "POST",
            data: {email: em, uname: un, msg: msg, page: page, reply: btn_id},
            dataType: "html"
        });
        request.done(function (msg) {
            window.alert(msg);
            $(".comment" + btn_id + " #comment-msg" + btn_id).val("");
            $(".comment" + btn_id + " #comment-btn" + btn_id).attr("disabled", false);
        });
    }

}

function load_comments(data) {
    const x = JSON.parse(data);
    var comnt = "<div class=\" text-center\"><h4> <i class=\"fa fa-comments\"></i>Recent comments(5)</h4></div><hr class=\"raised line\">";
    var content = "";

    for (var i = 0; i < x.comments.length; i++) {
        var r_to = x.comments[i].r_to;
        var user = x.comments[i].user;
        var time = x.comments[i].time;
        var msg = x.comments[i].msg;
        var avatar = x.comments[i].avatar;
        var msg_id = x.comments[i].msg_id;
        var dat;
        var n = "<div class=\"comment" + msg_id + "\" style=\"display:none; margin-bottom: 10px;\">\n" +
                "                        <div class=\"text-center comment-head\"><h4>Reply to " + user + "</h4></div>\n" +
                "                        <label class=\"comment-error\">\n" +
                "                        </label>\n" +
                "                        <input type=\"text\" class=\"form-control\" id=\"comment-uname" + msg_id + "\" placeholder=\"Enter your username\">\n" +
                "                        <label class=\"u-error\"></label>\n" +
                "                        <input type=\"email\" class=\" form-control\"  id=\"comment-email" + msg_id + "\" placeholder=\"Enter your Email\">\n" +
                "                        <label class=\"e-error\"></label>\n" +
                "                        <textarea class=\"form-control\" id=\"comment-msg" + msg_id + "\" rows=\"5\" placeholder=\"Enter your Comment here\"></textarea>\n" +
                "                        <label class=\"msg-error\"></label>\n" +
                "                        <br>\n" +
                "                        <input class=\"btn btn-lg btn-danger comment-btn\" onclick=\"sho_form('" + msg_id + "')\" id=\"" + msg_id + "\" value=\"Reply\" type=\"submit\"> \n" +
                "                    </div> ";
        if (r_to === "N/A") {
            dat = "<div class=\"media\">\n" +
                    "            <i class=\" align-self-start c1 fa fa-user-circle fa-2x\"></i>\n" +
                    "            <div class=\"media-body p-2\">\n" +
                    "                <h6><b id=\"user" + msg_id + "\">" + user + "</b> said</h6>\n" +
                    "                <span class=\"fa fa-calendar\">" + time + "</span>\n" +
                    "                <p> <span class=\"fa fa-comment\" style=\" color: #00ff00\"></span>" + msg + "</p>\n" +
                    "                <a class=\"reply btn btn-link\" onclick=\"reply('" + msg_id + "',this)\">Reply</a>\n" +
                    "            </div>\n" +
                    "        </div>" + n;
        } else {
            dat = "<div class=\"media\">\n" +
                    "            <div class=\"media-body p-2\">\n" +
                    "                <h6><b id=\"user" + msg_id + "\">" + user + "</b> replied <b>" + r_to + "</b></h6>\n" +
                    "                <span class=\"fa fa-calendar\">" + time + "</span>\n" +
                    "                <p> <span class=\"fa fa-comment\" style=\" color: #00ff00\"></span>" + msg + "</p>\n" +
                    "                <a class=\"reply btn btn-link\" onclick=\"reply('" + msg_id + "',this)\">Reply</a>\n" +
                    "            </div>\n" +
                    "            <i class=\" align-self-start r1 fa fa-user-circle fa-2x\"></i>\n" +
                    "        </div>" + n;
        }
        content += dat;
    }
    if (comnt !== "") {
        comnt += content;
        $(".comments").html("");
        $(".comments").html(comnt);
        $(".comments").show();
        comnt = "";
    }
}
function reply(idd, m) {
    if ($(".comment" + idd).is(":visible")) {
        $(".comment" + idd).hide();
        $(m).text("Reply");
    } else {
        $(".comment" + idd).show();
        $(m).text("Close Reply");
    }
    if (prv_cmt !== idd) {
        if (prv_cmt !== "") {
            $(".comment" + prv_cmt).hide();
            prv_cmt = idd;
          
        }
    }

}