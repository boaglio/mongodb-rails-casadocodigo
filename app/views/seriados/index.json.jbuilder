json.array!(@seriados) do |seriado|
  json.extract! seriado, :id, :nome, :personagens
  json.url seriado_url(seriado, format: :json)
end
