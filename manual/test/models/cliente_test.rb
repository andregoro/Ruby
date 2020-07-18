require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
  test "A instancia de cliente presisa ser valida" do
     assert Produtos.new.present?
  end
end
