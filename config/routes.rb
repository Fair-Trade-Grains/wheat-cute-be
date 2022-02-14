Rails.application.routes.draw do
  # get "/mailers", to: "mailers/farmer_contact_mailer#contact_farmer_email"
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  end
  post "/graphql", to: "graphql#execute"


end
