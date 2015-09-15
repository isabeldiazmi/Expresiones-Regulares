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

def regresaX(str)
  arr = regresaNumeros(str)
  "XXXX-XXX-#{arr[2]}"
end

def formateaCuenta(str)
  if /\d{4}\S\d{3}\S\d{3}/ === str
    str.gsub(/(\d{4})\S(\d{3})\S(\d{3})/, '\1-\2-\3')
  elsif /\d{10}/ === str
    str.gsub(/(\d{4})(\d{3})(\d{3})/, '\1-\2-\3')
  else
    nil
  end   
end

#cuenta = "1234-123-123"
#p existeCuenta(cuenta)
#p regresaCuenta("mi cuenta es: 1234-123-123")
#p regresaNumeros(cuenta)
#p regresaX(cuenta)
puts formateaCuenta("1234.123.123")
puts formateaCuenta("1234123123")