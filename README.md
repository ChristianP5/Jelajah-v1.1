# JELAJAH

# How to launch Website
Steps:

**(1) Download XAMPP https://www.apachefriends.org/**

**(2) Open XAMPP Control Panel and make sure Apache and MySQL is working**

*(2) if MySQL not working due to Port, change default Port from 3306 to 3307:
- Apache > Config > PHP.ini (Change all "3306" to "3307")
- Apache > Config > congif.inc.php (Change all "3306" to "3307")
- MySQL > Config > my.ini (Change all "3306" to "3307")

![image](https://github.com/ChristianP5/JELAJAH/assets/119984279/1176a272-680d-49e9-a781-f052210a5dab)


**(3) Open PHPMyAdmin (MySQL > Admin)**

![image](https://github.com/ChristianP5/JELAJAH/assets/119984279/3df69a61-78db-465c-a09d-3fc713fa59d7)


**(4) Import Database**
    - Create New Database ( "New" on Right Sidebar )

  ![image](https://github.com/ChristianP5/JELAJAH/assets/119984279/b795f180-4607-471a-9372-3228ec91ec81)

    
    - Name it "jelajah" (harus sama)
    - Select the database and go to Import Tab

  ![image](https://github.com/ChristianP5/JELAJAH/assets/119984279/b680247f-9580-4425-ab56-0e4674fbb90b)

    - Choose File > jelajah.sql > Go (Scroll paling bawah)

  ![image](https://github.com/ChristianP5/JELAJAH/assets/119984279/b51622c4-9114-45d9-8a04-d64f944a5ede)

    - Home > SQL

![image](https://github.com/ChristianP5/JELAJAH/assets/119984279/b1c0af33-9b5d-4071-a477-2417c6317cc6)
![image](https://github.com/ChristianP5/JELAJAH/assets/119984279/b914b739-93c1-4c60-8d4e-6f3b46b14a5f)

    - Paste this:
    
    GRANT SELECT, INSERT, UPDATE ON *.* TO `jelajah_visitor`@`%`; GRANT SELECT, INSERT, UPDATE, DELETE ON `jelajah`.* TO `jelajah_visitor`@`%`;

    - Go

**(5) Download Code as ZIP**

 ![image](https://github.com/ChristianP5/JELAJAH/assets/119984279/1ea722bb-46b5-48b9-8bb7-f8103a64e6bd)

 **(6) Extract**

 **(7) Move Extracted Folder to xampp htdocs folder (Default is C:\xampp\htdocs)**

 **(8) Rename Folder to "Jelajah" (Harus sama)**

 **(9) Launch Steps:**
 - Start Apache and MySQL on Control Panel
 - Open Browser
 - Type the URL (for website): http://localhost/Jelajah/views/login.php
 - Type the URL (for Admin Panel): http://localhost/Jelajah/admin/login.php (Username: JelajahAdmin || Pass: 111)

 


  




    

    
