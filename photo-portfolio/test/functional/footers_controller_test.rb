require 'test_helper'

class FootersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:footers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create footer" do
    assert_difference('Footer.count') do
      post :create, :footer => { }
    end

    assert_redirected_to footer_path(assigns(:footer))
  end

  test "should show footer" do
    get :show, :id => footers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => footers(:one).to_param
    assert_response :success
  end

  test "should update footer" do
    put :update, :id => footers(:one).to_param, :footer => { }
    assert_redirected_to footer_path(assigns(:footer))
  end

  test "should destroy footer" do
    assert_difference('Footer.count', -1) do
      delete :destroy, :id => footers(:one).to_param
    end

    assert_redirected_to footers_path
  end
end
