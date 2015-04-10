namespace :jazzy_to do
  desc 'Reset all jazzies to nil/""'
  task :reset => :environment do
    JazzyTo::Jazzy.destroy_all
  end
end
