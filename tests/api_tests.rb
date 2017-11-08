require 'airborne'

describe 'reloj api' do
  it 'retorna si debe sonar o no la alarma' do
    get 'http://localhost:9292/api/alarma/sonar?hora-alarma=07:20&hora-actual=07:19'
    expect_json(sonar: false)
  end
end