class SystemSection < SitePrism::Section
  class TrSystemSection < SitePrism::Section
    element :td_element_system, 'tr.x-grid-row > td'
  end
  sections :trs, TrSystemSection, 'tr'
end
