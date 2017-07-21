@user = User.create(email: "test@test.com",
										password: "asdfasdf", 
										password_confirmation: "asdfasdf", 
										first_name: "John", 
										last_name: "Snow",
										phone: "8017556358")

puts "1 User created"

AdminUser.create(email: "admin@admin.com",
 								 password: "adminadmin", 
 								 password_confirmation: "adminadmin", 
 								 first_name: "Admin", 
 								 last_name: "user",
 								 phone: "8017556358")

puts "1 Admin User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"
