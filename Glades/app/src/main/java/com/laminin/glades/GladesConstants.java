package com.laminin.glades;

import android.graphics.Color;

/**
 * Created by franklin.michael on 03/08/16.
 */

public class GladesConstants {
    // lollipop version code.
    public static final int LOLLIPOP_VERSION = 21;

    // distance between grid lines.
    public static int DISTANCE_BETWEEN_GRID_LINES = 400;

    // default screen density
    public static float DEFAULT_SCREEN_DENSITY = 3.5f;

    // default grid line widths.
    public static int GRID_LINE_WIDTH = 4;

    // Shared Pref stuff.
    public static String PREFERENCE_NAME = "com.laminin.dotsandboxes.PREFERENCE_FILE_KEY"; // shared pref file name
    public static String IS_OLD_USER = "is_new_user"; // shared pref key
    public static String OLD_USER = "old_user"; // shared pref value
    public static String DEFAULT = "default"; // shared pref default string value

    // default Grid start values.
    public static final int GRID_START_X = 50;
    public static final int GRID_START_Y = 50;

    // Glade grid color
    public static int GLADE_GRID_COLOR = Color.parseColor("#C2C2C2");

    // Glade home color
    public  static int GLADE_HOME_COLOR = Color.parseColor("#909090");



}
