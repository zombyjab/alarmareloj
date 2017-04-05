require './reloj'

describe Reloj do
  before(:each) do
    @reloj= Reloj.new
  end

  it 'no suena la alarma si esta prendinda y no es hora definida' do
    @reloj.definir!('07:05 PM')
    @reloj.prender!
    sonando = @reloj.sonar?('07:04:00 PM')
    expect(sonando).to be false
  end

  it 'suena la alarma si esta prendinda y es hora definida' do
    @reloj.definir!('04:05 PM')
    @reloj.prender!
    sonando = @reloj.sonar?('04:05:00 PM')
    expect(sonando).to be true
  end

end