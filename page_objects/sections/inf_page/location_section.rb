class LocationsSection < SitePrism::Section
  class TrLocationsSection < SitePrism::Section
    element :td_element_location, 'tr.x-grid-row > td'
  end
  sections :trs, TrLocationsSection, 'tr'
end
