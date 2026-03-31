test-local:
  bluebuild rebase --tempdir /var/tmp recipes/recipe.yml

build recipe="recipe":
  bluebuild build --tempdir /var/tmp recipes/{{recipe}}.yml

generate-iso:
  sudo bluebuild generate-iso --iso-name cairos-latest.iso image ghcr.io/cappsyco/cairos:latest

generate-local-iso:
  sudo bluebuild generate-iso --tempdir /var/tmp --iso-name cairos-latest.iso recipe recipes/recipe.yml

