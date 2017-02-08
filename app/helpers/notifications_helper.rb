module NotificationsHelper
  def posted_time(time)
    time > Date.today ? "#{time_ago_in_words(time)}" : time.strftime('%m月%d日')
  end

  def read_or_unread(status)
    return "未読" if status == false
    return "既読"
  end
end