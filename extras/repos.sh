for repo in \
"git@github.com:paulovictor237/BDD.git" \
"git@github.com:paulovictor237/ponto-mais.git" \
"git@github.com:paulovictor237/linux-scripts.git" \
"git@github.com:paulovictor237/rename-components.git" \
"git@github.com:px-center/px-api-docs.git" \
"git@github.com:px-center/px-academy-core.git" \
"git@github.com:px-center/px-academy-web.git" \
"git@github.com:px-center/px-painel.git" \
"git@github.com:px-center/px-torre-core.git" \
"git@github.com:px-center/px-mobile-motorista.git" \
"git@github.com:px-center/px-design-system.git"
do
  git clone "$repo"
done
