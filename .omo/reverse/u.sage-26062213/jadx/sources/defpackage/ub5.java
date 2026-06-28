package defpackage;

import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.security.MessageDigest;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ub5 extends ab5 {
    public long d;
    public long e;

    public static Bundle A(Map map, boolean z) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    arrayList2.add(A((Map) arrayList.get(i), false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    public static final void D(s35 s35Var, String str, Long l) {
        List listG = s35Var.g();
        int i = 0;
        while (true) {
            if (i >= listG.size()) {
                i = -1;
                break;
            } else if (str.equals(((c45) listG.get(i)).u())) {
                break;
            } else {
                i++;
            }
        }
        a45 a45VarF = c45.F();
        a45VarF.g(str);
        a45VarF.i(l.longValue());
        if (i < 0) {
            s35Var.k(a45VarF);
        } else {
            s35Var.b();
            ((u35) s35Var.o).K(i, (c45) a45VarF.d());
        }
    }

    public static final Bundle E(List list) {
        Bundle bundle = new Bundle();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c45 c45Var = (c45) it.next();
            String strU = c45Var.u();
            if (c45Var.B()) {
                bundle.putDouble(strU, c45Var.C());
            } else if (c45Var.z()) {
                bundle.putFloat(strU, c45Var.A());
            } else if (c45Var.v()) {
                bundle.putString(strU, c45Var.w());
            } else if (c45Var.x()) {
                bundle.putLong(strU, c45Var.y());
            }
        }
        return bundle;
    }

    public static final c45 F(String str, u35 u35Var) {
        for (c45 c45Var : u35Var.v()) {
            if (c45Var.u().equals(str)) {
                return c45Var;
            }
        }
        return null;
    }

    public static final String G(String str, Map map) {
        if (map == null) {
            return null;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (str.equalsIgnoreCase((String) entry.getKey())) {
                if (entry.getValue() == null || ((List) entry.getValue()).isEmpty()) {
                    return null;
                }
                return (String) ((List) entry.getValue()).get(0);
            }
        }
        return null;
    }

    public static final Serializable H(String str, u35 u35Var) {
        c45 c45VarF = F(str, u35Var);
        if (c45VarF == null) {
            return null;
        }
        return N(c45VarF);
    }

    public static final void K(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    public static final void L(Uri.Builder builder, String str, String str2, HashSet hashSet) {
        if (hashSet.contains(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }

    public static final String M(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [android.os.Bundle[], java.io.Serializable] */
    public static final Serializable N(c45 c45Var) {
        if (c45Var.v()) {
            return c45Var.w();
        }
        if (c45Var.x()) {
            return Long.valueOf(c45Var.y());
        }
        if (c45Var.B()) {
            return Double.valueOf(c45Var.C());
        }
        if (c45Var.E() > 0) {
            return i0(c45Var.D());
        }
        return null;
    }

    public static final void O(Uri.Builder builder, String[] strArr, Bundle bundle, HashSet hashSet) {
        for (String str : strArr) {
            String[] strArrSplit = str.split(",");
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[strArrSplit.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                L(builder, str3, string, hashSet);
            }
        }
    }

    public static final void P(StringBuilder sb, String str, z45 z45Var) {
        if (z45Var == null) {
            return;
        }
        K(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (z45Var.w() != 0) {
            K(sb, 4);
            sb.append("results: ");
            int i = 0;
            for (Long l : z45Var.v()) {
                int i2 = i + 1;
                if (i != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i = i2;
            }
            sb.append('\n');
        }
        if (z45Var.u() != 0) {
            K(sb, 4);
            sb.append("status: ");
            int i3 = 0;
            for (Long l2 : z45Var.t()) {
                int i4 = i3 + 1;
                if (i3 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i3 = i4;
            }
            sb.append('\n');
        }
        if (z45Var.y() != 0) {
            K(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i5 = 0;
            for (r35 r35Var : z45Var.x()) {
                int i6 = i5 + 1;
                if (i5 != 0) {
                    sb.append(", ");
                }
                sb.append(r35Var.t() ? Integer.valueOf(r35Var.u()) : null);
                sb.append(":");
                sb.append(r35Var.v() ? Long.valueOf(r35Var.w()) : null);
                i5 = i6;
            }
            sb.append("}\n");
        }
        if (z45Var.A() != 0) {
            K(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i7 = 0;
            for (c55 c55Var : z45Var.z()) {
                int i8 = i7 + 1;
                if (i7 != 0) {
                    sb.append(", ");
                }
                sb.append(c55Var.t() ? Integer.valueOf(c55Var.u()) : null);
                sb.append(": [");
                Iterator it = c55Var.v().iterator();
                int i9 = 0;
                while (it.hasNext()) {
                    long jLongValue = ((Long) it.next()).longValue();
                    int i10 = i9 + 1;
                    if (i9 != 0) {
                        sb.append(", ");
                    }
                    sb.append(jLongValue);
                    i9 = i10;
                }
                sb.append("]");
                i7 = i8;
            }
            sb.append("}\n");
        }
        K(sb, 3);
        sb.append("}\n");
    }

    public static final void Q(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        K(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    public static final void R(StringBuilder sb, int i, String str, rz4 rz4Var) {
        if (rz4Var == null) {
            return;
        }
        K(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (rz4Var.t()) {
            int iD = rz4Var.D();
            Q(sb, i, "comparison_type", iD != 1 ? iD != 2 ? iD != 3 ? iD != 4 ? "BETWEEN" : "EQUAL" : "GREATER_THAN" : "LESS_THAN" : "UNKNOWN_COMPARISON_TYPE");
        }
        if (rz4Var.u()) {
            Q(sb, i, "match_as_float", Boolean.valueOf(rz4Var.v()));
        }
        if (rz4Var.w()) {
            Q(sb, i, "comparison_value", rz4Var.x());
        }
        if (rz4Var.y()) {
            Q(sb, i, "min_comparison_value", rz4Var.z());
        }
        if (rz4Var.A()) {
            Q(sb, i, "max_comparison_value", rz4Var.B());
        }
        K(sb, i);
        sb.append("}\n");
    }

    public static boolean Z(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    public static boolean a0(co4 co4Var, int i) {
        if (i < ((jo4) co4Var).p * 64) {
            return ((1 << (i % 64)) & ((Long) ((jo4) co4Var).get(i / 64)).longValue()) != 0;
        }
        return false;
    }

    public static ArrayList b0(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            long j = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i * 64) + i2;
                if (i3 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i3)) {
                    j |= 1 << i2;
                }
            }
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    public static pn4 g0(pn4 pn4Var, byte[] bArr) throws fo4 {
        kn4 kn4VarA = kn4.a();
        if (kn4VarA != null) {
            pn4Var.getClass();
            pn4Var.f(bArr, bArr.length, kn4VarA);
            return pn4Var;
        }
        pn4Var.getClass();
        int length = bArr.length;
        int i = um4.a;
        pn4Var.f(bArr, length, kn4.b);
        return pn4Var;
    }

    public static int h0(String str, q45 q45Var) {
        for (int i = 0; i < ((u45) q45Var.o).a2(); i++) {
            if (str.equals(((u45) q45Var.o).b2(i).v())) {
                return i;
            }
        }
        return -1;
    }

    public static Bundle[] i0(do4 do4Var) {
        ArrayList arrayList = new ArrayList();
        Iterator it = do4Var.iterator();
        while (it.hasNext()) {
            c45 c45Var = (c45) it.next();
            if (c45Var != null) {
                Bundle bundle = new Bundle();
                for (c45 c45Var2 : c45Var.D()) {
                    if (c45Var2.v()) {
                        bundle.putString(c45Var2.u(), c45Var2.w());
                    } else if (c45Var2.x()) {
                        bundle.putLong(c45Var2.u(), c45Var2.y());
                    } else if (c45Var2.B()) {
                        bundle.putDouble(c45Var2.u(), c45Var2.C());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public static HashMap j0(Bundle bundle, boolean z) {
        HashMap map = new HashMap();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            boolean z2 = obj instanceof Parcelable[];
            if (z2 || (obj instanceof ArrayList) || (obj instanceof Bundle)) {
                if (z) {
                    ArrayList arrayList = new ArrayList();
                    if (z2) {
                        for (Parcelable parcelable : (Parcelable[]) obj) {
                            if (parcelable instanceof Bundle) {
                                arrayList.add(j0((Bundle) parcelable, false));
                            }
                        }
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList2 = (ArrayList) obj;
                        int size = arrayList2.size();
                        for (int i = 0; i < size; i++) {
                            Object obj2 = arrayList2.get(i);
                            if (obj2 instanceof Bundle) {
                                arrayList.add(j0((Bundle) obj2, false));
                            }
                        }
                    } else if (obj instanceof Bundle) {
                        arrayList.add(j0((Bundle) obj, false));
                    }
                    map.put(str, arrayList);
                }
            } else if (obj != null) {
                map.put(str, obj);
            }
        }
        return map;
    }

    public static bu4 z(xk4 xk4Var) {
        Object obj;
        Bundle bundleA = A(xk4Var.c, true);
        String string = (!bundleA.containsKey("_o") || (obj = bundleA.get("_o")) == null) ? "app" : obj.toString();
        String strE = vm4.e(xk4Var.a, ca.g, ca.l);
        if (strE == null) {
            strE = xk4Var.a;
        }
        return new bu4(strE, new zt4(bundleA), string, xk4Var.b, 0L);
    }

    public final void B(Map map) {
        long epochMilli;
        r45 r45Var = (r45) this.a;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            String strG = G("Date", map);
            if (TextUtils.isEmpty(strG)) {
                return;
            }
            if (i >= 26) {
                try {
                    epochMilli = ZonedDateTime.parse(strG, DateTimeFormatter.RFC_1123_DATE_TIME).toInstant().toEpochMilli();
                } catch (DateTimeParseException unused) {
                    a25 a25Var = r45Var.f;
                    r45.l(a25Var);
                    a25Var.i.b(strG, "Unable to parse header time, time");
                    epochMilli = 0;
                }
            } else {
                epochMilli = 0;
            }
            if (epochMilli > 0) {
                long jElapsedRealtime = r45Var.k.elapsedRealtime();
                v();
                if (this.e == 0) {
                    this.d = jElapsedRealtime;
                    this.e = epochMilli;
                }
            }
        }
    }

    public final long C(long j) {
        v();
        long j2 = this.e;
        if (j2 == 0 || j == 0) {
            return 0L;
        }
        return (j2 - this.d) + j;
    }

    public final void I(StringBuilder sb, int i, do4 do4Var) {
        if (do4Var == null) {
            return;
        }
        int i2 = i + 1;
        Iterator it = do4Var.iterator();
        while (it.hasNext()) {
            c45 c45Var = (c45) it.next();
            if (c45Var != null) {
                K(sb, i2);
                sb.append("param {\n");
                Q(sb, i2, "name", c45Var.t() ? ((r45) this.a).j.b(c45Var.u()) : null);
                Q(sb, i2, "string_value", c45Var.v() ? c45Var.w() : null);
                Q(sb, i2, "int_value", c45Var.x() ? Long.valueOf(c45Var.y()) : null);
                Q(sb, i2, "double_value", c45Var.B() ? Double.valueOf(c45Var.C()) : null);
                if (c45Var.E() > 0) {
                    I(sb, i2, c45Var.D());
                }
                K(sb, i2);
                sb.append("}\n");
            }
        }
    }

    public final void J(StringBuilder sb, int i, nz4 nz4Var) {
        String str;
        if (nz4Var == null) {
            return;
        }
        K(sb, i);
        sb.append("filter {\n");
        if (nz4Var.x()) {
            Q(sb, i, "complement", Boolean.valueOf(nz4Var.y()));
        }
        if (nz4Var.z()) {
            Q(sb, i, "param_name", ((r45) this.a).j.b(nz4Var.A()));
        }
        if (nz4Var.t()) {
            int i2 = i + 1;
            wz4 wz4VarU = nz4Var.u();
            if (wz4VarU != null) {
                K(sb, i2);
                sb.append("string_filter {\n");
                if (wz4VarU.t()) {
                    switch (wz4VarU.B()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case 6:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    Q(sb, i2, "match_type", str);
                }
                if (wz4VarU.u()) {
                    Q(sb, i2, "expression", wz4VarU.v());
                }
                if (wz4VarU.w()) {
                    Q(sb, i2, "case_sensitive", Boolean.valueOf(wz4VarU.x()));
                }
                if (wz4VarU.z() > 0) {
                    K(sb, i + 2);
                    sb.append("expression_list {\n");
                    for (String str2 : wz4VarU.y()) {
                        K(sb, i + 3);
                        sb.append(str2);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                K(sb, i2);
                sb.append("}\n");
            }
        }
        if (nz4Var.v()) {
            R(sb, i + 1, "number_filter", nz4Var.w());
        }
        K(sb, i);
        sb.append("}\n");
    }

    public final void S(g55 g55Var, Object obj) {
        Preconditions.checkNotNull(obj);
        g55Var.b();
        ((h55) g55Var.o).I();
        g55Var.b();
        ((h55) g55Var.o).K();
        g55Var.b();
        ((h55) g55Var.o).M();
        if (obj instanceof String) {
            g55Var.b();
            ((h55) g55Var.o).H((String) obj);
        } else if (obj instanceof Long) {
            long jLongValue = ((Long) obj).longValue();
            g55Var.b();
            ((h55) g55Var.o).J(jLongValue);
        } else if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            g55Var.b();
            ((h55) g55Var.o).L(dDoubleValue);
        } else {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.f.b(obj, "Ignoring invalid (type) user attribute value");
        }
    }

    public final void T(a45 a45Var, Object obj) {
        Preconditions.checkNotNull(obj);
        a45Var.b();
        ((c45) a45Var.o).I();
        a45Var.b();
        ((c45) a45Var.o).K();
        a45Var.b();
        ((c45) a45Var.o).M();
        a45Var.b();
        ((c45) a45Var.o).P();
        if (obj instanceof String) {
            a45Var.h((String) obj);
            return;
        }
        if (obj instanceof Long) {
            a45Var.i(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            a45Var.b();
            ((c45) a45Var.o).L(dDoubleValue);
            return;
        }
        if (!(obj instanceof Bundle[])) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.f.b(obj, "Ignoring invalid (type) event param value");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : (Bundle[]) obj) {
            if (bundle != null) {
                a45 a45VarF = c45.F();
                for (String str : bundle.keySet()) {
                    a45 a45VarF2 = c45.F();
                    a45VarF2.g(str);
                    Object obj2 = bundle.get(str);
                    if (obj2 instanceof Long) {
                        a45VarF2.i(((Long) obj2).longValue());
                    } else if (obj2 instanceof String) {
                        a45VarF2.h((String) obj2);
                    } else if (obj2 instanceof Double) {
                        double dDoubleValue2 = ((Double) obj2).doubleValue();
                        a45VarF2.b();
                        ((c45) a45VarF2.o).L(dDoubleValue2);
                    }
                    a45VarF.b();
                    ((c45) a45VarF.o).N((c45) a45VarF2.d());
                }
                if (((c45) a45VarF.o).E() > 0) {
                    arrayList.add((c45) a45VarF.d());
                }
            }
        }
        a45Var.b();
        ((c45) a45Var.o).O(arrayList);
    }

    public final oa5 U(String str, q45 q45Var, s35 s35Var, String str2) {
        int iIndexOf;
        er4.a();
        r45 r45Var = (r45) this.a;
        ds4 ds4Var = r45Var.d;
        if (!ds4Var.G(str, e05.O0)) {
            return null;
        }
        long jCurrentTimeMillis = r45Var.k.currentTimeMillis();
        HashSet hashSet = new HashSet(Arrays.asList(ds4Var.C(str, e05.t0).split(",")));
        pb5 pb5Var = this.b;
        eb5 eb5Var = pb5Var.j;
        w35 w35Var = pb5Var.a;
        w35 w35Var2 = eb5Var.b.a;
        pb5.T(w35Var2);
        String strI = w35Var2.I(str);
        Uri.Builder builder = new Uri.Builder();
        ds4 ds4Var2 = ((r45) eb5Var.a).d;
        builder.scheme(ds4Var2.C(str, e05.m0));
        if (TextUtils.isEmpty(strI)) {
            builder.authority(ds4Var2.C(str, e05.n0));
        } else {
            String strC = ds4Var2.C(str, e05.n0);
            StringBuilder sb = new StringBuilder(String.valueOf(strI).length() + 1 + String.valueOf(strC).length());
            sb.append(strI);
            sb.append(".");
            sb.append(strC);
            builder.authority(sb.toString());
        }
        builder.path(ds4Var2.C(str, e05.o0));
        L(builder, "gmp_app_id", ((u45) q45Var.o).I(), hashSet);
        ds4Var.B();
        L(builder, "gmp_version", String.valueOf(161000L), hashSet);
        String strC2 = ((u45) q45Var.o).C();
        d05 d05Var = e05.R0;
        if (ds4Var.G(str, d05Var)) {
            pb5.T(w35Var);
            if (w35Var.P(str)) {
                strC2 = "";
            }
        }
        L(builder, "app_instance_id", strC2, hashSet);
        L(builder, "rdid", ((u45) q45Var.o).z(), hashSet);
        L(builder, "bundle_id", q45Var.n(), hashSet);
        String strM = s35Var.m();
        String strE = vm4.e(strM, ca.l, ca.g);
        if (true != TextUtils.isEmpty(strE)) {
            strM = strE;
        }
        L(builder, "app_event_name", strM, hashSet);
        L(builder, "app_version", String.valueOf(((u45) q45Var.o).O()), hashSet);
        String strN2 = ((u45) q45Var.o).n2();
        if (ds4Var.G(str, d05Var)) {
            pb5.T(w35Var);
            if (w35Var.O(str) && !TextUtils.isEmpty(strN2) && (iIndexOf = strN2.indexOf(".")) != -1) {
                strN2 = strN2.substring(0, iIndexOf);
            }
        }
        L(builder, "os_version", strN2, hashSet);
        L(builder, "timestamp", String.valueOf(s35Var.o()), hashSet);
        if (((u45) q45Var.o).B()) {
            L(builder, "lat", "1", hashSet);
        }
        L(builder, "privacy_sandbox_version", String.valueOf(((u45) q45Var.o).K0()), hashSet);
        L(builder, "trigger_uri_source", "1", hashSet);
        L(builder, "trigger_uri_timestamp", String.valueOf(jCurrentTimeMillis), hashSet);
        L(builder, "request_uuid", str2, hashSet);
        List<c45> listG = s35Var.g();
        Bundle bundle = new Bundle();
        for (c45 c45Var : listG) {
            String strU = c45Var.u();
            if (c45Var.B()) {
                bundle.putString(strU, String.valueOf(c45Var.C()));
            } else if (c45Var.z()) {
                bundle.putString(strU, String.valueOf(c45Var.A()));
            } else if (c45Var.v()) {
                bundle.putString(strU, c45Var.w());
            } else if (c45Var.x()) {
                bundle.putString(strU, String.valueOf(c45Var.y()));
            }
        }
        O(builder, ds4Var.C(str, e05.s0).split("\\|"), bundle, hashSet);
        List<h55> listUnmodifiableList = Collections.unmodifiableList(((u45) q45Var.o).Z1());
        Bundle bundle2 = new Bundle();
        for (h55 h55Var : listUnmodifiableList) {
            String strV = h55Var.v();
            if (h55Var.C()) {
                bundle2.putString(strV, String.valueOf(h55Var.D()));
            } else if (h55Var.A()) {
                bundle2.putString(strV, String.valueOf(h55Var.B()));
            } else if (h55Var.w()) {
                bundle2.putString(strV, h55Var.x());
            } else if (h55Var.y()) {
                bundle2.putString(strV, String.valueOf(h55Var.z()));
            }
        }
        O(builder, ds4Var.C(str, e05.r0).split("\\|"), bundle2, hashSet);
        L(builder, "dma", true != ((u45) q45Var.o).H0() ? "0" : "1", hashSet);
        if (!((u45) q45Var.o).J0().isEmpty()) {
            L(builder, "dma_cps", ((u45) q45Var.o).J0(), hashSet);
        }
        if (((u45) q45Var.o).P0()) {
            o25 o25VarQ0 = ((u45) q45Var.o).Q0();
            if (!o25VarQ0.H().isEmpty()) {
                L(builder, "dl_gclid", o25VarQ0.H(), hashSet);
            }
            if (!o25VarQ0.J().isEmpty()) {
                L(builder, "dl_gbraid", o25VarQ0.J(), hashSet);
            }
            if (!o25VarQ0.L().isEmpty()) {
                L(builder, "dl_gs", o25VarQ0.L(), hashSet);
            }
            if (o25VarQ0.N() > 0) {
                L(builder, "dl_ss_ts", String.valueOf(o25VarQ0.N()), hashSet);
            }
            if (!o25VarQ0.P().isEmpty()) {
                L(builder, "mr_gclid", o25VarQ0.P(), hashSet);
            }
            if (!o25VarQ0.R().isEmpty()) {
                L(builder, "mr_gbraid", o25VarQ0.R(), hashSet);
            }
            if (!o25VarQ0.T().isEmpty()) {
                L(builder, "mr_gs", o25VarQ0.T(), hashSet);
            }
            if (o25VarQ0.V() > 0) {
                L(builder, "mr_click_ts", String.valueOf(o25VarQ0.V()), hashSet);
            }
        }
        return new oa5(builder.build().toString(), 1, jCurrentTimeMillis);
    }

    public final u35 V(vt4 vt4Var) {
        s35 s35VarJ = u35.J();
        long j = vt4Var.f;
        s35VarJ.b();
        ((u35) s35VarJ.o).R(j);
        long j2 = vt4Var.e;
        s35VarJ.b();
        ((u35) s35VarJ.o).t(j2);
        zt4 zt4Var = vt4Var.g;
        Objects.requireNonNull(zt4Var);
        Bundle bundle = zt4Var.n;
        for (String str : bundle.keySet()) {
            a45 a45VarF = c45.F();
            a45VarF.g(str);
            Object obj = bundle.get(str);
            Preconditions.checkNotNull(obj);
            T(a45VarF, obj);
            s35VarJ.k(a45VarF);
        }
        String str2 = vt4Var.c;
        if (!TextUtils.isEmpty(str2) && bundle.get("_o") == null) {
            a45 a45VarF2 = c45.F();
            a45VarF2.g("_o");
            a45VarF2.h(str2);
            s35VarJ.j((c45) a45VarF2.d());
        }
        return (u35) s35VarJ.d();
    }

    public final String W(p45 p45Var) {
        x25 x25VarM0;
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        if (p45Var.y()) {
            Q(sb, 0, "upload_subdomain", p45Var.z());
        }
        if (p45Var.w()) {
            Q(sb, 0, "sgtm_join_id", p45Var.x());
        }
        for (u45 u45Var : p45Var.t()) {
            if (u45Var != null) {
                K(sb, 1);
                sb.append("bundle {\n");
                if (u45Var.T()) {
                    Q(sb, 1, "protocol_version", Integer.valueOf(u45Var.T0()));
                }
                r45 r45Var = (r45) this.a;
                ds4 ds4Var = r45Var.d;
                p15 p15Var = r45Var.j;
                if (ds4Var.G(u45Var.t(), e05.M0) && u45Var.z0()) {
                    Q(sb, 1, "session_stitching_token", u45Var.A0());
                }
                Q(sb, 1, "platform", u45Var.m2());
                if (u45Var.v()) {
                    Q(sb, 1, "gmp_version", Long.valueOf(u45Var.w()));
                }
                if (u45Var.x()) {
                    Q(sb, 1, "uploading_gmp_version", Long.valueOf(u45Var.y()));
                }
                if (u45Var.v0()) {
                    Q(sb, 1, "dynamite_version", Long.valueOf(u45Var.w0()));
                }
                if (u45Var.P()) {
                    Q(sb, 1, "config_version", Long.valueOf(u45Var.Q()));
                }
                Q(sb, 1, "gmp_app_id", u45Var.I());
                Q(sb, 1, "app_id", u45Var.t());
                Q(sb, 1, "app_version", u45Var.u());
                if (u45Var.N()) {
                    Q(sb, 1, "app_version_major", Integer.valueOf(u45Var.O()));
                }
                Q(sb, 1, "firebase_instance_id", u45Var.M());
                if (u45Var.D()) {
                    Q(sb, 1, "dev_cert_hash", Long.valueOf(u45Var.E()));
                }
                Q(sb, 1, "app_store", u45Var.s2());
                if (u45Var.c2()) {
                    Q(sb, 1, "upload_timestamp_millis", Long.valueOf(u45Var.d2()));
                }
                if (u45Var.e2()) {
                    Q(sb, 1, "start_timestamp_millis", Long.valueOf(u45Var.f2()));
                }
                if (u45Var.g2()) {
                    Q(sb, 1, "end_timestamp_millis", Long.valueOf(u45Var.h2()));
                }
                if (u45Var.i2()) {
                    Q(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(u45Var.j2()));
                }
                if (u45Var.k2()) {
                    Q(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(u45Var.l2()));
                }
                Q(sb, 1, "app_instance_id", u45Var.C());
                Q(sb, 1, "resettable_device_id", u45Var.z());
                Q(sb, 1, "ds_id", u45Var.S());
                if (u45Var.A()) {
                    Q(sb, 1, "limited_ad_tracking", Boolean.valueOf(u45Var.B()));
                }
                Q(sb, 1, "os_version", u45Var.n2());
                Q(sb, 1, "device_model", u45Var.o2());
                Q(sb, 1, "user_default_language", u45Var.p2());
                if (u45Var.q2()) {
                    Q(sb, 1, "time_zone_offset_minutes", Integer.valueOf(u45Var.r2()));
                }
                if (u45Var.F()) {
                    Q(sb, 1, "bundle_sequential_index", Integer.valueOf(u45Var.G()));
                }
                if (u45Var.N0()) {
                    Q(sb, 1, "delivery_index", Integer.valueOf(u45Var.O0()));
                }
                if (u45Var.J()) {
                    Q(sb, 1, "service_upload", Boolean.valueOf(u45Var.K()));
                }
                Q(sb, 1, "health_monitor", u45Var.H());
                if (u45Var.t0()) {
                    Q(sb, 1, "retry_counter", Integer.valueOf(u45Var.u0()));
                }
                if (u45Var.x0()) {
                    Q(sb, 1, "consent_signals", u45Var.y0());
                }
                if (u45Var.G0()) {
                    Q(sb, 1, "is_dma_region", Boolean.valueOf(u45Var.H0()));
                }
                if (u45Var.I0()) {
                    Q(sb, 1, "core_platform_services", u45Var.J0());
                }
                if (u45Var.E0()) {
                    Q(sb, 1, "consent_diagnostics", u45Var.F0());
                }
                if (u45Var.B0()) {
                    Q(sb, 1, "target_os_version", Long.valueOf(u45Var.C0()));
                }
                er4.a();
                if (ds4Var.G(u45Var.t(), e05.O0)) {
                    Q(sb, 1, "ad_services_version", Integer.valueOf(u45Var.K0()));
                    if (u45Var.L0() && (x25VarM0 = u45Var.M0()) != null) {
                        K(sb, 2);
                        sb.append("attribution_eligibility_status {\n");
                        Q(sb, 2, "eligible", Boolean.valueOf(x25VarM0.t()));
                        Q(sb, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(x25VarM0.u()));
                        Q(sb, 2, "pre_r", Boolean.valueOf(x25VarM0.v()));
                        Q(sb, 2, "r_extensions_too_old", Boolean.valueOf(x25VarM0.w()));
                        Q(sb, 2, "adservices_extension_too_old", Boolean.valueOf(x25VarM0.x()));
                        Q(sb, 2, "ad_storage_not_allowed", Boolean.valueOf(x25VarM0.y()));
                        Q(sb, 2, "measurement_manager_disabled", Boolean.valueOf(x25VarM0.z()));
                        K(sb, 2);
                        sb.append("}\n");
                    }
                }
                if (u45Var.P0()) {
                    o25 o25VarQ0 = u45Var.Q0();
                    K(sb, 2);
                    sb.append("ad_campaign_info {\n");
                    if (o25VarQ0.G()) {
                        Q(sb, 2, "deep_link_gclid", o25VarQ0.H());
                    }
                    if (o25VarQ0.I()) {
                        Q(sb, 2, "deep_link_gbraid", o25VarQ0.J());
                    }
                    if (o25VarQ0.K()) {
                        Q(sb, 2, "deep_link_gad_source", o25VarQ0.L());
                    }
                    if (o25VarQ0.W()) {
                        Q(sb, 2, "deep_link_url", o25VarQ0.X());
                    }
                    if (o25VarQ0.M()) {
                        Q(sb, 2, "deep_link_session_millis", Long.valueOf(o25VarQ0.N()));
                    }
                    if (o25VarQ0.O()) {
                        Q(sb, 2, "market_referrer_gclid", o25VarQ0.P());
                    }
                    if (o25VarQ0.Q()) {
                        Q(sb, 2, "market_referrer_gbraid", o25VarQ0.R());
                    }
                    if (o25VarQ0.S()) {
                        Q(sb, 2, "market_referrer_gad_source", o25VarQ0.T());
                    }
                    if (o25VarQ0.U()) {
                        Q(sb, 2, "market_referrer_click_millis", Long.valueOf(o25VarQ0.V()));
                    }
                    K(sb, 2);
                    sb.append("}\n");
                }
                if (u45Var.U()) {
                    Q(sb, 1, "batching_timestamp_millis", Long.valueOf(u45Var.V()));
                }
                if (u45Var.R0()) {
                    f55 f55VarS0 = u45Var.S0();
                    K(sb, 2);
                    sb.append("sgtm_diagnostics {\n");
                    int iX = f55VarS0.x();
                    Q(sb, 2, "upload_type", iX != 1 ? iX != 2 ? iX != 3 ? iX != 4 ? "SDK_SERVICE_UPLOAD" : "PACKAGE_SERVICE_UPLOAD" : "SDK_CLIENT_UPLOAD" : "GA_UPLOAD" : "UPLOAD_TYPE_UNKNOWN");
                    Q(sb, 2, "client_upload_eligibility", f55VarS0.t().name());
                    int iY = f55VarS0.y();
                    Q(sb, 2, "service_upload_eligibility", iY != 1 ? iY != 2 ? iY != 3 ? iY != 4 ? iY != 5 ? "NON_PLAY_MISSING_SGTM_SERVER_URL" : "MISSING_SGTM_PROXY_INFO" : "MISSING_SGTM_SETTINGS" : "NOT_IN_ROLLOUT" : "SERVICE_UPLOAD_ELIGIBLE" : "SERVICE_UPLOAD_ELIGIBILITY_UNKNOWN");
                    K(sb, 2);
                    sb.append("}\n");
                }
                if (u45Var.W()) {
                    o35 o35VarX = u45Var.X();
                    K(sb, 2);
                    sb.append("consent_info_extra {\n");
                    for (l35 l35Var : o35VarX.t()) {
                        K(sb, 3);
                        sb.append("limited_data_modes {\n");
                        int iU = l35Var.u();
                        Q(sb, 3, "type", iU != 1 ? iU != 2 ? iU != 3 ? iU != 4 ? "AD_PERSONALIZATION" : "AD_USER_DATA" : "ANALYTICS_STORAGE" : "AD_STORAGE" : "CONSENT_TYPE_UNSPECIFIED");
                        int iV = l35Var.v();
                        Q(sb, 3, "mode", iV != 1 ? iV != 2 ? "NO_DATA_MODE" : "LIMITED_MODE" : "NOT_LIMITED");
                        K(sb, 3);
                        sb.append("}\n");
                    }
                    K(sb, 2);
                    sb.append("}\n");
                }
                do4<h55> do4VarZ1 = u45Var.Z1();
                if (do4VarZ1 != null) {
                    for (h55 h55Var : do4VarZ1) {
                        if (h55Var != null) {
                            K(sb, 2);
                            sb.append("user_property {\n");
                            Q(sb, 2, "set_timestamp_millis", h55Var.t() ? Long.valueOf(h55Var.u()) : null);
                            Q(sb, 2, "name", p15Var.c(h55Var.v()));
                            Q(sb, 2, "string_value", h55Var.x());
                            Q(sb, 2, "int_value", h55Var.y() ? Long.valueOf(h55Var.z()) : null);
                            Q(sb, 2, "double_value", h55Var.C() ? Double.valueOf(h55Var.D()) : null);
                            K(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                do4<c35> do4VarL = u45Var.L();
                if (do4VarL != null) {
                    for (c35 c35Var : do4VarL) {
                        if (c35Var != null) {
                            K(sb, 2);
                            sb.append("audience_membership {\n");
                            if (c35Var.t()) {
                                Q(sb, 2, "audience_id", Integer.valueOf(c35Var.u()));
                            }
                            if (c35Var.y()) {
                                Q(sb, 2, "new_audience", Boolean.valueOf(c35Var.z()));
                            }
                            P(sb, "current_data", c35Var.v());
                            if (c35Var.w()) {
                                P(sb, "previous_data", c35Var.x());
                            }
                            K(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<u35> listT1 = u45Var.T1();
                if (listT1 != null) {
                    for (u35 u35Var : listT1) {
                        if (u35Var != null) {
                            K(sb, 2);
                            sb.append("event {\n");
                            Q(sb, 2, "name", p15Var.a(u35Var.y()));
                            if (u35Var.z()) {
                                Q(sb, 2, "timestamp_millis", Long.valueOf(u35Var.A()));
                            }
                            if (ds4Var.G(null, e05.e1) && u35Var.F()) {
                                Q(sb, 2, "corrected_timestamp_millis", Long.valueOf(u35Var.G()));
                            }
                            if (u35Var.B()) {
                                Q(sb, 2, "previous_timestamp_millis", Long.valueOf(u35Var.C()));
                            }
                            if (u35Var.D()) {
                                Q(sb, 2, "count", Integer.valueOf(u35Var.E()));
                            }
                            if (u35Var.w() != 0) {
                                I(sb, 2, (do4) u35Var.v());
                            }
                            K(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                K(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("} // End-of-batch\n");
        return sb.toString();
    }

    public final String X(uz4 uz4Var) {
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (uz4Var.t()) {
            Q(sb, 0, "filter_id", Integer.valueOf(uz4Var.u()));
        }
        Q(sb, 0, "property_name", ((r45) this.a).j.c(uz4Var.v()));
        String strM = M(uz4Var.x(), uz4Var.y(), uz4Var.A());
        if (!strM.isEmpty()) {
            Q(sb, 0, "filter_type", strM);
        }
        J(sb, 1, uz4Var.w());
        sb.append("}\n");
        return sb.toString();
    }

    public final Parcelable Y(byte[] bArr, Parcelable.Creator creator) {
        Parcelable parcelable = null;
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                parcelObtain.unmarshall(bArr, 0, bArr.length);
                parcelObtain.setDataPosition(0);
                parcelable = (Parcelable) creator.createFromParcel(parcelObtain);
            } catch (SafeParcelReader.ParseException unused) {
                a25 a25Var = ((r45) this.a).f;
                r45.l(a25Var);
                a25Var.f.a("Failed to load parcelable from buffer");
            }
            return parcelable;
        } finally {
            parcelObtain.recycle();
        }
    }

    public final List c0(co4 co4Var, List list) {
        int i;
        r45 r45Var = (r45) this.a;
        ArrayList arrayList = new ArrayList(co4Var);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num.intValue() < 0) {
                a25 a25Var = r45Var.f;
                r45.l(a25Var);
                a25Var.i.b(num, "Ignoring negative bit index to be cleared");
            } else {
                int iIntValue = num.intValue() / 64;
                if (iIntValue >= arrayList.size()) {
                    a25 a25Var2 = r45Var.f;
                    r45.l(a25Var2);
                    a25Var2.i.c(num, Integer.valueOf(arrayList.size()), "Ignoring bit index greater than bitSet size");
                } else {
                    arrayList.set(iIntValue, Long.valueOf(((Long) arrayList.get(iIntValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i2 = size2;
            i = size;
            size = i2;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i);
    }

    public final boolean d0(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(((r45) this.a).k.currentTimeMillis() - j) > j2;
    }

    public final long e0(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        r45 r45Var = (r45) this.a;
        ac5 ac5Var = r45Var.i;
        r45.j(ac5Var);
        ac5Var.v();
        MessageDigest messageDigestO = ac5.O();
        if (messageDigestO != null) {
            return ac5.P(messageDigestO.digest(bArr));
        }
        a25 a25Var = r45Var.f;
        r45.l(a25Var);
        a25Var.f.a("Failed to get MD5");
        return 0L;
    }

    public final byte[] f0(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.f.b(e, "Failed to gzip content");
            throw e;
        }
    }

    @Override // defpackage.ab5
    public final void y() {
    }
}
