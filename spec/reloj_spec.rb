# encoding: utf-8

require './reloj'

describe Reloj do
  before(:each) do
    @reloj= Reloj.new
    @reloj.definir!('04:05 PM')
  end

  it 'suena la alarma si está ' do
    @reloj.prender!

    sono = @reloj.sonar?('04:05:06 PM')
    expect(sono).to be true
  end

end
