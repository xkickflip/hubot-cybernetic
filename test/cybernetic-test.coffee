chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'cybernetic', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/cybernetic')(@robot)


  it "registers a respond to listener for 'who or what are you'", ->
    expect(@robot.respond).to.have.been.calledWith(/(who|what) are you/i)

  it "registers a hear listener for 'who or what or what's is <robotname>", ->
    hearRegExp = new RegExp "(who|what|what's) (is|a) #{@robot.name}", "i"
    expect(@robot.hear).to.have.been.calledWith(hearRegExp)


