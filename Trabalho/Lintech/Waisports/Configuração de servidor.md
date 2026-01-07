o worker e schedule foi levantado pelo supervisor, alguns comanandos uteis:
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
saida do comando:
/etc/supervisord.d/wai-sports-worker.ini:[program:wai-sports-worker]
/etc/supervisord.d/wai-sports-worker.ini:stdout_logfile=/var/log/wai-sports-worker.log


## comando para reiniciar os workers

ao fazer altetração nos jobs é crucial fazer um restar para que o novo codigo seja aplicado, faça usando esse comando:

`supervisorctl restart wai-sports-worker:*`
lembrando que esse comando é especifico para o projeto waisports, deve se atentar em realção ao nome escrito em: wai-sports-worker


