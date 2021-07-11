class GraphsSection < SitePrism::Section
  class GraphSection < SitePrism::Section
    element :name_graph, 'div.x-toolbar div.x-form-display-field'
    elements :metric_elements, 'div.zenfooter tr.zenfooter_value_row'
    elements :points_graph, '.nv-linesWrap.nvd3-svg'
  end
  sections :graphs, GraphSection, 'div.x-container div.x-panel.graph-panel'
end


