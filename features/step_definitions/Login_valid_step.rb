Given('user is on login page') do
  @page = LoginPage.new
  @page.load
  @page.icon_user.click
end
  
When('user input valid credential') do
  @page.input_email.set('popcornjihan@gmail.com')
  @page.input_password.set('Passbaru!123')
  @page.rememberme_checkbox.click
  @page.login_button.click
end
  
Then('user successfully login') do
  @page.icon_user.hover
  expect(@page.has_logout_button?).to eq(true)
end
