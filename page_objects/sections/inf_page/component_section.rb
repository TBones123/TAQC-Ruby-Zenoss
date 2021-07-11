class ComponentGroupsSection < SitePrism::Section
  class TrComponentSection < SitePrism::Section
    element :td_element_component, 'tr.x-grid-row > td'
  end
  sections :trs, TrComponentSection, 'tr'
end
