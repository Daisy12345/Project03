require 'test_helper'

class PersonalclassesControllerTest < ActionController::TestCase
  setup do
    @personalclass = personalclasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personalclasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personalclass" do
    assert_difference('Personalclass.count') do
      post :create, personalclass: { date: @personalclass.date, subject: @personalclass.subject, time: @personalclass.time, tutor_name: @personalclass.tutor_name }
    end

    assert_redirected_to personalclass_path(assigns(:personalclass))
  end

  test "should show personalclass" do
    get :show, id: @personalclass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personalclass
    assert_response :success
  end

  test "should update personalclass" do
    patch :update, id: @personalclass, personalclass: { date: @personalclass.date, subject: @personalclass.subject, time: @personalclass.time, tutor_name: @personalclass.tutor_name }
    assert_redirected_to personalclass_path(assigns(:personalclass))
  end

  test "should destroy personalclass" do
    assert_difference('Personalclass.count', -1) do
      delete :destroy, id: @personalclass
    end

    assert_redirected_to personalclasses_path
  end
end
