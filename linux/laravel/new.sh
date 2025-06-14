curl -s "https://laravel.build/meu-projeto?with=mysql,redis,mailpit" | bash
cd meu-projeto

# alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
echo "alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'" >> ~/.bashrc && source ~/.bashrc
echo "alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'" >> ~/.zshrc && source ~/.zshrc

sail up -d
sail artisan migrate
# http://localhost
# http://localhost:3000/nova

sail php -v
sail artisan --version

# limpar caches do laravel e do nova
sail artisan cache:clear
sail artisan config:clear
sail artisan route:clcurl -s "https://laravel.build/meu-projeto?with=mysql,redis,mailpit,meilisearch,selenium" | bash
ear
sail artisan view:clear
sail artisan nova:cache-clear

# alias para limpar todos os caches de uma vez
alias sail-clear='sail artisan cache:clear && sail artisan config:clear && sail artisan route:clear && sail artisan view:clear && sail artisan nova:cache-clear'

# criar model, migration e factory de uma vez
sail artisan make:model NomeDoModel -mf
sail artisan make:migration NomeDaMigration
sail artisan make:model NomeDoModel
sail artisan make:factory NomeDaFactory
sail artisan make:controller NomeDoController

# rodar os testes localmente
sail artisan test 
sail artisan test --filter=name # nome do método ou classe

### Laravel nova
sail artisan nova:user #### Usuário adm:
sail artisan data:sampleDatabase # gerador de dados locais


