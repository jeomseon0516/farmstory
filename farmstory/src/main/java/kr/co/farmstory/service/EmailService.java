package kr.co.farmstory.service;

import java.util.Properties;
import java.util.concurrent.ThreadLocalRandom;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

public enum EmailService {

    INSTANCE;

    public String sendEmailCode(String receiver) {

        int code = ThreadLocalRandom.current().nextInt(100_000, 1_000_000);

        String sender = "suah.nam@gmail.com";
        String title = "Farmstory 인증코드 입니다.";
        String content = "<h1>인증코드는 " + code + " 입니다.</h1>";

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "465");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

        Session sess = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                final String APP_PASS = "uyasquocxslsivin";
                return new PasswordAuthentication(sender, APP_PASS);
            }
        });

        try {
            Message message = new MimeMessage(sess);

            message.setFrom(new InternetAddress(sender, "Farmstory", "UTF-8"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(receiver));
            message.setSubject(title);
            message.setContent(content, "text/html;charset=UTF-8");
            
            System.out.println("인증코드 : " + code);
            System.out.println("메일 발송 시작");

            Transport.send(message);
            
            

        } catch(Exception e) {
            e.printStackTrace();
        }

        return String.valueOf(code);
    }
}