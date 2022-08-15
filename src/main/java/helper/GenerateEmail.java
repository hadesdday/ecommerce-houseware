package helper;

import properties.AssetsProperties;

public class GenerateEmail {
    public static String getForgotPassword(String resetUrl) {
        String email = "<!DOCTYPE html>\n" +
                "\n" +
                "<html lang=\"en\" xmlns:o=\"urn:schemas-microsoft-com:office:office\" xmlns:v=\"urn:schemas-microsoft-com:vml\">\n" +
                "\n" +
                "<head>\n" +
                "\t<title></title>\n" +
                "\t<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\n" +
                "\t<meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\" />\n" +
                "\t<!--[if mso]><xml><o:OfficeDocumentSettings><o:PixelsPerInch>96</o:PixelsPerInch><o:AllowPNG/></o:OfficeDocumentSettings></xml><![endif]-->\n" +
                "\t<!--[if !mso]><!-->\n" +
                "\t<link href=\"https://fonts.googleapis.com/css?family=Open+Sans\" rel=\"stylesheet\" type=\"text/css\" />\n" +
                "\t<link href=\"https://fonts.googleapis.com/css?family=Cabin\" rel=\"stylesheet\" type=\"text/css\" />\n" +
                "\t<!--<![endif]-->\n" +
                "\t<style>\n" +
                "\t\t* {\n" +
                "\t\t\tbox-sizing: border-box;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\tbody {\n" +
                "\t\t\tmargin: 0;\n" +
                "\t\t\tpadding: 0;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\ta[x-apple-data-detectors] {\n" +
                "\t\t\tcolor: inherit !important;\n" +
                "\t\t\ttext-decoration: inherit !important;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\t#MessageViewBody a {\n" +
                "\t\t\tcolor: inherit;\n" +
                "\t\t\ttext-decoration: none;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\tp {\n" +
                "\t\t\tline-height: inherit\n" +
                "\t\t}\n" +
                "\n" +
                "\t\t.desktop_hide,\n" +
                "\t\t.desktop_hide table {\n" +
                "\t\t\tmso-hide: all;\n" +
                "\t\t\tdisplay: none;\n" +
                "\t\t\tmax-height: 0px;\n" +
                "\t\t\toverflow: hidden;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\t@media (max-width:620px) {\n" +
                "\t\t\t.desktop_hide table.icons-inner {\n" +
                "\t\t\t\tdisplay: inline-block !important;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.icons-inner {\n" +
                "\t\t\t\ttext-align: center;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.icons-inner td {\n" +
                "\t\t\t\tmargin: 0 auto;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.image_block img.big,\n" +
                "\t\t\t.row-content {\n" +
                "\t\t\t\twidth: 100% !important;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.mobile_hide {\n" +
                "\t\t\t\tdisplay: none;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.stack .column {\n" +
                "\t\t\t\twidth: 100%;\n" +
                "\t\t\t\tdisplay: block;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.mobile_hide {\n" +
                "\t\t\t\tmin-height: 0;\n" +
                "\t\t\t\tmax-height: 0;\n" +
                "\t\t\t\tmax-width: 0;\n" +
                "\t\t\t\toverflow: hidden;\n" +
                "\t\t\t\tfont-size: 0px;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.desktop_hide,\n" +
                "\t\t\t.desktop_hide table {\n" +
                "\t\t\t\tdisplay: table !important;\n" +
                "\t\t\t\tmax-height: none !important;\n" +
                "\t\t\t}\n" +
                "\t\t}\n" +
                "\t</style>\n" +
                "</head>\n" +
                "\n" +
                "<body style=\"background-color: #d9dffa; margin: 0; padding: 0; -webkit-text-size-adjust: none; text-size-adjust: none;\">\n" +
                "\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"nl-container\" role=\"presentation\"\n" +
                "\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #d9dffa;\" width=\"100%\">\n" +
                "\t\t<tbody>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td>\n" +
                "\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"row row-1\"\n" +
                "\t\t\t\t\t\trole=\"presentation\"\n" +
                "\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #cfd6f4;\" width=\"100%\">\n" +
                "\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t<td>\n" +
                "\t\t\t\t\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\tclass=\"row-content stack\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 600px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\twidth=\"600\">\n" +
                "\t\t\t\t\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"column column-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 20px; padding-bottom: 0px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"image_block block-1\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"width:100%;padding-right:0px;padding-left:0px;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div align=\"center\" class=\"alignment\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"line-height:10px\"><img\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\talt=\"Card Header with Border and Shadow Animated\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"big\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/animated_header.gif\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0; width: 600px; max-width: 100%;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"Card Header with Border and Shadow Animated\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"600\" /></div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"row row-2\"\n" +
                "\t\t\t\t\t\trole=\"presentation\"\n" +
                "\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #d9dffa; background-image: url('https://raw.githubusercontent.com/hadesdday/a/main/body_background_2.png'); background-position: top center; background-repeat: repeat;\"\n" +
                "\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t<td>\n" +
                "\t\t\t\t\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\tclass=\"row-content stack\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 600px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\twidth=\"600\">\n" +
                "\t\t\t\t\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"column column-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; padding-left: 50px; padding-right: 50px; vertical-align: top; padding-top: 15px; padding-bottom: 15px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-1\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #506bec; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"margin: 0; font-size: 14px;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<strong><span style=\"font-size:38px;\">Đặt lại mật khẩu</span></strong></p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-2\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #40507a; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"margin: 0; font-size: 14px;\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size:16px;\">Chào bạn , chúng tôi có nhận được yêu cầu đặt lại mật khẩu cho tài khoản của bạn.</span>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-3\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #40507a; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"margin: 0; font-size: 14px;\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size:16px;\">Hãy đặt lại mật khẩu nào!</span></p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"button_block block-4\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"padding-bottom:20px;padding-left:10px;padding-right:10px;padding-top:20px;text-align:left;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div align=\"left\" class=\"alignment\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<!--[if mso]><v:roundrect xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:w=\"urn:schemas-microsoft-com:office:word\" href=\"" + resetUrl + "\" style=\"height:46px;width:212px;v-text-anchor:middle;\" arcsize=\"35%\" stroke=\"false\" fillcolor=\"#506bec\"><w:anchorlock/><v:textbox inset=\"5px,0px,0px,0px\"><center style=\"color:#ffffff; font-family:Arial, sans-serif; font-size:15px\"><![endif]--><a\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thref=\"" + resetUrl + "\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"text-decoration:none;display:inline-block;color:#ffffff;background-color:#506bec;border-radius:16px;width:auto;border-top:0px solid TRANSPARENT;font-weight:undefined;border-right:0px solid TRANSPARENT;border-bottom:0px solid TRANSPARENT;border-left:0px solid TRANSPARENT;padding-top:8px;padding-bottom:8px;font-family:Helvetica Neue, Helvetica, Arial, sans-serif;text-align:center;mso-border-alt:none;word-break:keep-all;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttarget=\"_blank\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"padding-left:25px;padding-right:20px;font-size:15px;display:inline-block;letter-spacing:normal;\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"word-break: break-word;\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdata-mce-style=\"\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"line-height: 30px;\"><strong>ĐẶT LẠI MẬT KHẨU</strong></span></span></span></a>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<!--[if mso]></center></v:textbox></v:roundrect><![endif]-->\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-5\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #40507a; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"margin: 0; font-size: 14px;\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size:14px;\">Gặp vấn đề?\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"mailto:devwebchichoo@gmail.com\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trel=\"noopener\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"text-decoration: none; color: #40507a;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttarget=\"_blank\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"Liên hệ\"><strong>Liên hệ ngay</strong></a></span>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-6\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #40507a; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"margin: 0; font-size: 14px;\">Bỏ qua email này nếu như bạn không yêu cầu đặt lại mật khẩu</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"row row-3\"\n" +
                "\t\t\t\t\t\trole=\"presentation\" style=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\" width=\"100%\">\n" +
                "\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t<td>\n" +
                "\t\t\t\t\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\tclass=\"row-content stack\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 600px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\twidth=\"600\">\n" +
                "\t\t\t\t\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"column column-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 0px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"image_block block-1\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"width:100%;padding-right:0px;padding-left:0px;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div align=\"center\" class=\"alignment\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"line-height:10px\"><img\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\talt=\"Card Bottom with Border and Shadow Image\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"big\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/bottom_img.png\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0; width: 600px; max-width: 100%;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"Card Bottom with Border and Shadow Image\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"600\" /></div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"row row-4\"\n" +
                "\t\t\t\t\t\trole=\"presentation\" style=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\" width=\"100%\">\n" +
                "\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t<td>\n" +
                "\t\t\t\t\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\tclass=\"row-content stack\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 600px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\twidth=\"600\">\n" +
                "\t\t\t\t\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"column column-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; padding-left: 10px; padding-right: 10px; vertical-align: top; padding-top: 10px; padding-bottom: 20px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"image_block block-1\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div align=\"center\" class=\"alignment\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"line-height:10px\"><a\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thref=\"" + AssetsProperties.getBaseURL() + "\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"outline:none\" tabindex=\"-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttarget=\"_blank\"><img alt=\"Logo\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/logo_transparent.png\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0; width: 300px; max-width: 100%;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"Logo\" width=\"300\" /></a></div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"social_block block-2\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"alignment\" style=\"text-align:center;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"social-table\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; display: inline-block;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"72px\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"padding:0 2px 0 2px;\"><a\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thref=\"https://www.instagram.com/\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttarget=\"_blank\"><img alt=\"Instagram\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\theight=\"32\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/instagram2x.png\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"instagram\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"32\" /></a></td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"padding:0 2px 0 2px;\"><a\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thref=\"https://www.twitter.com/\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttarget=\"_blank\"><img alt=\"Twitter\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\theight=\"32\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/twitter2x.png\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"twitter\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"32\" /></a></td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-3\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #97a2da; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"margin: 0; font-size: 14px; text-align: center;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t0987654321</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-4\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #97a2da; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"margin: 0; font-size: 14px; text-align: center;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tĐừng ngần ngại liên hệ với chúng tôi nếu bạn gặp vấn đề</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-5\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #97a2da; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"margin: 0; text-align: center; font-size: 12px;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<span style=\"font-size:12px;\">Copyright©\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t2022 HouseWare NLU</span></p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t</table>\n" +
                "\t\t\t\t</td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t</tbody>\n" +
                "\t</table><!-- End -->\n" +
                "</body>\n" +
                "\n" +
                "</html>";
        return email;
    }

    public static String getActiveEmail(String activeUrl) {
        String email = "<!DOCTYPE html>\n" +
                "\n" +
                "<html lang=\"en\" xmlns:o=\"urn:schemas-microsoft-com:office:office\" xmlns:v=\"urn:schemas-microsoft-com:vml\">\n" +
                "\n" +
                "<head>\n" +
                "\t<title></title>\n" +
                "\t<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\n" +
                "\t<meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\" />\n" +
                "\t<!--[if mso]><xml><o:OfficeDocumentSettings><o:PixelsPerInch>96</o:PixelsPerInch><o:AllowPNG/></o:OfficeDocumentSettings></xml><![endif]-->\n" +
                "\t<!--[if !mso]><!-->\n" +
                "\t<link href=\"https://fonts.googleapis.com/css?family=Open+Sans\" rel=\"stylesheet\" type=\"text/css\" />\n" +
                "\t<link href=\"https://fonts.googleapis.com/css?family=Cabin\" rel=\"stylesheet\" type=\"text/css\" />\n" +
                "\t<!--<![endif]-->\n" +
                "\t<style>\n" +
                "\t\t* {\n" +
                "\t\t\tbox-sizing: border-box;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\tbody {\n" +
                "\t\t\tmargin: 0;\n" +
                "\t\t\tpadding: 0;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\ta[x-apple-data-detectors] {\n" +
                "\t\t\tcolor: inherit !important;\n" +
                "\t\t\ttext-decoration: inherit !important;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\t#MessageViewBody a {\n" +
                "\t\t\tcolor: inherit;\n" +
                "\t\t\ttext-decoration: none;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\tp {\n" +
                "\t\t\tline-height: inherit\n" +
                "\t\t}\n" +
                "\n" +
                "\t\t.desktop_hide,\n" +
                "\t\t.desktop_hide table {\n" +
                "\t\t\tmso-hide: all;\n" +
                "\t\t\tdisplay: none;\n" +
                "\t\t\tmax-height: 0px;\n" +
                "\t\t\toverflow: hidden;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\t@media (max-width:620px) {\n" +
                "\t\t\t.desktop_hide table.icons-inner {\n" +
                "\t\t\t\tdisplay: inline-block !important;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.icons-inner {\n" +
                "\t\t\t\ttext-align: center;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.icons-inner td {\n" +
                "\t\t\t\tmargin: 0 auto;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.image_block img.big,\n" +
                "\t\t\t.row-content {\n" +
                "\t\t\t\twidth: 100% !important;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.mobile_hide {\n" +
                "\t\t\t\tdisplay: none;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.stack .column {\n" +
                "\t\t\t\twidth: 100%;\n" +
                "\t\t\t\tdisplay: block;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.mobile_hide {\n" +
                "\t\t\t\tmin-height: 0;\n" +
                "\t\t\t\tmax-height: 0;\n" +
                "\t\t\t\tmax-width: 0;\n" +
                "\t\t\t\toverflow: hidden;\n" +
                "\t\t\t\tfont-size: 0px;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.desktop_hide,\n" +
                "\t\t\t.desktop_hide table {\n" +
                "\t\t\t\tdisplay: table !important;\n" +
                "\t\t\t\tmax-height: none !important;\n" +
                "\t\t\t}\n" +
                "\t\t}\n" +
                "\t</style>\n" +
                "</head>\n" +
                "\n" +
                "<body style=\"background-color: #d9dffa; margin: 0; padding: 0; -webkit-text-size-adjust: none; text-size-adjust: none;\">\n" +
                "\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"nl-container\" role=\"presentation\"\n" +
                "\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #d9dffa;\" width=\"100%\">\n" +
                "\t\t<tbody>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td>\n" +
                "\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"row row-1\"\n" +
                "\t\t\t\t\t\trole=\"presentation\"\n" +
                "\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #cfd6f4;\" width=\"100%\">\n" +
                "\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t<td>\n" +
                "\t\t\t\t\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\tclass=\"row-content stack\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 600px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\twidth=\"600\">\n" +
                "\t\t\t\t\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"column column-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 20px; padding-bottom: 0px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"image_block block-1\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"width:100%;padding-right:0px;padding-left:0px;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div align=\"center\" class=\"alignment\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"line-height:10px\"><img\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\talt=\"Card Header with Border and Shadow Animated\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"big\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/animated_header.gif\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0; width: 600px; max-width: 100%;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"Card Header with Border and Shadow Animated\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"600\" /></div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"row row-2\"\n" +
                "\t\t\t\t\t\trole=\"presentation\"\n" +
                "\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #d9dffa; background-image: url('https://raw.githubusercontent.com/hadesdday/a/main/body_background_2.png'); background-position: top center; background-repeat: repeat;\"\n" +
                "\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t<td>\n" +
                "\t\t\t\t\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\tclass=\"row-content stack\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 600px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\twidth=\"600\">\n" +
                "\t\t\t\t\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"column column-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; padding-left: 50px; padding-right: 50px; vertical-align: top; padding-top: 15px; padding-bottom: 15px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-1\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #506bec; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"margin: 0; font-size: 14px;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<strong><span style=\"font-size:38px;\">Kích\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thoạt tài khoản</span></strong>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-2\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #40507a; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"margin: 0; font-size: 14px;\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size:16px;\">Chào bạn ! Cảm ơn bạn đã đăng ký tài khoản tại HouseWareNLU</span>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"margin: 0; font-size: 14px;\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size:16px;\">Để truy cập tài khoản của bạn, vui lòng kích hoạt tài khoản của bạn để tiếp tục.</span>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-3\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #40507a; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"margin: 0; font-size: 14px;\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size:16px;\">Chúc bạn sẽ có những trải nghiệm tốt đẹp cùng HouseWare NLU !</span></p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"button_block block-4\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"padding-bottom:20px;padding-left:10px;padding-right:10px;padding-top:20px;text-align:left;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div align=\"left\" class=\"alignment\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<!--[if mso]><v:roundrect xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:w=\"urn:schemas-microsoft-com:office:word\" href=\"" + activeUrl + "\" style=\"height:46px;width:212px;v-text-anchor:middle;\" arcsize=\"35%\" stroke=\"false\" fillcolor=\"#506bec\"><w:anchorlock/><v:textbox inset=\"5px,0px,0px,0px\"><center style=\"color:#ffffff; font-family:Arial, sans-serif; font-size:15px\"><![endif]--><a\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thref=\"" + activeUrl + "\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"text-decoration:none;display:inline-block;color:#ffffff;background-color:#506bec;border-radius:16px;width:auto;border-top:0px solid TRANSPARENT;font-weight:undefined;border-right:0px solid TRANSPARENT;border-bottom:0px solid TRANSPARENT;border-left:0px solid TRANSPARENT;padding-top:8px;padding-bottom:8px;font-family:Helvetica Neue, Helvetica, Arial, sans-serif;text-align:center;mso-border-alt:none;word-break:keep-all;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttarget=\"_blank\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"padding-left:25px;padding-right:20px;font-size:15px;display:inline-block;letter-spacing:normal;\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"word-break: break-word;\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdata-mce-style=\"\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"line-height: 30px;\"><strong>KÍCH\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tHOẠT TÀI\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tKHOẢN</strong></span></span></span></a>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<!--[if mso]></center></v:textbox></v:roundrect><![endif]-->\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-5\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #40507a; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"margin: 0; font-size: 14px;\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size:14px;\">Gặp vấn đề?\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"mailto:devwebchichoo@gmail.com\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trel=\"noopener\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"text-decoration: none; color: #40507a;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttarget=\"_blank\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"Liên hệ\"><strong>Liên hệ\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tngay</strong></a></span>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"row row-3\"\n" +
                "\t\t\t\t\t\trole=\"presentation\" style=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\" width=\"100%\">\n" +
                "\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t<td>\n" +
                "\t\t\t\t\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\tclass=\"row-content stack\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 600px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\twidth=\"600\">\n" +
                "\t\t\t\t\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"column column-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 0px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"image_block block-1\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"width:100%;padding-right:0px;padding-left:0px;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div align=\"center\" class=\"alignment\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"line-height:10px\"><img\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\talt=\"Card Bottom with Border and Shadow Image\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"big\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/bottom_img.png\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0; width: 600px; max-width: 100%;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"Card Bottom with Border and Shadow Image\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"600\" /></div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"row row-4\"\n" +
                "\t\t\t\t\t\trole=\"presentation\" style=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\" width=\"100%\">\n" +
                "\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t<td>\n" +
                "\t\t\t\t\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\tclass=\"row-content stack\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 600px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\twidth=\"600\">\n" +
                "\t\t\t\t\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"column column-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; padding-left: 10px; padding-right: 10px; vertical-align: top; padding-top: 10px; padding-bottom: 20px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"image_block block-1\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div align=\"center\" class=\"alignment\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"line-height:10px\"><a\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thref=\"" + AssetsProperties.getBaseURL() + "\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"outline:none\" tabindex=\"-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttarget=\"_blank\"><img alt=\"Logo\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/logo_transparent.png\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0; width: 300px; max-width: 100%;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"Logo\" width=\"300\" /></a></div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"social_block block-2\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"alignment\" style=\"text-align:center;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"social-table\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; display: inline-block;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"72px\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"padding:0 2px 0 2px;\"><a\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thref=\"https://www.instagram.com/\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttarget=\"_blank\"><img alt=\"Instagram\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\theight=\"32\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/instagram2x.png\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"instagram\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"32\" /></a></td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"padding:0 2px 0 2px;\"><a\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thref=\"https://www.twitter.com/\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttarget=\"_blank\"><img alt=\"Twitter\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\theight=\"32\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/twitter2x.png\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"twitter\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"32\" /></a></td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-3\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #97a2da; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"margin: 0; font-size: 14px; text-align: center;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t0987654321</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-4\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #97a2da; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"margin: 0; font-size: 14px; text-align: center;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tĐừng ngần ngại liên hệ với chúng tôi nếu bạn\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tgặp vấn đề</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-5\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #97a2da; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"margin: 0; text-align: center; font-size: 12px;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<span style=\"font-size:12px;\">Copyright©\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t2022 HouseWare NLU</span>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t</table>\n" +
                "\t\t\t\t</td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t</tbody>\n" +
                "\t</table><!-- End -->\n" +
                "</body>\n" +
                "\n" +
                "</html>";
        return email;
    }

    public static String getContactEmail(String... inp) {
        String re = "<!DOCTYPE html>\n" +
                "\n" +
                "<html lang=\"en\" xmlns:o=\"urn:schemas-microsoft-com:office:office\" xmlns:v=\"urn:schemas-microsoft-com:vml\">\n" +
                "\n" +
                "<head>\n" +
                "\t<title></title>\n" +
                "\t<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\n" +
                "\t<meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\" />\n" +
                "\t<!--[if mso]><xml><o:OfficeDocumentSettings><o:PixelsPerInch>96</o:PixelsPerInch><o:AllowPNG/></o:OfficeDocumentSettings></xml><![endif]-->\n" +
                "\t<!--[if !mso]><!-->\n" +
                "\t<link href=\"https://fonts.googleapis.com/css?family=Open+Sans\" rel=\"stylesheet\" type=\"text/css\" />\n" +
                "\t<link href=\"https://fonts.googleapis.com/css?family=Cabin\" rel=\"stylesheet\" type=\"text/css\" />\n" +
                "\t<!--<![endif]-->\n" +
                "\t<style>\n" +
                "\t\t* {\n" +
                "\t\t\tbox-sizing: border-box;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\tbody {\n" +
                "\t\t\tmargin: 0;\n" +
                "\t\t\tpadding: 0;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\ta[x-apple-data-detectors] {\n" +
                "\t\t\tcolor: inherit !important;\n" +
                "\t\t\ttext-decoration: inherit !important;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\t#MessageViewBody a {\n" +
                "\t\t\tcolor: inherit;\n" +
                "\t\t\ttext-decoration: none;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\tp {\n" +
                "\t\t\tline-height: inherit\n" +
                "\t\t}\n" +
                "\n" +
                "\t\t.desktop_hide,\n" +
                "\t\t.desktop_hide table {\n" +
                "\t\t\tmso-hide: all;\n" +
                "\t\t\tdisplay: none;\n" +
                "\t\t\tmax-height: 0px;\n" +
                "\t\t\toverflow: hidden;\n" +
                "\t\t}\n" +
                "\n" +
                "\t\t@media (max-width:620px) {\n" +
                "\t\t\t.desktop_hide table.icons-inner {\n" +
                "\t\t\t\tdisplay: inline-block !important;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.icons-inner {\n" +
                "\t\t\t\ttext-align: center;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.icons-inner td {\n" +
                "\t\t\t\tmargin: 0 auto;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.image_block img.big,\n" +
                "\t\t\t.row-content {\n" +
                "\t\t\t\twidth: 100% !important;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.mobile_hide {\n" +
                "\t\t\t\tdisplay: none;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.stack .column {\n" +
                "\t\t\t\twidth: 100%;\n" +
                "\t\t\t\tdisplay: block;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.mobile_hide {\n" +
                "\t\t\t\tmin-height: 0;\n" +
                "\t\t\t\tmax-height: 0;\n" +
                "\t\t\t\tmax-width: 0;\n" +
                "\t\t\t\toverflow: hidden;\n" +
                "\t\t\t\tfont-size: 0px;\n" +
                "\t\t\t}\n" +
                "\n" +
                "\t\t\t.desktop_hide,\n" +
                "\t\t\t.desktop_hide table {\n" +
                "\t\t\t\tdisplay: table !important;\n" +
                "\t\t\t\tmax-height: none !important;\n" +
                "\t\t\t}\n" +
                "\t\t}\n" +
                "\t</style>\n" +
                "</head>\n" +
                "\n" +
                "<body style=\"background-color: #d9dffa; margin: 0; padding: 0; -webkit-text-size-adjust: none; text-size-adjust: none;\">\n" +
                "\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"nl-container\" role=\"presentation\"\n" +
                "\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #d9dffa;\" width=\"100%\">\n" +
                "\t\t<tbody>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td>\n" +
                "\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"row row-1\"\n" +
                "\t\t\t\t\t\trole=\"presentation\"\n" +
                "\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #cfd6f4;\" width=\"100%\">\n" +
                "\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t<td>\n" +
                "\t\t\t\t\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\tclass=\"row-content stack\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 600px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\twidth=\"600\">\n" +
                "\t\t\t\t\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"column column-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 20px; padding-bottom: 0px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"image_block block-1\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"width:100%;padding-right:0px;padding-left:0px;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div align=\"center\" class=\"alignment\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"line-height:10px\"><img\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\talt=\"Card Header with Border and Shadow Animated\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"big\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/animated_header.gif\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0; width: 600px; max-width: 100%;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"Card Header with Border and Shadow Animated\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"600\" /></div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"row row-2\"\n" +
                "\t\t\t\t\t\trole=\"presentation\"\n" +
                "\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #d9dffa; background-image: url('https://raw.githubusercontent.com/hadesdday/a/main/body_background_2.png'); background-position: top center; background-repeat: repeat;\"\n" +
                "\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t<td>\n" +
                "\t\t\t\t\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\tclass=\"row-content stack\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 600px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\twidth=\"600\">\n" +
                "\t\t\t\t\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"column column-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; padding-left: 50px; padding-right: 50px; vertical-align: top; padding-top: 15px; padding-bottom: 15px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-1\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #506bec; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"margin: 0; font-size: 14px;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<strong><span style=\"font-size:38px;\">Tin\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tnhắn mới từ khách\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thàng</span></strong>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-2\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #40507a; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"margin: 0; font-size: 14px;\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size:16px;\">Một khách hàng\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tđã gửi tin nhắn đến cửa hàng</span>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"margin: 0; font-size: 14px;\"><span\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size:16px;\">Thông tin tin\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tnhắn : <br>- Họ và Tên : " + inp[0] +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<br>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t- Số điện thoại : " + inp[1] + "<br>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t- Nội dung : " + inp[2] + "<br>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t- IP : " + inp[3] + "<br>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t- Thành phố : " + inp[4] + "<br>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t- Ngày giờ : " + inp[5] + "\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</span>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"row row-3\"\n" +
                "\t\t\t\t\t\trole=\"presentation\" style=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\" width=\"100%\">\n" +
                "\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t<td>\n" +
                "\t\t\t\t\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\tclass=\"row-content stack\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 600px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\twidth=\"600\">\n" +
                "\t\t\t\t\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"column column-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 0px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"image_block block-1\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"width:100%;padding-right:0px;padding-left:0px;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div align=\"center\" class=\"alignment\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"line-height:10px\"><img\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\talt=\"Card Bottom with Border and Shadow Image\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"big\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/bottom_img.png\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0; width: 600px; max-width: 100%;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"Card Bottom with Border and Shadow Image\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"600\" /></div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"row row-4\"\n" +
                "\t\t\t\t\t\trole=\"presentation\" style=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\" width=\"100%\">\n" +
                "\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t<td>\n" +
                "\t\t\t\t\t\t\t\t\t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\tclass=\"row-content stack\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 600px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\twidth=\"600\">\n" +
                "\t\t\t\t\t\t\t\t\t\t<tbody>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"column column-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; padding-left: 10px; padding-right: 10px; vertical-align: top; padding-top: 10px; padding-bottom: 20px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"image_block block-1\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div align=\"center\" class=\"alignment\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"line-height:10px\"><a\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thref=\"http://www.example.com/\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"outline:none\" tabindex=\"-1\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttarget=\"_blank\"><img alt=\"Logo\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/logo_transparent.png\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0; width: 300px; max-width: 100%;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"Logo\" width=\"300\" /></a></div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"social_block block-2\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"alignment\" style=\"text-align:center;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"social-table\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; display: inline-block;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"72px\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"padding:0 2px 0 2px;\"><a\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thref=\"https://www.instagram.com/\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttarget=\"_blank\"><img alt=\"Instagram\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\theight=\"32\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/instagram2x.png\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"instagram\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"32\" /></a></td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"padding:0 2px 0 2px;\"><a\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thref=\"https://www.twitter.com/\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttarget=\"_blank\"><img alt=\"Twitter\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\theight=\"32\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"https://raw.githubusercontent.com/hadesdday/a/main/twitter2x.png\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"display: block; height: auto; border: 0;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttitle=\"twitter\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"32\" /></a></td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-3\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #97a2da; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"margin: 0; font-size: 14px; text-align: center;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t0987654321</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-4\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #97a2da; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"margin: 0; font-size: 14px; text-align: center;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tĐừng ngần ngại liên hệ với chúng tôi nếu bạn\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tgặp vấn đề</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tclass=\"text_block block-5\" role=\"presentation\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth=\"100%\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"pad\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"font-family: sans-serif\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"txtTinyMce-wrapper\"\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"font-size: 14px; mso-line-height-alt: 16.8px; color: #97a2da; line-height: 1.2; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstyle=\"margin: 0; text-align: center; font-size: 12px;\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<span style=\"font-size:12px;\">Copyright©\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t2022 HouseWare NLU</span>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t\t\t\t\t</table>\n" +
                "\t\t\t\t\t\t\t\t</td>\n" +
                "\t\t\t\t\t\t\t</tr>\n" +
                "\t\t\t\t\t\t</tbody>\n" +
                "\t\t\t\t\t</table>\n" +
                "\t\t\t\t</td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t</tbody>\n" +
                "\t</table><!-- End -->\n" +
                "</body>\n" +
                "\n" +
                "</html>";
        return re;
    }
}
