require 'test_helper'

class NabesControllerTest < ActionController::TestCase
  setup do
    @nabe = nabes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nabes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nabe" do
    assert_difference('Nabe.count') do
      post :create, nabe: {  }
    end

    assert_redirected_to nabe_path(assigns(:nabe))
  end

  test "should show nabe" do
    get :show, id: @nabe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nabe
    assert_response :success
  end

  test "should update nabe" do
    put :update, id: @nabe, nabe: {  }
    assert_redirected_to nabe_path(assigns(:nabe))
  end

  test "should destroy nabe" do
    assert_difference('Nabe.count', -1) do
      delete :destroy, id: @nabe
    end

    assert_redirected_to nabes_path
  end
end
