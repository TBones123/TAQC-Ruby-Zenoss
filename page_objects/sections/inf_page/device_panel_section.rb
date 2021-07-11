class DevisePanelSection < SitePrism::Section
  class TrleftSection < SitePrism::Section
    element :td_element, 'tr.x-grid-row > td'
  end
  sections :trs, TrleftSection, 'tr'
end
