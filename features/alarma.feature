Feature: Alarma del Reloj
  Como usuario quiero que cuando la alarma esta prendida, 
  suene en el momento que el horario del reloj coincide con el horario definido

  Scenario: Alarma suena a la hora definida
    Given una alarma definida a las 7:05 AM
    And se encuentra prendida
    When son las 7:05:00 AM
    Then esta sonando

  Scenario: Alarma no suena si es antes de la hora definida
    Given una alarma definida a las 7:05 AM
    And se encuentra prendida
    When son las 7:04:00 AM
    Then no esta sonando
