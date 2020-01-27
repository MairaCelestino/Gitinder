class LoginPage < Base
  def logar(conta, skills)
    visit "https://gitnder.herokuapp.com/"
    find("input[placeholder$=Github]").set conta
    find("input[placeholder*=skills]").set skills
    click_button "Enviar"
  end

  #include Capybara::DSL

  # def acessar
  #visit "https://gitnder.herokuapp.com/"
  # end

  #def conta
  # find("input[placeholder$=Github]").set @conta
  #end

  #def skills
  # find("input[placeholder*=skills]").set @skills
  #end

  #def entrar
  # click_button "Enviar"
  #end
  def alert
    find(".alert-dark").text
  end
end
