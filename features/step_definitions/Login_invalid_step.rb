Then('user unsuccesfully login and error message appear') do
  expect(@page.has_error_message?).to eq(true)
end

Then('user get error message {string}') do |string|
  expect(@page.error_message.text).to eq(string)
end

When('user input invalid email') do
  email = "popcornjihan.com"
  @page.input_email.set(email)
  @page.input_password.set('Passbaru!123')
  @page.rememberme_checkbox.click
  @page.login_button.click
end

When('user input invalid password') do
  @page.input_email.set('popcornjihan@gmail.com')
  @page.input_password.set('Pass')
  @page.rememberme_checkbox.click
  @page.login_button.click
end

When('user input invalid credential') do
  @page.input_email.set('popcornjihan.com')
  @page.input_password.set('Pass')
  @page.rememberme_checkbox.click
  @page.login_button.click
end

When('user click login with empty credential') do
  @page.rememberme_checkbox.click
  @page.login_button.click 
end

