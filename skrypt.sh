#!/bin/bash

if [[ $1 == "--date" ]]; then
    echo $(date)
elif [[ $1 == "--logs" ]]; then
    if [[ $2 =~ ^[0-9]+$ ]]; then
        for ((i=1; i<=$2; i++)); do
            filename="log${i}.txt"
            echo -e "Nazwa pliku: $filename\nNazwa skryptu: $0\nData: $(date)" > $filename
        done
        echo "Utworzono $2 plików log"
    else
        echo "Nieprawidłowy argument. Podaj liczbę plików do utworzenia."
    fi
elif [[ $1 == "--help" ]]; then
    echo "Dostępne opcje:"
    echo "--date - wyświetla dzisiejszą datę"
    echo "--logs [liczba] - tworzy podaną liczbę plików log z informacjami o nazwie pliku, nazwie skryptu i dacie"
    echo "--help - wyświetla wszystkie dostępne opcje"
else
    echo "Nieprawidłowa opcja. Użyj --help, aby zobaczyć dostępne opcje."
fi
