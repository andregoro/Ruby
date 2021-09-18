require 'test_helper'

class BuscasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @busca = buscas(:one)
  end

  test "should get index" do
    get buscas_url
    assert_response :success
  end

  test "should get new" do
    get new_busca_url
    assert_response :success
  end

  test "should create busca" do
    assert_difference('Busca.count') do
      post buscas_url, params: { busca: { conteudo: @busca.conteudo, imagem: @busca.imagem, link_origem: @busca.link_origem, titulo: @busca.titulo } }
    end

    assert_redirected_to busca_url(Busca.last)
  end

  test "should show busca" do
    get busca_url(@busca)
    assert_response :success
  end

  test "should get edit" do
    get edit_busca_url(@busca)
    assert_response :success
  end

  test "should update busca" do
    patch busca_url(@busca), params: { busca: { conteudo: @busca.conteudo, imagem: @busca.imagem, link_origem: @busca.link_origem, titulo: @busca.titulo } }
    assert_redirected_to busca_url(@busca)
  end

  test "should destroy busca" do
    assert_difference('Busca.count', -1) do
      delete busca_url(@busca)
    end

    assert_redirected_to buscas_url
  end
end
