class DeviseTableSection < SitePrism::Section
  class TrSection < SitePrism::Section
    element :td_element_device, 'tr.x-grid-row > td:nth-of-type(1) a'
  end
  sections :trs, TrSection, 'tr'
end

