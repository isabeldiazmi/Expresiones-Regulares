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
    puts str.slice(regex)
  else
    nil
  end
end

cuenta = "1234-123-123"
#p existeCuenta(cuenta)
regresaCuenta("mi cuenta es: 1234-123-123")