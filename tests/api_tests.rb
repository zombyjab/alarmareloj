require 'airborne'

describe 'reloj api' do
  it 'retorna si debe sonar o no la alarma' do
    get 'https://relojdespertador.herokuapp.com/api/alarma/sonar?hora-alarma=07:20&hora-actual=07:19'
    expect_json(sonar: true)
  end
end
