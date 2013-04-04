require 'test_helper'

class LanchesControllerTest < ActionController::TestCase
  setup do
    @lanche = lanches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lanches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lanche" do
    assert_difference('Lanche.count') do
      post :create, lanche: { descricao: @lanche.descricao, pessoa: @lanche.pessoa }
    end

    assert_redirected_to lanche_path(assigns(:lanche))
  end

  test "should show lanche" do
    get :show, id: @lanche
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lanche
    assert_response :success
  end

  test "should update lanche" do
    put :update, id: @lanche, lanche: { descricao: @lanche.descricao, pessoa: @lanche.pessoa }
    assert_redirected_to lanche_path(assigns(:lanche))
  end

  test "should destroy lanche" do
    assert_difference('Lanche.count', -1) do
      delete :destroy, id: @lanche
    end

    assert_redirected_to lanches_path
  end
end
