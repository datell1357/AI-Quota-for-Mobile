package defpackage;

import android.adservices.measurement.MeasurementManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ac5 extends q55 {
    public static final String[] i = {"firebase_", "google_", "ga_"};
    public static final String[] j = {"_err"};
    public SecureRandom c;
    public final AtomicLong d;
    public int e;
    public lb2 f;
    public Boolean g;
    public Integer h;

    public ac5(r45 r45Var) {
        super(r45Var);
        this.h = null;
        this.d = new AtomicLong(0L);
    }

    public static String C(String str, int i2, boolean z) {
        if (str != null) {
            if (str.codePointCount(0, str.length()) <= i2) {
                return str;
            }
            if (z) {
                return str.substring(0, str.offsetByCodePoints(0, i2)).concat("...");
            }
        }
        return null;
    }

    public static boolean G0(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    public static void N(yb5 yb5Var, String str, int i2, String str2, String str3, int i3) {
        Bundle bundle = new Bundle();
        S(i2, bundle);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i2 == 6 || i2 == 7 || i2 == 2) {
            bundle.putLong("_el", i3);
        }
        yb5Var.e(str, "_err", bundle);
    }

    public static MessageDigest O() {
        MessageDigest messageDigest;
        for (int i2 = 0; i2 < 2; i2++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    public static long P(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        int length = bArr.length;
        int i2 = 0;
        Preconditions.checkState(length > 0);
        long j2 = 0;
        for (int i3 = length - 1; i3 >= 0 && i3 >= bArr.length - 8; i3--) {
            j2 += (((long) bArr[i3]) & 255) << i2;
            i2 += 8;
        }
        return j2;
    }

    public static final boolean S(int i2, Bundle bundle) {
        if (bundle == null || bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i2);
        return true;
    }

    public static boolean V(String str, String[] strArr) {
        Preconditions.checkNotNull(strArr);
        for (String str2 : strArr) {
            if (Objects.equals(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean W(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equals("*") || Arrays.asList(str.split(",")).contains(str2);
    }

    public static boolean Y(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    public static byte[] d0(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(parcelObtain, 0);
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }

    public static ArrayList o0(List list) {
        if (list == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            fq4 fq4Var = (fq4) it.next();
            Bundle bundle = new Bundle();
            bundle.putString("app_id", fq4Var.n);
            bundle.putString("origin", fq4Var.o);
            bundle.putLong("creation_timestamp", fq4Var.q);
            bundle.putString("name", fq4Var.p.o);
            il4.b(bundle, Preconditions.checkNotNull(fq4Var.p.Y()));
            bundle.putBoolean("active", fq4Var.r);
            String str = fq4Var.s;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            bu4 bu4Var = fq4Var.t;
            if (bu4Var != null) {
                bundle.putString("timed_out_event_name", bu4Var.n);
                zt4 zt4Var = bu4Var.o;
                if (zt4Var != null) {
                    bundle.putBundle("timed_out_event_params", zt4Var.j0());
                }
            }
            bundle.putLong("trigger_timeout", fq4Var.f101u);
            bu4 bu4Var2 = fq4Var.v;
            if (bu4Var2 != null) {
                bundle.putString("triggered_event_name", bu4Var2.n);
                zt4 zt4Var2 = bu4Var2.o;
                if (zt4Var2 != null) {
                    bundle.putBundle("triggered_event_params", zt4Var2.j0());
                }
            }
            bundle.putLong("triggered_timestamp", fq4Var.p.p);
            bundle.putLong("time_to_live", fq4Var.w);
            bu4 bu4Var3 = fq4Var.x;
            if (bu4Var3 != null) {
                bundle.putString("expired_event_name", bu4Var3.n);
                zt4 zt4Var3 = bu4Var3.o;
                if (zt4Var3 != null) {
                    bundle.putBundle("expired_event_params", zt4Var3.j0());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    public static boolean p0(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.checkNotNull(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static void q0(w75 w75Var, Bundle bundle, boolean z) {
        if (bundle != null && w75Var != null) {
            if (!bundle.containsKey("_sc") || z) {
                String str = w75Var.a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = w75Var.b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", w75Var.c);
                return;
            }
            z = false;
        }
        if (bundle != null && w75Var == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    public static boolean u0(String str) {
        Preconditions.checkNotEmpty(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    public static boolean w0(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        if ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) {
            return true;
        }
        if (TextUtils.isEmpty(stringExtra)) {
            return false;
        }
        try {
            String host = new URL(stringExtra).getHost();
            if (TextUtils.isEmpty(host)) {
                return false;
            }
            return host.matches("^(www\\.)?google(\\.com?)?(\\.[a-z]{2}t?)?$");
        } catch (MalformedURLException unused) {
            return false;
        }
    }

    public final void A(String str, String str2, Bundle bundle, List list, boolean z) {
        int iE0;
        int iD;
        List list2 = list;
        if (bundle == null) {
            return;
        }
        r45 r45Var = (r45) this.a;
        ds4 ds4Var = r45Var.d;
        a25 a25Var = r45Var.f;
        p15 p15Var = r45Var.j;
        ac5 ac5Var = ((r45) ds4Var.a).i;
        r45.j(ac5Var);
        int i2 = true != ac5Var.e0(231100000) ? 0 : 35;
        int i3 = 0;
        boolean z2 = false;
        for (String str3 : new TreeSet(bundle.keySet())) {
            if (list2 == null || !list2.contains(str3)) {
                iE0 = !z ? E0(str3) : 0;
                if (iE0 == 0) {
                    iE0 = F0(str3);
                }
            } else {
                iE0 = 0;
            }
            if (iE0 != 0) {
                J(bundle, iE0, str3, iE0 == 3 ? str3 : null);
                bundle.remove(str3);
            } else {
                if (G0(bundle.get(str3))) {
                    r45.l(a25Var);
                    a25Var.k.d("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str, str2, str3);
                    iD = 22;
                } else {
                    iD = D(str, str3, bundle.get(str3), bundle, list2, z, false);
                }
                if (iD != 0 && !"_ev".equals(str3)) {
                    J(bundle, iD, str3, bundle.get(str3));
                    bundle.remove(str3);
                } else if (u0(str3) && !V(str3, ix.l)) {
                    i3++;
                    if (!e0(231100000)) {
                        r45.l(a25Var);
                        a25Var.h.c(p15Var.a(str), p15Var.e(bundle), "Item array not supported on client's version of Google Play Services (Android Only)");
                        S(23, bundle);
                        bundle.remove(str3);
                    } else if (i3 > i2) {
                        if (!z2) {
                            r45.l(a25Var);
                            x15 x15Var = a25Var.h;
                            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 55);
                            sb.append("Item can't contain more than ");
                            sb.append(i2);
                            sb.append(" item-scoped custom params");
                            x15Var.c(p15Var.a(str), p15Var.e(bundle), sb.toString());
                        }
                        S(28, bundle);
                        bundle.remove(str3);
                        list2 = list;
                        z2 = true;
                    }
                }
            }
            list2 = list;
        }
    }

    public final boolean A0(String str, int i2, String str2) {
        r45 r45Var = (r45) this.a;
        if (str2 == null) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.h.b(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i2) {
            return true;
        }
        a25 a25Var2 = r45Var.f;
        r45.l(a25Var2);
        a25Var2.h.d("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i2), str2);
        return false;
    }

    public final boolean B(String str) {
        r45 r45Var = (r45) this.a;
        if (TextUtils.isEmpty(str)) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.h.a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        }
        Preconditions.checkNotNull(str);
        if (str.matches("^1:\\d+:android:[a-f0-9]+$")) {
            return true;
        }
        a25 a25Var2 = r45Var.f;
        r45.l(a25Var2);
        a25Var2.h.b(a25.D(str), "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id");
        return false;
    }

    public final int B0(String str) {
        if (!y0("event", str)) {
            return 2;
        }
        if (z0("event", ca.g, ((r45) this.a).d.G(null, e05.f1) ? ca.i : ca.h, str)) {
            return !A0("event", 40, str) ? 2 : 0;
        }
        return 13;
    }

    public final boolean C0(String str) {
        return ((r45) this.a).d.G(null, e05.f1) ? V(str, ca.k) : V(str, ca.j);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int D(java.lang.String r13, java.lang.String r14, java.lang.Object r15, android.os.Bundle r16, java.util.List r17, boolean r18, boolean r19) {
        /*
            Method dump skipped, instruction units count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ac5.D(java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    public final int D0(String str) {
        if (!y0("user property", str)) {
            return 6;
        }
        if (!z0("user property", se0.E, null, str)) {
            return 15;
        }
        ((r45) this.a).getClass();
        return !A0("user property", 24, str) ? 6 : 0;
    }

    public final Object E(Object obj, String str) {
        r45 r45Var = (r45) this.a;
        int iMax = 500;
        if ("_ev".equals(str)) {
            r45Var.d.getClass();
            return T(Math.max(500, 256), obj, true, true);
        }
        if (Y(str)) {
            r45Var.d.getClass();
            iMax = Math.max(500, 256);
        } else {
            r45Var.d.getClass();
        }
        return T(iMax, obj, false, true);
    }

    public final int E0(String str) {
        if (!x0("event param", str)) {
            return 3;
        }
        if (!z0("event param", null, null, str)) {
            return 14;
        }
        ((r45) this.a).getClass();
        return !A0("event param", 40, str) ? 3 : 0;
    }

    public final Bundle F(String str, Bundle bundle, List list, boolean z) {
        int iE0;
        List list2 = list;
        boolean zV = V(str, ca.m);
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        r45 r45Var = (r45) this.a;
        ds4 ds4Var = r45Var.d;
        p15 p15Var = r45Var.j;
        ac5 ac5Var = ((r45) ds4Var.a).i;
        r45.j(ac5Var);
        int i2 = ac5Var.e0(201500000) ? 100 : 25;
        int i3 = 0;
        boolean z2 = false;
        for (String str2 : new TreeSet(bundle.keySet())) {
            if (list2 == null || !list2.contains(str2)) {
                iE0 = !z ? E0(str2) : 0;
                if (iE0 == 0) {
                    iE0 = F0(str2);
                }
            } else {
                iE0 = 0;
            }
            if (iE0 != 0) {
                J(bundle2, iE0, str2, iE0 == 3 ? str2 : null);
                bundle2.remove(str2);
            } else {
                int iD = D(str, str2, bundle.get(str2), bundle2, list2, z, zV);
                if (iD == 17) {
                    J(bundle2, 17, str2, Boolean.FALSE);
                } else if (iD != 0 && !"_ev".equals(str2)) {
                    J(bundle2, iD, iD == 21 ? str : str2, bundle.get(str2));
                    bundle2.remove(str2);
                }
                if (u0(str2)) {
                    i3++;
                    if (i3 > i2) {
                        if (!z2) {
                            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 37);
                            sb.append("Event can't contain more than ");
                            sb.append(i2);
                            sb.append(" params");
                            String string = sb.toString();
                            a25 a25Var = r45Var.f;
                            r45.l(a25Var);
                            a25Var.h.c(p15Var.a(str), p15Var.e(bundle), string);
                        }
                        S(5, bundle2);
                        bundle2.remove(str2);
                        z2 = true;
                    }
                }
                list2 = list;
            }
            list2 = list;
        }
        return bundle2;
    }

    public final int F0(String str) {
        if (!y0("event param", str)) {
            return 3;
        }
        if (!z0("event param", null, null, str)) {
            return 14;
        }
        ((r45) this.a).getClass();
        return !A0("event param", 40, str) ? 3 : 0;
    }

    public final void G(ak2 ak2Var, int i2) {
        Bundle bundle = (Bundle) ak2Var.f;
        int i3 = 0;
        boolean z = false;
        for (String str : new TreeSet(bundle.keySet())) {
            if (u0(str) && (i3 = i3 + 1) > i2) {
                if (!z) {
                    StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 37);
                    sb.append("Event can't contain more than ");
                    sb.append(i2);
                    sb.append(" params");
                    String string = sb.toString();
                    r45 r45Var = (r45) this.a;
                    a25 a25Var = r45Var.f;
                    p15 p15Var = r45Var.j;
                    r45.l(a25Var);
                    a25Var.h.c(p15Var.a((String) ak2Var.d), p15Var.e(bundle), string);
                    S(5, bundle);
                }
                bundle.remove(str);
                z = true;
            }
        }
    }

    public final void H(Parcelable[] parcelableArr, int i2) {
        Preconditions.checkNotNull(parcelableArr);
        for (Parcelable parcelable : parcelableArr) {
            Bundle bundle = (Bundle) parcelable;
            int i3 = 0;
            boolean z = false;
            for (String str : new TreeSet(bundle.keySet())) {
                if (u0(str) && !V(str, ix.l) && (i3 = i3 + 1) > i2) {
                    if (!z) {
                        r45 r45Var = (r45) this.a;
                        a25 a25Var = r45Var.f;
                        p15 p15Var = r45Var.j;
                        r45.l(a25Var);
                        x15 x15Var = a25Var.h;
                        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 60);
                        sb.append("Param can't contain more than ");
                        sb.append(i2);
                        sb.append(" item-scoped custom parameters");
                        x15Var.c(p15Var.b(str), p15Var.e(bundle), sb.toString());
                    }
                    S(28, bundle);
                    bundle.remove(str);
                    z = true;
                }
            }
        }
    }

    public final void I(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                ac5 ac5Var = ((r45) this.a).i;
                r45.j(ac5Var);
                ac5Var.M(bundle, str, bundle2.get(str));
            }
        }
    }

    public final void J(Bundle bundle, int i2, String str, Object obj) {
        if (S(i2, bundle)) {
            ((r45) this.a).getClass();
            bundle.putString("_ev", C(str, 40, true));
            if (obj != null) {
                Preconditions.checkNotNull(bundle);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", obj.toString().length());
                }
            }
        }
    }

    public final int K(Object obj, String str) {
        return "_ldl".equals(str) ? z("user property referrer", str, U(str), obj) : z("user property", str, U(str), obj) ? 0 : 7;
    }

    public final Object L(Object obj, String str) {
        return "_ldl".equals(str) ? T(U(str), obj, true, false) : T(U(str), obj, false, false);
    }

    public final void M(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
            return;
        }
        if (str != null) {
            String simpleName = obj != null ? obj.getClass().getSimpleName() : null;
            r45 r45Var = (r45) this.a;
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.k.c(r45Var.j.b(str), simpleName, "Not putting event parameter. Invalid value type. name, type");
        }
    }

    public final lb2 Q() {
        kb2 kb2Var;
        if (this.f == null) {
            Context context = ((r45) this.a).a;
            context.getClass();
            StringBuilder sb = new StringBuilder("AdServicesInfo.version=");
            int i2 = Build.VERSION.SDK_INT;
            a7 a7Var = a7.a;
            sb.append(i2 >= 33 ? a7Var.a() : 0);
            Log.d("MeasurementManager", sb.toString());
            if ((i2 >= 33 ? a7Var.a() : 0) >= 5) {
                Object systemService = context.getSystemService((Class<Object>) d80.l());
                systemService.getClass();
                kb2Var = new kb2(d80.e(systemService));
            } else {
                z6 z6Var = z6.a;
                if (((i2 == 31 || i2 == 32) ? z6Var.a() : 0) >= 9) {
                    try {
                        MeasurementManager measurementManager = MeasurementManager.get(context);
                        measurementManager.getClass();
                        kb2Var = new kb2(measurementManager);
                    } catch (NoClassDefFoundError unused) {
                        StringBuilder sb2 = new StringBuilder("Unable to find adservices code, check manifest for uses-library tag, versionS=");
                        int i3 = Build.VERSION.SDK_INT;
                        sb2.append((i3 == 31 || i3 == 32) ? z6Var.a() : 0);
                        Log.d("MeasurementManager", sb2.toString());
                        kb2Var = null;
                    }
                } else {
                    kb2Var = null;
                }
            }
            this.f = kb2Var != null ? new lb2(kb2Var) : null;
        }
        return this.f;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long R() {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ac5.R():long");
    }

    public final Object T(int i2, Object obj, boolean z, boolean z2) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return C(obj.toString(), i2, z);
        }
        if (!z2) {
            return null;
        }
        if (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[])) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : (Parcelable[]) obj) {
            if (parcelable instanceof Bundle) {
                Bundle bundleA0 = a0((Bundle) parcelable);
                if (!bundleA0.isEmpty()) {
                    arrayList.add(bundleA0);
                }
            }
        }
        return arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public final int U(String str) {
        r45 r45Var = (r45) this.a;
        if ("_ldl".equals(str)) {
            r45Var.getClass();
            return 2048;
        }
        if ("_id".equals(str)) {
            r45Var.getClass();
            return 256;
        }
        if ("_lgclid".equals(str)) {
            r45Var.getClass();
            return 100;
        }
        r45Var.getClass();
        return 36;
    }

    public final boolean X(String str) {
        v();
        r45 r45Var = (r45) this.a;
        if (Wrappers.packageManager(r45Var.a).checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        a25 a25Var = r45Var.f;
        r45.l(a25Var);
        a25Var.m.b(str, "Permission not granted");
        return false;
    }

    public final boolean Z(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return ((r45) this.a).d.z("debug.firebase.analytics.app").equals(str);
    }

    public final Bundle a0(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object objE = E(bundle.get(str), str);
                if (objE == null) {
                    r45 r45Var = (r45) this.a;
                    a25 a25Var = r45Var.f;
                    r45.l(a25Var);
                    a25Var.k.b(r45Var.j.b(str), "Param value can't be null");
                } else {
                    M(bundle2, str, objE);
                }
            }
        }
        return bundle2;
    }

    public final bu4 b0(String str, Bundle bundle, String str2, long j2, long j3, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (B0(str) != 0) {
            r45 r45Var = (r45) this.a;
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.b(r45Var.j.c(str), "Invalid conditional property event name");
            q73.d();
            return null;
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str2);
        Bundle bundleF = F(str, bundle2, CollectionUtils.listOf("_o"), true);
        if (z) {
            bundleF = a0(bundleF);
        }
        Preconditions.checkNotNull(bundleF);
        return new bu4(str, new zt4(bundleF), str2, j2, j3);
    }

    public final boolean c0(Context context, String str) {
        Signature[] signatureArr;
        r45 r45Var = (r45) this.a;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 64);
            if (packageInfo == null || (signatureArr = packageInfo.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.b(e, "Package name not found");
            return true;
        } catch (CertificateException e2) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.f.b(e2, "Error obtaining certificate");
            return true;
        }
    }

    public final boolean e0(int i2) {
        Boolean bool = ((r45) this.a).o().e;
        if (f0() < i2 / 1000) {
            return (bool == null || bool.booleanValue()) ? false : true;
        }
        return true;
    }

    public final int f0() {
        if (this.h == null) {
            this.h = Integer.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(((r45) this.a).a) / 1000);
        }
        return this.h.intValue();
    }

    public final void g0(Bundle bundle, long j2) {
        long j3 = bundle.getLong("_et");
        if (j3 != 0) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.i.b(Long.valueOf(j3), "Params already contained engagement");
        } else {
            j3 = 0;
        }
        bundle.putLong("_et", j2 + j3);
    }

    public final void h0(String str, mw4 mw4Var) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            mw4Var.i(bundle);
        } catch (RemoteException e) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.i.b(e, "Error returning string value to wrapper");
        }
    }

    public final void i0(mw4 mw4Var, long j2) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j2);
        try {
            mw4Var.i(bundle);
        } catch (RemoteException e) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.i.b(e, "Error returning long value to wrapper");
        }
    }

    public final void j0(mw4 mw4Var, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i2);
        try {
            mw4Var.i(bundle);
        } catch (RemoteException e) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.i.b(e, "Error returning int value to wrapper");
        }
    }

    public final void k0(mw4 mw4Var, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            mw4Var.i(bundle);
        } catch (RemoteException e) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.i.b(e, "Error returning byte array to wrapper");
        }
    }

    public final void l0(mw4 mw4Var, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            mw4Var.i(bundle);
        } catch (RemoteException e) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.i.b(e, "Error returning boolean value to wrapper");
        }
    }

    public final void m0(mw4 mw4Var, Bundle bundle) {
        try {
            mw4Var.i(bundle);
        } catch (RemoteException e) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.i.b(e, "Error returning bundle value to wrapper");
        }
    }

    public final void n0(mw4 mw4Var, ArrayList arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            mw4Var.i(bundle);
        } catch (RemoteException e) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.i.b(e, "Error returning bundle list to wrapper");
        }
    }

    public final String r0() {
        byte[] bArr = new byte[16];
        t0().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    public final long s0() {
        long andIncrement;
        long j2;
        AtomicLong atomicLong = this.d;
        if (atomicLong.get() != 0) {
            AtomicLong atomicLong2 = this.d;
            synchronized (atomicLong2) {
                atomicLong2.compareAndSet(-1L, 1L);
                andIncrement = atomicLong2.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (atomicLong) {
            long jNextLong = new Random(System.nanoTime() ^ ((r45) this.a).k.currentTimeMillis()).nextLong();
            int i2 = this.e + 1;
            this.e = i2;
            j2 = jNextLong + ((long) i2);
        }
        return j2;
    }

    public final SecureRandom t0() {
        v();
        if (this.c == null) {
            this.c = new SecureRandom();
        }
        return this.c;
    }

    public final Bundle v0(Uri uri) {
        String queryParameter;
        String queryParameter2;
        String queryParameter3;
        String queryParameter4;
        String queryParameter5;
        String queryParameter6;
        String queryParameter7;
        String queryParameter8;
        String queryParameter9;
        r45 r45Var;
        r45 r45Var2 = (r45) this.a;
        if (uri != null) {
            try {
                if (uri.isHierarchical()) {
                    queryParameter2 = uri.getQueryParameter("utm_campaign");
                    queryParameter3 = uri.getQueryParameter("utm_source");
                    queryParameter4 = uri.getQueryParameter("utm_medium");
                    queryParameter5 = uri.getQueryParameter("gclid");
                    queryParameter6 = uri.getQueryParameter("gbraid");
                    queryParameter7 = uri.getQueryParameter("utm_id");
                    queryParameter8 = uri.getQueryParameter("dclid");
                    queryParameter9 = uri.getQueryParameter("srsltid");
                    queryParameter = uri.getQueryParameter("sfmc_id");
                } else {
                    queryParameter = null;
                    queryParameter2 = null;
                    queryParameter3 = null;
                    queryParameter4 = null;
                    queryParameter5 = null;
                    queryParameter6 = null;
                    queryParameter7 = null;
                    queryParameter8 = null;
                    queryParameter9 = null;
                }
                if (!TextUtils.isEmpty(queryParameter2) || !TextUtils.isEmpty(queryParameter3) || !TextUtils.isEmpty(queryParameter4) || !TextUtils.isEmpty(queryParameter5) || !TextUtils.isEmpty(queryParameter6) || !TextUtils.isEmpty(queryParameter7) || !TextUtils.isEmpty(queryParameter8) || !TextUtils.isEmpty(queryParameter9) || !TextUtils.isEmpty(queryParameter)) {
                    Bundle bundle = new Bundle();
                    if (TextUtils.isEmpty(queryParameter2)) {
                        r45Var = r45Var2;
                    } else {
                        r45Var = r45Var2;
                        bundle.putString("campaign", queryParameter2);
                    }
                    if (!TextUtils.isEmpty(queryParameter3)) {
                        bundle.putString("source", queryParameter3);
                    }
                    if (!TextUtils.isEmpty(queryParameter4)) {
                        bundle.putString("medium", queryParameter4);
                    }
                    if (!TextUtils.isEmpty(queryParameter5)) {
                        bundle.putString("gclid", queryParameter5);
                    }
                    if (!TextUtils.isEmpty(queryParameter6)) {
                        bundle.putString("gbraid", queryParameter6);
                    }
                    String queryParameter10 = uri.getQueryParameter("gad_source");
                    if (!TextUtils.isEmpty(queryParameter10)) {
                        bundle.putString("gad_source", queryParameter10);
                    }
                    String queryParameter11 = uri.getQueryParameter("utm_term");
                    if (!TextUtils.isEmpty(queryParameter11)) {
                        bundle.putString("term", queryParameter11);
                    }
                    String queryParameter12 = uri.getQueryParameter("utm_content");
                    if (!TextUtils.isEmpty(queryParameter12)) {
                        bundle.putString("content", queryParameter12);
                    }
                    String queryParameter13 = uri.getQueryParameter("aclid");
                    if (!TextUtils.isEmpty(queryParameter13)) {
                        bundle.putString("aclid", queryParameter13);
                    }
                    String queryParameter14 = uri.getQueryParameter("cp1");
                    if (!TextUtils.isEmpty(queryParameter14)) {
                        bundle.putString("cp1", queryParameter14);
                    }
                    String queryParameter15 = uri.getQueryParameter("anid");
                    if (!TextUtils.isEmpty(queryParameter15)) {
                        bundle.putString("anid", queryParameter15);
                    }
                    if (!TextUtils.isEmpty(queryParameter7)) {
                        bundle.putString("campaign_id", queryParameter7);
                    }
                    if (!TextUtils.isEmpty(queryParameter8)) {
                        bundle.putString("dclid", queryParameter8);
                    }
                    String queryParameter16 = uri.getQueryParameter("utm_source_platform");
                    if (!TextUtils.isEmpty(queryParameter16)) {
                        bundle.putString("source_platform", queryParameter16);
                    }
                    String queryParameter17 = uri.getQueryParameter("utm_creative_format");
                    if (!TextUtils.isEmpty(queryParameter17)) {
                        bundle.putString("creative_format", queryParameter17);
                    }
                    String queryParameter18 = uri.getQueryParameter("utm_marketing_tactic");
                    if (!TextUtils.isEmpty(queryParameter18)) {
                        bundle.putString("marketing_tactic", queryParameter18);
                    }
                    if (!TextUtils.isEmpty(queryParameter9)) {
                        bundle.putString("srsltid", queryParameter9);
                    }
                    if (!TextUtils.isEmpty(queryParameter)) {
                        bundle.putString("sfmc_id", queryParameter);
                    }
                    for (String str : uri.getQueryParameterNames()) {
                        if (str.startsWith("gad_")) {
                            String queryParameter19 = uri.getQueryParameter(str);
                            if (!TextUtils.isEmpty(queryParameter19)) {
                                bundle.putString(str, queryParameter19);
                            }
                        }
                    }
                    r45 r45Var3 = r45Var;
                    if (r45Var3.d.G(null, e05.a1)) {
                        String string = new Uri.Builder().scheme(uri.getScheme()).authority(uri.getAuthority()).path(uri.getPath()).build().toString();
                        r45Var3.d.getClass();
                        int iMax = Math.max(500, 256);
                        if (string.length() > iMax) {
                            string = C(string, iMax - 3, true);
                        }
                        if (!TextUtils.isEmpty(string)) {
                            bundle.putString("deep_link_url", string);
                        }
                    }
                    return bundle;
                }
            } catch (UnsupportedOperationException e) {
                a25 a25Var = r45Var2.f;
                r45.l(a25Var);
                a25Var.i.b(e, "Install referrer url isn't a hierarchical URI");
                return null;
            }
        }
        return null;
    }

    @Override // defpackage.q55
    public final boolean w() {
        return true;
    }

    public final boolean x0(String str, String str2) {
        r45 r45Var = (r45) this.a;
        if (str2 == null) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.h.b(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.length() == 0) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.h.b(str, "Name is required and can't be empty. Type");
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            a25 a25Var3 = r45Var.f;
            r45.l(a25Var3);
            a25Var3.h.c(str, str2, "Name must start with a letter. Type, name");
            return false;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                a25 a25Var4 = r45Var.f;
                r45.l(a25Var4);
                a25Var4.h.c(str, str2, "Name must consist of letters, digits or _ (underscores). Type, name");
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    public final boolean y0(String str, String str2) {
        r45 r45Var = (r45) this.a;
        if (str2 == null) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.h.b(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.length() == 0) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.h.b(str, "Name is required and can't be empty. Type");
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            if (iCodePointAt != 95) {
                a25 a25Var3 = r45Var.f;
                r45.l(a25Var3);
                a25Var3.h.c(str, str2, "Name must start with a letter or _ (underscore). Type, name");
                return false;
            }
            iCodePointAt = 95;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                a25 a25Var4 = r45Var.f;
                r45.l(a25Var4);
                a25Var4.h.c(str, str2, "Name must consist of letters, digits or _ (underscores). Type, name");
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    public final boolean z(String str, String str2, int i2, Object obj) {
        if (obj == null || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Boolean) || (obj instanceof Double)) {
            return true;
        }
        if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
            return false;
        }
        String string = obj.toString();
        if (string.codePointCount(0, string.length()) <= i2) {
            return true;
        }
        a25 a25Var = ((r45) this.a).f;
        r45.l(a25Var);
        a25Var.k.d("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(string.length()));
        return false;
    }

    public final boolean z0(String str, String[] strArr, String[] strArr2, String str2) {
        r45 r45Var = (r45) this.a;
        if (str2 == null) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.h.b(str, "Name is required and can't be null. Type");
            return false;
        }
        Preconditions.checkNotNull(str2);
        for (int i2 = 0; i2 < 3; i2++) {
            if (str2.startsWith(i[i2])) {
                a25 a25Var2 = r45Var.f;
                r45.l(a25Var2);
                a25Var2.h.c(str, str2, "Name starts with reserved prefix. Type, name");
                return false;
            }
        }
        if (strArr == null || !V(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && V(str2, strArr2)) {
            return true;
        }
        a25 a25Var3 = r45Var.f;
        r45.l(a25Var3);
        a25Var3.h.c(str, str2, "Name is reserved. Type, name");
        return false;
    }
}
