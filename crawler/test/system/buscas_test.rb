require "application_system_test_case"

class BuscasTest < ApplicationSystemTestCase
  setup do
    @busca = buscas(:one)
  end

  test "visiting the index" do
    visit buscas_url
    assert_selector "h1", text: "Buscas"
  end

  test "creating a Busca" do
    visit buscas_url
    click_on "New Busca"

    fill_in "Conteudo", with: @busca.conteudo
    fill_in "Imagem", with: @busca.imagem
    fill_in "Link origem", with: @busca.link_origem
    fill_in "Titulo", with: @busca.titulo
    click_on "Create Busca"

    assert_text "Busca was successfully created"
    click_on "Back"
  end

  test "updating a Busca" do
    visit buscas_url
    click_on "Edit", match: :first

    fill_in "Conteudo", with: @busca.conteudo
    fill_in "Imagem", with: @busca.imagem
    fill_in "Link origem", with: @busca.link_origem
    fill_in "Titulo", with: @busca.titulo
    click_on "Update Busca"

    assert_text "Busca was successfully updated"
    click_on "Back"
  end

  test "destroying a Busca" do
    visit buscas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Busca was successfully destroyed"
  end
end
