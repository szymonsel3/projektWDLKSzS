#!/usr/bin/env bash
if [[ $# -ne 1 || ! -d "$1" ]]; then echo "Usage: $0 <directory>"; exit 1; fi
DIR="$1"
declare -A checksum_map
while IFS= read -r -d '' file; do
    checksum=$(sha256sum "$file" | cut -d ' ' -f1)
    if [[ -n "${checksum_map[$checksum]+x}" ]]; then
        #Rozdzielanie listy na tablicę
        checksum_map[$checksum]+=$'\n'"$file"
    else
        checksum_map[$checksum]="$file"
    fi
done < <(find "$DIR" -type f -print0)

#Raportowanie duplikatów
for sum in "${!checksum_map[@]}"; do
    IFS=$'\n' read -rd '' -a files <<< "${checksum_map[$sum]}"
    if [[ ${#files[@]} -gt 1 ]]; then
        echo "Duplikaty dla sumy kontrolnej $sum:"
        echo "  ${files[0]} (oryginał)"
        for ((i=1; i<${#files[@]}; i++)); do
            echo "  ${files[i]}"
            read -p "Czy usunąć plik? [t/N] " odpowiedz
            if [[ "$odpowiedz" == "t" || "$odpowiedz" == "T" ]]; then
                rm -v "${files[i]}"
            fi
        done
        echo
    fi
done
