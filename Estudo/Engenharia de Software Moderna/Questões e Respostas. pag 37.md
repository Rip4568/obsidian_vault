Essas questões você pode encontrara na pagina 37 e 38
1. Segundo Frederick Brooks, desenvolvimento de software enfrenta dificuldades essenciais (para as quais não há bala de prata) e acidentais (para as quais existe uma solução melhor). Dê um exemplo de dificuldade acidental que já tenha experimentado ao desenvolver programas, mesmo que pequenos. Sugestão: elas podem estar relacionadas a ferramentas que tenha usado, como compiladores, IDEs, bancos de dados, sistemas operacionais, etc.
Resposta: 
- Uma das dificuldades que eu já passei em relação a dificuldades acidentais (cujo os problemas tendem na tentativa de resolver os problemas colocando bibliotecas ou ferramentas melhores) foi na utilização de pnpm como meu gerenciador de pacotes. Enquanto todo o time usava npm tinha a certeza que não iria influenciar em nada (ou quase nada) até me deparar com um versionamento de versões diferente que o pnpm usa em relação ao npm. Desde então cuidados meus foram tomados

 2. Diferencie requisitos funcionais de requisitos não funcionais.
Resposta:
-  Requisitos funcionais são aqueles que consideram importantes na entrega do software, como garantia de funcionamento, condizente com a logica e regra de negocio estabelecida, software em funcionamento para uso e teste. Já os requisitos não funcionais são aqueles que não se consideram prioritários no desenvolvimento e entrega do softwares, são eles: sistema escalável para comportar milhões de acessos/usuários, segurança, velocidade, sistema operante 24/7... etc.

3. Explique por que testes podem ser considerados tanto uma atividade de verificação como de validação de software. Qual tipo de teste é mais adequado se o objetivo for verificação? Qual tipo de teste é mais adequado se o objetivo for validar um sistema de software?
Resposta:
 - Os testes podem ser consideradas tanto verificação de software quanto validação pois eles testam e validam coisas diferentes. 
   O tetes de verificação, verifica se o sistema esta sendo implementado e construído de acordo com os requisitos levantados pelo cliente, garantido que esteja condizente com suas especificações.
   O teste de validação, valida se o sistema esta de acordo com que o cliente(s) e o mercado (ou quaisquer que seja o nicho que esteja atendendo) esteja querendo/solicitando.
   O teste Mais adequado para validar um software seria fazendo uma demonstração ao vivo para o cliente.

4. Por que testes não conseguem provar a ausência de bugs?
 Resposta: 
-  pois alguns tetes validam somente a sintaxe do programa, a logica interna como a semântica ainda esta aval do programador que estiver .

4. Suponha um programa que tenha uma única entrada: um inteiro de 64 bits. Em um teste exaustivo, temos que testar esse programa com todos os possíveis inteiros (logo, 264). Se cada teste levar 1 nanossegundo ($10^{-9}$ segundos), quanto tempo levará esse teste exaustivo.
Resposta:

1 bit = 2 números (1 e 0)
2 bit = 4 números
3 bits = 8 números
4 bits = 16 números
logo, a razão esta sendo  2^bit, em um programa que aceita 64 bits, poderá aceitar uma entrada de: $2^{64}$ , logo: $2^{64} = 18.446.744.073.709.551.616$ números. se cada teste/ numero levar 1 nanosegundo, teremos 18.446.744.073 segundos.
Convertendo para horas: ${18.446.744.073}/{60x60}$ = 3600 horas
Convetendo para anos: 18446744073   ÷   ( 60   ×   60   ×   24   ×   365 ) = 584,94
