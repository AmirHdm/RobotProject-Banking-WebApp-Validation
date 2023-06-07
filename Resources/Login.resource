*** Variables ***
#USER LOGIN
${user_id}      mngr507394
${password}     rUjyhUg

#Browsers
&{browser_chrome}    var1=Chrome       var2=chrome     var3=C:\Python311\Scripts\chromedriver.exe
&{browser_firefox}    var1=Firefox       var2=firefox     var3=C:\Python311\Scripts\geckodriver.exe

${login_page_url}    https://www.demo.guru99.com/v4/
${login_page_title}    Guru99 Bank Home Page
${login_page_resetbtn}  name=btnReset

#HOME PAGE
${home_page_url}        https://www.demo.guru99.com/v4/manager/Managerhomepage.php
${home_page_title}    Guru99 Bank Manager HomePage
 # alias=${value2}     executable_path=${value3}