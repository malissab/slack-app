class AlertsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        if spam_alert?
            send_spam
            render json: { message: 'Spam detetected, slack alert sent'}, status: :created   
        else
            render json: { message: 'Spam is not detetected, no slack alert sent'}, status: :ok   
        end
        
    end

    private

    def spam_alert?
        params[:Type] == 'SpamNotification'
    end

    def send_spam
        email = params[:Email]
        message = "Spam detected for email: #{email}"
        SLACK_NOTIFIER.ping message
        payload = Payload.create(email: email)
        
    end
end
