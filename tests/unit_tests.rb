require './reloj'

describe Reloj do
  before(:each) do
    @reloj= Reloj.new
  end

  it 'no suena la alarma si esta prendinda y no es hora definida' do
    @reloj.definir_alarma('07:05')
    @reloj.prender
    sonando = @reloj.sonar?('07:04')
    expect(sonando).to be false
  end

  it 'suena la alarma si esta prendinda y es hora definida' do
    @reloj.definir_alarma('04:05')
    @reloj.prender
    sonando = @reloj.sonar?('04:05')
    expect(sonando).to be true
  end

end