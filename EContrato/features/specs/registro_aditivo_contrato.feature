#language: pt

@aditivo
Funcionalidade: Inclusão de Registro de Aditivo de Contrato

@registro_contrato_aditivo
Cenario: Novo Registro de aditivo de contrato 
    Dado que acesso o "Registro de aditivo de contrato"
    E que o veículo é do estado "SP"
    E o chassi é "STUCZHERXNFLFS"
    Quando eu faço o registro de aditivo de contrato
    Então deve ser exibido a seguinte mensagem:
    """
    0030 - Registro de aditivo de  Contrato efetuado com sucesso.
    """


        