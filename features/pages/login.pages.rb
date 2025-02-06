class LoginPage < SitePrism::Page
  set_url ''
  element :emailField, :id, "username"
  element :passwordField, :id, "password"
  element :loginButton, :xpath, '//*[@id="organic-div"]/form/div[4]/button'



  def userLogin(email,senha)
      emailField.set (email)
      passwordField.set (senha)
      loginButton.click
  end

end