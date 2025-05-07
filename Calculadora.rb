# Requiere la librería 'date' para manejar fechas y calendario
require 'date'

# Función para mostrar el menú de la calculadora
def show_calculator_menu
  puts "\n--- Calculadora ---"
  puts "1. Sumar"
  puts "2. Restar"
  puts "3. Multiplicar"
  puts "4. Dividir"
  puts "5. Salir"
  print "Selecciona una opción: "
end

# Función para hacer cálculos
def calculator
  loop do
    show_calculator_menu
    choice = gets.chomp.to_i

    case choice
    when 1
      print "Ingresa el primer número: "
      num1 = gets.chomp.to_f
      print "Ingresa el segundo número: "
      num2 = gets.chomp.to_f
      puts "Resultado: #{num1 + num2}"

    when 2
      print "Ingresa el primer número: "
      num1 = gets.chomp.to_f
      print "Ingresa el segundo número: "
      num2 = gets.chomp.to_f
      puts "Resultado: #{num1 - num2}"

    when 3
      print "Ingresa el primer número: "
      num1 = gets.chomp.to_f
      print "Ingresa el segundo número: "
      num2 = gets.chomp.to_f
      puts "Resultado: #{num1 * num2}"

    when 4
      print "Ingresa el primer número: "
      num1 = gets.chomp.to_f
      print "Ingresa el segundo número: "
      num2 = gets.chomp.to_f
      if num2 == 0
        puts "Error: No se puede dividir entre cero."
      else
        puts "Resultado: #{num1 / num2}"
      end

    when 5
      puts "Saliendo de la calculadora."
      break

    else
      puts "Opción no válida. Intenta nuevamente."
    end
  end
end

# Función para mostrar el calendario del mes actual
def show_calendar
  today = Date.today
  puts "\n--- Calendario ---"
  puts today.strftime("%B %Y")
  puts "Suponiendo que cada mes tiene solo 30 días, verás algo como esto..."
  puts "Día 1 | Día 2 | Día 3 | Día 4 | Día 5 | Día 6 | Día 7"
  puts "Día 8 | Día 9 | Día 10 | Día 11 | Día 12 | Día 13 | Día 14"
  puts "Día 15 | Día 16 | Día 17 | Día 18 | Día 19 | Día 20 | Día 21"
  puts "Día 22 | Día 23 | Día 24 | Día 25 | Día 26 | Día 27 | Día 28"
  puts "Día 29 | Día 30"
end

# Función principal que ejecuta la calculadora y calendario
def main
  loop do
    puts "\nSeleccione una opción:"
    puts "1. Calculadora"
    puts "2. Ver calendario"
    puts "3. Salir"
    print "Opción: "
    choice = gets.chomp.to_i

    case choice
    when 1
      calculator
    when 2
      show_calendar
    when 3
      puts "Saliendo del programa."
      break
    else
      puts "Opción no válida. Intenta nuevamente."
    end
  end
end

# Ejecutamos la función principal
main
