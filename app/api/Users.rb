module Users
  class API < Grape::API

    format :json
    resource :accounts do

      desc "Returns the accounts information."
      get :account_info do
        {user: 1}
      end
    end

  end
end
