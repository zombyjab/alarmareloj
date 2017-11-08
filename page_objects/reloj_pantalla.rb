class RelojPantalla

    def initialize(browser)
        @browser=browser
    end

    def abrir
        @browser.get "https://relojdespertador.herokuapp.com/"
    end

    def establecer_hora_alarma(hora)
        hora.to_i.times do |i|
            @browser.find_element(:id,'button_plus_hour').click
        end
    end

    def establecer_minutos_alarma(minutos)
        minutos.to_i.times do |i|
            @browser.find_element(:id,'button_plus_min').click
        end
    end

    def definir_alarma
        @browser.find_element(:id,'set_alarm_button').click
    end

    def esperar_que_suene(segundos: '180')
        wait = Selenium::WebDriver::Wait.new(timeout: segundos.to_i)
        wait.until { @browser.find_element(id: "stop_alarm_button").displayed? }
    end

    def sonando?
        @browser.find_element(:id,'wakeup').text=="Sonando"
    end

    def cerrar
        sleep(3)
    end
end