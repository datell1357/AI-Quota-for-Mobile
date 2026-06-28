package defpackage;

import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.util.Log;
import com.google.api.client.http.HttpStatusCodes;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import java.util.zip.CRC32;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t31 {
    public static final byte[] A;
    public static final String[] B;
    public static final int[] C;
    public static final byte[] D;
    public static final q31 E;
    public static final q31[][] F;
    public static final q31[] G;
    public static final HashMap[] H;
    public static final HashMap[] I;
    public static final Set J;
    public static final HashMap K;
    public static final Charset L;
    public static final byte[] M;
    public static final byte[] N;
    public static final boolean l = Log.isLoggable("ExifInterface", 3);
    public static final int[] m;
    public static final int[] n;
    public static final byte[] o;
    public static final byte[] p;
    public static final byte[] q;
    public static final byte[] r;
    public static final byte[] s;
    public static final byte[] t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final byte[] f328u;
    public static final byte[] v;
    public static final byte[] w;
    public static final byte[] x;
    public static final byte[] y;
    public static final byte[] z;
    public final FileDescriptor a;
    public int b;
    public final HashMap[] c;
    public final HashSet d;
    public ByteOrder e;
    public boolean f;
    public int g;
    public int h;
    public int i;
    public int j;
    public p31 k;

    static {
        Arrays.asList(1, 6, 3, 8);
        Arrays.asList(2, 7, 4, 5);
        m = new int[]{8, 8, 8};
        n = new int[]{8};
        o = new byte[]{-1, -40, -1};
        p = new byte[]{102, 116, 121, 112};
        q = new byte[]{109, 105, 102, 49};
        r = new byte[]{104, 101, 105, 99};
        s = new byte[]{97, 118, 105, 102};
        t = new byte[]{97, 118, 105, 115};
        f328u = new byte[]{79, 76, 89, 77, 80, 0};
        v = new byte[]{79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
        w = new byte[]{-119, 80, 78, 71, 13, 10, 26, 10};
        x = "XML:com.adobe.xmp\u0000\u0000\u0000\u0000\u0000".getBytes(StandardCharsets.UTF_8);
        y = new byte[]{82, 73, 70, 70};
        z = new byte[]{87, 69, 66, 80};
        A = new byte[]{69, 88, 73, 70};
        "VP8X".getBytes(Charset.defaultCharset());
        "VP8L".getBytes(Charset.defaultCharset());
        "VP8 ".getBytes(Charset.defaultCharset());
        "ANIM".getBytes(Charset.defaultCharset());
        "ANMF".getBytes(Charset.defaultCharset());
        B = new String[]{"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
        C = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
        D = new byte[]{65, 83, 67, 73, 73, 0, 0, 0};
        q31[] q31VarArr = {new q31(254, "NewSubfileType", 4), new q31(255, "SubfileType", 4), new q31(256, 3, 4, "ImageWidth"), new q31(257, 3, 4, "ImageLength"), new q31(258, "BitsPerSample", 3), new q31(259, "Compression", 3), new q31(262, "PhotometricInterpretation", 3), new q31(270, "ImageDescription", 2), new q31(271, "Make", 2), new q31(272, "Model", 2), new q31(273, 3, 4, "StripOffsets"), new q31(274, "Orientation", 3), new q31(277, "SamplesPerPixel", 3), new q31(278, 3, 4, "RowsPerStrip"), new q31(279, 3, 4, "StripByteCounts"), new q31(282, "XResolution", 5), new q31(283, "YResolution", 5), new q31(284, "PlanarConfiguration", 3), new q31(296, "ResolutionUnit", 3), new q31(HttpStatusCodes.STATUS_CODE_MOVED_PERMANENTLY, "TransferFunction", 3), new q31(305, "Software", 2), new q31(306, "DateTime", 2), new q31(315, "Artist", 2), new q31(318, "WhitePoint", 5), new q31(319, "PrimaryChromaticities", 5), new q31(330, "SubIFDPointer", 4), new q31(513, "JPEGInterchangeFormat", 4), new q31(514, "JPEGInterchangeFormatLength", 4), new q31(529, "YCbCrCoefficients", 5), new q31(530, "YCbCrSubSampling", 3), new q31(531, "YCbCrPositioning", 3), new q31(532, "ReferenceBlackWhite", 5), new q31(33432, "Copyright", 2), new q31(34665, "ExifIFDPointer", 4), new q31(34853, "GPSInfoIFDPointer", 4), new q31(4, "SensorTopBorder", 4), new q31(5, "SensorLeftBorder", 4), new q31(6, "SensorBottomBorder", 4), new q31(7, "SensorRightBorder", 4), new q31(23, "ISO", 3), new q31(46, "JpgFromRaw", 7), new q31(700, "Xmp", 1)};
        q31[] q31VarArr2 = {new q31(33434, "ExposureTime", 5), new q31(33437, "FNumber", 5), new q31(34850, "ExposureProgram", 3), new q31(34852, "SpectralSensitivity", 2), new q31(34855, "PhotographicSensitivity", 3), new q31(34856, "OECF", 7), new q31(34864, "SensitivityType", 3), new q31(34865, "StandardOutputSensitivity", 4), new q31(34866, "RecommendedExposureIndex", 4), new q31(34867, "ISOSpeed", 4), new q31(34868, "ISOSpeedLatitudeyyy", 4), new q31(34869, "ISOSpeedLatitudezzz", 4), new q31(36864, "ExifVersion", 2), new q31(36867, "DateTimeOriginal", 2), new q31(36868, "DateTimeDigitized", 2), new q31(36880, "OffsetTime", 2), new q31(36881, "OffsetTimeOriginal", 2), new q31(36882, "OffsetTimeDigitized", 2), new q31(37121, "ComponentsConfiguration", 7), new q31(37122, "CompressedBitsPerPixel", 5), new q31(37377, "ShutterSpeedValue", 10), new q31(37378, "ApertureValue", 5), new q31(37379, "BrightnessValue", 10), new q31(37380, "ExposureBiasValue", 10), new q31(37381, "MaxApertureValue", 5), new q31(37382, "SubjectDistance", 5), new q31(37383, "MeteringMode", 3), new q31(37384, "LightSource", 3), new q31(37385, "Flash", 3), new q31(37386, "FocalLength", 5), new q31(37396, "SubjectArea", 3), new q31(37500, "MakerNote", 7), new q31(37510, "UserComment", 7), new q31(37520, "SubSecTime", 2), new q31(37521, "SubSecTimeOriginal", 2), new q31(37522, "SubSecTimeDigitized", 2), new q31(40960, "FlashpixVersion", 7), new q31(40961, "ColorSpace", 3), new q31(40962, 3, 4, "PixelXDimension"), new q31(40963, 3, 4, "PixelYDimension"), new q31(40964, "RelatedSoundFile", 2), new q31(40965, "InteroperabilityIFDPointer", 4), new q31(41483, "FlashEnergy", 5), new q31(41484, "SpatialFrequencyResponse", 7), new q31(41486, "FocalPlaneXResolution", 5), new q31(41487, "FocalPlaneYResolution", 5), new q31(41488, "FocalPlaneResolutionUnit", 3), new q31(41492, "SubjectLocation", 3), new q31(41493, "ExposureIndex", 5), new q31(41495, "SensingMethod", 3), new q31(41728, "FileSource", 7), new q31(41729, "SceneType", 7), new q31(41730, "CFAPattern", 7), new q31(41985, "CustomRendered", 3), new q31(41986, "ExposureMode", 3), new q31(41987, "WhiteBalance", 3), new q31(41988, "DigitalZoomRatio", 5), new q31(41989, "FocalLengthIn35mmFilm", 3), new q31(41990, "SceneCaptureType", 3), new q31(41991, "GainControl", 3), new q31(41992, "Contrast", 3), new q31(41993, "Saturation", 3), new q31(41994, "Sharpness", 3), new q31(41995, "DeviceSettingDescription", 7), new q31(41996, "SubjectDistanceRange", 3), new q31(42016, "ImageUniqueID", 2), new q31(42032, "CameraOwnerName", 2), new q31(42033, "BodySerialNumber", 2), new q31(42034, "LensSpecification", 5), new q31(42035, "LensMake", 2), new q31(42036, "LensModel", 2), new q31(42240, "Gamma", 5), new q31(50706, "DNGVersion", 1), new q31(50720, 3, 4, "DefaultCropSize")};
        q31[] q31VarArr3 = {new q31(0, "GPSVersionID", 1), new q31(1, "GPSLatitudeRef", 2), new q31(2, 5, 10, "GPSLatitude"), new q31(3, "GPSLongitudeRef", 2), new q31(4, 5, 10, "GPSLongitude"), new q31(5, "GPSAltitudeRef", 1), new q31(6, "GPSAltitude", 5), new q31(7, "GPSTimeStamp", 5), new q31(8, "GPSSatellites", 2), new q31(9, "GPSStatus", 2), new q31(10, "GPSMeasureMode", 2), new q31(11, "GPSDOP", 5), new q31(12, "GPSSpeedRef", 2), new q31(13, "GPSSpeed", 5), new q31(14, "GPSTrackRef", 2), new q31(15, "GPSTrack", 5), new q31(16, "GPSImgDirectionRef", 2), new q31(17, "GPSImgDirection", 5), new q31(18, "GPSMapDatum", 2), new q31(19, "GPSDestLatitudeRef", 2), new q31(20, "GPSDestLatitude", 5), new q31(21, "GPSDestLongitudeRef", 2), new q31(22, "GPSDestLongitude", 5), new q31(23, "GPSDestBearingRef", 2), new q31(24, "GPSDestBearing", 5), new q31(25, "GPSDestDistanceRef", 2), new q31(26, "GPSDestDistance", 5), new q31(27, "GPSProcessingMethod", 7), new q31(28, "GPSAreaInformation", 7), new q31(29, "GPSDateStamp", 2), new q31(30, "GPSDifferential", 3), new q31(31, "GPSHPositioningError", 5)};
        q31[] q31VarArr4 = {new q31(1, "InteroperabilityIndex", 2)};
        q31[] q31VarArr5 = {new q31(254, "NewSubfileType", 4), new q31(255, "SubfileType", 4), new q31(256, 3, 4, "ThumbnailImageWidth"), new q31(257, 3, 4, "ThumbnailImageLength"), new q31(258, "BitsPerSample", 3), new q31(259, "Compression", 3), new q31(262, "PhotometricInterpretation", 3), new q31(270, "ImageDescription", 2), new q31(271, "Make", 2), new q31(272, "Model", 2), new q31(273, 3, 4, "StripOffsets"), new q31(274, "ThumbnailOrientation", 3), new q31(277, "SamplesPerPixel", 3), new q31(278, 3, 4, "RowsPerStrip"), new q31(279, 3, 4, "StripByteCounts"), new q31(282, "XResolution", 5), new q31(283, "YResolution", 5), new q31(284, "PlanarConfiguration", 3), new q31(296, "ResolutionUnit", 3), new q31(HttpStatusCodes.STATUS_CODE_MOVED_PERMANENTLY, "TransferFunction", 3), new q31(305, "Software", 2), new q31(306, "DateTime", 2), new q31(315, "Artist", 2), new q31(318, "WhitePoint", 5), new q31(319, "PrimaryChromaticities", 5), new q31(330, "SubIFDPointer", 4), new q31(513, "JPEGInterchangeFormat", 4), new q31(514, "JPEGInterchangeFormatLength", 4), new q31(529, "YCbCrCoefficients", 5), new q31(530, "YCbCrSubSampling", 3), new q31(531, "YCbCrPositioning", 3), new q31(532, "ReferenceBlackWhite", 5), new q31(33432, "Copyright", 2), new q31(34665, "ExifIFDPointer", 4), new q31(34853, "GPSInfoIFDPointer", 4), new q31(50706, "DNGVersion", 1), new q31(50720, 3, 4, "DefaultCropSize")};
        E = new q31(273, "StripOffsets", 3);
        F = new q31[][]{q31VarArr, q31VarArr2, q31VarArr3, q31VarArr4, q31VarArr5, q31VarArr, new q31[]{new q31(256, "ThumbnailImage", 7), new q31(8224, "CameraSettingsIFDPointer", 4), new q31(8256, "ImageProcessingIFDPointer", 4)}, new q31[]{new q31(257, "PreviewImageStart", 4), new q31(258, "PreviewImageLength", 4)}, new q31[]{new q31(4371, "AspectFrame", 3)}, new q31[]{new q31(55, "ColorSpace", 3)}};
        G = new q31[]{new q31(330, "SubIFDPointer", 4), new q31(34665, "ExifIFDPointer", 4), new q31(34853, "GPSInfoIFDPointer", 4), new q31(40965, "InteroperabilityIFDPointer", 4), new q31(8224, "CameraSettingsIFDPointer", 1), new q31(8256, "ImageProcessingIFDPointer", 1)};
        H = new HashMap[10];
        I = new HashMap[10];
        J = Collections.unmodifiableSet(new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance")));
        K = new HashMap();
        Charset charsetForName = Charset.forName("US-ASCII");
        L = charsetForName;
        M = "Exif\u0000\u0000".getBytes(charsetForName);
        N = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(charsetForName);
        Locale locale = Locale.US;
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        int i = 0;
        while (true) {
            q31[][] q31VarArr6 = F;
            if (i >= q31VarArr6.length) {
                HashMap map = K;
                q31[] q31VarArr7 = G;
                map.put(Integer.valueOf(q31VarArr7[0].a), 5);
                map.put(Integer.valueOf(q31VarArr7[1].a), 1);
                map.put(Integer.valueOf(q31VarArr7[2].a), 2);
                map.put(Integer.valueOf(q31VarArr7[3].a), 3);
                map.put(Integer.valueOf(q31VarArr7[4].a), 7);
                map.put(Integer.valueOf(q31VarArr7[5].a), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
            H[i] = new HashMap();
            I[i] = new HashMap();
            for (q31 q31Var : q31VarArr6[i]) {
                H[i].put(Integer.valueOf(q31Var.a), q31Var);
                I[i].put(q31Var.b, q31Var);
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00ad A[Catch: all -> 0x002e, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x002e, blocks: (B:3:0x001f, B:5:0x0022, B:12:0x0037, B:18:0x0054, B:25:0x0067, B:31:0x007a, B:28:0x006f, B:29:0x0073, B:30:0x0077, B:32:0x0084, B:34:0x008d, B:36:0x0093, B:38:0x0099, B:40:0x009f, B:45:0x00ad), top: B:55:0x001f }] */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public t31(defpackage.u31 r9) {
        /*
            r8 = this;
            r8.<init>()
            q31[][] r0 = defpackage.t31.F
            int r1 = r0.length
            java.util.HashMap[] r1 = new java.util.HashMap[r1]
            r8.c = r1
            java.util.HashSet r1 = new java.util.HashSet
            int r2 = r0.length
            r1.<init>(r2)
            r8.d = r1
            java.nio.ByteOrder r1 = java.nio.ByteOrder.BIG_ENDIAN
            r8.e = r1
            java.lang.String r1 = "ExifInterface"
            boolean r2 = defpackage.t31.l
            r3 = 0
            r8.a = r3
            r3 = 0
            r4 = r3
        L1f:
            int r5 = r0.length     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            if (r4 >= r5) goto L37
            java.util.HashMap[] r5 = r8.c     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            java.util.HashMap r6 = new java.util.HashMap     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            r6.<init>()     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            r5[r4] = r6     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            int r4 = r4 + 1
            goto L1f
        L2e:
            r9 = move-exception
            goto Lb3
        L31:
            r9 = move-exception
            goto Lab
        L34:
            r9 = move-exception
            goto Lab
        L37:
            java.io.BufferedInputStream r0 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            r4 = 5000(0x1388, float:7.006E-42)
            r0.<init>(r9, r4)     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            int r9 = r8.f(r0)     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            r8.b = r9     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            r4 = 14
            r5 = 13
            r6 = 9
            r7 = 4
            if (r9 == r7) goto L84
            if (r9 == r6) goto L84
            if (r9 == r5) goto L84
            if (r9 != r4) goto L54
            goto L84
        L54:
            s31 r9 = new s31     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            r9.<init>(r0)     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            int r0 = r8.b     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            r3 = 12
            if (r0 == r3) goto L77
            r3 = 15
            if (r0 != r3) goto L64
            goto L77
        L64:
            r3 = 7
            if (r0 != r3) goto L6b
            r8.g(r9)     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            goto L7a
        L6b:
            r3 = 10
            if (r0 != r3) goto L73
            r8.k(r9)     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            goto L7a
        L73:
            r8.j(r9)     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            goto L7a
        L77:
            r8.d(r9, r0)     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
        L7a:
            int r0 = r8.g     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            long r3 = (long) r0     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            r9.j(r3)     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            r8.u(r9)     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            goto La2
        L84:
            o31 r9 = new o31     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            r9.<init>(r0)     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            int r0 = r8.b     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            if (r0 != r7) goto L91
            r8.e(r9, r3, r3)     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            goto La2
        L91:
            if (r0 != r5) goto L97
            r8.h(r9)     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            goto La2
        L97:
            if (r0 != r6) goto L9d
            r8.i(r9)     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
            goto La2
        L9d:
            if (r0 != r4) goto La2
            r8.l(r9)     // Catch: java.lang.Throwable -> L2e java.lang.UnsupportedOperationException -> L31 java.io.IOException -> L34
        La2:
            r8.a()
            if (r2 == 0) goto Lc2
        La7:
            r8.p()
            goto Lc2
        Lab:
            if (r2 == 0) goto Lbc
            java.lang.String r0 = "Invalid image: ExifInterface got an unsupported image format file (ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."
            android.util.Log.w(r1, r0, r9)     // Catch: java.lang.Throwable -> L2e
            goto Lbc
        Lb3:
            r8.a()
            if (r2 == 0) goto Lbb
            r8.p()
        Lbb:
            throw r9
        Lbc:
            r8.a()
            if (r2 == 0) goto Lc2
            goto La7
        Lc2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.t31.<init>(u31):void");
    }

    public static ByteOrder q(o31 o31Var) throws IOException {
        short s2 = o31Var.readShort();
        boolean z2 = l;
        if (s2 == 18761) {
            if (z2) {
                Log.d("ExifInterface", "readExifSegment: Byte Align II");
            }
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (s2 != 19789) {
            p61.r(Integer.toHexString(s2), "Invalid byte order: ");
            return null;
        }
        if (z2) {
            Log.d("ExifInterface", "readExifSegment: Byte Align MM");
        }
        return ByteOrder.BIG_ENDIAN;
    }

    public final void a() {
        String strB = b("DateTimeOriginal");
        HashMap[] mapArr = this.c;
        if (strB != null && b("DateTime") == null) {
            HashMap map = mapArr[0];
            byte[] bytes = strB.concat("\u0000").getBytes(L);
            map.put("DateTime", new p31(bytes, 2, bytes.length));
        }
        if (b("ImageWidth") == null) {
            mapArr[0].put("ImageWidth", p31.a(0L, this.e));
        }
        if (b("ImageLength") == null) {
            mapArr[0].put("ImageLength", p31.a(0L, this.e));
        }
        if (b("Orientation") == null) {
            mapArr[0].put("Orientation", p31.a(0L, this.e));
        }
        if (b("LightSource") == null) {
            mapArr[1].put("LightSource", p31.a(0L, this.e));
        }
    }

    public final String b(String str) {
        p31 p31VarC = c(str);
        if (p31VarC != null) {
            int i = p31VarC.a;
            if (str.equals("GPSTimeStamp")) {
                if (i != 5 && i != 10) {
                    Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + i);
                    return null;
                }
                r31[] r31VarArr = (r31[]) p31VarC.g(this.e);
                if (r31VarArr == null || r31VarArr.length != 3) {
                    Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(r31VarArr));
                    return null;
                }
                r31 r31Var = r31VarArr[0];
                Integer numValueOf = Integer.valueOf((int) (r31Var.a / r31Var.b));
                r31 r31Var2 = r31VarArr[1];
                Integer numValueOf2 = Integer.valueOf((int) (r31Var2.a / r31Var2.b));
                r31 r31Var3 = r31VarArr[2];
                return String.format("%02d:%02d:%02d", numValueOf, numValueOf2, Integer.valueOf((int) (r31Var3.a / r31Var3.b)));
            }
            boolean zContains = J.contains(str);
            ByteOrder byteOrder = this.e;
            if (!zContains) {
                return p31VarC.f(byteOrder);
            }
            try {
                return Double.toString(p31VarC.d(byteOrder));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public final p31 c(String str) {
        p31 p31Var;
        int i;
        p31 p31Var2;
        if ("ISOSpeedRatings".equals(str)) {
            if (l) {
                Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str = "PhotographicSensitivity";
        }
        if ("Xmp".equals(str) && (i = this.b) != 4 && ((i == 9 || i == 15 || i == 12 || i == 13) && (p31Var2 = this.k) != null)) {
            return p31Var2;
        }
        for (int i2 = 0; i2 < F.length; i2++) {
            p31 p31Var3 = (p31) this.c[i2].get(str);
            if (p31Var3 != null) {
                return p31Var3;
            }
        }
        if (!"Xmp".equals(str) || (p31Var = this.k) == null) {
            return null;
        }
        return p31Var;
    }

    public final void d(s31 s31Var, int i) {
        String strExtractMetadata;
        String strExtractMetadata2;
        String strExtractMetadata3;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 28) {
            p61.s("Reading EXIF from HEIC files is supported from SDK 28 and above");
            return;
        }
        if (i == 15 && i2 < 31) {
            p61.s("Reading EXIF from AVIF files is supported from SDK 31 and above");
            return;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(new n31(s31Var));
                String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(33);
                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(34);
                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(26);
                String strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(strExtractMetadata6)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(29);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(30);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(strExtractMetadata7)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(19);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    strExtractMetadata = null;
                    strExtractMetadata2 = null;
                    strExtractMetadata3 = null;
                }
                HashMap[] mapArr = this.c;
                if (strExtractMetadata != null) {
                    mapArr[0].put("ImageWidth", p31.c(Integer.parseInt(strExtractMetadata), this.e));
                }
                if (strExtractMetadata3 != null) {
                    mapArr[0].put("ImageLength", p31.c(Integer.parseInt(strExtractMetadata3), this.e));
                }
                if (strExtractMetadata2 != null) {
                    int i3 = Integer.parseInt(strExtractMetadata2);
                    mapArr[0].put("Orientation", p31.c(i3 != 90 ? i3 != 180 ? i3 != 270 ? 1 : 8 : 3 : 6, this.e));
                }
                if (strExtractMetadata4 != null && strExtractMetadata5 != null) {
                    int i4 = Integer.parseInt(strExtractMetadata4);
                    int i5 = Integer.parseInt(strExtractMetadata5);
                    if (i5 <= 6) {
                        throw new IOException("Invalid exif length");
                    }
                    s31Var.j(i4);
                    byte[] bArr = new byte[6];
                    s31Var.readFully(bArr);
                    int i6 = i4 + 6;
                    int i7 = i5 - 6;
                    if (!Arrays.equals(bArr, M)) {
                        throw new IOException("Invalid identifier");
                    }
                    byte[] bArr2 = new byte[i7];
                    s31Var.readFully(bArr2);
                    this.g = i6;
                    r(0, bArr2);
                }
                String strExtractMetadata8 = mediaMetadataRetriever.extractMetadata(41);
                String strExtractMetadata9 = mediaMetadataRetriever.extractMetadata(42);
                if (strExtractMetadata8 != null && strExtractMetadata9 != null) {
                    int i8 = Integer.parseInt(strExtractMetadata8);
                    int i9 = Integer.parseInt(strExtractMetadata9);
                    long j = i8;
                    s31Var.j(j);
                    byte[] bArr3 = new byte[i9];
                    s31Var.readFully(bArr3);
                    this.k = new p31(j, bArr3, 1, i9);
                }
                if (l) {
                    Log.d("ExifInterface", "Heif meta: " + strExtractMetadata + "x" + strExtractMetadata3 + ", rotation " + strExtractMetadata2);
                }
                try {
                    mediaMetadataRetriever.release();
                } catch (IOException unused) {
                }
            } finally {
            }
        } catch (RuntimeException e) {
            throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.", e);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x00a2. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x00a5. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x00a8. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b0 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x015f A[LOOP:0: B:10:0x0034->B:56:0x015f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0166 A[SYNTHETIC] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(defpackage.o31 r23, int r24, int r25) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.t31.e(o31, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00d9 A[PHI: r7 r20
  0x00d9: PHI (r7v3 o31) = (r7v4 o31), (r7v7 o31), (r7v7 o31) binds: [B:73:0x00f4, B:65:0x00df, B:62:0x00d7] A[DONT_GENERATE, DONT_INLINE]
  0x00d9: PHI (r20v2 int) = (r20v4 int), (r20v7 int), (r20v8 int) binds: [B:73:0x00f4, B:65:0x00df, B:62:0x00d7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00ed A[Catch: all -> 0x0066, TRY_LEAVE, TryCatch #2 {all -> 0x0066, blocks: (B:14:0x0039, B:19:0x005b, B:30:0x0078, B:33:0x007e, B:34:0x0086, B:37:0x008e, B:42:0x009a, B:45:0x00a4, B:48:0x00ae, B:50:0x00b6, B:70:0x00e9, B:72:0x00ed), top: B:155:0x0039 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int f(java.io.BufferedInputStream r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.t31.f(java.io.BufferedInputStream):int");
    }

    public final void g(s31 s31Var) throws IOException {
        int i;
        int i2;
        j(s31Var);
        HashMap[] mapArr = this.c;
        p31 p31Var = (p31) mapArr[1].get("MakerNote");
        if (p31Var != null) {
            s31 s31Var2 = new s31(p31Var.d);
            s31Var2.p = this.e;
            byte[] bArr = f328u;
            byte[] bArr2 = new byte[bArr.length];
            s31Var2.readFully(bArr2);
            s31Var2.j(0L);
            byte[] bArr3 = v;
            byte[] bArr4 = new byte[bArr3.length];
            s31Var2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                s31Var2.j(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                s31Var2.j(12L);
            }
            s(s31Var2, 6);
            p31 p31Var2 = (p31) mapArr[7].get("PreviewImageStart");
            p31 p31Var3 = (p31) mapArr[7].get("PreviewImageLength");
            if (p31Var2 != null && p31Var3 != null) {
                mapArr[5].put("JPEGInterchangeFormat", p31Var2);
                mapArr[5].put("JPEGInterchangeFormatLength", p31Var3);
            }
            p31 p31Var4 = (p31) mapArr[8].get("AspectFrame");
            if (p31Var4 != null) {
                int[] iArr = (int[]) p31Var4.g(this.e);
                if (iArr == null || iArr.length != 4) {
                    Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
                    return;
                }
                int i3 = iArr[2];
                int i4 = iArr[0];
                if (i3 <= i4 || (i = iArr[3]) <= (i2 = iArr[1])) {
                    return;
                }
                int i5 = (i3 - i4) + 1;
                int i6 = (i - i2) + 1;
                if (i5 < i6) {
                    int i7 = i5 + i6;
                    i6 = i7 - i6;
                    i5 = i7 - i6;
                }
                p31 p31VarC = p31.c(i5, this.e);
                p31 p31VarC2 = p31.c(i6, this.e);
                mapArr[0].put("ImageWidth", p31VarC);
                mapArr[0].put("ImageLength", p31VarC2);
            }
        }
    }

    public final void h(o31 o31Var) throws IOException {
        if (l) {
            Log.d("ExifInterface", "getPngAttributes starting with: " + o31Var);
        }
        o31Var.p = ByteOrder.BIG_ENDIAN;
        int i = o31Var.o;
        o31Var.b(w.length);
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            if (z2 && z3) {
                return;
            }
            try {
                int i2 = o31Var.readInt();
                int i3 = o31Var.readInt();
                int i4 = o31Var.o;
                int i5 = i4 + i2 + 4;
                int i6 = i4 - i;
                if (i6 == 16 && i3 != 1229472850) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appear as the first chunk");
                }
                if (i3 == 1229278788) {
                    return;
                }
                if (i3 == 1700284774 && !z2) {
                    this.g = i6;
                    byte[] bArr = new byte[i2];
                    o31Var.readFully(bArr);
                    int i7 = o31Var.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(i3 >>> 24);
                    crc32.update(i3 >>> 16);
                    crc32.update(i3 >>> 8);
                    crc32.update(i3);
                    crc32.update(bArr);
                    if (((int) crc32.getValue()) != i7) {
                        throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + i7 + ", calculated CRC value: " + crc32.getValue());
                    }
                    r(0, bArr);
                    x();
                    u(new o31(bArr));
                    z2 = true;
                } else if (i3 == 1767135348 && !z3) {
                    byte[] bArr2 = x;
                    if (i2 >= bArr2.length) {
                        int length = bArr2.length;
                        byte[] bArr3 = new byte[length];
                        o31Var.readFully(bArr3);
                        if (Arrays.equals(bArr3, bArr2)) {
                            int i8 = o31Var.o - i;
                            int i9 = i2 - length;
                            byte[] bArr4 = new byte[i9];
                            o31Var.readFully(bArr4);
                            this.k = new p31(i8, bArr4, 1, i9);
                            z3 = true;
                        }
                    }
                }
                o31Var.b(i5 - o31Var.o);
            } catch (EOFException e) {
                throw new IOException("Encountered corrupt PNG file.", e);
            }
        }
    }

    public final void i(o31 o31Var) throws IOException {
        boolean z2 = l;
        if (z2) {
            Log.d("ExifInterface", "getRafAttributes starting with: " + o31Var);
        }
        o31Var.b(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        o31Var.readFully(bArr);
        o31Var.readFully(bArr2);
        o31Var.readFully(bArr3);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        int i3 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i2];
        o31Var.b(i - o31Var.o);
        o31Var.readFully(bArr4);
        e(new o31(bArr4), i, 5);
        o31Var.b(i3 - o31Var.o);
        o31Var.p = ByteOrder.BIG_ENDIAN;
        int i4 = o31Var.readInt();
        if (z2) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + i4);
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int unsignedShort = o31Var.readUnsignedShort();
            int unsignedShort2 = o31Var.readUnsignedShort();
            if (unsignedShort == E.a) {
                short s2 = o31Var.readShort();
                short s3 = o31Var.readShort();
                p31 p31VarC = p31.c(s2, this.e);
                p31 p31VarC2 = p31.c(s3, this.e);
                HashMap[] mapArr = this.c;
                mapArr[0].put("ImageLength", p31VarC);
                mapArr[0].put("ImageWidth", p31VarC2);
                if (z2) {
                    Log.d("ExifInterface", "Updated to length: " + ((int) s2) + ", width: " + ((int) s3));
                    return;
                }
                return;
            }
            o31Var.b(unsignedShort2);
        }
    }

    public final void j(s31 s31Var) throws IOException {
        o(s31Var);
        s(s31Var, 0);
        w(s31Var, 0);
        w(s31Var, 5);
        w(s31Var, 4);
        x();
        if (this.b == 8) {
            HashMap[] mapArr = this.c;
            p31 p31Var = (p31) mapArr[1].get("MakerNote");
            if (p31Var != null) {
                s31 s31Var2 = new s31(p31Var.d);
                s31Var2.p = this.e;
                s31Var2.b(6);
                s(s31Var2, 9);
                p31 p31Var2 = (p31) mapArr[9].get("ColorSpace");
                if (p31Var2 != null) {
                    mapArr[1].put("ColorSpace", p31Var2);
                }
            }
        }
    }

    public final void k(s31 s31Var) throws IOException {
        if (l) {
            Log.d("ExifInterface", "getRw2Attributes starting with: " + s31Var);
        }
        j(s31Var);
        HashMap[] mapArr = this.c;
        p31 p31Var = (p31) mapArr[0].get("JpgFromRaw");
        if (p31Var != null) {
            e(new o31(p31Var.d), (int) p31Var.c, 5);
        }
        p31 p31Var2 = (p31) mapArr[0].get("ISO");
        p31 p31Var3 = (p31) mapArr[1].get("PhotographicSensitivity");
        if (p31Var2 == null || p31Var3 != null) {
            return;
        }
        mapArr[1].put("PhotographicSensitivity", p31Var2);
    }

    public final void l(o31 o31Var) throws IOException {
        if (l) {
            Log.d("ExifInterface", "getWebpAttributes starting with: " + o31Var);
        }
        o31Var.p = ByteOrder.LITTLE_ENDIAN;
        o31Var.b(y.length);
        int i = o31Var.readInt() + 8;
        byte[] bArr = z;
        o31Var.b(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                o31Var.readFully(bArr2);
                int i2 = o31Var.readInt();
                int i3 = length + 8;
                if (Arrays.equals(A, bArr2)) {
                    byte[] bArrCopyOfRange = new byte[i2];
                    o31Var.readFully(bArrCopyOfRange);
                    byte[] bArr3 = M;
                    if (kt4.f0(bArrCopyOfRange, bArr3)) {
                        bArrCopyOfRange = Arrays.copyOfRange(bArrCopyOfRange, bArr3.length, i2);
                    }
                    this.g = i3;
                    r(0, bArrCopyOfRange);
                    u(new o31(bArrCopyOfRange));
                    return;
                }
                if (i2 % 2 == 1) {
                    i2++;
                }
                length = i3 + i2;
                if (length == i) {
                    return;
                }
                if (length > i) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                o31Var.b(i2);
            } catch (EOFException e) {
                throw new IOException("Encountered corrupt WebP file.", e);
            }
        }
    }

    public final void m(o31 o31Var, HashMap map) throws IOException {
        p31 p31Var = (p31) map.get("JPEGInterchangeFormat");
        p31 p31Var2 = (p31) map.get("JPEGInterchangeFormatLength");
        if (p31Var == null || p31Var2 == null) {
            return;
        }
        int iE = p31Var.e(this.e);
        int iE2 = p31Var2.e(this.e);
        if (this.b == 7) {
            iE += this.h;
        }
        if (iE > 0 && iE2 > 0 && this.a == null) {
            o31Var.b(iE);
            o31Var.readFully(new byte[iE2]);
        }
        if (l) {
            Log.d("ExifInterface", "Setting thumbnail attributes with offset: " + iE + ", length: " + iE2);
        }
    }

    public final boolean n(HashMap map) {
        p31 p31Var = (p31) map.get("ImageLength");
        p31 p31Var2 = (p31) map.get("ImageWidth");
        if (p31Var == null || p31Var2 == null) {
            return false;
        }
        return p31Var.e(this.e) <= 512 && p31Var2.e(this.e) <= 512;
    }

    public final void o(s31 s31Var) throws IOException {
        ByteOrder byteOrderQ = q(s31Var);
        this.e = byteOrderQ;
        s31Var.p = byteOrderQ;
        int unsignedShort = s31Var.readUnsignedShort();
        int i = this.b;
        if (i != 7 && i != 10 && unsignedShort != 42) {
            p61.r(Integer.toHexString(unsignedShort), "Invalid start code: ");
            return;
        }
        int i2 = s31Var.readInt();
        if (i2 < 8) {
            p61.k(di0.q(i2, "Invalid first Ifd offset: "));
            return;
        }
        int i3 = i2 - 8;
        if (i3 > 0) {
            s31Var.b(i3);
        }
    }

    public final void p() {
        int i = 0;
        while (true) {
            HashMap[] mapArr = this.c;
            if (i >= mapArr.length) {
                return;
            }
            StringBuilder sbU = xw1.u("The size of tag group[", i, "]: ");
            sbU.append(mapArr[i].size());
            Log.d("ExifInterface", sbU.toString());
            for (Map.Entry entry : mapArr[i].entrySet()) {
                p31 p31Var = (p31) entry.getValue();
                Log.d("ExifInterface", "tagName: " + ((String) entry.getKey()) + ", tagType: " + p31Var.toString() + ", tagValue: '" + p31Var.f(this.e) + "'");
            }
            i++;
        }
    }

    public final void r(int i, byte[] bArr) throws IOException {
        s31 s31Var = new s31(bArr);
        o(s31Var);
        s(s31Var, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0158  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s(defpackage.s31 r30, int r31) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 940
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.t31.s(s31, int):void");
    }

    public final void t(String str, int i, String str2) {
        HashMap[] mapArr = this.c;
        if (mapArr[i].isEmpty() || mapArr[i].get(str) == null) {
            return;
        }
        HashMap map = mapArr[i];
        map.put(str2, (p31) map.get(str));
        mapArr[i].remove(str);
    }

    public final void u(o31 o31Var) throws IOException {
        p31 p31Var;
        int iE;
        HashMap map = this.c[4];
        p31 p31Var2 = (p31) map.get("Compression");
        if (p31Var2 == null) {
            m(o31Var, map);
            return;
        }
        int iE2 = p31Var2.e(this.e);
        if (iE2 != 1) {
            if (iE2 == 6) {
                m(o31Var, map);
                return;
            } else if (iE2 != 7) {
                return;
            }
        }
        p31 p31Var3 = (p31) map.get("BitsPerSample");
        if (p31Var3 != null) {
            int[] iArr = (int[]) p31Var3.g(this.e);
            int[] iArr2 = m;
            if (Arrays.equals(iArr2, iArr) || (this.b == 3 && (p31Var = (p31) map.get("PhotometricInterpretation")) != null && (((iE = p31Var.e(this.e)) == 1 && Arrays.equals(iArr, n)) || (iE == 6 && Arrays.equals(iArr, iArr2))))) {
                p31 p31Var4 = (p31) map.get("StripOffsets");
                p31 p31Var5 = (p31) map.get("StripByteCounts");
                if (p31Var4 == null || p31Var5 == null) {
                    return;
                }
                long[] jArrU = kt4.u(p31Var4.g(this.e));
                long[] jArrU2 = kt4.u(p31Var5.g(this.e));
                if (jArrU == null || jArrU.length == 0) {
                    Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
                    return;
                }
                if (jArrU2 == null || jArrU2.length == 0) {
                    Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
                    return;
                }
                if (jArrU.length != jArrU2.length) {
                    Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
                    return;
                }
                long j = 0;
                for (long j2 : jArrU2) {
                    j += j2;
                }
                byte[] bArr = new byte[(int) j];
                this.f = true;
                int i = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < jArrU.length; i3++) {
                    int i4 = (int) jArrU[i3];
                    int i5 = (int) jArrU2[i3];
                    if (i3 < jArrU.length - 1 && i4 + i5 != jArrU[i3 + 1]) {
                        this.f = false;
                    }
                    int i6 = i4 - i;
                    if (i6 < 0) {
                        Log.d("ExifInterface", "Invalid strip offset value");
                        return;
                    }
                    try {
                        o31Var.b(i6);
                        int i7 = i + i6;
                        byte[] bArr2 = new byte[i5];
                        try {
                            o31Var.readFully(bArr2);
                            i = i7 + i5;
                            System.arraycopy(bArr2, 0, bArr, i2, i5);
                            i2 += i5;
                        } catch (EOFException unused) {
                            Log.d("ExifInterface", "Failed to read " + i5 + " bytes.");
                            return;
                        }
                    } catch (EOFException unused2) {
                        Log.d("ExifInterface", "Failed to skip " + i6 + " bytes.");
                        return;
                    }
                }
                if (this.f) {
                    long j3 = jArrU[0];
                    return;
                }
                return;
            }
        }
        if (l) {
            Log.d("ExifInterface", "Unsupported data type value");
        }
    }

    public final void v(int i, int i2) {
        HashMap[] mapArr = this.c;
        boolean zIsEmpty = mapArr[i].isEmpty();
        boolean z2 = l;
        if (zIsEmpty || mapArr[i2].isEmpty()) {
            if (z2) {
                Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
                return;
            }
            return;
        }
        p31 p31Var = (p31) mapArr[i].get("ImageLength");
        p31 p31Var2 = (p31) mapArr[i].get("ImageWidth");
        p31 p31Var3 = (p31) mapArr[i2].get("ImageLength");
        p31 p31Var4 = (p31) mapArr[i2].get("ImageWidth");
        if (p31Var == null || p31Var2 == null) {
            if (z2) {
                Log.d("ExifInterface", "First image does not contain valid size information");
                return;
            }
            return;
        }
        if (p31Var3 == null || p31Var4 == null) {
            if (z2) {
                Log.d("ExifInterface", "Second image does not contain valid size information");
                return;
            }
            return;
        }
        int iE = p31Var.e(this.e);
        int iE2 = p31Var2.e(this.e);
        int iE3 = p31Var3.e(this.e);
        int iE4 = p31Var4.e(this.e);
        if (iE >= iE3 || iE2 >= iE4) {
            return;
        }
        HashMap map = mapArr[i];
        mapArr[i] = mapArr[i2];
        mapArr[i2] = map;
    }

    public final void w(s31 s31Var, int i) throws IOException {
        p31 p31VarC;
        p31 p31VarC2;
        HashMap[] mapArr = this.c;
        p31 p31Var = (p31) mapArr[i].get("DefaultCropSize");
        p31 p31Var2 = (p31) mapArr[i].get("SensorTopBorder");
        p31 p31Var3 = (p31) mapArr[i].get("SensorLeftBorder");
        p31 p31Var4 = (p31) mapArr[i].get("SensorBottomBorder");
        p31 p31Var5 = (p31) mapArr[i].get("SensorRightBorder");
        if (p31Var != null) {
            int i2 = p31Var.a;
            ByteOrder byteOrder = this.e;
            if (i2 == 5) {
                r31[] r31VarArr = (r31[]) p31Var.g(byteOrder);
                if (r31VarArr == null || r31VarArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(r31VarArr));
                    return;
                }
                p31VarC = p31.b(r31VarArr[0], this.e);
                p31VarC2 = p31.b(r31VarArr[1], this.e);
            } else {
                int[] iArr = (int[]) p31Var.g(byteOrder);
                if (iArr == null || iArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                    return;
                }
                p31VarC = p31.c(iArr[0], this.e);
                p31VarC2 = p31.c(iArr[1], this.e);
            }
            mapArr[i].put("ImageWidth", p31VarC);
            mapArr[i].put("ImageLength", p31VarC2);
            return;
        }
        if (p31Var2 != null && p31Var3 != null && p31Var4 != null && p31Var5 != null) {
            int iE = p31Var2.e(this.e);
            int iE2 = p31Var4.e(this.e);
            int iE3 = p31Var5.e(this.e);
            int iE4 = p31Var3.e(this.e);
            if (iE2 <= iE || iE3 <= iE4) {
                return;
            }
            p31 p31VarC3 = p31.c(iE2 - iE, this.e);
            p31 p31VarC4 = p31.c(iE3 - iE4, this.e);
            mapArr[i].put("ImageLength", p31VarC3);
            mapArr[i].put("ImageWidth", p31VarC4);
            return;
        }
        p31 p31Var6 = (p31) mapArr[i].get("ImageLength");
        p31 p31Var7 = (p31) mapArr[i].get("ImageWidth");
        if (p31Var6 == null || p31Var7 == null) {
            p31 p31Var8 = (p31) mapArr[i].get("JPEGInterchangeFormat");
            p31 p31Var9 = (p31) mapArr[i].get("JPEGInterchangeFormatLength");
            if (p31Var8 == null || p31Var9 == null) {
                return;
            }
            int iE5 = p31Var8.e(this.e);
            int iE6 = p31Var8.e(this.e);
            s31Var.j(iE5);
            byte[] bArr = new byte[iE6];
            s31Var.readFully(bArr);
            e(new o31(bArr), iE5, i);
        }
    }

    public final void x() {
        v(0, 5);
        v(0, 4);
        v(5, 4);
        HashMap[] mapArr = this.c;
        p31 p31Var = (p31) mapArr[1].get("PixelXDimension");
        p31 p31Var2 = (p31) mapArr[1].get("PixelYDimension");
        if (p31Var != null && p31Var2 != null) {
            mapArr[0].put("ImageWidth", p31Var);
            mapArr[0].put("ImageLength", p31Var2);
        }
        if (mapArr[4].isEmpty() && n(mapArr[5])) {
            mapArr[4] = mapArr[5];
            mapArr[5] = new HashMap();
        }
        if (!n(mapArr[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
        t("ThumbnailOrientation", 0, "Orientation");
        t("ThumbnailImageLength", 0, "ImageLength");
        t("ThumbnailImageWidth", 0, "ImageWidth");
        t("ThumbnailOrientation", 5, "Orientation");
        t("ThumbnailImageLength", 5, "ImageLength");
        t("ThumbnailImageWidth", 5, "ImageWidth");
        t("Orientation", 4, "ThumbnailOrientation");
        t("ImageLength", 4, "ThumbnailImageLength");
        t("ImageWidth", 4, "ThumbnailImageWidth");
    }
}
