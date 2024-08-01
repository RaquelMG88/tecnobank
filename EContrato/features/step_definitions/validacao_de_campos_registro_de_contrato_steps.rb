Dado("que eu esteja na tela inicial do Tecnobank") do
  visit "http://homologacao.tecnobank.com.br/Login"
end

Dado("que eu acesse o sistema com usuário válido") do
  find("input[id=txtCdEntidade]").set "1001"
  find("input[id=txtLogin]").set "rmendes"
  click_button "Entrar"
end

Quando("informo a senha {string} no teclado virtual") do |senha|
  senha_digitos = senha.split(",")
  senha_digitos.each { |numero| click_on numero }
  find("#Body_btnEntrar").click
end

Quando("realizar uma consulta pelo Registro do Contrato") do
  visit "eContrato/frmRegistroContrato.aspx"
end

Dado("que o veículo é do estado {string}") do |uf|
  combo_uf = find("select[name$=ddlDsUf]")
  combo_uf.find("option", text: uf).select_option
end

Dado("o chassi é {string}") do |chassi|
  find("input[value=Chassi]").click
  find("#Body_txtDsFiltro").set chassi
  click_on "Incluir"
end

Quando("não informar os campos ao clicar em Registrar Contrato") do
  click_on "RegistrarContrato"
  sleep 2
  page.driver.browser.switch_to.alert.accept
end

Então("o sistema exibe as mensagens de preenchimento obrigatório dos campos") do
  mensagem = find("wucMensagens1_lblCorpo")
  expect(mensagem.text).to eql mensagem_esperada
end
