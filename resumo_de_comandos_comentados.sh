#!/bin/bash

# Esta é uma função matemática com 2 argumentos
somar(){
soma=$(($1+$2))
return $soma
}

echo "Este script simples soma 2 números"
echo
read -p "Digite o primeiro número: " int1
read -p "Digite o segundo número: " int2
somar $int1 $int2
echo ">> A soma é: " $?

# Para executar este script digite em um terminal Linux digite na pasta onde o arquivo foi salvo:
# sudo ./soma_de_2_numeros_digitados.sh

echo

# Pegadinha do comando pwd ("parece" abreviatura de "password",
# mas PWD significa "Print Work Directory", ou seja, 
# esse comando nos mostra o caminho da pasta onde estamos trabalhando

echo "Este é o caminho deste diretório: "
pwd

echo

# O comando uptime exibe a hora atual, o tempo decorrido desde que o computador # foi ligado, o número de usuários logados e uma média do número de processos
# carregados nos últimos 1, 5 e 15 minutos;

uptime

echo

# Variáveis como atalho para comandos

system_info=`df -h` # Outra sintaxe possível: system_info=$(df -h)
echo “$system_info”

echo

lista_diretorios=`ls -l`
echo "$lista_diretorios"

echo

# Comandos condicionais

echo “Digite um número qualquer:”
read numero;
if [[ $numero -gt 10 ]]
# -gt significa greater than
then
  echo "O número digitado é maior que 10."
elif [[ $numero -eq 10 ]]
# -eq significa equal
then
  echo "O número digitado foi 10."
else
  echo "O número digitado é menor que 10"
fi

# Parâmetros mais comuns nos testes IF

# n string1: o comprimento de string1 é diferente de 0;

# z string1: o comprimento de string1 é zero;

# string1 = string2: string1 e string2 são idênticas;
# string1 != string2: string1 e string2 são diferentes (not equal);

# inteiro1 -eq inteiro2: inteiro1 possui o mesmo valor (-eq = equal) que inteiro2;
# inteiro1 -ne inteiro2: inteiro1 não possui o mesmo valor (-ne = not equal) que inteiro2;
# inteiro1 -gt inteiro2: inteiro1 é maior que (-gt = greater than) inteiro2;
# inteiro1 -ge inteiro2: inteiro1 é maior ou igual (-ge = greater or equal) a inteiro2;
# inteiro1 -lt inteiro2: inteiro1 é menor que (-lt = less than) inteiro2;
# inteiro1 -le inteiro2: inteiro1 é menor ou igual (-le = less or equal) a inteiro2;

# e nome_do_arquivo: verifica se nome_do_arquivo existe;
# d nome_do_arquivo: verifica se nome_do_arquivo é um diretório;
# f nome_do_arquivo: verifica se nome_do_arquivo é um arquivo regular (texto, # # imagem, programa, docs, planilhas).


