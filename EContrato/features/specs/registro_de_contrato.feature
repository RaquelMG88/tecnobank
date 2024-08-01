#language: pt

@contrato
Funcionalidade: Inclusão de Registro de Contrato

@registro_contrato
Cenario: Novo contrato
    Dado que acesso o "Registro de Contrato"
    E que o veículo é do estado "SP"
    E o chassi é "LTEMAGEM002"
    Quando faço o registro do contrato
    Então deve ser exibido a seguinte mensagem:
    """
    0030 - Registro do Contrato efetuado com sucesso.
    """
    
  
   








        




 
        



