generate(:scaffold, "person name:string")
route "root to: 'people#index'"
rails_command("db:migrate")
gem "pry-rails"
 
after_bundle do

  git :init
  git add: "."
  git commit: %Q{ -m 'Initial commit' }
end