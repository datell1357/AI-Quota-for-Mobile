package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import u.sage.worker.CalendarSyncWorker;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class bi4 implements mb4 {
    public static final pv2 n = new pv2(new mv2());
    public static final StackTraceElement[] o = new StackTraceElement[0];
    public static final z70 p = z70.f434u;
    public static final float q = 0.38f;
    public static so1 r;

    public static final boolean A(xy1 xy1Var) {
        int iOrdinal = xy1Var.T.d.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal != 1) {
                if (iOrdinal != 2) {
                    if (iOrdinal != 3) {
                        if (iOrdinal != 4) {
                            p61.x();
                            return false;
                        }
                        xy1 xy1VarU = xy1Var.u();
                        if (xy1VarU != null) {
                            return A(xy1VarU);
                        }
                        k21.f("no parent for idle node");
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static final boolean B(float f, float f2, sb sbVar) {
        float f3 = f - 0.005f;
        float f4 = f2 - 0.005f;
        float f5 = f + 0.005f;
        float f6 = f2 + 0.005f;
        sb sbVarA = ub.a();
        if (Float.isNaN(f3) || Float.isNaN(f4) || Float.isNaN(f5) || Float.isNaN(f6)) {
            ub.b("Invalid rectangle, make sure no value is NaN");
        }
        if (sbVarA.b == null) {
            sbVarA.b = new RectF();
        }
        RectF rectF = sbVarA.b;
        rectF.getClass();
        rectF.set(f3, f4, f5, f6);
        Path path = sbVarA.a;
        RectF rectF2 = sbVarA.b;
        rectF2.getClass();
        path.addRect(rectF2, Path.Direction.CCW);
        sb sbVarA2 = ub.a();
        sbVarA2.d(sbVar, sbVarA, 1);
        boolean zIsEmpty = sbVarA2.a.isEmpty();
        sbVarA2.e();
        sbVarA.e();
        return !zIsEmpty;
    }

    public static final boolean C(float f, float f2, float f3, float f4, long j) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        return ((f6 * f6) / (fIntBitsToFloat2 * fIntBitsToFloat2)) + ((f5 * f5) / (fIntBitsToFloat * fIntBitsToFloat)) <= 1.0f;
    }

    public static final CharSequence D(int i, CharSequence charSequence) {
        charSequence.getClass();
        if (charSequence.length() >= 200) {
            if (i != -1) {
                int i2 = i - 30;
                int i3 = i + 30;
                String str = i2 <= 0 ? "" : ".....";
                String str2 = i3 >= charSequence.length() ? "" : ".....";
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                if (i2 < 0) {
                    i2 = 0;
                }
                int length = charSequence.length();
                if (i3 > length) {
                    i3 = length;
                }
                sb.append(charSequence.subSequence(i2, i3).toString());
                sb.append(str2);
                return sb.toString();
            }
            int length2 = charSequence.length() - 60;
            if (length2 > 0) {
                return "....." + charSequence.subSequence(length2, charSequence.length()).toString();
            }
        }
        return charSequence;
    }

    public static hb E(String str) throws ProtocolException {
        int i;
        String strSubstring;
        boolean zY0 = gt3.y0(str, "HTTP/1.", false);
        d03 d03Var = d03.HTTP_1_0;
        d03 d03Var2 = d03.HTTP_1_1;
        if (zY0) {
            i = 9;
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt != 0) {
                if (iCharAt != 1) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                d03Var = d03Var2;
            }
        } else if (gt3.y0(str, "ICY ", false)) {
            i = 4;
        } else {
            if (!gt3.y0(str, "SOURCETABLE ", false)) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            i = 12;
            d03Var = d03Var2;
        }
        int i2 = i + 3;
        if (str.length() < i2) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
        Integer numZ0 = gt3.z0(str.substring(i, i2));
        if (numZ0 == null) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
        int iIntValue = numZ0.intValue();
        if (str.length() <= i2) {
            strSubstring = "";
        } else {
            if (str.charAt(i2) != ' ') {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            strSubstring = str.substring(i + 4);
        }
        return new hb(d03Var, iIntValue, strSubstring);
    }

    public static final Object F(hu2 hu2Var, h03 h03Var) {
        h03Var.getClass();
        Object objB = hu2Var.get(h03Var);
        if (objB == null) {
            objB = h03Var.b();
        }
        return ((x94) objB).a(hu2Var);
    }

    public static void G(Context context, y84 y84Var) {
        String strConcat;
        context.getClass();
        y84Var.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        lf0 lf0Var = new lf0(new tl2(null), zl2.o, false, false, false, false, -1L, -1L, o70.F0(linkedHashSet));
        TimeUnit.HOURS.getClass();
        np2 np2Var = new np2(CalendarSyncWorker.class, 1);
        og4 og4Var = np2Var.c;
        og4Var.getClass();
        int i = og4.z;
        og4Var.h = 3600000L;
        og4Var.i = ix.l(3600000L, 300000L, 3600000L);
        np2Var.c.j = lf0Var;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("service_type", y84Var.name());
        zl0 zl0Var = new zl0(linkedHashMap);
        L(zl0Var);
        np2Var.c.e = zl0Var;
        TimeUnit.MILLISECONDS.getClass();
        np2Var.a = true;
        og4 og4Var2 = np2Var.c;
        og4Var2.l = jq.n;
        og4Var2.m = ix.l(10000L, 10000L, 18000000L);
        fu2 fu2Var = (fu2) np2Var.a();
        eg4 eg4VarC = eg4.c(context);
        if (y84Var == y84.r) {
            strConcat = "calendar_sync_periodic";
        } else {
            String lowerCase = y84Var.name().toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            strConcat = "calendar_sync_periodic_".concat(lowerCase);
        }
        qv3 qv3Var = eg4VarC.b.m;
        String strConcat2 = "enqueueUniquePeriodic_".concat(strConcat);
        ji3 ji3Var = (ji3) eg4VarC.d.o;
        ji3Var.getClass();
        mt1.N(qv3Var, strConcat2, ji3Var, new pp(eg4VarC, strConcat, fu2Var, 8));
        ra3 ra3Var = ez3.a;
        y84Var.name();
        ra3Var.getClass();
        ra3.c(new Object[0]);
    }

    public static final void H(vi2 vi2Var, Number number) {
        vi2.l(vi2Var, "Unexpected special floating-point value " + number + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification", 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2);
        throw null;
    }

    public static final long I(long j, long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) * Float.intBitsToFloat((int) (j >> 32));
        return (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & 4294967295L)) * Float.intBitsToFloat((int) (j & 4294967295L)))) & 4294967295L) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
    }

    public static final Bitmap.Config J(int i) {
        if (i == 0) {
            return Bitmap.Config.ARGB_8888;
        }
        if (i == 1) {
            return Bitmap.Config.ALPHA_8;
        }
        if (i == 2) {
            return Bitmap.Config.RGB_565;
        }
        int i2 = Build.VERSION.SDK_INT;
        return (i2 < 26 || i != 3) ? (i2 < 26 || i != 4) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.HARDWARE : Bitmap.Config.RGBA_F16;
    }

    public static final long K(long j) {
        return nf0.a(mf0.j(j), mf0.h(j), mf0.i(j), mf0.g(j));
    }

    public static byte[] L(zl0 zl0Var) {
        zl0Var.getClass();
        HashMap map = zl0Var.a;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                dataOutputStream.writeShort(-21521);
                dataOutputStream.writeShort(1);
                dataOutputStream.writeInt(map.size());
                for (Map.Entry entry : map.entrySet()) {
                    M(dataOutputStream, (String) entry.getKey(), entry.getValue());
                }
                dataOutputStream.flush();
                if (dataOutputStream.size() > 10240) {
                    throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                dataOutputStream.close();
                byteArray.getClass();
                return byteArray;
            } finally {
            }
        } catch (IOException e) {
            t72.g().f(hn0.a, "Error in Data#toByteArray: ", e);
            return new byte[0];
        }
    }

    public static final void M(DataOutputStream dataOutputStream, String str, Object obj) throws IOException {
        int i;
        if (obj == null) {
            dataOutputStream.writeByte(0);
        } else if (obj instanceof Boolean) {
            dataOutputStream.writeByte(1);
            dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
        } else if (obj instanceof Byte) {
            dataOutputStream.writeByte(2);
            dataOutputStream.writeByte(((Number) obj).byteValue());
        } else if (obj instanceof Integer) {
            dataOutputStream.writeByte(3);
            dataOutputStream.writeInt(((Number) obj).intValue());
        } else if (obj instanceof Long) {
            dataOutputStream.writeByte(4);
            dataOutputStream.writeLong(((Number) obj).longValue());
        } else if (obj instanceof Float) {
            dataOutputStream.writeByte(5);
            dataOutputStream.writeFloat(((Number) obj).floatValue());
        } else if (obj instanceof Double) {
            dataOutputStream.writeByte(6);
            dataOutputStream.writeDouble(((Number) obj).doubleValue());
        } else if (obj instanceof String) {
            dataOutputStream.writeByte(7);
            dataOutputStream.writeUTF((String) obj);
        } else {
            if (!(obj instanceof Object[])) {
                mk0.g(y33.a(obj.getClass()).c(), "Unsupported value type ");
                return;
            }
            Object[] objArr = (Object[]) obj;
            i50 i50VarA = y33.a(objArr.getClass());
            if (i50VarA.equals(y33.a(Boolean[].class))) {
                i = 8;
            } else if (i50VarA.equals(y33.a(Byte[].class))) {
                i = 9;
            } else if (i50VarA.equals(y33.a(Integer[].class))) {
                i = 10;
            } else if (i50VarA.equals(y33.a(Long[].class))) {
                i = 11;
            } else if (i50VarA.equals(y33.a(Float[].class))) {
                i = 12;
            } else if (i50VarA.equals(y33.a(Double[].class))) {
                i = 13;
            } else {
                if (!i50VarA.equals(y33.a(String[].class))) {
                    mk0.g(y33.a(objArr.getClass()).b(), "Unsupported value type ");
                    return;
                }
                i = 14;
            }
            dataOutputStream.writeByte(i);
            dataOutputStream.writeInt(objArr.length);
            for (Object obj2 : objArr) {
                if (i == 8) {
                    Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                    dataOutputStream.writeBoolean(bool != null ? bool.booleanValue() : false);
                } else if (i == 9) {
                    Byte b = obj2 instanceof Byte ? (Byte) obj2 : null;
                    dataOutputStream.writeByte(b != null ? b.byteValue() : (byte) 0);
                } else if (i == 10) {
                    Integer num = obj2 instanceof Integer ? (Integer) obj2 : null;
                    dataOutputStream.writeInt(num != null ? num.intValue() : 0);
                } else if (i == 11) {
                    Long l = obj2 instanceof Long ? (Long) obj2 : null;
                    dataOutputStream.writeLong(l != null ? l.longValue() : 0L);
                } else if (i == 12) {
                    Float f = obj2 instanceof Float ? (Float) obj2 : null;
                    dataOutputStream.writeFloat(f != null ? f.floatValue() : 0.0f);
                } else if (i == 13) {
                    Double d = obj2 instanceof Double ? (Double) obj2 : null;
                    dataOutputStream.writeDouble(d != null ? d.doubleValue() : 0.0d);
                } else if (i == 14) {
                    String str2 = obj2 instanceof String ? (String) obj2 : null;
                    if (str2 == null) {
                        str2 = "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d";
                    }
                    dataOutputStream.writeUTF(str2);
                }
            }
        }
        dataOutputStream.writeUTF(str);
    }

    public static final hu2 N(j03[] j03VarArr, hu2 hu2Var, hu2 hu2Var2) {
        gu2 gu2Var = new gu2(hu2.q);
        for (j03 j03Var : j03VarArr) {
            h03 h03Var = j03Var.a;
            if (j03Var.g || !hu2Var.containsKey(h03Var)) {
                gu2Var.put(h03Var, h03Var.d(j03Var, (x94) hu2Var2.get(h03Var)));
            }
        }
        return gu2Var.a();
    }

    public static final int O(f12 f12Var) {
        List list = f12Var.k;
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ((g12) list.get(i2)).m;
        }
        return (i / list.size()) + f12Var.q;
    }

    public static final long a(float f, float f2) {
        return (((long) Float.floatToRawIntBits(f2)) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:87:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(final defpackage.ne1 r28, defpackage.nd2 r29, boolean r30, defpackage.mn1 r31, defpackage.jl3 r32, final defpackage.df1 r33, defpackage.ag1 r34, final int r35, final int r36) {
        /*
            Method dump skipped, instruction units count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bi4.b(ne1, nd2, boolean, mn1, jl3, df1, ag1, int, int):void");
    }

    public static final void c(final nd2 nd2Var, final ne1 ne1Var, final boolean z, final jl3 jl3Var, final mn1 mn1Var, final df1 df1Var, ag1 ag1Var, final int i) {
        int i2;
        ag1Var.X(-1134296466);
        if ((i & 6) == 0) {
            i2 = (ag1Var.f(nd2Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.h(ne1Var) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= ag1Var.g(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= ag1Var.f(jl3Var) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= ag1Var.f(mn1Var) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= ag1Var.f(null) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= ag1Var.h(df1Var) ? 1048576 : 524288;
        }
        int i3 = i2;
        if (ag1Var.N(i3 & 1, (599187 & i3) != 599186)) {
            ag1Var.W(976976045);
            Object objK = ag1Var.K();
            if (objK == rb0.a) {
                objK = new vf2();
                ag1Var.g0(objK);
            }
            vf2 vf2Var = (vf2) objK;
            ag1Var.p(false);
            ck1 ck1Var = at1.a;
            nd2 nd2VarC = nd2Var.c(fd2.b);
            float f = qn0.e;
            long jA = a(qn0.f + f + f, 40.0f);
            u51 u51Var = on3.a;
            nd2 nd2VarO = mt1.o(tv4.m(j(n44.c0(on3.d(nd2VarC, Float.intBitsToFloat((int) (jA >> 32)), Float.intBitsToFloat((int) (jA & 4294967295L))), jl3Var), z ? mn1Var.a : mn1Var.c, jl3Var), vf2Var, b93.a(0.0f, jl3Var, 247), z, new q93(0), ne1Var, 8));
            db2 db2VarD = qx.d(mj1.s, false);
            int iHashCode = Long.hashCode(ag1Var.T);
            hu2 hu2VarL = ag1Var.l();
            nd2 nd2VarH = is0.H(ag1Var, nd2VarO);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            ht4.D(kb0.f, ag1Var, db2VarD);
            ht4.D(kb0.e, ag1Var, hu2VarL);
            ht4.D(kb0.g, ag1Var, Integer.valueOf(iHashCode));
            ht4.y(ag1Var, kb0.h);
            ht4.D(kb0.d, ag1Var, nd2VarH);
            gg4.a(bg0.a.a(new t70(z ? mn1Var.b : mn1Var.d)), df1Var, ag1Var, ((i3 >> 15) & 112) | 8);
            ag1Var.p(true);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1() { // from class: on1
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    bi4.c(nd2Var, ne1Var, z, jl3Var, mn1Var, df1Var, (ag1) obj, qj0.f0(i | 1));
                    return t64.a;
                }
            };
        }
    }

    public static final vv1 d(Number number, String str) {
        return new vv1("Unexpected special floating-point value " + number + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) D(-1, str)));
    }

    public static final vv1 e(gi3 gi3Var) {
        return new vv1("Value of type '" + gi3Var.b() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + gi3Var.c() + "'.\nUse 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
    }

    public static final vv1 f(int i, String str, CharSequence charSequence) {
        charSequence.getClass();
        String str2 = str + "\nJSON input: " + ((Object) D(i, charSequence));
        if (i >= 0) {
            str2 = "Unexpected JSON token at offset " + i + ": " + str2;
        }
        return new vv1(str2);
    }

    public static final long g(int i, int i2) {
        if (i < 0 || i2 < 0) {
            br1.a("start and end cannot be negative. [start: " + i + ", end: " + i2 + "]");
        }
        long j = (((long) i2) & 4294967295L) | (((long) i) << 32);
        int i3 = tx3.c;
        return j;
    }

    public static float h(float[] fArr) {
        if (fArr.length < 6) {
            return 0.0f;
        }
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[3];
        float f5 = fArr[4];
        float f6 = fArr[5];
        float f7 = (((((f3 * f6) + ((f2 * f5) + (f * f4))) - (f4 * f5)) - (f2 * f3)) - (f * f6)) * 0.5f;
        return f7 < 0.0f ? -f7 : f7;
    }

    public static final gs2 i(ao1 ao1Var, Context context, int i) {
        if (!(ao1Var instanceof kw)) {
            return ao1Var instanceof ox0 ? new qx0(ht4.c(ao1Var, context.getResources()).mutate()) : new fo1(ao1Var);
        }
        Bitmap bitmap = ((kw) ao1Var).a;
        lw lwVar = new lw(new gb(bitmap), (((long) bitmap.getWidth()) << 32) | (((long) bitmap.getHeight()) & 4294967295L));
        lwVar.f192u = i;
        return lwVar;
    }

    public static final nd2 j(nd2 nd2Var, long j, jl3 jl3Var) {
        return nd2Var.c(new gq(j, jl3Var));
    }

    public static void k(Object obj, String str) {
        if (obj != null) {
            return;
        }
        q73.r(str);
    }

    public static final long l(int i, long j) {
        int i2 = tx3.c;
        int i3 = (int) (j >> 32);
        int i4 = i3 < 0 ? 0 : i3;
        if (i4 > i) {
            i4 = i;
        }
        int i5 = (int) (4294967295L & j);
        int i6 = i5 >= 0 ? i5 : 0;
        if (i6 <= i) {
            i = i6;
        }
        return (i4 == i3 && i == i5) ? j : g(i4, i);
    }

    public static long m(long j, mz1 mz1Var) {
        mz1 mz1Var2 = mz1.n;
        return nf0.a(mz1Var == mz1Var2 ? mf0.j(j) : mf0.i(j), mz1Var == mz1Var2 ? mf0.h(j) : mf0.g(j), mz1Var == mz1Var2 ? mf0.i(j) : mf0.j(j), mz1Var == mz1Var2 ? mf0.g(j) : mf0.h(j));
    }

    public static long n(int i, long j) {
        return nf0.a(0, mf0.h(j), (i & 4) != 0 ? mf0.i(j) : 0, mf0.g(j));
    }

    public static final sa1 o(Context context) {
        qv3 qv3Var = new qv3(9);
        context.getApplicationContext();
        return new sa1(qv3Var, new cb(Build.VERSION.SDK_INT >= 31 ? qb1.a.a(context) : 0));
    }

    public static void p(b40 b40Var, String str, boolean z) {
        if (!z) {
            for (int i = 0; i < str.length() && !z; i++) {
                z = " ;,:@()<>\\\"/[]?={}\t".indexOf(str.charAt(i)) >= 0;
            }
        }
        if (z) {
            b40Var.a('\"');
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if ("\"\\".indexOf(cCharAt) >= 0) {
                b40Var.a('\\');
            }
            b40Var.a(cCharAt);
        }
        if (z) {
            b40Var.a('\"');
        }
    }

    public static int q(sh2 sh2Var) {
        if (sh2Var == null) {
            return 0;
        }
        int length = sh2Var.getName().length();
        String value = sh2Var.getValue();
        return value != null ? value.length() + 3 + length : length;
    }

    public static void r(b40 b40Var, sh2 sh2Var, boolean z) {
        w80.L(sh2Var, "Name / value pair");
        b40Var.e(q(sh2Var));
        b40Var.b(sh2Var.getName());
        String value = sh2Var.getValue();
        if (value != null) {
            b40Var.a('=');
            p(b40Var, value, z);
        }
    }

    public static zl0 s(byte[] bArr) {
        bArr.getClass();
        if (bArr.length > 10240) {
            k21.n("Data cannot occupy more than 10240 bytes when serialized");
            return null;
        }
        if (bArr.length == 0) {
            return zl0.b;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            byte[] bArr2 = new byte[2];
            byteArrayInputStream.read(bArr2);
            int i = 0;
            boolean z = bArr2[0] == -84 && bArr2[1] == -19;
            byteArrayInputStream.reset();
            if (z) {
                ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    int i2 = objectInputStream.readInt();
                    while (i < i2) {
                        linkedHashMap.put(objectInputStream.readUTF(), objectInputStream.readObject());
                        i++;
                    }
                    objectInputStream.close();
                } finally {
                }
            } else {
                DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
                try {
                    short s = dataInputStream.readShort();
                    if (s == -21521) {
                        short s2 = dataInputStream.readShort();
                        if (s2 != 1) {
                            p61.e(di0.q(s2, "Unsupported version number: "));
                        }
                    } else {
                        p61.e(di0.q(s, "Magic number doesn't match: "));
                    }
                    int i3 = dataInputStream.readInt();
                    while (i < i3) {
                        linkedHashMap.put(dataInputStream.readUTF(), t(dataInputStream, dataInputStream.readByte()));
                        i++;
                    }
                    dataInputStream.close();
                } finally {
                }
            }
        } catch (IOException e) {
            t72.g().f(hn0.a, "Error in Data#fromByteArray: ", e);
        } catch (ClassNotFoundException e2) {
            t72.g().f(hn0.a, "Error in Data#fromByteArray: ", e2);
        }
        return new zl0(linkedHashMap);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.Serializable, java.lang.Double[]] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Serializable, java.lang.Float[]] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.Serializable, java.lang.Long[]] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.Serializable, java.lang.Integer[]] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Serializable, java.lang.Byte[]] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.Serializable, java.lang.Boolean[]] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.io.Serializable, java.lang.String[]] */
    public static final Serializable t(DataInputStream dataInputStream, byte b) throws IOException {
        if (b == 0) {
            return null;
        }
        if (b == 1) {
            return Boolean.valueOf(dataInputStream.readBoolean());
        }
        if (b == 2) {
            return Byte.valueOf(dataInputStream.readByte());
        }
        if (b == 3) {
            return Integer.valueOf(dataInputStream.readInt());
        }
        if (b == 4) {
            return Long.valueOf(dataInputStream.readLong());
        }
        if (b == 5) {
            return Float.valueOf(dataInputStream.readFloat());
        }
        if (b == 6) {
            return Double.valueOf(dataInputStream.readDouble());
        }
        if (b == 7) {
            return dataInputStream.readUTF();
        }
        int i = 0;
        if (b == 8) {
            int i2 = dataInputStream.readInt();
            ?? r0 = new Boolean[i2];
            while (i < i2) {
                r0[i] = Boolean.valueOf(dataInputStream.readBoolean());
                i++;
            }
            return r0;
        }
        if (b == 9) {
            int i3 = dataInputStream.readInt();
            ?? r02 = new Byte[i3];
            while (i < i3) {
                r02[i] = Byte.valueOf(dataInputStream.readByte());
                i++;
            }
            return r02;
        }
        if (b == 10) {
            int i4 = dataInputStream.readInt();
            ?? r03 = new Integer[i4];
            while (i < i4) {
                r03[i] = Integer.valueOf(dataInputStream.readInt());
                i++;
            }
            return r03;
        }
        if (b == 11) {
            int i5 = dataInputStream.readInt();
            ?? r04 = new Long[i5];
            while (i < i5) {
                r04[i] = Long.valueOf(dataInputStream.readLong());
                i++;
            }
            return r04;
        }
        if (b == 12) {
            int i6 = dataInputStream.readInt();
            ?? r05 = new Float[i6];
            while (i < i6) {
                r05[i] = Float.valueOf(dataInputStream.readFloat());
                i++;
            }
            return r05;
        }
        if (b == 13) {
            int i7 = dataInputStream.readInt();
            ?? r06 = new Double[i7];
            while (i < i7) {
                r06[i] = Double.valueOf(dataInputStream.readDouble());
                i++;
            }
            return r06;
        }
        if (b != 14) {
            k21.n(di0.q(b, "Unsupported type "));
            return null;
        }
        int i8 = dataInputStream.readInt();
        ?? r1 = new String[i8];
        while (i < i8) {
            String utf = dataInputStream.readUTF();
            if (nt1.g(utf, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d")) {
                utf = null;
            }
            r1[i] = utf;
            i++;
        }
        return r1;
    }

    public static Object u(Object obj, Class cls) {
        if (obj instanceof ng1) {
            return cls.cast(obj);
        }
        if (obj instanceof og1) {
            return u(((og1) obj).a(), cls);
        }
        throw new IllegalStateException("Given component holder " + obj.getClass() + " does not implement " + ng1.class + " or " + og1.class);
    }

    public static final ArrayList v(jt1 jt1Var) {
        jt1Var.getClass();
        xy1 xy1VarU0 = ((k82) jt1Var).u0();
        boolean zA = A(xy1VarU0);
        rg2 rg2Var = (rg2) xy1VarU0.o();
        ug2 ug2Var = rg2Var.n;
        ArrayList arrayList = new ArrayList(ug2Var.p);
        int i = ug2Var.p;
        for (int i2 = 0; i2 < i; i2++) {
            xy1 xy1Var = (xy1) rg2Var.get(i2);
            arrayList.add(zA ? xy1Var.l() : xy1Var.m());
        }
        return arrayList;
    }

    public static Intent w(Context context, ComponentName componentName) {
        String strX = x(context, componentName);
        if (strX == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), strX);
        return x(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    public static String x(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        String string;
        ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(componentName, Build.VERSION.SDK_INT >= 29 ? 269222528 : 787072);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) != '.') {
            return string;
        }
        return context.getPackageName() + string;
    }

    public static Object y(Future future) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static final void z(vi2 vi2Var, String str) {
        vi2Var.k("Trailing comma before the end of JSON ".concat(str), vi2Var.b - 1, "Trailing commas are non-complaint JSON and not allowed by default. Use 'allowTrailingCommas = true' in 'Json {}' builder to support them.");
        throw null;
    }
}
