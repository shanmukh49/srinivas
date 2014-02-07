require 'test_helper'

class ApplicantsControllerTest < ActionController::TestCase
  setup do
    @applicant = applicants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applicants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applicant" do
    assert_difference('Applicant.count') do
      post :create, applicant: { email: @applicant.email, interviewers: @applicant.interviewers, name: @applicant.name, role: @applicant.role, round: @applicant.round, scheduleofinterview: @applicant.scheduleofinterview, sourcingpartner: @applicant.sourcingpartner, status: @applicant.status, technology: @applicant.technology }
    end

    assert_redirected_to applicant_path(assigns(:applicant))
  end

  test "should show applicant" do
    get :show, id: @applicant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applicant
    assert_response :success
  end

  test "should update applicant" do
    put :update, id: @applicant, applicant: { email: @applicant.email, interviewers: @applicant.interviewers, name: @applicant.name, role: @applicant.role, round: @applicant.round, scheduleofinterview: @applicant.scheduleofinterview, sourcingpartner: @applicant.sourcingpartner, status: @applicant.status, technology: @applicant.technology }
    assert_redirected_to applicant_path(assigns(:applicant))
  end

  test "should destroy applicant" do
    assert_difference('Applicant.count', -1) do
      delete :destroy, id: @applicant
    end

    assert_redirected_to applicants_path
  end
end
