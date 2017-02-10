namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"

  task sms: :environment do
    if Time.now.friday?
      employees = Employee.all
      notification_message = "Please log into the Overtime Management Dashboard to request overtime or confirm your hours for last week. https://bex-overtime-app.herokuapp.com"

      employees.each do |employee|
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end
    end
  end

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests."
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end

end
