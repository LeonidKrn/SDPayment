module ApplicationHelper
  def database_filler
    (1..100).each { |t| User.create(:username=> "User"+t.to_s)}
    (1..1000).each do |t|
      p=Payment.new
      p.user=User.find(random(100)+1)
      p.pay=random(10000)/10.0
      p.comment="Payment "+t.to_s
    end
  end
end
