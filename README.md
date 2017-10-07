# nhr-data-gov-sg

This module can be used with georgzoeller/node-rest-helper to import helper functions for data.gov.sg API

Requires data.gov.sg api key (available on the website) to be present in process.env.DATA_GOV_SG_KEY

## Exported functions

After api.load is used with this module, the following functions are available:

  ```
  api.environment.getPSI(date,fullDay=false)
  api.environment.getAirTemperature(date,fullDay=false)
  api.environment.getRelativeHumidity(date,fullDay=false)
  api.environment.getWindDirection (date,fullDay=false)
  api.environment.getWindSpeed(date,fullDay=false)
  api.environment.getWeatherForecast2h(date,fullDay=false) 
  api.environment.getWeatherForecast24(date,fullDay=false)
  api.environment.getWeatherForecast4d(date,fullDay=false) 
  api.environment.getPM25(date,fullDay=false)
  api.environment.getUVIndex (date,fullDay=false)
  api.environment.getRainfall(date,fullDay=false)
  api.transport.getTaxiAvailability(date,fullDay=false)
  api.transport.getTrafficImages(date,fullDay=false)
  api.transport.getCarparkAvailability(date,fullDay=false))
  ```

* Each function defaults to the most current data when no parameters are given
* If date is given in form of a ISOString (new Date().toISOString()), data will be returned for the given date/time
* If fullday is specified, the time portion of the date is ignored and all data for the given day is returned 


## install
yarn ```install georgzoeller/nhr-data-gov-sg```

## build 
(0ptional) ```yarn build```

## test
(Optional) ```yarn test```


## Usage

```

	api = require('node-rest-helper')
	sgGov = require('nhr-data-gov-sg')
	api.load(sgGov)
	
	## Getting current PSI
	
	result = await api.send api.environment.getPSI()

    ###	
    result = {
    	region_metadata:
		   [ { name: 'west', label_location: [Object] },
			 { name: 'national', label_location: [Object] },
			 { name: 'east', label_location: [Object] },
			 { name: 'central', label_location: [Object] },
			 { name: 'south', label_location: [Object] },
			 { name: 'north', label_location: [Object] } ],
		  items:
		   [ { timestamp: '2017-10-07T16:00:00+08:00',
			   update_timestamp: '2017-10-07T16:06:17+08:00',
			   readings: [Object] } ],
		  api_info: { status: 'healthy' } }
		}
	###
	
	## getting historic PSI
	
	result = await api.send api.environment.getPSI(new Date(...).toISOString())
	

```
