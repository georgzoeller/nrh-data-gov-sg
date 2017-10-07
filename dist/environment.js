// Generated by CoffeeScript 2.0.1
(function() {
  module.exports = function(context) {
    return {
      getPSI: function(date, fullDay = false) {
        return context.defaultCall('environment/psi', date, fullDay);
      },
      getAirTemperature: function(date, fullDay = false) {
        return context.defaultCall('environment/air-temperature', date, fullDay);
      },
      getRelativeHumidity: function(date, fullDay = false) {
        return context.defaultCall('environment/relative-humidity', date, fullDay);
      },
      getWindDirection: function(date, fullDay = false) {
        return context.defaultCall('environment/wind-direction', date, fullDay);
      },
      getWindSpeed: function(date, fullDay = false) {
        return context.defaultCall('environment/wind-speed', date, fullDay);
      },
      getWeatherForecast2h: function(date, fullDay = false) {
        return context.defaultCall('environment/2-hour-weather-forecast', date, fullDay);
      },
      getWeatherForecast24h: function(date, fullDay = false) {
        return context.defaultCall('environment/24-hour-weather-forecast', date, fullDay);
      },
      getWeatherForecast4d: function(date, fullDay = false) {
        return context.defaultCall('environment/4-day-weather-forecast', date, fullDay);
      },
      getPM25: function(date, fullDay = false) {
        return context.defaultCall('environment/pm25', date, fullDay);
      },
      getUVIndex: function(date, fullDay = false) {
        return context.defaultCall('environment/uv-index', date, fullDay);
      },
      getRainfall: function(date, fullDay = false) {
        return context.defaultCall('environment/rainfall', date, fullDay);
      }
    };
  };

}).call(this);
