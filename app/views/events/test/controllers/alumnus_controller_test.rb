require 'test_helper'

class AlumnusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alumnu = alumnus(:one)
  end

  test "should get index" do
    get alumnus_url
    assert_response :success
  end

  test "should get new" do
    get new_alumnu_url
    assert_response :success
  end

  test "should create alumnu" do
    assert_difference('Alumnu.count') do
      post alumnus_url, params: { alumnu: { kelas: @alumnu.kelas, nama: @alumnu.nama } }
    end

    assert_redirected_to alumnu_url(Alumnu.last)
  end

  test "should show alumnu" do
    get alumnu_url(@alumnu)
    assert_response :success
  end

  test "should get edit" do
    get edit_alumnu_url(@alumnu)
    assert_response :success
  end

  test "should update alumnu" do
    patch alumnu_url(@alumnu), params: { alumnu: { kelas: @alumnu.kelas, nama: @alumnu.nama } }
    assert_redirected_to alumnu_url(@alumnu)
  end

  test "should destroy alumnu" do
    assert_difference('Alumnu.count', -1) do
      delete alumnu_url(@alumnu)
    end

    assert_redirected_to alumnus_url
  end
end
