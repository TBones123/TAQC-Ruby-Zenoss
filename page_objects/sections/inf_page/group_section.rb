class GroupsSection < SitePrism::Section
  class TrGroupsSection < SitePrism::Section
    element :td_element_groups, 'tr.x-grid-row > td'
  end
  sections :trs, TrGroupsSection, 'tr'
end
