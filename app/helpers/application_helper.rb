module ApplicationHelper

  def flash_class level
      case level.to_sym
      when :notice then "alert alert-info bg-info"
      when :success then "alert alert-success bg-success"
      when :error then "alert alert-error bg-danger"
      when :alert then "alert alert-error bg-warning"
      end
  end

  def is_page? name
    controller.action_name == name
  end

  def years_since(date)
    ((Date.today - Date.parse(date)) / 365).to_i
  end
end
