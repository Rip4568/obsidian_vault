
Como o sistema funciona ?
1. **Prioridade por Volume:** O sistema calcula o volume de trocas dos últimos 7 dias para cada item.
2. **Fila de Atualização:**
    - Itens **Vaulted** furam a fila (sempre topo).
    - Em seguida, itens com **MAIOR VOLUME** (os mais populares no mercado).
    - Itens com **Volume Zero** ou erro vão para o final da fila.
3. **Maior Cobertura:** Limite de **300 itens** por rodada (aprox. 5 minutos).
4. **Critério de Tempo:** Só atualiza se o item não tiver sido checado nas últimas **12 horas**.

Assim, garantimos que os itens que "movem o mercado" estejam sempre com o preço fresco, enquanto os itens "mortos" são verificados com muito menos frequência. Teste rodando

para coletar todos os dados: py manage collect_data --full

apos 12h rodar novamente para garantir dados atualizados com frequencia:py manage collect_data

se quiser forçar a coleta ignorando a verificiação das 12h: py manage collect_data --force

Rodar esse comando apos rodar o --full, assim pega e atualiza somente os itens que tiverem algum dado estatisco usando o seu banco de dados para saber quais itens tem a informação
python manage.py collect_data --tracked-only

para coletar os itens de prioridade  somente:
python manage.py collect_data --priority

aumentado +2 requisições por segundo