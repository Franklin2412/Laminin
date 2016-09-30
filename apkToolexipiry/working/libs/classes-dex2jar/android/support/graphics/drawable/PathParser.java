package android.support.graphics.drawable;

import android.graphics.Path;
import android.util.Log;
import com.payu.testapp.R;
import java.util.ArrayList;

class PathParser {
    private static final String LOGTAG = "PathParser";

    private static class ExtractFloatResult {
        int mEndPosition;
        boolean mEndWithNegOrDot;

        private ExtractFloatResult() {
        }
    }

    public static class PathDataNode {
        float[] params;
        char type;

        private PathDataNode(char c, float[] fArr) {
            this.type = c;
            this.params = fArr;
        }

        private PathDataNode(PathDataNode pathDataNode) {
            this.type = pathDataNode.type;
            this.params = PathParser.copyOfRange(pathDataNode.params, 0, pathDataNode.params.length);
        }

        private static void addCommand(Path path, float[] fArr, char c, char c2, float[] fArr2) {
            int i;
            float f;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            float f5 = fArr[3];
            float f6 = fArr[4];
            float f7 = fArr[5];
            switch (c2) {
                case R.styleable.AppCompatTheme_textAppearanceSearchResultTitle /*65*/:
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /*97*/:
                    i = 7;
                    f = f5;
                    f5 = f4;
                    f4 = f3;
                    f3 = f2;
                    break;
                case R.styleable.AppCompatTheme_textColorSearchUrl /*67*/:
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /*99*/:
                    i = 6;
                    f = f5;
                    f5 = f4;
                    f4 = f3;
                    f3 = f2;
                    break;
                case R.styleable.AppCompatTheme_listPreferredItemPaddingLeft /*72*/:
                case R.styleable.AppCompatTheme_colorControlActivated /*86*/:
                case R.styleable.AppCompatTheme_editTextStyle /*104*/:
                case 'v':
                    i = 1;
                    f = f5;
                    f5 = f4;
                    f4 = f3;
                    f3 = f2;
                    break;
                case R.styleable.AppCompatTheme_textAppearanceListItem /*76*/:
                case R.styleable.AppCompatTheme_textAppearanceListItemSmall /*77*/:
                case R.styleable.AppCompatTheme_colorAccent /*84*/:
                case R.styleable.AppCompatTheme_ratingBarStyleSmall /*108*/:
                case R.styleable.AppCompatTheme_seekBarStyle /*109*/:
                case 't':
                    i = 2;
                    f = f5;
                    f5 = f4;
                    f4 = f3;
                    f3 = f2;
                    break;
                case R.styleable.AppCompatTheme_listChoiceBackgroundIndicator /*81*/:
                case R.styleable.AppCompatTheme_colorPrimaryDark /*83*/:
                case 'q':
                case 's':
                    i = 4;
                    f = f5;
                    f5 = f4;
                    f4 = f3;
                    f3 = f2;
                    break;
                case R.styleable.AppCompatTheme_controlBackground /*90*/:
                case 'z':
                    path.close();
                    path.moveTo(f6, f7);
                    i = 2;
                    f5 = f6;
                    f4 = f7;
                    f3 = f6;
                    f = f7;
                    break;
                default:
                    i = 2;
                    f = f5;
                    f5 = f4;
                    f4 = f3;
                    f3 = f2;
                    break;
            }
            float f8 = f7;
            float f9 = f6;
            float f10 = f4;
            float f11 = f3;
            for (int i2 = 0; i2 < fArr2.length; i2 += i) {
                switch (c2) {
                    case R.styleable.AppCompatTheme_textAppearanceSearchResultTitle /*65*/:
                        drawArc(path, f11, f10, fArr2[i2 + 5], fArr2[i2 + 6], fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                        f5 = fArr2[i2 + 5];
                        f = fArr2[i2 + 6];
                        f7 = f8;
                        f6 = f9;
                        f4 = f;
                        f3 = f5;
                        break;
                    case R.styleable.AppCompatTheme_textColorSearchUrl /*67*/:
                        path.cubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3], fArr2[i2 + 4], fArr2[i2 + 5]);
                        f6 = fArr2[i2 + 4];
                        f7 = fArr2[i2 + 5];
                        f5 = fArr2[i2 + 2];
                        f = fArr2[i2 + 3];
                        f4 = f7;
                        f3 = f6;
                        f7 = f8;
                        f6 = f9;
                        break;
                    case R.styleable.AppCompatTheme_listPreferredItemPaddingLeft /*72*/:
                        path.lineTo(fArr2[i2 + 0], f10);
                        f7 = f8;
                        f4 = f10;
                        f3 = fArr2[i2 + 0];
                        f6 = f9;
                        break;
                    case R.styleable.AppCompatTheme_textAppearanceListItem /*76*/:
                        path.lineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                        f6 = fArr2[i2 + 0];
                        f4 = fArr2[i2 + 1];
                        f3 = f6;
                        f7 = f8;
                        f6 = f9;
                        break;
                    case R.styleable.AppCompatTheme_textAppearanceListItemSmall /*77*/:
                        f6 = fArr2[i2 + 0];
                        f7 = fArr2[i2 + 1];
                        if (i2 <= 0) {
                            path.moveTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f4 = f7;
                            f3 = f6;
                            break;
                        }
                        path.lineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                        f4 = f7;
                        f3 = f6;
                        f7 = f8;
                        f6 = f9;
                        break;
                    case R.styleable.AppCompatTheme_listChoiceBackgroundIndicator /*81*/:
                        path.quadTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        f5 = fArr2[i2 + 0];
                        f = fArr2[i2 + 1];
                        f6 = fArr2[i2 + 2];
                        f4 = fArr2[i2 + 3];
                        f3 = f6;
                        f7 = f8;
                        f6 = f9;
                        break;
                    case R.styleable.AppCompatTheme_colorPrimaryDark /*83*/:
                        if (c == 'c' || c == 's' || c == 'C' || c == 'S') {
                            f7 = (2.0f * f11) - f5;
                            f5 = (2.0f * f10) - f;
                        } else {
                            f7 = f11;
                            f5 = f10;
                        }
                        path.cubicTo(f7, f5, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        f5 = fArr2[i2 + 0];
                        f = fArr2[i2 + 1];
                        f6 = fArr2[i2 + 2];
                        f4 = fArr2[i2 + 3];
                        f3 = f6;
                        f7 = f8;
                        f6 = f9;
                        break;
                    case R.styleable.AppCompatTheme_colorAccent /*84*/:
                        if (c == 'q' || c == 't' || c == 'Q' || c == 'T') {
                            f5 = (2.0f * f11) - f5;
                            f = (2.0f * f10) - f;
                        } else {
                            f5 = f11;
                            f = f10;
                        }
                        path.quadTo(f5, f, fArr2[i2 + 0], fArr2[i2 + 1]);
                        f6 = fArr2[i2 + 0];
                        f4 = fArr2[i2 + 1];
                        f3 = f6;
                        f7 = f8;
                        f6 = f9;
                        break;
                    case R.styleable.AppCompatTheme_colorControlActivated /*86*/:
                        path.lineTo(f11, fArr2[i2 + 0]);
                        f6 = f9;
                        f4 = fArr2[i2 + 0];
                        f3 = f11;
                        f7 = f8;
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /*97*/:
                        drawArc(path, f11, f10, fArr2[i2 + 5] + f11, fArr2[i2 + 6] + f10, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                        f5 = f11 + fArr2[i2 + 5];
                        f = fArr2[i2 + 6] + f10;
                        f7 = f8;
                        f6 = f9;
                        f4 = f;
                        f3 = f5;
                        break;
                    case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /*99*/:
                        path.rCubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3], fArr2[i2 + 4], fArr2[i2 + 5]);
                        f5 = f11 + fArr2[i2 + 2];
                        f = fArr2[i2 + 3] + f10;
                        f4 = fArr2[i2 + 5] + f10;
                        f3 = f11 + fArr2[i2 + 4];
                        f7 = f8;
                        f6 = f9;
                        break;
                    case R.styleable.AppCompatTheme_editTextStyle /*104*/:
                        path.rLineTo(fArr2[i2 + 0], 0.0f);
                        f7 = f8;
                        f4 = f10;
                        f3 = f11 + fArr2[i2 + 0];
                        f6 = f9;
                        break;
                    case R.styleable.AppCompatTheme_ratingBarStyleSmall /*108*/:
                        path.rLineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                        f4 = fArr2[i2 + 1] + f10;
                        f3 = f11 + fArr2[i2 + 0];
                        f7 = f8;
                        f6 = f9;
                        break;
                    case R.styleable.AppCompatTheme_seekBarStyle /*109*/:
                        f6 = f11 + fArr2[i2 + 0];
                        f7 = fArr2[i2 + 1] + f10;
                        if (i2 <= 0) {
                            path.rMoveTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f4 = f7;
                            f3 = f6;
                            break;
                        }
                        path.rLineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                        f4 = f7;
                        f3 = f6;
                        f7 = f8;
                        f6 = f9;
                        break;
                    case 'q':
                        path.rQuadTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        f5 = f11 + fArr2[i2 + 0];
                        f = fArr2[i2 + 1] + f10;
                        f4 = fArr2[i2 + 3] + f10;
                        f3 = f11 + fArr2[i2 + 2];
                        f7 = f8;
                        f6 = f9;
                        break;
                    case 's':
                        if (c == 'c' || c == 's' || c == 'C' || c == 'S') {
                            f7 = f11 - f5;
                            f5 = f10 - f;
                        } else {
                            f5 = 0.0f;
                            f7 = 0.0f;
                        }
                        path.rCubicTo(f7, f5, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        f5 = f11 + fArr2[i2 + 0];
                        f = fArr2[i2 + 1] + f10;
                        f4 = fArr2[i2 + 3] + f10;
                        f3 = f11 + fArr2[i2 + 2];
                        f7 = f8;
                        f6 = f9;
                        break;
                    case 't':
                        if (c == 'q' || c == 't' || c == 'Q' || c == 'T') {
                            f7 = f10 - f;
                            f = f11 - f5;
                        } else {
                            f = 0.0f;
                            f7 = 0.0f;
                        }
                        path.rQuadTo(f, f7, fArr2[i2 + 0], fArr2[i2 + 1]);
                        f5 = f11 + f;
                        f = f10 + f7;
                        f4 = fArr2[i2 + 1] + f10;
                        f3 = f11 + fArr2[i2 + 0];
                        f7 = f8;
                        f6 = f9;
                        break;
                    case 'v':
                        path.rLineTo(0.0f, fArr2[i2 + 0]);
                        f6 = f9;
                        f4 = fArr2[i2 + 0] + f10;
                        f3 = f11;
                        f7 = f8;
                        break;
                    default:
                        f7 = f8;
                        f6 = f9;
                        f4 = f10;
                        f3 = f11;
                        break;
                }
                c = c2;
                f8 = f7;
                f9 = f6;
                f10 = f4;
                f11 = f3;
            }
            fArr[0] = f11;
            fArr[1] = f10;
            fArr[2] = f5;
            fArr[3] = f;
            fArr[4] = f9;
            fArr[5] = f8;
        }

        private static void arcToBezier(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
            int ceil = (int) Math.ceil(Math.abs((4.0d * d9) / 3.141592653589793d));
            double cos = Math.cos(d7);
            double sin = Math.sin(d7);
            double cos2 = Math.cos(d8);
            double sin2 = Math.sin(d8);
            double d10 = (((-d3) * cos) * sin2) - ((d4 * sin) * cos2);
            sin2 = (sin2 * ((-d3) * sin)) + (cos2 * (d4 * cos));
            double d11 = d9 / ((double) ceil);
            int i = 0;
            cos2 = d10;
            while (i < ceil) {
                double d12 = d8 + d11;
                d10 = Math.sin(d12);
                double cos3 = Math.cos(d12);
                double d13 = (((d3 * cos) * cos3) + d) - ((d4 * sin) * d10);
                double d14 = (((d3 * sin) * cos3) + d2) + ((d4 * cos) * d10);
                double d15 = (((-d3) * cos) * d10) - ((d4 * sin) * cos3);
                cos3 = (cos3 * (d4 * cos)) + (d10 * ((-d3) * sin));
                d10 = Math.tan((d12 - d8) / 2.0d);
                d10 = ((Math.sqrt((d10 * (3.0d * d10)) + 4.0d) - 1.0d) * Math.sin(d12 - d8)) / 3.0d;
                Path path2 = path;
                path2.cubicTo((float) ((cos2 * d10) + d5), (float) ((sin2 * d10) + d6), (float) (d13 - (d10 * d15)), (float) (d14 - (d10 * cos3)), (float) d13, (float) d14);
                i++;
                d8 = d12;
                d6 = d14;
                d5 = d13;
                sin2 = cos3;
                cos2 = d15;
            }
        }

        private static void drawArc(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double toRadians = Math.toRadians((double) f7);
            double cos = Math.cos(toRadians);
            double sin = Math.sin(toRadians);
            double d = ((((double) f) * cos) + (((double) f2) * sin)) / ((double) f5);
            double d2 = ((((double) (-f)) * sin) + (((double) f2) * cos)) / ((double) f6);
            double d3 = ((((double) f3) * cos) + (((double) f4) * sin)) / ((double) f5);
            double d4 = ((((double) (-f3)) * sin) + (((double) f4) * cos)) / ((double) f6);
            double d5 = d - d3;
            double d6 = d2 - d4;
            double d7 = (d + d3) / 2.0d;
            double d8 = (d2 + d4) / 2.0d;
            double d9 = (d5 * d5) + (d6 * d6);
            if (d9 == 0.0d) {
                Log.w(PathParser.LOGTAG, " Points are coincident");
                return;
            }
            double d10 = (1.0d / d9) - 0.25d;
            if (d10 < 0.0d) {
                Log.w(PathParser.LOGTAG, "Points are too far apart " + d9);
                float sqrt = (float) (Math.sqrt(d9) / 1.99999d);
                drawArc(path, f, f2, f3, f4, f5 * sqrt, f6 * sqrt, f7, z, z2);
                return;
            }
            d9 = Math.sqrt(d10);
            d10 = d9 * d5;
            d5 = d9 * d6;
            if (z == z2) {
                d5 = d7 - d5;
                d6 = d8 + d10;
            } else {
                d5 += d7;
                d6 = d8 - d10;
            }
            d7 = Math.atan2(d2 - d6, d - d5);
            d4 = Math.atan2(d4 - d6, d3 - d5) - d7;
            if (z2 != (d4 >= 0.0d)) {
                d4 = d4 > 0.0d ? d4 - 6.283185307179586d : d4 + 6.283185307179586d;
            }
            d5 *= (double) f5;
            d = ((double) f6) * d6;
            arcToBezier(path, (d5 * cos) - (d * sin), (d * cos) + (d5 * sin), (double) f5, (double) f6, (double) f, (double) f2, toRadians, d7, d4);
        }

        public static void nodesToPath(PathDataNode[] pathDataNodeArr, Path path) {
            float[] fArr = new float[6];
            char c = 'm';
            for (int i = 0; i < pathDataNodeArr.length; i++) {
                addCommand(path, fArr, c, pathDataNodeArr[i].type, pathDataNodeArr[i].params);
                c = pathDataNodeArr[i].type;
            }
        }

        public void interpolatePathDataNode(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f) {
            for (int i = 0; i < pathDataNode.params.length; i++) {
                this.params[i] = (pathDataNode.params[i] * (1.0f - f)) + (pathDataNode2.params[i] * f);
            }
        }
    }

    PathParser() {
    }

    private static void addNode(ArrayList<PathDataNode> arrayList, char c, float[] fArr) {
        arrayList.add(new PathDataNode(fArr, null));
    }

    public static boolean canMorph(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        int i = 0;
        while (i < pathDataNodeArr.length) {
            if (pathDataNodeArr[i].type != pathDataNodeArr2[i].type || pathDataNodeArr[i].params.length != pathDataNodeArr2[i].params.length) {
                return false;
            }
            i++;
        }
        return true;
    }

    private static float[] copyOfRange(float[] fArr, int i, int i2) {
        if (i > i2) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (i < 0 || i > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = i2 - i;
        length = Math.min(i3, length - i);
        Object obj = new float[i3];
        System.arraycopy(fArr, i, obj, 0, length);
        return obj;
    }

    public static PathDataNode[] createNodesFromPathData(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int nextStart = nextStart(str, i);
            String trim = str.substring(i2, nextStart).trim();
            if (trim.length() > 0) {
                addNode(arrayList, trim.charAt(0), getFloats(trim));
            }
            i = nextStart + 1;
            i2 = nextStart;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            addNode(arrayList, str.charAt(i2), new float[0]);
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[arrayList.size()]);
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        PathDataNode[] createNodesFromPathData = createNodesFromPathData(str);
        if (createNodesFromPathData == null) {
            return null;
        }
        try {
            PathDataNode.nodesToPath(createNodesFromPathData, path);
            return path;
        } catch (Throwable e) {
            throw new RuntimeException("Error in parsing " + str, e);
        }
    }

    public static PathDataNode[] deepCopyNodes(PathDataNode[] pathDataNodeArr) {
        if (pathDataNodeArr == null) {
            return null;
        }
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            pathDataNodeArr2[i] = new PathDataNode(null);
        }
        return pathDataNodeArr2;
    }

    private static void extract(String str, int i, ExtractFloatResult extractFloatResult) {
        int i2;
        extractFloatResult.mEndWithNegOrDot = false;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (i2 = i; i2 < str.length(); i2++) {
            switch (str.charAt(i2)) {
                case R.styleable.AppCompatTheme_actionModeCutDrawable /*32*/:
                case R.styleable.AppCompatTheme_listDividerAlertDialog /*44*/:
                    z = false;
                    z2 = true;
                    break;
                case R.styleable.AppCompatTheme_actionDropDownStyle /*45*/:
                    if (i2 != i && !r0) {
                        extractFloatResult.mEndWithNegOrDot = true;
                        z = false;
                        z2 = true;
                        break;
                    }
                    z = false;
                    break;
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /*46*/:
                    if (!z3) {
                        z3 = true;
                        z = false;
                        break;
                    }
                    extractFloatResult.mEndWithNegOrDot = true;
                    z = false;
                    z2 = true;
                    break;
                case R.styleable.AppCompatTheme_listPreferredItemHeight /*69*/:
                case R.styleable.AppCompatTheme_buttonStyleSmall /*101*/:
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
            if (z2) {
                extractFloatResult.mEndPosition = i2;
            }
        }
        extractFloatResult.mEndPosition = i2;
    }

    private static float[] getFloats(String str) {
        if (((str.charAt(0) == 'z' ? 1 : 0) | (str.charAt(0) == 'Z' ? 1 : 0)) != 0) {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            ExtractFloatResult extractFloatResult = new ExtractFloatResult();
            int length = str.length();
            int i = 0;
            int i2 = 1;
            while (i2 < length) {
                int i3;
                extract(str, i2, extractFloatResult);
                int i4 = extractFloatResult.mEndPosition;
                if (i2 < i4) {
                    i3 = i + 1;
                    fArr[i] = Float.parseFloat(str.substring(i2, i4));
                } else {
                    i3 = i;
                }
                if (extractFloatResult.mEndWithNegOrDot) {
                    i2 = i4;
                    i = i3;
                } else {
                    i2 = i4 + 1;
                    i = i3;
                }
            }
            return copyOfRange(fArr, 0, i);
        } catch (Throwable e) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e);
        }
    }

    private static int nextStart(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (((charAt - 65) * (charAt - 90) <= 0 || (charAt - 97) * (charAt - 122) <= 0) && charAt != 'e' && charAt != 'E') {
                break;
            }
            i++;
        }
        return i;
    }

    public static void updateNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        for (int i = 0; i < pathDataNodeArr2.length; i++) {
            pathDataNodeArr[i].type = pathDataNodeArr2[i].type;
            for (int i2 = 0; i2 < pathDataNodeArr2[i].params.length; i2++) {
                pathDataNodeArr[i].params[i2] = pathDataNodeArr2[i].params[i2];
            }
        }
    }
}
