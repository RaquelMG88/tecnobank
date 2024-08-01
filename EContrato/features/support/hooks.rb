
require "base64"

Before("@login") do
  visit "http://homologacao.tecnobank.com.br/Login"
  find("input[id=txtCdEntidade]").set "1001"
  find("input[id=txtLogin]").set "rmendes"
  click_button "Entrar"

  senha_digitos = ["2", "3", "0", "4", "1", "6"]
  senha_digitos.each { |numero| click_on numero }

  find("#Body_btnEntrar").click

  sleep 3
  page.execute_script("$('.bootbox-close-button').click();")
  page.execute_script("$('iframe').hide();") # isso aqui tira a caixinha de suporte
end

After do
  temp_image = page.save_screenshot("log/temp.png")
  b64 = Base64.encode64(File.open(temp_image, "rb").read)
  embed(b64, "image/png", "Screenshot")
end
