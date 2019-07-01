# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

### to be deleted if works js works
$(document).ready ->
  #Create a variable for the CarQuery object.  You can call it whatever you like.
  window.carquery = new CarQuery
  #Run the carquery init function to get things started:
  window.carquery.init()
  #Optional: Pass sold_in_us:true to the setFilters method to show only US models. 
  window.carquery.setFilters sold_in_us: true
  #Optional: initialize the year, make, model, and trim drop downs by providing their element IDs
  window.carquery.initYearMakeModelTrim 'car-years', 'car-makes', 'car-models', 'car-model-trims'
  #Optional: set the onclick event for a button to show car data.
  $('#cq-show-data').click ->
    window.carquery.populateCarData 'car-model-data'
    return
  #Optional: initialize the make, model, trim lists by providing their element IDs.
  window.carquery.initMakeModelTrimList 'make-list', 'model-list', 'trim-list', 'trim-data-list'
  return
  ###