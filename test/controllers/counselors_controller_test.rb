require 'test_helper'

class CounselorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @counselor = counselors(:one)
  end

  test "should get index" do
    get counselors_url
    assert_response :success
  end

  test "should get new" do
    get new_counselor_url
    assert_response :success
  end

  test "should create counselor" do
    assert_difference('Counselor.count') do
      post counselors_url, params: { counselor: { age: @counselor.age, agreement: @counselor.agreement, first_name: @counselor.first_name, image: @counselor.image, last_name: @counselor.last_name, occ_state: @counselor.occ_state, occ_title: @counselor.occ_title, payment: @counselor.payment, sex: @counselor.sex, ssn: @counselor.ssn, string: @counselor.string, zipcode: @counselor.zipcode } }
    end

    assert_redirected_to counselor_url(Counselor.last)
  end

  test "should show counselor" do
    get counselor_url(@counselor)
    assert_response :success
  end

  test "should get edit" do
    get edit_counselor_url(@counselor)
    assert_response :success
  end

  test "should update counselor" do
    patch counselor_url(@counselor), params: { counselor: { age: @counselor.age, agreement: @counselor.agreement, first_name: @counselor.first_name, image: @counselor.image, last_name: @counselor.last_name, occ_state: @counselor.occ_state, occ_title: @counselor.occ_title, payment: @counselor.payment, sex: @counselor.sex, ssn: @counselor.ssn, string: @counselor.string, zipcode: @counselor.zipcode } }
    assert_redirected_to counselor_url(@counselor)
  end

  test "should destroy counselor" do
    assert_difference('Counselor.count', -1) do
      delete counselor_url(@counselor)
    end

    assert_redirected_to counselors_url
  end
end
