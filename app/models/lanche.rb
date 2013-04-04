class Lanche < ActiveRecord::Base
  validates_presence_of :pessoa
  validates_presence_of :descricao
  
  attr_accessible :descricao, :pessoa
end
