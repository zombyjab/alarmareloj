require 'selenium-webdriver'
require './page_objects/reloj_pantalla'
require './page_objects/browser'


describe 'reloj web' do
    it 'suena la alarma' do
        caps = {
            :platform => "Windows 7",
            :browserName => "Chrome",
            :version => "45",
            :timeZone => "Lima"
        }
        browser = Browser.open(caps);

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

