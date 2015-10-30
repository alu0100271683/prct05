class Fraccion
	
    attr_accessor :num, :den 
	
   # Funcion initialize 
    def initialize(numerador, denominador)
        @num = numerador
        @den = denominador
    end
    
    def to_s
        return "#{@num}/#{@den}"
    end
    
	def +(dato)
	    if (dato.class == Fraccion)
	        n = dato.num * @den + dato.den * @num
	        d = @den * dato.den
	        Fraccion.new(n,d)
	    else
	        n = (dato * @den) + @num
	        d = @den
	        Fraccion.new(n,d)
	    end
	end
	

	def -(dato)
	     if(dato.class == Fraccion)
	        n = dato.den * @num - dato.num * @den
	        d = @den * dato.den
	        Fraccion.new(n,d)
	     else
	        n = (dato * @den) - @num
	        d = @den
	        Fraccion.new(n,d)
	     end
	end

	def *(dato)
	    if (dato.class == Fraccion)
	        n = dato.num * @num
	        d = dato.den * @den
	        Fraccion.new(n,d)
	    else
	        n = dato * @num
	        d = @den
	        Fraccion.new(n,d)
	    end
	end

    def /(fraccion)
	    n = fraccion.den * @num
	    d = fraccion.num * @den
	    Fraccion.new(n,d)
    end
end