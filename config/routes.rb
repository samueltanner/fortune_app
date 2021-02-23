Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/fortune" => "my_examples#fortune_generator"
    get "/lotto_number" => "my_examples#lotto_generator"
    get "/99_bottles" => "my_examples#bottles_generator"
  end
end
