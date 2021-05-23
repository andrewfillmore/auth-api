Rails.application.routes.draw do
  post "/users", controller: "users", action: "create"
  post "/sessions", controller: "sessions", action: "create"
end
