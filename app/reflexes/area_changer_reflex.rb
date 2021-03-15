class AreaChangerReflex < ApplicationReflex
  def change_area
    @area_id = element.dataset[:area]
  end
end