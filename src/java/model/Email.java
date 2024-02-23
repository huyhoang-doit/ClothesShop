/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.time.LocalDateTime;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


/**
 *
 * @author lvhho
 */
public class Email {
    private final String eFrom = "lvhhoangg1@gmail.com";
    private final String ePass = "ojlx ohfr qxwd llxx";

    // 
    // check email
    public boolean isValidEmail(String email) {
        // Biểu thức chính quy cho định dạng email
        String emailRegex = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,}$";

        // Tạo đối tượng Pattern
        Pattern pattern = Pattern.compile(emailRegex);

        // Tạo đối tượng Matcher
        Matcher matcher = pattern.matcher(email);

        // Kiểm tra chuỗi với biểu thức chính quy
        return matcher.matches();
    }

    public void sendEmail(String subject, String messgage, String to) {
        try {

        } catch (Exception e) {
        }
        // Properties
        Properties props = new Properties();

        //Su dung server nao de gui mail- smtp host
        props.put("mail.smtp.host", "smtp.gmail.com");

        // TLS 587 SSL 465
        props.put("mail.smtp.port", "smtp.gmail.com");

        // dang nhap
        props.put("mail.smtp.auth", "true");

        props.put("mail.smtp.starttls.enable", "true");

        //dang nhap tai khoan
        Authenticator au = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(eFrom, ePass);
            }

        };
        // phien lam viec
        Session session = Session.getInstance(props, au);

        try {
            MimeMessage msg = new MimeMessage(session);
            msg.addHeader("Content-type", "text/HTML, charset=UTF-8");
            msg.setFrom(new InternetAddress(eFrom));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));
            // tieu de
            msg.setSubject(subject, "UTF-8");
            // Noi dung
            msg.setContent(messgage, "text/html; charset=UTF-8");
            // Gui email
            Transport.send(msg);
        } catch (Exception e) {
            System.out.println("Send email failed");
            e.printStackTrace();
        }
    }
    
     public String subjectContact(String name) {
        return "ClothesShop - Chào " + name + " cảm ơn bạn vì đã liên hệ với chúng tôi";
    }
     
    public String messageContact(String name) {
        return "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "\n"
                + "<head>\n"
                + "    <meta charset=\"UTF-8\">\n"
                + "    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n"
                + "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "    <title>Liên hệ - Clothes Shop</title>\n"
                + "    <style>\n"
                + "        body {\n"
                + "            font-family: 'Arial', sans-serif;\n"
                + "            margin: 0;\n"
                + "            padding: 0;\n"
                + "            background-color: #f4f4f4;\n"
                + "        }\n"
                + "\n"
                + "        .container {\n"
                + "            max-width: 600px;\n"
                + "            margin: 0 auto;\n"
                + "            background-color: #fff;\n"
                + "            padding: 20px;\n"
                + "            border-radius: 10px;\n"
                + "            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n"
                + "            margin-top: 20px;\n"
                + "        }\n"
                + "\n"
                + "        h1,\n"
                + "        p {\n"
                + "            text-align: center;\n"
                + "        }\n"
                + "\n"
                + "        .logo {\n"
                + "            text-align: center;\n"
                + "            margin-bottom: 20px;\n"
                + "        }\n"
                + "\n"
                + "        img {\n"
                + "            max-width: 100%;\n"
                + "            height: auto;\n"
                + "        }\n"
                + "\n"
                + "        .message {\n"
                + "            margin-top: 20px;\n"
                + "        }\n"
                + "\n"
                + "        .btn {\n"
                + "            display: inline-block;\n"
                + "            padding: 10px 20px;\n"
                + "            background-color: #3498db;\n"
                + "            color: #fff;\n"
                + "            text-decoration: none;\n"
                + "            border-radius: 5px;\n"
                + "        }\n"
                + "\n"
                + "        .footer {\n"
                + "            margin-top: 20px;\n"
                + "            text-align: center;\n"
                + "            color: #888;\n"
                + "        }\n"
                + "    </style>\n"
                + "</head>\n"
                + "\n"
                + "<body>\n"
                + "    <div class=\"container\">\n"
                + "        <h1>Chào mừng bạn đến với Clothes Shop!</h1>\n"
                + "        <div class=\"message\">\n"
                + "            <p>Xin chân thành cảm ơn khách hàng " + name + " đã lựa chọn Clothes Shop cho nhu cầu mua sắm của mình.</p>\n"
                + "            <p>Chúng tôi luôn cam kết mang đến cho bạn những sản phẩm chất lượng nhất và dịch vụ tận tâm.</p>\n"
                + "            <p>Chúng tôi đã nhận được đề xuất và ý kiến của bạn, chúng tôi sẽ gửi đến bạn thông tin sớm nhất.</p>\n"
                + "            <p>Nếu bạn có bất kỳ câu hỏi hoặc đề xuất nào khác, đừng ngần ngại liên hệ với chúng tôi qua địa chỉ email:\n"
                + "                <a href=\"clothesshopvn@gmail.com\" class=\"btn\">customer_support@clothesshop.com</a>\n"
                + "            </p>\n"
                + "            <p>Cảm ơn bạn và chúc bạn có một trải nghiệm mua sắm tuyệt vời!</p>\n"
                + "        </div>\n"
                + "        <div class=\"footer\">\n"
                + "            <p>Clothes Shop - Lô E2a-7, Đường D1, Khu Công nghệ cao, P.Long Thạnh Mỹ, Tp. Thủ Đức, TP.HCM. - Số điện thoại: 1900 9090</p>\n"
                + "        </div>\n"
                + "    </div>\n"
                + "</body>\n"
                + "\n"
                + "</html>";
    }
}
