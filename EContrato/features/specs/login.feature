#language: pt

@login
Funcionalidade: Login

@login_sucesso
Cenario: Acesso do usuário
    Quando acesso com o código "1001" e login "rmendes"
    E informo a senha "2,3,0,4,1,6" no teclado virtual
    Então devo ver a área logada com a mensagem "Olá cliente"

@login_validacao
Esquema do Cenário: Tentativa de acesso 
    Quando acesso com o código "<codigo>" e login "<login>"
    Então devo ver o popup de alerta "<texto>"

    Exemplos: 
    |codigo |login          |texto                                                              |
    |1001   |raquel_papini  |Usuário Inexistente. Contate o suporte para maiores informações.   |
    |9999   |rmendes        |Código Inexistente. Contate o suporte para maiores informações.    |

@senha_validacao
Esquema do Cenário: Tentar logar com senha
    Quando acesso com o código "1001" e login "rmendes"
    E informo a senha "<senha>" no teclado virtual
    Então devo ver o popup de alerta "<texto>"

    Exemplos: 
    |senha|texto|
    |1,2,3,4,5,6|Senha incorreta. Contate o suporte para maiores informações.|
    