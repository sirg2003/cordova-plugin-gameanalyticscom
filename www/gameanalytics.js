var exec = require('cordova/exec');
var GameAnalyticsPlugin = {};

var PLUGIN_NAME = 'GameAnalyticsPlugin';
var PLUGIN_VERSION = 'cordova 1.1.0';

GameAnalyticsPlugin.initialize = function (gameKey, gameSecret) {
  //exec(success, error, 'GameAnalyticsPlugin', 'configureBuild', [arg0]);
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "initialize", [gameKey, gameSecret]);
};

GameAnalyticsPlugin.configureBuild = function (build) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "configureBuild", [build]);
};

GameAnalyticsPlugin.configureGameEngineVersion = function (version) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "configureGameEngineVersion", [version]);
};

GameAnalyticsPlugin.configureSdkGameEngineVersion = function () {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "configureSdkGameEngineVersion", [PLUGIN_VERSION]);
};

GameAnalyticsPlugin.configureUserId = function (id) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "configureUserId", [id]);
};

GameAnalyticsPlugin.addBusinessEvent = function (currency, amount, itemType, itemId, cartType) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "addBusinessEvent", [currency, amount, itemType, itemId, cartType]);
};

GameAnalyticsPlugin.addBusinessEventWithReceipt = function (currency, amount, itemType, itemId, cartType, receipt, store, signature) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "addBusinessEventWithReceipt", [currency, amount, itemType, itemId, cartType, receipt, store, signature]);
};

GameAnalyticsPlugin.addResourceEvent = function (flowType, currency, amount, itemType, itemId) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "addResourceEvent", [flowType, currency, amount, itemType, itemId]);
};

GameAnalyticsPlugin.addProgressionEvent = function (status, progression1, progression2, progression3) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "addProgressionEvent", [status, progression1, progression2, progression3]);
};

GameAnalyticsPlugin.addProgressionEventWithScore = function (status, progression1, progression2, progression3, score) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "addProgressionEventWithScore", [status, progression1, progression2, progression3, score]);
};

GameAnalyticsPlugin.addDesignEvent = function (eventId) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "addDesignEvent", [eventId]);
};

GameAnalyticsPlugin.addDesignEventWithValue = function (eventId, value) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "addDesignEventWithValue", [eventId, value]);
};

GameAnalyticsPlugin.addErrorEvent = function (severity, message) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "addErrorEvent", [severity, message]);
};

GameAnalyticsPlugin.setEnabledInfoLog = function (flag) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "setEnabledInfoLog", [flag]);
};

GameAnalyticsPlugin.setEnabledVerboseLog = function (flag) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "setEnabledVerboseLog", [flag]);
};

GameAnalyticsPlugin.setEnabledManualSessionHandling = function (flag) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "setEnabledManualSessionHandling", [flag]);
};

GameAnalyticsPlugin.configureAvailableCustomDimensions01 = function (json) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "configureAvailableCustomDimensions01", [json]);
};

GameAnalyticsPlugin.configureAvailableCustomDimensions02 = function (json) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "configureAvailableCustomDimensions02", [json]);
};

GameAnalyticsPlugin.configureAvailableCustomDimensions03 = function (json) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "configureAvailableCustomDimensions03", [json]);
};

GameAnalyticsPlugin.setCustomDimension01 = function (dimension) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "setCustomDimension01", [dimension]);
};

GameAnalyticsPlugin.setCustomDimension02 = function (dimension) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "setCustomDimension02", [dimension]);
};

GameAnalyticsPlugin.setCustomDimension03 = function (dimension) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "setCustomDimension03", [dimension]);
};

GameAnalyticsPlugin.setFacebookId = function (id) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "setFacebookId", [id]);
};

GameAnalyticsPlugin.setGender = function (gender) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "setGender", [gender]);
};

GameAnalyticsPlugin.setBirthYear = function (year) {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "setBirthYear", [year]);
};

GameAnalyticsPlugin.startSession = function () {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "startSession", []);
};

GameAnalyticsPlugin.endSession = function () {
  exec(null, GameAnalyticsPlugin._gameAnalyticsErrorEvent, PLUGIN_NAME, "endSession", []);
};


/******************************************************************************************************************/
/*                                                PRIVATE/INTERNAL                                                */
/******************************************************************************************************************/

/**
 * Error callback for AudioInputCapture start
 * @private
 */

GameAnalyticsPlugin._gameAnalyticsErrorEvent = function (e) {
    cordova.fireWindowEvent("gameanalyticserror", {message: e});
};

module.exports = GameAnalyticsPlugin;