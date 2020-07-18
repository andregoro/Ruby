require 'rails_helper'

RSpec.describe Cachorro, type: :model do
  it "testa a instancia de cliente" do
    expect(Cachorro.new).to be_present
  end

  it "testa as propriedade" do
    cachorro=Cachorro.new
    expect(cachorro.respond_to?(:nome)).to be_truthy
    expect(cachorro.respond_to?(:raca)).to be_truthy
  end

  it "testa as metodo_save" do
    cachorro=Cachorro.new
    cachorro.nome="Boomer"
    cachorro.raca="Beagle"

    expect(Cachorro.save).to be_truthy
    expect(cachorro.respond_to?(:raca)).to be_truthy
  end

  it "testa as metodo_save" do
    cachorro=Cachorro.new
    cachorro.nome="Boomer"
    cachorro.raca="Beagle"
    cachorro.save

    novo_nome="Boomer "+DateTime.now.to_s

    c2=Cachorro.fing(cachorro.id)
    c2.nome=novo_nome
    expect(c2.save).to be_truthy

    expect(Cachorro.save).to be_truthy
    expect(cachorro.where(nome: novo_nome).count).to be_truthy
  end
end