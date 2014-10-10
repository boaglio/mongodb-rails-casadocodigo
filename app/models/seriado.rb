class Seriado
  include Mongoid::Document
  field :nome, type: String
  field :personagens, type: String
end
