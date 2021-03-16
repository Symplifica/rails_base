class FilterSelectorReflex < ApplicationReflex
  def change_area
    @area_id = session[:area_id] = element[:value].start_with?("Seleccionar") ? nil : element[:value]
  end

  def change_agent
    @agent_id = session[:agent_id] = element[:value].start_with?("Seleccionar") ? nil : element[:value]
  end

  def change_category
    @category_id = session[:category_id] = element[:value].start_with?("Seleccionar") ? nil : element[:value]
  end

  def change_status
    @status_id = session[:status_id] = element[:value].start_with?("Seleccionar") ? nil : element[:value]
  end

end