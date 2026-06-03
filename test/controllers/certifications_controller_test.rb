require "test_helper"

class CertificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @certification = certifications(:one)
  end

  test "should get index" do
    get certifications_url, as: :json
    assert_response :success
  end

  test "should create certification" do
    assert_difference("Certification.count") do
      post certifications_url, params: { certification: { certificate_image: @certification.certificate_image, certificate_pdf: @certification.certificate_pdf, certification_url: @certification.certification_url, date_given: @certification.date_given, institution: @certification.institution, name: @certification.name } }, as: :json
    end

    assert_response :created
  end

  test "should show certification" do
    get certification_url(@certification), as: :json
    assert_response :success
  end

  test "should update certification" do
    patch certification_url(@certification), params: { certification: { certificate_image: @certification.certificate_image, certificate_pdf: @certification.certificate_pdf, certification_url: @certification.certification_url, date_given: @certification.date_given, institution: @certification.institution, name: @certification.name } }, as: :json
    assert_response :success
  end

  test "should destroy certification" do
    assert_difference("Certification.count", -1) do
      delete certification_url(@certification), as: :json
    end

    assert_response :no_content
  end
end
