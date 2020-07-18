require 'test_helper'

class Produto2Test < ActiveSupport::TestCase
  test "the truth" do
     assert Produtos.new.present?
  end
end
