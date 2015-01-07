$("#regions_select")
  .empty()
  .append("<%= escape_javascript(render partial: "birth_region", collection: @birth_regions) %>")
