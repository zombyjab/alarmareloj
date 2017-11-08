require 'selenium-webdriver'
require './page_objects/reloj_pantalla'

describe 'reloj web' do
    it 'suena la alarma' do
        caps = {
            :platform => "Windows 7",
            :browserName => "Chrome",
            :version => "45",
            :timeZone => "Lima"
        }
        browser = Selenium::WebDriver.for(:remote,
                :url => "https://angelnunezkleer:452005f0-d069-407b-8973-cde1d9c6c623@ondemand.saucelabs.com:443/wd/hub",
                :desired_capabilities => caps)

        pantalla = RelojPantalla.new(browser)
        pantalla.abrir()
        pantalla.establecer_hora_alarma('[hora de la alarma]')
        pantalla.establecer_minutos_alarma('[minutos de la alarma]')
        pantalla.definir_alarma()
        pantalla.esperar_que_suene(segundos: '180')
        sonando = pantalla.sonando?
        expect(sonando).to be true
        pantalla.cerrar()

        browser.quit()
    end
  end

