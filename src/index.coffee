
module.exports.name = 'data.gov.sg'

module.exports.url = 'https://api.data.gov.sg/v1'

module.exports.imports =
  environment: [__dirname+'/environment']
  transport: [__dirname+'/transport']


module.exports.authCallbacks = 'default': (msg) -> msg.addHeader 'api-key', process.env.DATA_GOV_SG_KEY

module.exports.registerExtensions = (api) ->

  defaultCall: (endpoint, date, fullDay = false) ->
    date = date.toISOString() if date?
    param = if fullDay then 'data' else 'date_time'
    api.createCall endpoint: endpoint
      .describe "getting #{endpoint} for #{date||'now'}"
      .authorizeByDefault()
      .setMethod 'GET'
      .addHeader param, date





