require 'date'

class Reloj
   def initialize
      @prendida= false
  end
  def definir!(hora)
      @alarma= DateTime.strptime(hora, '%I:%M %p')
  end

  def alarma
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

  def sonar?(hora)
    ahora = DateTime.strptime(hora, '%I:%M:%S %p')
    return prendida? && @alarma.hour == ahora.hour && @alarma.min == ahora.min
  end
end
