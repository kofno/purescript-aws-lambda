"use strict";

// module Network.AWS.Lambda

exports.succeed = function(context) {
  return function(message) {
    return function() {
      context.succeed(message);
    };
  };
};

exports.fail = function(context) {
  return function(message) {
    return function() {
      context.fail(message);
    };
  };
}
