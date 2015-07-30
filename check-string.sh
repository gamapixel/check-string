#!/bin/bash

#para instalar o lynx usar o seguinte comando: apt-get install lynx -y
lynx http://sisfiesaluno.mec.gov.br/selecao-cursos -source | grep 'preventiva' > /home/{SUA PASTA}/check-string.txt

#Para quem não quer instalar o lynx pode usar o curl do linux que já vem instalado por padrão.
#Tem duas opções para você usar, caso não queira uma delas e só comentar a linha, usar as 2 pode causar bug.
curl http://sisfiesaluno.mec.gov.br/selecao-cursos | grep 'preventiva' > /home/{SUA PASTA}/check-string.txt
      
if [$(cat /home/{SUA PASTA}/check-string.txt) == '']
then

  #Ação caso a sting que você procura seja falsa!
  echo STRING ERRO

else

  #Ação caso a sting que você procura seja Verdadeira!
  echo STRING OK
  
fi
