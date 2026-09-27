# language: pt

@smoke @producao @somente_consulta
Funcionalidade: Motor de busca de voos em produção
  Como cliente da Zupper
  Quero usar os controles de consulta de voos
  Para confirmar que estão disponíveis sem iniciar uma reserva ou compra

  Cenário: Campos da busca de voos estão disponíveis
    Dado que acesso o motor de busca de voos em produção
    Então vejo os campos necessários para pesquisar sem iniciar uma reserva

  Esquema do Cenário: Modalidades de viagem podem ser selecionadas
    Dado que acesso o motor de busca de voos em produção
    Quando altero a modalidade de viagem para <modalidade>
    Então a modalidade <modalidade> fica selecionada sem pesquisar

    Exemplos:
      | modalidade |
      | "roundTrip" |
      | "oneWay"    |
      | "multiple"  |

  Cenário: Calendário de consulta pode ser aberto
    Dado que acesso o motor de busca de voos em produção
    Quando abro o calendário de consulta
    Então vejo os dias e a navegação do calendário sem pesquisar
