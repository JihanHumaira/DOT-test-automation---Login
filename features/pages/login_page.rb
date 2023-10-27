class LoginPage < SitePrism::Page
    set_url 'https://www.psegameshop.com/'
     
    element :icon_user, :xpath, "//i[@class='icon-user']"
    element :input_email, :xpath, "//input[@name='username'][@id='username']"
    element :input_password, :xpath, "//div[@class='account-login-inner']//input[@type='password']"
    element :rememberme_checkbox, :xpath, "//input[@name='rememberme'][@type='checkbox']"
    element :login_button, :xpath, "//button[@type='submit'][@name='login']"
    
    element :logout_button, :xpath, "//ul[@class='nav-dropdown  nav-dropdown-simple']/li[7]/a"

    #error message
    element :error_message, :xpath, "//div[@class='message-container container alert-color medium-text-center']"
  end