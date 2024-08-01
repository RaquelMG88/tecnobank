#language: pt

@busca
    Funcionalidade: Consulta de Registro de Contrato

@busca_geral 
Cenario: Fazer busca
    Dado que faço uma busca 
    E faço a consulta
    Então deve ser apresentado o "<alerta>": "É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!"
    E deve exibir os contratos no grid

@busca_por_estado 
Esquema do Cenario: Fazer por estado
    Dado que desejo buscar por estado "<uf>"
    Quando eu faço a busca 
    Então deve ser apresentado o "<alerta>": "É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!"
    E deve exibir os contratos no grid

    Exemplos:
    |uf|alerta|
    |PB|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |SP|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |AP|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |SC|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |MG|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |PR|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |PE|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|

    
@busca_tipo_operacao 
Esquema do Cenario: Fazer por tipo de operação 
    Dado que desejo fazer uma busca por operação "<tipo de operacao>"
    Quando eu faço a busca 
    Então deve ser apresentado o "<alerta>": "É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!"
    E deve exibir os contratos no grid

    Exemplos:
    |tipo de operacao|alerta|
    |Registro de Contrato|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |Alteração de Contrato|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |Registro de Aditivo|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |Alteração de Registro|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|

@busca_situacao_registro 
Esquema do Cenario: Fazer por situação de registro
    Dado que desejo buscar por operação "<registro>"
    Quando eu faço a busca 
    Então deve ser apresentado o "<alerta>": "É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!"
    E deve exibir os contratos no grid 

    Exemplos:
    |registro|alerta|
    |ativo|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |inativo|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|

@busca_nome_credor 
Cenario: Fazer por nome do credor 
    Dado que desejo buscar por operação "<credor>"
    Quando eu faço a busca 
    Então deve ser apresentado o "<alerta>"
    E deve exibir os contratos no grid 

@validacao_nome_credor_invalido
Esquema do Cenario: Fazer por nome do credor inválido
    Dado que desejo buscar por nome do credor "<credor>"
    Quando eu faço a busca 
    Então deve ser apresentado o "<alerta>"
    E deve exibir os contratos no grid 

    Exemplos:
    |credor|alerta|
    |BANCO GMAC SA|Contrato não localizado pela chave informada.|
    |621563@#$%¨|Contrato não localizado pela chave informada.|

@busca_nome_do_devedor 
Cenario: Fazer por nome do devedor
    Dado que desejo buscar por operação "<devedor>"
    Quando eu faço a busca 
    Então deve ser apresentado os contratos no grid

    Esquema do Cenario: Fazer busca por nome do devedor inválido
    
    Exemplos:
    |devedor|
    |ANDRE GASPAROTTO FERRAZ DOS SANTOS|
    |VANI ROCHA MONQUERO|

@busca_municipio_devedor
Esquema do Cenario: Fazer por municipio devedor
    Dado que desejo buscar por operação "<municipio devedor>"
    Quando eu faço a busca 
    Então deve ser apresentado o "<alerta>": "É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!"
    E deve exibir os contratos no grid 

    Exemplos:
    |municipio devedor|alerta|
    |SP|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |SC|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |MG|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |PB|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |PR|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |PE|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |AP|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|

@busca_por_UF_devedor
Esquema do Cenario: Fazer por UF devedor
    Dado que desejo buscar por operação "<UF devedor>"
    Quando eu faço a busca 
    Então deve ser apresentado o "<alerta>": "É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!"
    E deve exibir os contratos no grid 

    Exemplos:
    |UF devedor|alerta|
    |SP|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |SC|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |MG|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |PB|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |PR|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |PE|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |AP|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|

@busca_por_Período
Esquema do Cenario: Fazer por Periodo
    Dado que desejo buscar por "<Periodo>"
    Quando eu faço a busca 
    Então deve ser apresentado o "<alerta>": "É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!"
    E deve exibir os contratos no grid 
    
    Exemplos:
    |Periodo|alerta|
    |01/03/2019|É possivel que exista mais dados para esta pesquisa, você pode refinar o seu filtro para localizar os contratos específicos!|
    |01/03/0000|Erro inesperado, tente novamente ou contate o suporte para maiores informações.|


