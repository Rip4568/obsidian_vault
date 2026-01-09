o worker e schedule foi levantado pelo supervisor, alguns comandos uteis:
- **Ver status de todos os processos:**  
    `supervisorctl status`
- **Iniciar um processo:**  
    `supervisorctl start <nome_do_processo>`
- **Parar um processo:**  
    `supervisorctl stop <nome_do_processo>`
- **Reiniciar um processo:**  
    `supervisorctl restart <nome_do_processo>`
- **Parar/Iniciar todos os processos:**  
    `supervisorctl stop all` ou `supervisorctl start all`

### Caminhos que se encontram os logs e o arquivo de configuração

Comando para procurar os seguintes arquivos de configuração:
````bash
grep -r "wai-sports-worker" /etc
````
saída do comando:
/etc/supervisord.d/wai-sports-worker.ini:[program:wai-sports-worker]
/etc/supervisord.d/wai-sports-worker.ini:stdout_logfile=/var/log/wai-sports-worker.log

### Configuração de conexão com a vps:
HostName 69.6.222.101
Port 22022
User root

### Comando para reiniciar os workers

ao fazer alteração nos jobs é crucial fazer um restar para que o novo código seja aplicado, faça usando esse comando:

`supervisorctl restart wai-sports-worker:*`

### Postgres levantando e configurado dentro da própria vps.
usuário: postgres
senha: postgres
host: localhost
porta: 5432

Conta admin: [[waisports conta admin]]

Conexão com a vps: senha e host

