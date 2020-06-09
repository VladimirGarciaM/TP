class RegistroController < ApplicationController

  def cliente
  end

  def jefe
  end

  def estacionamientos
  end

  def publicidad
  end

  def servicios
  end

  def alquileres
  end
  def alquileres_post
    #Usar metodo try para ejecutar solo si no es nulo
      #el o es para dar valor por defecto

      @start_date = params[:start].try(:to_date) || Date.current
      @end_date = params[:end].try(:to_date) || Date.current

      @resultado = "  "

      if @start_date > @end_date
          @resultado = "RANGO DE FECHAS INVÁLIDO"
      end

        Rails.logger.debug("--------------> " + @resultado)
        render 'alquileres'
  end
  def estacionamiento_post
    @nombre = params[:nombre]

    Rails.logger.debug("--------------->" + @nombre)

    render "registrado"
  end
end
