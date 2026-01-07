## Primeiro passo

configuração do coonfig, provavelmente a configuração do seu ssh do github esta configurado em .*config* nas pata por padrão localizada em: *C:\Users\user\.ssh* com isso é so acessar, saber qual o nome do host e fazer as devidas configurações

update: o comando do personal-update faz um simples git push, logo você so precisa fazer as configurações basica do ssh no seu computador e fazer um git remote-set url para o repositorio que for usar.

comandos para usar quando tiver multiplas contas no ssh:

Para a conta principal:  
git@github.com:orchesall/orchestall_vault_obsidian.git

Para a conta defesas:

git@github-defesas:orchesall/orchestall_vault_obsidian.git

Para a conta orchest all:  
git@github-orchesall:orchesall/orchestall_vault_obsidian.git

para clonar:

git clone git@[Host]:[account]/[repository].git

exemplo do arquivo .config:

(usar # nos titulo faz com que seja comentario)
## Conta principal
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519

## Conta principal
Host rip4568
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519

## Conta defesas
Host github-defesas
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_conta_defesas
