Dado('que estou na página de login') do
    login.load
   
  
end

Quando('eu informar minhas credenciais corretas') do
    login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:senha])
end

Então('devo ser autenticado com sucesso') do
    home.CheckLoginSucessful
end