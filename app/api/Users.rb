module Users
  class API < Grape::API

    format :json

    helpers do
      def authenticate!
        error!('Unauthorized. Please use an apikey. Sign in/up if you do not have one', 401) unless current_user
      end

      def current_user
        # find token. Check if valid.
        api_key = params[:apikey]
        token = ApiKey.where(:access_token => api_key).first
        if token && !token.expired?
          @current_user = User.find(token.user_id)
        else
          false
        end
      end
    end

    resource :accounts do

      desc "Returns the accounts information."
      get :account_info do
        authenticate!
        {user: 1}
      end
    end

  end
end
