namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
   # require 'populator'
   # require 'faker'
    
    [User, Payment].each(&:delete_all)
    
    (1..10).each { |t| User.create(:username=> "User"+t.to_s)}
    (1..100).each do |t|
      p=Payment.new
      offset = rand(User.count)
      rand_record = User.first(:offset => offset)
      p.user_id=rand_record.id
      p.pay=rand(10000)/10.0
      p.comment="Payment "+t.to_s
      p.save
    end
    
  end
end
