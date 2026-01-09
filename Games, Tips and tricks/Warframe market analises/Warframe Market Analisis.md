
Como o sistema funciona ?
1. **Prioridade por Volume:** O sistema calcula o volume de trocas dos últimos 7 dias para cada item.
2. **Fila de Atualização:**
    - Itens **Vaulted** furam a fila (sempre topo).
    - Em seguida, itens com **MAIOR VOLUME** (os mais populares no mercado).
    - Itens com **Volume Zero** ou erro vão para o final da fila.
3. **Maior Cobertura:** Limite de **300 itens** por rodada (aprox. 5 minutos).
4. **Critério de Tempo:** Só atualiza se o item não tiver sido checado nas últimas **12 horas**.

Assim, garantimos que os itens que "movem o mercado" estejam sempre com o preço fresco, enquanto os itens "mortos" são verificados com muito menos frequência. Teste rodando

### Comandos do sistema internos

Assim que criar seu ambiente virtual (recomanedado, usando `py -m venv venv`) e instalar as bibliotecas (usando `pip install -r requirements`)  você ira se deprar com o seguinte mini-sistema no terminal de comandos:
``` js
=== Warframe Market Data Collection CLI ===
✓ Database contains 3745 items.

Options:
1. Priority Update (Recommended - Fast update of Top Items)
2. Full Scrape (Slow - Update everything)
3. Export Backup (Save to backup.json)
4. Import Backup (Restore from backup.json)
5. Exit

Select option:
```

inicialmente vai aparecer somente a 2 e 5 de opção caso o banco de dados esteja vazio. Caso ja tenha rodado a opção de full scrape anteriormente e rode novamente o comando collect_data essa mesam opção vai aparecer. recomendo Rodar a Priority Update para atualizar somente os itens mais importantes que possuem dados previamente analisados e com dados para ser gerados em predict pelo xgboost. Recomendo rodar o full scrape 1 vez acada mes para garantir que não há novos itens que "magicamente" começaram a ser negociados antes os que não eram.

### Helpers
No arquivo `run_celery.ps1` feito exclusivamente para rodar em windows, ao executar você ira se deparar com um mini sistema no terminal. Com ele você ira poder configurar de maneira mais facil o scheduler e worker para rodar em background.

Se quiser forçar a coleta ignorando a verificiação das 12h: py manage collect_data --force

### Historico de funções
Nas suas primeiras versões desses sistema tive que fazer esse comando para que ele pudesse fazer a linkagem correta dos sets para cada parte do seu set, esse comando caiu em desuso. Porem recomendo fortemente que deixe ai para futuras e envetuais usos e consultas do tempo historico do sistema.
`python manage.py collect_data --sets` // faz linkagem dos sets


Caso você queire rodar os schedulers e worker manualmente por conta da diferença doss sistemas operacionais e não conseguir rodar o arquivo ps1:
 **Terminal 1 (O Executor - Pense nele como o 'Operário'):**

``celery -A warframe_predictor worker --pool=solo --loglevel=info``

_(A flag `--pool=solo` é essencial no Windows para evitar que o worker trave)._

**Terminal 2 (O Agendador - Pense nele como o 'Chefe' que manda as tarefas):**

`celery -A warframe_predictor beat --loglevel=info`

Deixe ambos rodando. O Terminal 2 vai mandar a ordem de atualização a cada 6h (conforme configuramos), e o Terminal 1 vai executá-la. 🏭

Podemos começar a planejar o **Flash Flip Radar** enquanto eles rodam? ⚡