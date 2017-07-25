namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not."
  task sms: :environment do
  	# 1. Schedule Sunday at 5pm
  	# 2. Iterate over all employees
  	# 3. Skip AdminUsers
  	# 4. Send a message that has instructions and a link to log time
  	# User.all.each do |user|
  	# 	SmsTool.send_sms()
  	
  	# end
  end

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests."
  task manager_email: :environment do
    submitted_posts = Post.submitted_posts
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManageMailer.email(admin).deliver_later
      end
    end
  end

end
