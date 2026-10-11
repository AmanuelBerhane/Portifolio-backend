class Admins::SessionsController < Devise::SessionsController
  respond_to :json

  # GET /admins/current
  def show
    if admin_signed_in?
      render json: {
        logged_in: true,
        admin: {
          id: current_admin.id,
          email: current_admin.email
        }
      }, status: :ok
    else
      render json: { logged_in: false }, status: :ok
    end
  end

  private

  def respond_with(resource, _opts = {})
    render json: {
      logged_in: true,
      message: 'Logged in successfully.',
      admin: {
        id: resource.id,
        email: resource.email
      }
    }, status: :ok
  end

  def respond_to_on_destroy
    render json: {
      logged_in: false,
      message: 'Logged out successfully.'
    }, status: :ok
  end
end
