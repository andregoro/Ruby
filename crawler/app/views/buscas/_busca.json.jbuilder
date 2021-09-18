json.extract! busca, :id, :titulo, :conteudo, :imagem, :link_origem, :created_at, :updated_at
json.url busca_url(busca, format: :json)
