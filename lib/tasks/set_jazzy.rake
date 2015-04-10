namespace :jazzy_to do
  desc 'Set a jazzy with "jazzy_to:set_jazzy[:namespace, :controller, :action, :name, :copy]" don\'t forget the quotes! Use * for wildcard query!'
  task :set_jazzy, [:namespace, :controller, :action, :name, :content] => :environment do |t, args|
    args.with_defaults(:content => "")
    query = {}
    query[:namespace] = args.namespace unless args.namespace == "*"
    query[:controller] = args.controller unless args.controller == "*"
    query[:action] = args.action unless args.action == "*"
    query[:name] = args.name unless args.name == "*"
    JazzyTo::Jazzy.where(query).update_all(:content => args.content)
  end
end
