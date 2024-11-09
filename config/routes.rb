Rails.application.routes.draw do

  get "/", to: "misc#homepage"
  get "/directors", to: "directors#index"
  get "/directors/:age_extreme", to: "directors#age_extreme", age_extreme: /youngest|eldest/
  get "/directors/:id", to: "directors#show", id: /\d*/
  
  get "/movies", to: "movies#index"
  get "/movies/:id", to: "movies#show"

  get "/actors", to: "actors#index"
  get "/actors/:id", to: "actors#show"

end
