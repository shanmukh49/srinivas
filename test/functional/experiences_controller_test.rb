require 'test_helper'

class SourcingpartnersControllerTest < ActionController::TestCase
  setup do
    @sourcingpartner = sourcingpartners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sourcingpartners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sourcingpartner" do
    assert_difference('Sourcingpartner.count') do
      post :create, sourcingpartner: { description: @sourcingpartner.description, name: @sourcingpartner.name }
    end

    assert_redirected_to sourcingpartner_path(assigns(:sourcingpartner))
  end

  test "should show sourcingpartner" do
    get :show, id: @sourcingpartner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sourcingpartner
    assert_response :success
  end

  test "should update sourcingpartner" do
    put :update, id: @sourcingpartner, sourcingpartner: { description: @sourcingpartner.description, name: @sourcingpartner.name }
    assert_redirected_to sourcingpartner_path(assigns(:sourcingpartner))
  end

  test "should destroy sourcingpartner" do
    assert_difference('Sourcingpartner.count', -1) do
      delete :destroy, id: @sourcingpartner
    end

    assert_redirected_to sourcingpartners_path
  end
end
