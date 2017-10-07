
module.exports = (context) ->
  getTaxiAvailability: (date, fullDay = false) -> context.defaultCall 'transport/taxi-availability', date, fullDay
  getTrafficImages: (date, fullDay = false) -> context.defaultCall 'transport/traffic-images', date, fullDay
  getCarparkAvailability: (date, fullDay = false) -> context.defaultCall 'transport/carpark-availability', data, fullDay