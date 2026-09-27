# frozen_string_literal: true

class BuscaPage
  include Capybara::DSL
  include RSpec::Matchers

  def abrir_site
    visit('/')
    expect(page).to have_css('[data-testid="search-engine"]', visible: true)
    fechar_privacidade_se_exibida
  end

  def validar_campos_de_consulta
    expect(page).to have_css('[data-zt="flightSearchOrigin"] input[data-zt="airportSelectionInput"]', visible: true)
    expect(page).to have_css('[data-zt="flightSearchDestination"] input[data-zt="airportSelectionInput"]', visible: true)
    expect(page).to have_css('[data-zt="calendarTrigger"]', visible: true)
    expect(page).to have_css('[data-zt="passengersConfigTrigger"]', visible: true)
    expect(page).to have_css('[data-zt="flightSearchSubmit"]', visible: true)
  end

  def selecionar_modalidade(modalidade)
    find("#radio-#{modalidade}", visible: :all).click
  end

  def validar_modalidade_selecionada(modalidade)
    expect(page).to have_css("#radio-#{modalidade}:checked", visible: :all)
  end

  def abrir_calendario
    find('[data-zt="calendarTrigger"]').click
    expect(page).to have_css('[data-testid="days-grid"]', visible: true)
    expect(page).to have_css('[data-zt="nextMonth"]', visible: true)
  end

  private

  def fechar_privacidade_se_exibida
    accept = '#oPrivallyApp-AcceptLink'
    find(accept).click if page.has_css?(accept, visible: true, wait: 3)
  end
end
