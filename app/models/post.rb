class Post < ActiveRecord::Base
  attr_accessible :conteudo, :titulo
  has_many :comentarios
  validates :conteudo, :presence => true
  validates :titulo, :presence => true, :length => { :minimum => 4 }
end
