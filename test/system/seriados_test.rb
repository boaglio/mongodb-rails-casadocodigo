require "application_system_test_case"

class SeriadosTest < ApplicationSystemTestCase
  setup do
    @seriado = seriados(:one)
  end

  test "visiting the index" do
    visit seriados_url
    assert_selector "h1", text: "Seriados"
  end

  test "creating a Seriado" do
    visit seriados_url
    click_on "New Seriado"

    fill_in "Nome", with: @seriado.nome
    fill_in "Personagens", with: @seriado.personagens
    click_on "Create Seriado"

    assert_text "Seriado was successfully created"
    click_on "Back"
  end

  test "updating a Seriado" do
    visit seriados_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @seriado.nome
    fill_in "Personagens", with: @seriado.personagens
    click_on "Update Seriado"

    assert_text "Seriado was successfully updated"
    click_on "Back"
  end

  test "destroying a Seriado" do
    visit seriados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seriado was successfully destroyed"
  end
end
