- dashboard: dd
  title: Dd
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: population_by_location
      title: Country & State Population Range
      type: looker_column
      model: looker_basic
      explore: population_data
      type: looker_column
      fields: [
        population_data.location_label,
        population_data.color_tier,
        population_data.total_population_cr
      ]
      pivots: [population_data.color_tier]
      sorts: [population_data.total_population_cr desc]
      limit: 500
      column_limit: 50
      # Color configuration for the ranges
      series_colors:
        Red (100+ Cr): "#FF0000"
        Green (50-100 Cr): "#00FF00"
        Gray (< 50 Cr): "#888888"
      # Visualization settings
      show_value_labels: true
      stacking: ""
      show_y_axis_labels: true
      show_y_axis_ticks: true
      show_x_axis_label: true
      show_x_axis_ticks: true
      listen: {}
      row: 0
      col: 0
      width: 12
      height: 8
