
Quando("acesso com o código {string} e login {string}") do |codigo, login|
  visit "http://homologacao.tecnobank.com.br/Login"
  find("input[id=txtCdEntidade]").set codigo
  find("input[id=txtLogin]").set login
  click_button "Entrar"
end

Quando("informo a senha {string} no teclado virtual") do |senha|
  senha_digitos = senha.split(",")
  senha_digitos.each { |numero| click_on numero }
  find("#Body_btnEntrar").click
end

Então("devo ver a área logada com a mensagem {string}") do |mensagem_esperada|
  sleep 3
  page.execute_script("$('iframe').hide();") # isso aqui tira a caixinha de suporte

  comunicados = find(".modal-body")
  expect(comunicados).to have_text mensagem_esperada
end

Então("devo ver o popup de alerta {string}") do |mensagem_esperada|
  popup = find("#wucMensagens1_lblCorpo")
  expect(popup.text).to eql mensagem_esperada
end
