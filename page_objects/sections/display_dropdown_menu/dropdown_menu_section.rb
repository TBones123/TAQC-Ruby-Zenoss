# frozen_string_literal: true

# This section is responsible for the drop down menu.
class DisplayDropDowmSection < SitePrism::Section
  # Selecting the li section from the table and button for hidden list
  class LiListSection < SitePrism::Section
    element :li_element, 'li'
  end
  sections :lis, LiListSection, 'div.x-boundlist.x-boundlist-floating'
  element :drop_down_button, 'table.x-hbox-form-item input.x-trigger-noedit'
end

