class CertificationsController < ApplicationController
  before_action :set_certification, only: %i[ show update destroy ]

  # GET /certifications
  def index
    @certifications = Certification.all

    render json: @certifications
  end

  # GET /certifications/1
  def show
    render json: @certification
  end

  # POST /certifications
  def create
    @certification = Certification.new(certification_params)

    if @certification.save
      render json: @certification, status: :created, location: @certification
    else
      render json: @certification.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /certifications/1
  def update
    if @certification.update(certification_params)
      render json: @certification
    else
      render json: @certification.errors, status: :unprocessable_content
    end
  end

  # DELETE /certifications/1
  def destroy
    @certification.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certification
      @certification = Certification.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def certification_params
      params.expect(certification: [ :name, :institution, :date_given, :certification_url, :certificate_image, :certificate_pdf ])
    end
end
