require 'rake'

# rake t1k:hack['uD2GBBMf'] 
namespace :t1k do
  desc "Creates an issue and update the trello's card"

  task :hack, [:path_card_part] do |t, args|
  	code_card = T1k::hack args[:path_card_part]  	

		system 'git checkout master'
		system 'git pull --rebase origin master'
		system "git checkout -b #{code_card}"
  end
end