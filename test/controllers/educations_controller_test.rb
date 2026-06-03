require "test_helper"

class EducationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education = educations(:one)
  end

  test "should get index" do
    get educations_url, as: :json
    assert_response :success
  end

  test "should create education" do
    assert_difference("Education.count") do
      post educations_url, params: { education: { description: @education.description, ended_at: @education.ended_at, field_of_study: @education.field_of_study, grade: @education.grade, institution: @education.institution, qualification_type: @education.qualification_type, started_at: @education.started_at } }, as: :json
    end

    assert_response :created
  end

  test "should show education" do
    get education_url(@education), as: :json
    assert_response :success
  end

  test "should update education" do
    patch education_url(@education), params: { education: { description: @education.description, ended_at: @education.ended_at, field_of_study: @education.field_of_study, grade: @education.grade, institution: @education.institution, qualification_type: @education.qualification_type, started_at: @education.started_at } }, as: :json
    assert_response :success
  end

  test "should destroy education" do
    assert_difference("Education.count", -1) do
      delete education_url(@education), as: :json
    end

    assert_response :no_content
  end
end
