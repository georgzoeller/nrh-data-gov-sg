
module.exports = (context) ->


  getPSI: (date, fullDay = false) -> context.defaultCall 'environment/psi', date, fullDay
  getAirTemperature: (date, fullDay = false) -> context.defaultCall 'environment/air-temperature', date, fullDay
  getRelativeHumidity: (date, fullDay = false) -> context.defaultCall 'environment/relative-humidity', date, fullDay
  getWindDirection: (date, fullDay = false) -> context.defaultCall 'environment/wind-direction', date, fullDay
  getWindSpeed: (date, fullDay = false) -> context.defaultCall 'environment/wind-speed', date, fullDay
  getWeatherForecast2h: (date, fullDay = false) ->
    context.defaultCall 'environment/2-hour-weather-forecast', date, fullDay
  getWeatherForecast24h:(date, fullDay = false) ->
    context.defaultCall 'environment/24-hour-weather-forecast', date, fullDay
  getWeatherForecast4d: (date, fullDay = false) ->
    context.defaultCall 'environment/4-day-weather-forecast', date, fullDay
  getPM25: (date, fullDay = false) -> context.defaultCall 'environment/pm25', date, fullDay
  getUVIndex: (date, fullDay = false) -> context.defaultCall 'environment/uv-index', date, fullDay
  getRainfall: (date, fullDay = false) -> context.defaultCall 'environment/rainfall', date, fullDay
