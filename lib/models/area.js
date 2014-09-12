"use strict";

var Joi = require('joi')
  , Util = require('util')
  , Moment = require('moment')
  , _ = require('lodash')
  , AbstractModel = require('./abstract');

var internals = {
  defaults: {
    schema: Joi.object({
      name: Joi.string().required(),
      isActive: Joi.boolean().default(true),
      userId: Joi.number().integer().required(),
      createdAt: Joi.date().default(Moment().utc().format()),
      createdBy: Joi.number().integer().required(),
      updatedAt: Joi.date(),
      updatedBy: Joi.number().integer()
    })
  }
};



function Area(parameters, options) {
  parameters = parameters || {};
  options = options || {};
  Area.super_.apply(this);
  this.schema = options.schema || internals.defaults.schema;
  _.merge(this, parameters);
}

Util.inherits(Area, AbstractModel);

module.exports = Area;