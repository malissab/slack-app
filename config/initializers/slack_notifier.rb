
SLACK_WEBHOOK = ENV['SLACK_WEBHOOK']
SLACK_NOTIFIER = Slack::Notifier.new SLACK_WEBHOOK do
    defaults channel: '#test',
            username: 'slack_notifier_1'
end