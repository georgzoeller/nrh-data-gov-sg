
module.exports = (context) ->

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

  getPSI: (date, fullDay = false) -> context.defaultCall 'environment/psi', date, fullDay
  ###sample response
{
  "region_metadata": [
    {
      "name": "west",
      "label_location": {
        "latitude": 1.35735,
        "longitude": 103.7
      }
    },
    {
      "name": "national",
      "label_location": {
        "latitude": 0,
        "longitude": 0
      }
    },
    {
      "name": "east",
      "label_location": {
        "latitude": 1.35735,
        "longitude": 103.94
      }
    },
    {
      "name": "central",
      "label_location": {
        "latitude": 1.35735,
        "longitude": 103.82
      }
    },
    {
      "name": "south",
      "label_location": {
        "latitude": 1.29587,
        "longitude": 103.82
      }
    },
    {
      "name": "north",
      "label_location": {
        "latitude": 1.41803,
        "longitude": 103.82
      }
    }
  ],
  "items": [
    {
      "timestamp": "2017-10-08T18:00:00+08:00",
      "update_timestamp": "2017-10-08T18:06:18+08:00",
      "readings": {
        "o3_sub_index": {
          "west": 38,
          "national": 38,
          "east": 23,
          "central": 22,
          "south": 20,
          "north": 27
        },
        "pm10_twenty_four_hourly": {
          "west": 22,
          "national": 30,
          "east": 28,
          "central": 24,
          "south": 30,
          "north": 28
        },
        "pm10_sub_index": {
          "west": 22,
          "national": 30,
          "east": 28,
          "central": 24,
          "south": 30,
          "north": 28
        },
        "co_sub_index": {
          "west": 4,
          "national": 6,
          "east": 6,
          "central": 4,
          "south": 5,
          "north": 6
        },
        "pm25_twenty_four_hourly": {
          "west": 12,
          "national": 18,
          "east": 18,
          "central": 16,
          "south": 18,
          "north": 17
        },
        "so2_sub_index": {
          "west": 6,
          "national": 10,
          "east": 6,
          "central": 5,
          "south": 10,
          "north": 5
        },
        "co_eight_hour_max": {
          "west": 0.4,
          "national": 0.64,
          "east": 0.64,
          "central": 0.44,
          "south": 0.49,
          "north": 0.56
        },
        "no2_one_hour_max": {
          "west": 13,
          "national": 37,
          "east": 30,
          "central": 31,
          "south": 14,
          "north": 37
        },
        "so2_twenty_four_hourly": {
          "west": 10,
          "national": 17,
          "east": 10,
          "central": 9,
          "south": 17,
          "north": 8
        },
        "pm25_sub_index": {
          "west": 49,
          "national": 58,
          "east": 58,
          "central": 56,
          "south": 58,
          "north": 56
        },
        "psi_twenty_four_hourly": {
          "west": 49,
          "national": 58,
          "east": 58,
          "central": 56,
          "south": 58,
          "north": 56
        },
        "o3_eight_hour_max": {
          "west": 90,
          "national": 90,
          "east": 54,
          "central": 53,
          "south": 47,
          "north": 63
        }
      }
    }
  ],
  "api_info": {
    "status": "healthy"
  }
    ###