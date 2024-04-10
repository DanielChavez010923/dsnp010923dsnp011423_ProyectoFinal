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


# top 10 de productos mas vendido





# Definir función para imprimir las ventas por mes
imprimir_ventas_mes() 
{

echo -e "El total de ingresos para el mes de Enero son: $Enero"
echo -e "El total de ingresos para el mes de Febrero son: $Febrero"
echo -e "El total de ingresos para el mes de Marzo son: $Marzo"
echo -e "El total de ingresos para el mes de Abril son: $Abril"
echo -e "El total de ingresos para el mes de Mayo son: $Mayo"
echo -e "El total de ingresos para el mes de Junio son: $Junio"
echo -e "El total de ingresos para el mes de Julio son: $Julio"
echo -e "El total de ingresos para el mes de Agosto son: $Agosto"
echo -e "El total de ingresos para el mes de Septiembre son: $Septiembre"
echo -e "El total de ingresos para el mes de Octubre son: $Octubre"
echo -e "El total de ingresos para el mes de Noviembre son: $Noviembre"
echo -e "El total de ingresos para el mes de Diciembre son: $Diciembre"

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



imprimir_ventas_mes > Reporte_ventas_mensual.txt


grep -c "FIAT 500X SPORT CROSS 1.3 150CV DCT" ventas.csv > top10.txt

auto1=$(grep -c "FIAT 500X SPORT CROSS 1.3 150CV DCT" ventas.csv)
auto2=$(grep -c "Alfa Romeo Giulietta 1.6 Multijet 120CV" ventas.csv)
auto3=$(grep -c "Audi A4 Allroad Quattro 40 TDI Quattro-Ultra S Tronic" ventas.csv)
auto4=$(grep -c "Audi Q5 Sportback 45 TFSI Quattro-Ultra" ventas.csv)
auto5=$(grep -c "Aston Martin DBX V8 550CV" ventas.csv)
auto6=$(grep -c "BMW IX3 Inspiring" ventas.csv)
auto7=$(grep -c "BMW I3 I3" ventas.csv)
auto8=$(grep -c "Chevrolet Corvette Stingray 2019 6.2L V8 VVT" ventas.csv)
auto9=$(grep -c "Chevrolet Aveo S 1.2L" ventas.csv)
auto10=$(grep -c "Ford EcoSport 1.0 EcoBoost 140CV" ventas.csv)
auto11=$(grep -c "Ford Fiesta 1.2 Eco 100CV" ventas.csv)
auto12=$(grep -c "Ford Focus 1.0T EcoBoost 125 CV Aut. 6" ventas.csv)
auto13=$(grep -c "Honda Civic Type R 329 CV" ventas.csv)
auto14=$(grep -c "Honda E:HEV 1.5 I-MMD" ventas.csv)
auto15=$(grep -c "Hyundai I20 2020 1.0 T-GDi 100 CV" ventas.csv)
auto16=$(grep -c "Hyundai Tucson 1.6 CRDi 48V 136 CV" ventas.csv)
auto17=$(grep -c "KIA Sportage 1.6 PHEV 265 CV 4X4 Auto." ventas.csv)
auto18=$(grep -c "KIA Rio 1.0 T-GDi MHEV 120 CV" ventas.csv)
#el numero 19 es el toyota corolla
auto19=$(grep -c "Toyota Sedan 140H" ventas.csv)
auto20=$(grep -c "Toyota RAV4 220h 4x4" ventas.csv)

echo "El numero de FIAT 500X es: $auto1"    
echo "El numero de Alfa Romeo Giulietta es: $auto2"
echo "El numero de Audi A4 es: $auto3"
echo "El numero de Audi Q5 es: $auto4"
echo "El numero de BMW IX3 es: $auto5"
echo "El numero de BMW I3 es: $auto6"
echo "El numero de Chevrolet Corvette es: $auto7"
echo "El numero de Chevrolet Aveo es: $auto8"
echo "El numero de Ford EcoSport es: $auto9"
echo "El numero de Ford Fiesta es: $auto10"
echo "El numero de Ford Focus es: $auto11"
echo "El numero de Honda Civic es: $auto12"
echo "El numero de Honda E:HEV es: $auto13"
echo "El numero de Hyundai I20 es: $auto14"
echo "El numero de Hyundai Tucson es: $auto15"
echo "El numero de Kia Sportage es: $auto16"
echo "El numero de Kia Rio es: $auto17"
echo "El numero de Toyota Sedan es: $auto18"
echo "El numero de Toyota Corolla es: $auto19"
echo "El numero de toyota RAV4 es: $auto20"


# Crear un array con los nombres de los vehículos
nombres_autos=("FIAT 500X SPORT CROSS 1.3 150CV DCT" "Alfa Romeo Giulietta 1.6 Multijet 120CV" "Audi A4 Allroad Quattro 40 TDI Quattro-Ultra S Tronic" "Audi Q5 Sportback 45 TFSI Quattro-Ultra" "Aston Martin DBX V8 550CV" "BMW IX3 Inspiring" "BMW I3 I3" "Chevrolet Corvette Stingray 2019 6.2L V8 VVT" "Chevrolet Aveo S 1.2L" "Ford EcoSport 1.0 EcoBoost 140CV" "Ford Fiesta 1.2 Eco 100CV" "Ford Focus 1.0T EcoBoost 125 CV Aut. 6" "Honda Civic Type R 329 CV" "Honda E:HEV 1.5 I-MMD" "Hyundai I20 2020 1.0 T-GDi 100 CV" "Hyundai Tucson 1.6 CRDi 48V 136 CV" "KIA Sportage 1.6 PHEV 265 CV 4X4 Auto." "KIA Rio 1.0 T-GDi MHEV 120 CV" "Toyota Corolla " "Toyota RAV4 220h 4x4")

# Crear un array con los conteos de ventas de cada vehículo
ventas_autos=( $auto1 $auto2 $auto3 $auto4 $auto5 $auto6 $auto7 $auto8 $auto9 $auto10 $auto11 $auto12 $auto13 $auto14 $auto15 $auto16 $auto17 $auto18 $auto19 $auto20 )

# Combinar los nombres de los vehículos con sus respectivos conteos de ventas en un solo array
combined=()
for i in "${!nombres_autos[@]}"; do
    combined+=( "${nombres_autos[$i]}:${ventas_autos[$i]}" )
done

# Ordenar el array combinado por los conteos de ventas de mayor a menor
IFS=$'\n' sorted_combined=($(sort -t: -k2nr <<<"${combined[*]}"))

# Imprimir solo el top 10 de vehículos vendidos (nombre y cantidad)
for ((i=0; i<10; i++))
do
    echo "Auto #$((i+1)): $(echo ${sorted_combined[i]} | cut -d':' -f1)"
done
