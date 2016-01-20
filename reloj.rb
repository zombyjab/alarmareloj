require 'date'

class Reloj
  # 04:05 PM
  def definir!(hora)
      @alarma= DateTime.strptime(hora, '%I:%M %p')
  end

  def definida
    @alarma
  end

  def prender!
    @prendida= true
  end

  def apagar!
    @prendida= false
  end

  def prendida?
    @prendida
  end
  # 04:05:06 PM

  def sonar?(hora)
    ahora = DateTime.strptime(hora, '%I:%M:%S %p')
    return prendida? && @alarma.hour == ahora.hour && @alarma.min == ahora.min
  end
end
