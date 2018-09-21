class StationsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.stations_mailer.send_station.subject
  #
  def send_station
    @greeting = "Hi"
    mail(to: "cosmicgarden1@gmail.com", subject: 'Las Juanas') 
  end
end
