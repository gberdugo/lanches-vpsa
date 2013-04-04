desc "This task is called by the Heroku cron add-on"

task :apagar_tudo => :environment do

  if Time.now.hour == 1
    Lanche.destroy_all
  end
  
end