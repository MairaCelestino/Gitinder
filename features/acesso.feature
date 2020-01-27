#language:pt

 Funcionalidade: Acesso
    Para que eu possa conhecer devs e qas com skills em comum
    Sendo um usuário que possui uma conta no github
    Quero poder iniciar uma nova sessão

   
      Cenario: Nova Sessao

        Dado que possuo a conta "MairaCelestino"
        E posso os skills "scrum, sql, ruby"
        Quando eu entro no gitnder 
        Entao devo ver a area logada

      
      #Cenario: Conta nao existe
     
       # Dado que possuo a conta "MairaCelestino29"
       # Quando eu entro no gitnder
       # Entao devo ver a mensagem de alerta: "Conta Github não existe :("

      #@temp
      #Cenario: Conta nao informada

       # Dado que possuo a conta ""
       # Quando eu entro no gitnder
       # Entao devo ver a mensagem de alerta: "Conta Github não existe :("


      Esquema do Cenario: Tentar Logar

        Dado que possuo a conta "<github>"
        Quando eu entro no gitnder
        Entao devo ver a mensagem de alerta: "Conta Github não existe :("

            Exemplos:
            | github            |
            | MairaCelestino29  |
            |                   |
            | MairaCelestino_29 |