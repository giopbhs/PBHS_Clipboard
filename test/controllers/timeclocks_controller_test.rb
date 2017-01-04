require 'test_helper'

class TimeclocksControllerTest < ActionController::TestCase
  setup do
    @timeclock = timeclocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timeclocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timeclock" do
    assert_difference('Timeclock.count') do
      post :create, timeclock: { hour_in: @timeclock.hour_in, minutes_in: @timeclock.minutes_in }
    end

    assert_redirected_to timeclock_path(assigns(:timeclock))
  end

  test "should show timeclock" do
    get :show, id: @timeclock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timeclock
    assert_response :success
  end

  test "should update timeclock" do
    patch :update, id: @timeclock, timeclock: { hour_in: @timeclock.hour_in, minutes_in: @timeclock.minutes_in }
    assert_redirected_to timeclock_path(assigns(:timeclock))
  end

  test "should destroy timeclock" do
    assert_difference('Timeclock.count', -1) do
      delete :destroy, id: @timeclock
    end

    assert_redirected_to timeclocks_path
  end
end
