require 'test_helper'

class TazerDevicesControllerTest < ActionController::TestCase
  setup do
    @tazer_device = tazer_devices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tazer_devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tazer_device" do
    assert_difference('TazerDevice.count') do
      post :create, tazer_device: { date_received: @tazer_device.date_received, location: @tazer_device.location, model: @tazer_device.model, serial_number: @tazer_device.serial_number }
    end

    assert_redirected_to tazer_device_path(assigns(:tazer_device))
  end

  test "should show tazer_device" do
    get :show, id: @tazer_device
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tazer_device
    assert_response :success
  end

  test "should update tazer_device" do
    patch :update, id: @tazer_device, tazer_device: { date_received: @tazer_device.date_received, location: @tazer_device.location, model: @tazer_device.model, serial_number: @tazer_device.serial_number }
    assert_redirected_to tazer_device_path(assigns(:tazer_device))
  end

  test "should destroy tazer_device" do
    assert_difference('TazerDevice.count', -1) do
      delete :destroy, id: @tazer_device
    end

    assert_redirected_to tazer_devices_path
  end
end
