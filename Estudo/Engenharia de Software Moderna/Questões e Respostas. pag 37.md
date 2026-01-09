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

5. Suponha um programa que tenha uma única entrada: um inteiro de 64 bits. Em um teste exaustivo, temos que testar esse programa com todos os possíveis inteiros (logo, 264). Se cada teste levar 1 nanossegundo ($10^{-9}$ segundos), quanto tempo levará esse teste exaustivo.
Resposta:

1 bit = 2 números (1 e 0)
2 bit = 4 números
3 bits = 8 números
4 bits = 16 números
logo, a razão esta sendo  2^bit, em um programa que aceita 64 bits, poderá aceitar uma entrada de: $2^{64}$ , logo: $2^{64} = 18.446.744.073.709.551.616$ números. se cada teste/ numero levar 1 nanosegundo, teremos 18.446.744.073 segundos.
Convertendo para horas: ${18.446.744.073}/{60x60}$ = 3600 horas
Convetendo para anos: 18446744073   ÷   ( 60   ×   60   ×   24   ×   365 ) = 584,94


6. Se considerarmos o contexto histórico, por que foi natural que os primeiros processos de desenvolvimento de software tivessem características sequenciais e fossem baseados em planejamento e documentação detalhados?
Resposta:
- Inicialmente o planejamento das arquiteturas de softwares não tinha uma padrão de desenvolvimento estabelecido, logo os desenvolvedores/engenheiros se apropriam da engenharia mecânica e estrutural (edifícios e casas) para a engenharia de software, tornando conhecidas como processo waterfall (cascata). Dando ênfase em em planejamento e documentações.

7. Alguns estudos mostram que os custos com manutenção e evolução podem alcançar 80% ou mais dos custos totais alocados a um sistema de software, durante todo o seu ciclo de vida. Explique por que esse valor é tão alto.
Resposta
- Um dos maiores motivos para o custo de manutenção e evolução ser tão custoso são os sistemas legados. Sistema antigos com linguagens maioria das vezes obsoleta e com pouco adoção do mercado, tornando difícil encontrar mão de obra. muita das vezes com situações criticas, operando em sistemas com alto valor agregado, seja ele banco ou controle de aéreo. (obtive essa resposta na pagina 19)

8. Refactoring é uma transformação de código que preserva comportamento. Qual o significado da expressão preservar comportamento? Na prática, qual restrição ela impõe a uma operação de refactoring?
Resposta:
- O significado da expressão preservar comportamento significa que haverá uma melhoria significativa de código, tornando mais legível, organizado ou ate mesmo mais performático, sem modificar a logica interna e o resultado esperado do método proposto. A única restrição que ela impõe será da modificação da logica interna do código, o refactoring deve cuidar exclusivamente da melhoria significativa do código como um todo porem limitando-se a alteração do principio do código.

9. Dê exemplos de sistemas A (Acute, ou críticos) e B (Business, ou comerciais) com os quais já tenha interagido.
Resposta:
- aa

10. Dê exemplos de sistemas C (casuais) que você já tenha desenvolvido.
Resposta:
- bb

10. Em 2015, descobriu-se que mais de 11 milhões de carros da Volkswagen emitiam poluentes dentro das normas legais apenas quando eles estavam sendo testados em um laboratório de certificação. Fora do laboratório, os carros emitiam mais poluentes, para melhorar o desempenho. Ou seja, o código incluía uma estrutura de decisão como a seguinte (meramente ilustrativa, para fins deste exercício):

```js
if "Carro sendo testado em um laboratório"

"Emita poluentes dentro das normas"

else

"Emita poluentes fora das normas"
```

O que você faria se seu chefe pedisse para escrever um `if` como o acima?
Para mais informações do real caso que aconteceu acesse o link: ([Wikipedia](https://en.wikipedia.org/wiki/Volkswagen_emissions_scandal)).
Resposta:
- Falarai que isso não é uma atitude etica e poderia comprometer a empresa. Alegaria que uma hora ou outro as milhões de pessoas que estão a fora do mundo com suas mais diferentes habilidades de crackear e invadir codigos, poderia causar a exposição do codigo em algum momento por mais que adotamos as melhores praticas. Com isso, poderia casuar enormes prejuizos de multas e processos de legalidades fiscais, e tenho certeza que a ultima coisa que a empresa volkswagem iria querer seria manchar o nome da empresa por falsear informações de emissões de gases.

