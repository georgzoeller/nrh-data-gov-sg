assert = require 'assert'
should = require 'should'


describe 'Test Environment', ->
  describe 'API Keys', ->
    it 'node-rest-helper should be installed', ->
      (-> require 'node-rest-helper').should.not.throw()

    it 'DATA_GOV_SG_KEY should be present in environment', ->
      process.env.should.have.property('DATA_GOV_SG_KEY').which.is.not.empty()

    it 'should require without throwing', ->
      (->     lib = require('../dist/index')).should.not.throw()


describe 'Functional test', ->
  lib = require('../dist/index')
  api = require('node-rest-helper').create('data-gov-sg')

  it 'should load with api.load', ->
    (-> api.load lib).should.not.throw()
    api.loaded.should.be.true()

  it 'should have extended api with defaultCall', ->
    api.should.have.property('defaultCall').which.is.a.Function()

  it 'should have the auth hook', ->
    api.authHooks.should.have.property('default')




describe 'API test', ->

  lib = require('../dist/index')
  api = require('node-rest-helper').create('data-gov-sg')
  api.load lib


  before ->
    if not process.env.DATA_GOV_SG_KEY?
      api.debug "Skipping Remote tests as no key is defined"
      @skip()


  it 'environment.getPSI should return the expected structure', ->
    val = await api.send api.environment.getPSI()
    should.exists val
    val.should.have.property('api_info').which.is.an.Object()
    val.should.have.property('items').which.is.an.Array()
    val.should.have.property('region_metadata').which.is.an.Array()
