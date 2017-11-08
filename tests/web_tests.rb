require 'selenium-webdriver'
require './page_objects/reloj_pantalla'

describe 'reloj web' do
    it 'suena la alarma' do
        caps = {
            :platform => "Windows 7",
            :browserName => "Chrome",
            :version => "45"
        }
        #browser = Selenium::WebDriver.for(:remote,
        #        :url => "https://angelnunezkleer:452005f0-d069-407b-8973-cde1d9c6c623@ondemand.saucelabs.com:443/wd/hub",
        #        :desired_capabilities => caps)
        
        browser = Selenium::WebDriver.for :chrome

        pantalla = RelojPantalla.new(browser)
        pantalla.abrir()
        pantalla.establecer_hora_alarma('15')
        pantalla.establecer_minutos_alarma('08')
        pantalla.definir_alarma()
        pantalla.esperar_que_suene(segundos: '120')
        sonando = pantalla.sonando?
        expect(sonando).to be true
        pantalla.cerrar()
    end
  end

