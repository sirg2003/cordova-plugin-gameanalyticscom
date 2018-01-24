var GameAnalyticsPlugin = exports;
var exec = require('cordova/exec');

GameAnalyticsPlugin.pluginVersion = '1.0.0';

GameAnalyticsPlugin.initialize = function (gameKey, gameSecret) {
  exec(null, null, "GameAnalyticsPlugin", "initialize", [gameKey, gameSecret]);
};

GameAnalyticsPlugin.configureBuild = function (build) {
  //exec(success, error, 'GameAnalyticsPlugin', 'configureBuild', [arg0]);
  exec(null, null, "GameAnalyticsPlugin", "configureBuild", [build]);
};

GameAnalyticsPlugin.configureSdkGameEngineVersion = function (version) {
  exec(null, null, "GameAnalyticsPlugin", "configureSdkGameEngineVersion", [version]);
};

GameAnalyticsPlugin.configureGameEngineVersion = function (version) {
  exec(null, null, "GameAnalyticsPlugin", "configureGameEngineVersion", [version]);
};

GameAnalyticsPlugin.configureUserId = function (id) {
  exec(null, null, "GameAnalyticsPlugin", "configureUserId", [id]);
};

GameAnalyticsPlugin.addBusinessEvent = function (currency, amount, itemType, itemId, cartType) {
  exec(null, null, "GameAnalyticsPlugin", "addBusinessEvent", [currency, amount, itemType, itemId, cartType]);
};

GameAnalyticsPlugin.addBusinessEventWithReceipt = function (currency, amount, itemType, itemId, cartType, receipt, store, signature) {
  exec(null, null, "GameAnalyticsPlugin", "addBusinessEventWithReceipt", [currency, amount, itemType, itemId, cartType, receipt, store, signature]);
};

GameAnalyticsPlugin.addResourceEvent = function (flowType, currency, amount, itemType, itemId) {
  exec(null, null, "GameAnalyticsPlugin", "addResourceEvent", [flowType, currency, amount, itemType, itemId]);
};

GameAnalyticsPlugin.addProgressionEvent = function (status, progression1, progression2, progression3) {
  exec(null, null, "GameAnalyticsPlugin", "addProgressionEvent", [status, progression1, progression2, progression3]);
};

GameAnalyticsPlugin.addProgressionEventWithScore = function (status, progression1, progression2, progression3, score) {
  exec(null, null, "GameAnalyticsPlugin", "addProgressionEventWithScore", [status, progression1, progression2, progression3, score]);
};

GameAnalyticsPlugin.addDesignEvent = function (eventId) {
  exec(null, null, "GameAnalyticsPlugin", "addDesignEvent", [eventId]);
};

GameAnalyticsPlugin.addDesignEventWithValue = function (eventId, value) {
  exec(null, null, "GameAnalyticsPlugin", "addDesignEventWithValue", [eventId, value]);
};

GameAnalyticsPlugin.addErrorEvent = function (severity, message) {
  exec(null, null, "GameAnalyticsPlugin", "addErrorEvent", [severity, message]);
};

GameAnalyticsPlugin.setEnabledInfoLog = function () {
  exec(null, null, "GameAnalyticsPlugin", "setEnabledInfoLog", []);
};

GameAnalyticsPlugin.setEnabledVerboseLog = function () {
  exec(null, null, "GameAnalyticsPlugin", "setEnabledVerboseLog", []);
};

GameAnalyticsPlugin.setEnabledManualSessionHandling = function () {
  exec(null, null, "GameAnalyticsPlugin", "setEnabledManualSessionHandling", []);
};

GameAnalyticsPlugin.configureAvailableCustomDimensions01 = function (json) {
  exec(null, null, "GameAnalyticsPlugin", "configureAvailableCustomDimensions01", [json]);
};

GameAnalyticsPlugin.configureAvailableCustomDimensions02 = function (json) {
  exec(null, null, "GameAnalyticsPlugin", "configureAvailableCustomDimensions02", [json]);
};

GameAnalyticsPlugin.configureAvailableCustomDimensions03 = function (json) {
  exec(null, null, "GameAnalyticsPlugin", "configureAvailableCustomDimensions03", [json]);
};

GameAnalyticsPlugin.setCustomDimension01 = function (dimension) {
  exec(null, null, "GameAnalyticsPlugin", "setCustomDimension01", [dimension]);
};

GameAnalyticsPlugin.setCustomDimension02 = function (dimension) {
  exec(null, null, "GameAnalyticsPlugin", "setCustomDimension02", [dimension]);
};

GameAnalyticsPlugin.setCustomDimension03 = function (dimension) {
  exec(null, null, "GameAnalyticsPlugin", "setCustomDimension03", [dimension]);
};

GameAnalyticsPlugin.setFacebookId = function (id) {
  exec(null, null, "GameAnalyticsPlugin", "setFacebookId", [id]);
};

GameAnalyticsPlugin.setGender = function (gender) {
  exec(null, null, "GameAnalyticsPlugin", "setGender", [gender]);
};

GameAnalyticsPlugin.setBirthYear = function (year) {
  exec(null, null, "GameAnalyticsPlugin", "setBirthYear", [year]);
};

GameAnalyticsPlugin.startSession = function () {
  exec(null, null, "GameAnalyticsPlugin", "startSession", []);
};

GameAnalyticsPlugin.endSession = function () {
  exec(null, null, "GameAnalyticsPlugin", "endSession", []);
};