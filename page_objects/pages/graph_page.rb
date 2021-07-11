# frozen_string_literal: true
class GraphsPage < SitePrism::Page
  autoload(:GraphsSection, 'page_objects/sections/graphs/graphs_section')
  section :graphs_section, GraphsSection, '#device_graphs-body'
end
