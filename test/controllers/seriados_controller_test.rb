require 'test_helper'

class SeriadosControllerTest < ActionController::TestCase
  setup do
    @seriado = seriados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seriados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seriado" do
    assert_difference('Seriado.count') do
      post :create, seriado: { nome: @seriado.nome, personagens: @seriado.personagens }
    end

    assert_redirected_to seriado_path(assigns(:seriado))
  end

  test "should show seriado" do
    get :show, id: @seriado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seriado
    assert_response :success
  end

  test "should update seriado" do
    patch :update, id: @seriado, seriado: { nome: @seriado.nome, personagens: @seriado.personagens }
    assert_redirected_to seriado_path(assigns(:seriado))
  end

  test "should destroy seriado" do
    assert_difference('Seriado.count', -1) do
      delete :destroy, id: @seriado
    end

    assert_redirected_to seriados_path
  end
end
