#language: pt
@validacao_campos_registro_de_contrato
    Funcionalidade: Validar os campos do Registro de Contrato
        Eu como usuário do sistema, desejo validar o comportamento da tela
        utilizando algumas consultas

Contexto: Acessar a site do Tecnobank
    Dado que eu esteja na tela inicial do Tecnobank

Cenário: Validaçao de campos do Registro do Contrato
    Dado que eu acesse o sistema com usuário válido
    Quando realizar uma consulta pelo Registro do Contrato
    E não informar os campos ao clicar em Registrar Contrato 
    Então o sistema exibe as mensagens de preenchimento obrigatório dos campos


