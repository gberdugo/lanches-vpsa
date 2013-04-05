desc "This task is called by the Heroku cron add-on"

task :apagar_tudo => :environment do

  if Time.now.hour > 20
    Lanche.destroy_all
  end
  
end