while true; do
    # Opções da calculadora
    echo -e "\nCalculadora!"
    echo -e "\nSelecione a operação:"
    echo "1. Adição"
    echo "2. Subtração"
    echo "3. Multiplicação"
    echo "4. Divisão"
    echo "5. Sair"

    # Entrada de escolha do usuário
    read -p "Digite sua escolha (1/2/3/4/5): " choice

    # Para finalizar a calculadora
    if [ "$choice" -eq 5 ]; then
        echo "Encerrando a calculadora. Até mais!"
        break
    fi

    # Entrada dos números
    read -p "Adicione um número: " num1
    read -p "Adicione outro número: " num2

    case $choice in
        1)
            result=$(echo "$num1 + $num2" | bc)
            echo "$num1 + $num2 = $result"
            ;;
        2)
            result=$(echo "$num1 - $num2" | bc)
            echo "$num1 - $num2 = $result"
            ;;
        3)
            result=$(echo "$num1 * $num2" | bc)
            echo "$num1 * $num2 = $result"
            ;;
        4)
            if [ "$num2" -eq 0 ]; then
                echo "Erro! Denominador é zero."
            else
                result=$(echo "scale=2; $num1 / $num2" | bc)
                echo "$num1 / $num2 = $result"
            fi
            ;;
        *)
            echo "Escolha inválida! Tente novamente."
            ;;
    esac
done
