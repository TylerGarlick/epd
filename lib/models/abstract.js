var Promise = require('bluebird')
  , _ = require('lodash')
  , Joi = require('joi')
  , Moment = require('moment');

var now = Moment().utc().format();
var internals = {
  helpers: {
    time: {
      now: now
    }
  }
};

module.exports = AbstractModel;

/**
 * Abstract Model
 *
 * @abstract
 * @constructor
 *
 */
function AbstractModel() {



  this.createdAt = this.createdAt || now;
  this.updatedAt = this.updatedAt || now;

  Object.defineProperties(this, {

    createdAt: { enumerable: true, configurable: false, writable: true },
    createdBy: { enumerable: true, configurable: false, writable: true },
    updatedAt: { enumerable: true, configurable: false, writable: true },
    updatedBy: { enumerable: true, configurable: false, writable: true },

    schema: { enumerable: false, configurable: false, writable: true },
    helpers: { enumerable: false, configurable: false, value: internals.helpers },
    isNew: { enumerable: false, configurable: false,
      get: function () {
        return (this._id && this._id.length > 0)
      }
    }

  });
}

/**
 * Validates a model
 * @returns {*}
 */
AbstractModel.prototype.validate = function (options) {
  options = options || { stripUnknown: true };
  return AbstractModel.validate(this, this.schema, options);
};

/**
 * Apply defaults
 * @param parameters
 */
AbstractModel.prototype.defaults = function (parameters) {
  parameters = parameters || {};
  _.merge(parameters, this);
};

/**
 * Validates a model
 * @param {object} value
 * @param {object} schema
 * @param {object} [options]
 * @returns {*}
 */
AbstractModel.validate = function (value, schema, options) {
  options = options || {};
  return Joi.validate(value, schema, options);
};

