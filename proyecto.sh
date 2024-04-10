#!/bin/bash

#iniciallizar las variables globales
Enero=0
Febrero=0
Marzo=0
Abril=0
Mayo=0
Junio=0
Julio=0
Agosto=0
Septiembre=0
Octubre=0
Noviembre=0
Diciembre=0

# Definir función para imprimir las ventas por mes
imprimir_ventas_mes() 
{

echo "El total de ingresos para el mes de Enero son: $Enero"
echo "El total de ingresos para el mes de Febrero son: $Febrero"
echo "El total de ingresos para el mes de Marzo son: $Marzo"
echo "El total de ingresos para el mes de Abril son: $Abril"
echo "El total de ingresos para el mes de Mayo son: $Mayo"
echo "El total de ingresos para el mes de Junio son: $Junio"
echo "El total de ingresos para el mes de Julio son: $Julio"
echo "El total de ingresos para el mes de Agosto son: $Agosto"
echo "El total de ingresos para el mes de Septiembre son: $Septiembre"
echo "El total de ingresos para el mes de Octubre son: $Octubre"
echo "El total de ingresos para el mes de Noviembre son: $Noviembre"
echo "El total de ingresos para el mes de Diciembre son: $Diciembre"

}



# Leer el archivo CSV y procesar los datos
while IFS=";" read -r Brand Model Description year month chasis vin transmission cilindraje traccion combustion departamento municipio precio cliente categoria
do

        # Calcular el ingreso total por mes
        if [ "$month" = "Enero" ]; then
            Enero=$(awk "BEGIN { print $precio + $Enero }")
        fi

        if [ "$month" = "Febrero" ]; then
            Febrero=$(awk "BEGIN { print $precio + $Febrero }")
        fi

        if [ "$month" = "Marzo" ]; then
            Marzo=$(awk "BEGIN { print $precio + $Marzo }")
        fi

        if [ "$month" = "Abril" ]; then
            Abril=$(awk "BEGIN { print $precio + $Abril }")
        fi

        if [ "$month" = "Mayo" ]; then
            Mayo=$(awk "BEGIN { print $precio + $Mayo }")
        fi

        if [ "$month" = "Junio" ]; then
            Junio=$(awk "BEGIN { print $precio + $Junio }")
        fi

        if [ "$month" = "Julio" ]; then
            Julio=$(awk "BEGIN { print $precio + $Julio }")
        fi

        if [ "$month" = "Agosto" ]; then
            Agosto=$(awk "BEGIN { print $precio + $Agosto }")
        fi

        if [ "$month" = "Septiembre" ]; then
            Septiembre=$(awk "BEGIN { print $precio + $Septiembre }")
        fi

        if [ "$month" = "Octubre" ]; then
            Octubre=$(awk "BEGIN { print $precio + $Octubre }")
        fi

        if [ "$month" = "Noviembre" ]; then
            Noviembre=$(awk "BEGIN { print $precio + $Noviembre }")
        fi

        if [ "$month" = "Diciembre" ]; then
            Diciembre=$(awk "BEGIN { print $precio + $Diciembre }")
        fi
        # fin del calculo de ingreso por mes        



done < ventas.csv


imprimir_ventas_mes

