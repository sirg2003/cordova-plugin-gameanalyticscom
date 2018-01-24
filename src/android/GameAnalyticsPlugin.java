package com.gameanalytics.plugin.GameAnalyticsPlugin;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import com.gameanalytics.sdk.*;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
/**
 * This class echoes a string called from JavaScript.
 */
public class GameAnalyticsPlugin extends CordovaPlugin {
  // Standard Debugging Variables
  private static final String LCAT = "GameAnalyticsPlugin";
  private boolean manualInit = false;
  /**
   * <p>
   * cordova.exec() method reference.
   * All exec() calls goes to this part.
   * </p>
   *
   * @param action          A {@link String} value method to be executed.
   * @param args            A {@link JSONArray} value parameters passed along with the action param.
   * @param callbackContext A {@link CallbackContext} function passed for executing callbacks.
   */
  @Override
  public boolean execute(String action, JSONArray args, final CallbackContext callback) throws JSONException {
    if (action.equals("initialize")) {
        final String gameKey = args.getString(0);
        final String gameSecret = args.getString(1);
        
        cordova.getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                if(manualInit == true) {
                    GameAnalytics.initializeWithGameKey(gameKey, gameSecret);
                } else {
                    GameAnalytics.initializeWithGameKey(cordova.getActivity(), gameKey, gameSecret);
                }
            }
        });
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("configureBuild")) {
        String build = args.getString(0);
        GameAnalytics.configureBuild(build);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("configureSdkGameEngineVersion")) {
        String version = args.getString(0);
        GameAnalytics.configureSdkGameEngineVersion(version);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("configureGameEngineVersion")) {
        String version = args.getString(0);
        GameAnalytics.configureGameEngineVersion(version);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("configureUserId")) {
        String id = args.getString(0);
        GameAnalytics.configureUserId(id);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("addBusinessEvent")) {
        String currency = args.getString(0);
        int amount = args.getInt(1);
        String itemType = args.getString(2);
        String itemId = args.getString(3);
        String cartType = args.getString(4);
        GameAnalytics.addBusinessEventWithCurrency(currency, amount, itemType, itemId, cartType);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("addBusinessEventWithReceipt")) {
        String currency = args.getString(0);
        int amount = args.getInt(1);
        String itemType = args.getString(2);
        String itemId = args.getString(3);
        String cartType = args.getString(4);
        String receipt = args.getString(5);
        String store = args.getString(6);
        String signature = args.getString(7);
        GameAnalytics.addBusinessEventWithCurrency(currency, amount, itemType, itemId, cartType, receipt, store, signature);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("addResourceEvent")) {
        int flowType = args.getInt(0);
        String currency = args.getString(1);
        int amount = args.getInt(2);
        String itemType = args.getString(3);
        String itemId = args.getString(4);
        // 0 - source (add/buy), 1 - sink (subtract)
        if (flowType == 0) {
          GameAnalytics.addResourceEventWithFlowType(GAResourceFlowType.Source, currency, amount, itemType, itemId);
        } else {
          GameAnalytics.addResourceEventWithFlowType(GAResourceFlowType.Sink, currency, amount, itemType, itemId);
        }
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("addProgressionEvent")) {
        int status = args.getInt(0);
        String progression1 = args.getString(1);
        String progression2 = args.getString(2);
        String progression3 = args.getString(3);
        // 1 - Start , 2 - Complete , 3 - Fail
        if (status == 1) {
          GameAnalytics.addProgressionEventWithProgressionStatus(GAProgressionStatus.Start, progression1, progression2, progression3);
        }
        if (status == 2) {
          GameAnalytics.addProgressionEventWithProgressionStatus(GAProgressionStatus.Complete, progression1, progression2, progression3);
        }
        if (status == 3) {
          GameAnalytics.addProgressionEventWithProgressionStatus(GAProgressionStatus.Fail, progression1, progression2, progression3);
        }
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("addProgressionEventWithScore")) {
        int status = args.getInt(0);
        String progression1 = args.getString(1);
        String progression2 = args.getString(2);
        String progression3 = args.getString(3);
        int score = args.getInt(4);
        // 1 - Start , 2 - Complete , 3 - Fail
        if (status == 1) {
          GameAnalytics.addProgressionEventWithProgressionStatus(GAProgressionStatus.Start, progression1, progression2, progression3, score);
        }
        if (status == 2) {
          GameAnalytics.addProgressionEventWithProgressionStatus(GAProgressionStatus.Complete, progression1, progression2, progression3, score);
        }
        if (status == 3) {
          GameAnalytics.addProgressionEventWithProgressionStatus(GAProgressionStatus.Fail, progression1, progression2, progression3, score);
        }
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("addDesignEvent")) {
        String eventId = args.getString(0);
        GameAnalytics.addDesignEventWithEventId(eventId);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("addDesignEventWithValue")) {
        String eventId = args.getString(0);
        int value = args.getInt(1);
        GameAnalytics.addDesignEventWithEventId(eventId, value);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("addErrorEvent")) {
        int severity = args.getInt(0);
        String message = args.getString(1);
        if (severity == 1) {
          GameAnalytics.addErrorEventWithSeverity(GAErrorSeverity.GAErrorSeverityDebug, message);
        }
        if (severity == 2) {
          GameAnalytics.addErrorEventWithSeverity(GAErrorSeverity.GAErrorSeverityInfo, message);
        }
        if (severity == 3) {
          GameAnalytics.addErrorEventWithSeverity(GAErrorSeverity.GAErrorSeverityWarning, message);
        }
        if (severity == 4) {
          GameAnalytics.addErrorEventWithSeverity(GAErrorSeverity.GAErrorSeverityError, message);
        }
        if (severity == 5) {
          GameAnalytics.addErrorEventWithSeverity(GAErrorSeverity.GAErrorSeverityCritical, message);
        }
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("setEnabledInfoLog")) {
        GameAnalytics.setEnabledInfoLog(true);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("setEnabledVerboseLog")) {
        GameAnalytics.setEnabledVerboseLog(true);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("setEnabledManualSessionHandling")) {
        manualInit = true;
        GameAnalytics.setEnabledManualSessionHandling(true);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("configureAvailableCustomDimensions01")) {
        String json = args.getString(0);
        ArrayList<String> list = new ArrayList<String>();

        try
        {
            JSONArray jsonArray = new JSONArray(json);
            for(int i = 0; i < jsonArray.length(); ++i)
            {
                list.add(jsonArray.getString(i));
            }
        }
        catch (JSONException e)
        {
        }

        GameAnalytics.configureAvailableCustomDimensions01(list.toArray(new String[0]));
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("configureAvailableCustomDimensions02")) {
        String json = args.getString(0);
        ArrayList<String> list = new ArrayList<String>();

        try
        {
            JSONArray jsonArray = new JSONArray(json);
            for(int i = 0; i < jsonArray.length(); ++i)
            {
                list.add(jsonArray.getString(i));
            }
        }
        catch (JSONException e)
        {
        }

        GameAnalytics.configureAvailableCustomDimensions02(list.toArray(new String[0]));
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("configureAvailableCustomDimensions03")) {
        String json = args.getString(0);
        ArrayList<String> list = new ArrayList<String>();

        try
        {
            JSONArray jsonArray = new JSONArray(json);
            for(int i = 0; i < jsonArray.length(); ++i)
            {
                list.add(jsonArray.getString(i));
            }
        }
        catch (JSONException e)
        {
        }

        GameAnalytics.configureAvailableCustomDimensions03(list.toArray(new String[0]));
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("setCustomDimension01")) {
        String dimension = args.getString(0);
        GameAnalytics.setCustomDimension01(dimension);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("setCustomDimension02")) {
        String dimension = args.getString(0);
        GameAnalytics.setCustomDimension02(dimension);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("setCustomDimension03")) {
        String dimension = args.getString(0);
        GameAnalytics.setCustomDimension03(dimension);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("setFacebookId")) {
        String id = args.getString(0);
        GameAnalytics.setFacebookId(id);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("setGender")) {
        int gender = args.getInt(0);
        if (gender == 1) {
          GameAnalytics.setGender("male");
        }
        if (gender == 2) {
          GameAnalytics.setGender("female");
        }
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("setBirthYear")) {
        int year = args.getInt(0);
        GameAnalytics.setBirthYear(year);
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("startSession")) {
        GameAnalytics.startSession();
        callback.success(); // Thread-safe.
        return true;
    } else if (action.equals("endSession")) {
        GameAnalytics.endSession();
        callback.success(); // Thread-safe.
        return true;
    }
    callback.error("Error"); // Thread-safe.
    return false;
  }
}
