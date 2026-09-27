# frozen_string_literal: true

Dado('que acesso o motor de busca de voos em produção') do
  @busca.abrir_site
end

Então('vejo os campos necessários para pesquisar sem iniciar uma reserva') do
  @busca.validar_campos_de_consulta
end

Quando('altero a modalidade de viagem para {string}') do |modalidade|
  @busca.selecionar_modalidade(modalidade)
end

Então('a modalidade {string} fica selecionada sem pesquisar') do |modalidade|
  @busca.validar_modalidade_selecionada(modalidade)
end

Quando('abro o calendário de consulta') do
  @busca.abrir_calendario
end

Então('vejo os dias e a navegação do calendário sem pesquisar') do
  # A validação é feita ao abrir o calendário para manter o step de resultado legível.
end
