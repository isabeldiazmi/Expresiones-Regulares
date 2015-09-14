def existeCuenta(str)
  regex = /\d{4}-\d{3}-\d{3}/
  if str.match(regex)
    true
  else
    false
  end
end

def regresaCuenta(str)
  regex = /\d{4}-\d{3}-\d{3}/
  if str.match(regex)
    str.slice(regex)
  else
    nil
  end
end

def regresaNumeros(str)
  a = []
  if regresaCuenta(str)
    arr = str.split("-")
    arr.each{|x| a << x.to_i}
    a
  else
    a
  end
end

cuenta = "1234-123-123"
#p existeCuenta(cuenta)
#p regresaCuenta("mi cuenta es: 1234-123-123")
p regresaNumeros(cuenta)