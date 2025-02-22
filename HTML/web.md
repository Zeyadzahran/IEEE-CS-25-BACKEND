---
tags:
  - IEEE
  - Backend
  - HTML
  - Summary
  - Tasks
---
## **How the Web Works**

The web operates through a client-server model. When you type a website address (URL) into your browser, it sends a request to a web server. The server then processes the request, retrieves the necessary files (like HTML, CSS, and JavaScript), and sends them back to your browser, which then renders the website for you to see. This process happens within milliseconds and relies on various technologies like HTTP, DNS, and web servers.


الويب بيشتغل بنظام العميل والسيرفر، يعني لما بتكتب عنوان موقع، المتصفح بيبعت طلب للسيرفر، والسيرفر بيرد بالملفات المطلوبة عشان يعرضلك الصفحة بسرعة كبيرة.
 **[Read more](https://developer.mozilla.org/en-US/docs/Learn_web_development/Getting_started/Web_standards/How_the_web_works)**

---
## **HTTP vs HTTPS**

**HTTP** (Hyper Text Transfer Protocol) is the protocol used for communication between browsers and web servers. However, HTTP is not secure because the data is transmitted in plain text, making it vulnerable to hackers. **HTTPS** (HyperText Transfer Protocol Secure) solves this problem by encrypting the data using SSL/TLS, making it much safer, especially for sensitive transactions like online banking and shopping.



HTTP هو البروتوكول اللي بيستخدمه المتصفح عشان يتواصل مع المواقع، لكن مش آمن لإن البيانات بتتنقل بدون تشفير. HTTPS بيحل المشكلة دي بالتشفير، وبيخلي التصفح أأمن خصوصًا لو بتستخدم مواقع حساسة زي البنوك.

 **[Read more](https://aws.amazon.com/compare/the-difference-between-https-and-http/)**

---

## **Web Servers**

A **web server** is a computer or software that stores and delivers website content when requested by a browser. Web servers handle multiple requests simultaneously and serve web pages based on client requests. Popular web servers include Apache, Nginx, and Microsoft IIS. They are responsible for ensuring that websites run smoothly and efficiently.

 
سيرفر الويب هو الجهاز اللي بيحفظ ملفات الموقع، ولما حد يطلب الموقع، السيرفر بيبعت الملفات للمتصفح. في سيرفرات مشهورة زي Apache و Nginx، وشغلتهم إنهم يخلوا المواقع تشتغل بكفاءة.

[Read more](https://www.geeksforgeeks.org/what-is-a-web-server-working-and-architecture/)



---
## **DNS (Domain Name System)**

**DNS** is like the internet’s phonebook. It translates human-friendly domain names (like [www.google.com](http://www.google.com)) into IP addresses that computers understand. Without DNS, you would have to remember long numerical IP addresses to visit websites. DNS servers play a crucial role in making web browsing simple and efficient.


DNS هو النظام اللي بيحول أسامي المواقع اللي بنكتبها لعناوين IP عشان الأجهزة تقدر تتواصل. يعني بدل ما تحفظ أرقام طويلة، تكتب اسم الموقع، و DNS يتصرف!

[Read more](https://www.geeksforgeeks.org/whats-is-domain-name-systemdns/)