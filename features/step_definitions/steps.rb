#language:pt

#Dado("que {string} e a minha conta no github") do |conta|
#@conta = conta
#end

Dado("que possuo a conta {string}") do |conta|
  @conta = conta
end

Dado("posso os skills {string}") do |skills|
  @skills = skills
end

Quando("eu entro no gitnder") do
  #puts @conta
  #puts @skills

  login = LoginPage.new

  login.logar(@conta, @skills)
end

#login.acessar
#login.conta.set @conta
#login.skills.set @skills
#login.entrar

#visit "https://gitnder.herokuapp.com/"
#find("#gituser").set @conta.
#find("input[placeholder$=Github]").set @conta
#find("input[placeholder*=skills]").set @skills
#click_button "Enviar"
#sleep 5 #temporario só pra ver se deu certo
#end

Entao("devo ver a area logada") do
  #Teste  # page.has_css?(".git-userss")
  #usuario_logado = page.has_css?(".git-users")

  users = UserPages.new
  expect(users.usuario_logado).to be true
end

#Dado("que {string} nao e uma conta do github") do |conta|
# @conta = conta
#end

Entao("devo ver a mensagem de alerta: {string}") do |mensagem_esperada|
  #alert = find(".alert-dark") #Busca elemento .alert-dark e grava na variavel "alert"

  login = LoginPage.new
  expect(login.alert).to eql mensagem_esperada
  #verifica através do expect se a mensagem é igual a esperada "mensagem_esperada" (Conta Github nao existe :( )
end
