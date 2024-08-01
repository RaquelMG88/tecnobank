
Quando("eu preencho o campo UF com {string} e  a chave {string}") do |string, string2|
  visit "/eContrato/frmRegistroContrato.aspx"
  find("ddlUfPesquisa").find("option", text: estado).select_option
end

E("faço o registro do contrato") do
  click_on "Registrar Contrato"
end

Então("deve exibir a area logada com o texto {string}") do |string|
  alerta = find(".alert-login")
  expect(alerta.text).to eql mensagem
end

# novo
Dado("que acesso o {string}") do |string|
  click_link
end

Dado("que o veículo é do estado {string}") do |uf|
  combo_uf = find("select[name$=ddlDsUf]")
  combo_uf.find("option", text: uf).select_option
end

Dado("o chassi é {string}") do |chassi|
  find("input[value=Chassi]").click
  find("#Body_txtDsFiltro").set chassi
end

Quando("eu faço o registro do contrato") do
  click_on "Incluir"
  find("input[name$=txtDsMarca]").set ["Honda", "Toyota", "Fiat", "Ford", "GM"].sample
  find("input[name$=txtDsModelo]").set ["FOX", "UNO", "PALIO", "CIVIC"].sample

  find("select[name$=ddlEspecies]").find("option", text: "Automóvel").select_option

  "0-1-1-2-2-0-2-4".reverse!.split("-").each do |digito|
    find("input[name$=txtDtContrato]").set digito
    sleep 0.5
  end

  find("input[name$=txtNuParcelas]").set "36"
  find("input[name$=txtVlTaxaMora]").set "2"
  find("input[name$=txtVlTaxaMulta]").set "2"
  find("input[name$=txtVlTaxaJurosMes]").set "1"
  find("input[name$=txtVlTaxaContrato]").set "2"
  find("input[name$=txtVlIOF]").set "2"
  find("input[name$=txtVlTaxaJurosAno]").set "8"
  find("input[name$=txtDsIndice]").set "2"
  find("input[name$=txtVlComissao]").set "40"
  find("input[name$=txtDsPenalidade]").set "2"
  find("input[name$=txtNmRecebedorPgto]").set "1"
  find("input[name$=txtNuDocRecebedor]").set "00000014141"
  find("input[name$=txtNuDocVendedor]").set "00000001406"

  find("input[name$=xtVlTotalFinanciamento]").set "50000"
  find("input[name$=txtVlParcela]").set "799"

  "0-1-1-2-2-0-1-9".reverse!.split("-").each do |digito|
    find("input[name$=txtDtLiberacaoCredito]").set digito
    sleep 0.5
  end

  find("select[name$=ddlCdMunicipioLiberacaoCredito]").all("option").sample.select_option

  "0-1-1-2-2-0-1-9".reverse!.split("-").each do |digito|
    find("input[name$=txtDtVencPrimeiraParcela]").set digito
    sleep 0.5
  end

  "0-1-1-2-2-0-2-4".reverse!.split("-").each do |digito|
    find("input[name$=txtDtVencUltimaParcela]").set digito
    sleep 0.5
  end

  campo_cep = all("input[name$=txtDsCEP]")[0]
  "3-1-2-7-0-9-0-1".reverse!.split("-").each do |digito|
    campo_cep.set digito
    sleep 0.5
  end
  campo_cep.send_keys :tab
  sleep 3

  all("input[name$=txtDsNumero]")[0].set "544"
  all("input[name$=txtNuDDD]")[0].set "11"

  #find("select[id$=CredorGravame_ddlDsUf").find("option", text: "SP").select_option
  #find("select[id$=CredorGravame_ddlCdMunicipio").find("option", text: "São Paulo").select_option

  all("input[name$=txtNuTelefone]")[0].set "33334444"
  find("input[name$=txtNuDocumentoDevedor]").set "09.353.526/0001-20"

  campo_cep = all("input[name$=txtDsCEP]")[1]
  "3-1-2-7-0-9-0-1".reverse!.split("-").each do |digito|
    campo_cep.set digito
    sleep 0.5
  end
  campo_cep.send_keys :tab

  all("input[name$=txtDsNumero]")[1].set "544"
  all("input[name$=txtNuDDD]")[1].set "11"

  #all("select[name$=ddlDsUf")[1].find("option", text: "SP").select_option
  #all("select[name$=ddlCdMunicipio")[1].find("option", text: "São Paulo").select_option

  all("input[name$=txtNuTelefone]")[1].set "33334444"

  click_on "Registrar Contrato"
  sleep 2
  page.driver.browser.switch_to.alert.accept
end

Então("deve ser exibido a seguinte mensagem:") do |mensagem_esperada|
  mensagem = find("wucMensagens1_lblCorpo")
  expect(mensagem.text).to eql mensagem_esperada
end
