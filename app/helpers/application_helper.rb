module ApplicationHelper

  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }.with_indifferent_access[flash_type] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.select{|msg_type, message| msg_type.to_s.in? %w(success alert notice error)}.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)}") do
              concat(content_tag(:button, content_tag(:i, '', class: "ace-icon fa fa-times"), type:"button", class:"close", :'data-dismiss'=>"alert"))
              concat message
            end)
    end
    nil
  end

end
