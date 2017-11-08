require 'date'

class Reloj
  def initialize
      @prendida= false
  end
  def definir_alarma(hora)
      @alarma = DateTime.strptime(hora, '%H:%M')
  end

  def prender
    @prendida = true
  end

  def apagar
    @prendida = false
  end

  def sonar?(hora)
    ahora = DateTime.strptime(hora, '%H:%M')
    return @prendida && @alarma.hour == ahora.hour && @alarma.min == ahora.min
  end
end
