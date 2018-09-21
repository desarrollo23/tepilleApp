# Preview all emails at http://localhost:3000/rails/mailers/stations_mailer
class StationsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/stations_mailer/send_station
  def send_station
    StationsMailer.send_station
  end

end
