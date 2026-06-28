package defpackage;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Canvas;
import android.graphics.Path;
import android.os.Build;
import android.os.Process;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.android.gms.common.util.ProcessUtils;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k30 {
    public static volatile px4 b;
    public static final Object[] c = new Object[0];
    public static final z70 d = z70.w;
    public static final float e = 1.0f;
    public static final byte[] f = {48, 49, 53, 0};
    public static final byte[] g = {48, 49, 48, 0};
    public static final byte[] h = {48, 48, 57, 0};
    public static final byte[] i = {48, 48, 53, 0};
    public static final byte[] j = {48, 48, 49, 0};
    public static final byte[] k = {48, 48, 49, 0};
    public static final byte[] l = {48, 48, 50, 0};
    public static final e34 m = new e34(new jd3(22), new ba4(9));
    public static final e34 n = new e34(new jd3(23), new jd3(24));
    public static final e34 o = new e34(new jd3(25), new jd3(26));
    public static final e34 p = new e34(new jd3(27), new jd3(28));
    public static final e34 q = new e34(new jd3(29), new ba4(0));
    public static final e34 r = new e34(new ba4(1), new ba4(2));
    public static final e34 s = new e34(new ba4(3), new ba4(4));
    public static final e34 t = new e34(new ba4(5), new ba4(6));

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final e34 f158u = new e34(new ba4(7), new ba4(8));
    public static so1 v;
    public static Method w;
    public static Method x;
    public static boolean y;
    public static Thread z;
    public final br2 a = new br2();

    public static final nd2 A(nd2 nd2Var, dh dhVar) {
        return nd2Var.c(new dv0(dhVar));
    }

    public static final long B(bq1 bq1Var, hr2 hr2Var, aq1 aq1Var, boolean z2) {
        float fIntBitsToFloat;
        long jFloatToRawIntBits;
        long j2;
        long j3 = bq1Var.g;
        if (hr2Var != null) {
            int i2 = aq1Var.a;
            if (i2 == 1) {
                fIntBitsToFloat = Float.intBitsToFloat((int) (j3 >> 32));
            } else if (i2 == 2) {
                fIntBitsToFloat = Float.intBitsToFloat((int) (j3 & 4294967295L));
            }
            if (hr2Var == hr2.o) {
                long jFloatToRawIntBits2 = Float.floatToRawIntBits(fIntBitsToFloat);
                jFloatToRawIntBits = Float.floatToRawIntBits(0.0f);
                j2 = jFloatToRawIntBits2 << 32;
            } else {
                long jFloatToRawIntBits3 = Float.floatToRawIntBits(0.0f);
                jFloatToRawIntBits = Float.floatToRawIntBits(fIntBitsToFloat);
                j2 = jFloatToRawIntBits3 << 32;
            }
            j3 = j2 | (jFloatToRawIntBits & 4294967295L);
        }
        long jD = go2.d(C(bq1Var, hr2Var, aq1Var), j3);
        if (z2 || !bq1Var.i) {
            return jD;
        }
        return 0L;
    }

    public static final long C(bq1 bq1Var, hr2 hr2Var, aq1 aq1Var) {
        float fIntBitsToFloat;
        long jFloatToRawIntBits;
        long j2;
        if (hr2Var == null) {
            return bq1Var.c;
        }
        int i2 = aq1Var.a;
        if (i2 == 1) {
            fIntBitsToFloat = Float.intBitsToFloat((int) (bq1Var.c >> 32));
        } else {
            if (i2 != 2) {
                return bq1Var.c;
            }
            fIntBitsToFloat = Float.intBitsToFloat((int) (bq1Var.c & 4294967295L));
        }
        if (hr2Var == hr2.o) {
            long jFloatToRawIntBits2 = Float.floatToRawIntBits(fIntBitsToFloat);
            jFloatToRawIntBits = Float.floatToRawIntBits(0.0f);
            j2 = jFloatToRawIntBits2 << 32;
        } else {
            long jFloatToRawIntBits3 = Float.floatToRawIntBits(0.0f);
            jFloatToRawIntBits = Float.floatToRawIntBits(fIntBitsToFloat);
            j2 = jFloatToRawIntBits3 << 32;
        }
        return j2 | (4294967295L & jFloatToRawIntBits);
    }

    public static final Object[] D(Collection collection) {
        collection.getClass();
        int size = collection.size();
        Object[] objArr = c;
        if (size == 0) {
            return objArr;
        }
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            return objArr;
        }
        Object[] objArrCopyOf = new Object[size];
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            objArrCopyOf[i2] = it.next();
            if (i3 >= objArrCopyOf.length) {
                if (!it.hasNext()) {
                    return objArrCopyOf;
                }
                int i4 = ((i3 * 3) + 1) >>> 1;
                if (i4 <= i3) {
                    i4 = 2147483645;
                    if (i3 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                }
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i4);
            } else if (!it.hasNext()) {
                return Arrays.copyOf(objArrCopyOf, i3);
            }
            i2 = i3;
        }
    }

    public static final Object[] E(Collection collection, Object[] objArr) {
        Object[] objArrCopyOf;
        collection.getClass();
        objArr.getClass();
        int size = collection.size();
        int i2 = 0;
        if (size != 0) {
            Iterator it = collection.iterator();
            if (it.hasNext()) {
                if (size <= objArr.length) {
                    objArrCopyOf = objArr;
                } else {
                    Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                    objNewInstance.getClass();
                    objArrCopyOf = (Object[]) objNewInstance;
                }
                while (true) {
                    int i3 = i2 + 1;
                    objArrCopyOf[i2] = it.next();
                    if (i3 >= objArrCopyOf.length) {
                        if (!it.hasNext()) {
                            return objArrCopyOf;
                        }
                        int i4 = ((i3 * 3) + 1) >>> 1;
                        if (i4 <= i3) {
                            i4 = 2147483645;
                            if (i3 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                        }
                        objArrCopyOf = Arrays.copyOf(objArrCopyOf, i4);
                    } else if (!it.hasNext()) {
                        if (objArrCopyOf != objArr) {
                            return Arrays.copyOf(objArrCopyOf, i3);
                        }
                        objArr[i3] = null;
                        return objArr;
                    }
                    i2 = i3;
                }
            } else if (objArr.length > 0) {
                objArr[0] = null;
            }
        } else if (objArr.length > 0) {
            objArr[0] = null;
            return objArr;
        }
        return objArr;
    }

    public static final List F(List list) {
        int size = list.size();
        return size != 0 ? size != 1 ? Collections.unmodifiableList(new ArrayList(list)) : Collections.singletonList(o70.h0(list)) : g01.n;
    }

    public static final Map G(Map map) {
        int size = map.size();
        if (size == 0) {
            return h01.n;
        }
        if (size != 1) {
            return Collections.unmodifiableMap(new LinkedHashMap(map));
        }
        Map.Entry entry = (Map.Entry) o70.g0(map.entrySet());
        return Collections.singletonMap(entry.getKey(), entry.getValue());
    }

    public static final void H(List list, sb sbVar) {
        Path path;
        int i2;
        float f2;
        int i3;
        xt2 xt2Var;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        List list2 = list;
        Path path2 = sbVar.a;
        Path path3 = sbVar.a;
        Path.FillType fillType = path2.getFillType();
        Path.FillType fillType2 = Path.FillType.EVEN_ODD;
        boolean z2 = fillType == fillType2;
        path3.rewind();
        if (!z2) {
            fillType2 = Path.FillType.WINDING;
        }
        path3.setFillType(fillType2);
        xt2 xt2Var2 = list2.isEmpty() ? ft2.c : (xt2) list2.get(0);
        int size = list2.size();
        float f11 = 0.0f;
        int i4 = 0;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        float f16 = 0.0f;
        float f17 = 0.0f;
        while (i4 < size) {
            xt2 xt2Var3 = (xt2) list2.get(i4);
            if (xt2Var3 instanceof ft2) {
                path3.close();
                path = path3;
                i2 = size;
                f2 = f11;
                i3 = i4;
                xt2Var = xt2Var3;
                f12 = f16;
                f14 = f12;
                f13 = f17;
                f15 = f13;
            } else {
                if (xt2Var3 instanceof rt2) {
                    rt2 rt2Var = (rt2) xt2Var3;
                    float f18 = rt2Var.c;
                    f14 += f18;
                    float f19 = rt2Var.d;
                    f15 += f19;
                    path3.rMoveTo(f18, f19);
                    path = path3;
                    i2 = size;
                    f2 = f11;
                    i3 = i4;
                    f16 = f14;
                    f17 = f15;
                } else {
                    if (xt2Var3 instanceof jt2) {
                        jt2 jt2Var = (jt2) xt2Var3;
                        float f20 = jt2Var.c;
                        float f21 = jt2Var.d;
                        path3.moveTo(f20, f21);
                        f15 = f21;
                        f17 = f15;
                        path = path3;
                        f14 = f20;
                        f16 = f14;
                    } else {
                        if (xt2Var3 instanceof qt2) {
                            qt2 qt2Var = (qt2) xt2Var3;
                            float f22 = qt2Var.d;
                            float f23 = qt2Var.c;
                            path3.rLineTo(f23, f22);
                            f14 += f23;
                            f15 += f22;
                        } else if (xt2Var3 instanceof it2) {
                            it2 it2Var = (it2) xt2Var3;
                            float f24 = it2Var.d;
                            float f25 = it2Var.c;
                            path3.lineTo(f25, f24);
                            f14 = f25;
                            path = path3;
                            f15 = f24;
                        } else if (xt2Var3 instanceof pt2) {
                            float f26 = ((pt2) xt2Var3).c;
                            path3.rLineTo(f26, f11);
                            f14 += f26;
                        } else if (xt2Var3 instanceof ht2) {
                            float f27 = ((ht2) xt2Var3).c;
                            path3.lineTo(f27, f15);
                            f14 = f27;
                        } else {
                            if (xt2Var3 instanceof vt2) {
                                f10 = ((vt2) xt2Var3).c;
                                path3.rLineTo(f11, f10);
                            } else if (xt2Var3 instanceof wt2) {
                                float f28 = ((wt2) xt2Var3).c;
                                path3.lineTo(f14, f28);
                                f15 = f28;
                            } else if (xt2Var3 instanceof ot2) {
                                ot2 ot2Var = (ot2) xt2Var3;
                                path3.rCubicTo(ot2Var.c, ot2Var.d, ot2Var.e, ot2Var.f, ot2Var.g, ot2Var.h);
                                f12 = ot2Var.e + f14;
                                f13 = ot2Var.f + f15;
                                f14 += ot2Var.g;
                                f10 = ot2Var.h;
                            } else {
                                if (xt2Var3 instanceof gt2) {
                                    gt2 gt2Var = (gt2) xt2Var3;
                                    path3.cubicTo(gt2Var.c, gt2Var.d, gt2Var.e, gt2Var.f, gt2Var.g, gt2Var.h);
                                    f12 = gt2Var.e;
                                    f13 = gt2Var.f;
                                    f6 = gt2Var.g;
                                    f7 = gt2Var.h;
                                } else if (xt2Var3 instanceof tt2) {
                                    if (xt2Var2.a) {
                                        f9 = f15 - f13;
                                        f8 = f14 - f12;
                                    } else {
                                        f8 = f11;
                                        f9 = f8;
                                    }
                                    tt2 tt2Var = (tt2) xt2Var3;
                                    path3.rCubicTo(f8, f9, tt2Var.c, tt2Var.d, tt2Var.e, tt2Var.f);
                                    f12 = tt2Var.c + f14;
                                    f13 = tt2Var.d + f15;
                                    f14 += tt2Var.e;
                                    f10 = tt2Var.f;
                                } else if (xt2Var3 instanceof lt2) {
                                    if (xt2Var2.a) {
                                        f14 = (f14 * 2.0f) - f12;
                                        f15 = (2.0f * f15) - f13;
                                    }
                                    lt2 lt2Var = (lt2) xt2Var3;
                                    path3.cubicTo(f14, f15, lt2Var.c, lt2Var.d, lt2Var.e, lt2Var.f);
                                    f12 = lt2Var.c;
                                    f13 = lt2Var.d;
                                    f6 = lt2Var.e;
                                    f7 = lt2Var.f;
                                } else if (xt2Var3 instanceof st2) {
                                    st2 st2Var = (st2) xt2Var3;
                                    float f29 = st2Var.f;
                                    float f30 = st2Var.e;
                                    float f31 = st2Var.d;
                                    float f32 = st2Var.c;
                                    path3.rQuadTo(f32, f31, f30, f29);
                                    float f33 = f32 + f14;
                                    float f34 = f31 + f15;
                                    f14 += f30;
                                    f15 += f29;
                                    f12 = f33;
                                    path = path3;
                                    f13 = f34;
                                } else {
                                    if (xt2Var3 instanceof kt2) {
                                        kt2 kt2Var = (kt2) xt2Var3;
                                        float f35 = kt2Var.f;
                                        float f36 = kt2Var.e;
                                        float f37 = kt2Var.d;
                                        f5 = kt2Var.c;
                                        path3.quadTo(f5, f37, f36, f35);
                                        path = path3;
                                        f15 = f35;
                                        f14 = f36;
                                        f13 = f37;
                                    } else if (xt2Var3 instanceof ut2) {
                                        if (xt2Var2.b) {
                                            f3 = f14 - f12;
                                            f4 = f15 - f13;
                                        } else {
                                            f3 = f11;
                                            f4 = f3;
                                        }
                                        ut2 ut2Var = (ut2) xt2Var3;
                                        float f38 = ut2Var.d;
                                        float f39 = ut2Var.c;
                                        path3.rQuadTo(f3, f4, f39, f38);
                                        f5 = f3 + f14;
                                        float f40 = f4 + f15;
                                        f14 += f39;
                                        f15 += f38;
                                        path = path3;
                                        f13 = f40;
                                    } else if (xt2Var3 instanceof mt2) {
                                        if (xt2Var2.b) {
                                            f14 = (f14 * 2.0f) - f12;
                                            f15 = (2.0f * f15) - f13;
                                        }
                                        mt2 mt2Var = (mt2) xt2Var3;
                                        float f41 = mt2Var.d;
                                        float f42 = mt2Var.c;
                                        path3.quadTo(f14, f15, f42, f41);
                                        path = path3;
                                        i2 = size;
                                        f2 = f11;
                                        i3 = i4;
                                        f13 = f15;
                                        xt2Var = xt2Var3;
                                        f15 = f41;
                                        f12 = f14;
                                        f14 = f42;
                                    } else if (xt2Var3 instanceof nt2) {
                                        nt2 nt2Var = (nt2) xt2Var3;
                                        float f43 = nt2Var.h + f14;
                                        float f44 = nt2Var.i + f15;
                                        i2 = size;
                                        f2 = 0.0f;
                                        path = path3;
                                        i3 = i4;
                                        n(sbVar, f14, f15, f43, f44, nt2Var.c, nt2Var.d, nt2Var.e, nt2Var.f, nt2Var.g);
                                        f12 = f43;
                                        f14 = f12;
                                        f13 = f44;
                                        f15 = f13;
                                        xt2Var = xt2Var3;
                                    } else {
                                        path = path3;
                                        i2 = size;
                                        f2 = f11;
                                        i3 = i4;
                                        if (!(xt2Var3 instanceof et2)) {
                                            p61.x();
                                            return;
                                        }
                                        et2 et2Var = (et2) xt2Var3;
                                        float f45 = et2Var.i;
                                        float f46 = et2Var.h;
                                        xt2Var = xt2Var3;
                                        n(sbVar, f14, f15, f46, f45, et2Var.c, et2Var.d, et2Var.e, et2Var.f, et2Var.g);
                                        f13 = f45;
                                        f15 = f13;
                                        f12 = f46;
                                        f14 = f12;
                                    }
                                    i2 = size;
                                    f2 = f11;
                                    i3 = i4;
                                    xt2Var = xt2Var3;
                                    f12 = f5;
                                }
                                f15 = f7;
                                path = path3;
                                f14 = f6;
                            }
                            f15 += f10;
                        }
                        path = path3;
                    }
                    i2 = size;
                    f2 = f11;
                    i3 = i4;
                }
                xt2Var = xt2Var3;
            }
            i4 = i3 + 1;
            list2 = list;
            size = i2;
            path3 = path;
            xt2Var2 = xt2Var;
            f11 = f2;
        }
    }

    public static String I(int i2) {
        return i2 == 0 ? "Clear" : i2 == 1 ? "Src" : i2 == 2 ? "Dst" : i2 == 3 ? "SrcOver" : i2 == 4 ? "DstOver" : i2 == 5 ? "SrcIn" : i2 == 6 ? "DstIn" : i2 == 7 ? "SrcOut" : i2 == 8 ? "DstOut" : i2 == 9 ? "SrcAtop" : i2 == 10 ? "DstAtop" : i2 == 11 ? "Xor" : i2 == 12 ? "Plus" : i2 == 13 ? "Modulate" : i2 == 14 ? "Screen" : i2 == 15 ? "Overlay" : i2 == 16 ? "Darken" : i2 == 17 ? "Lighten" : i2 == 18 ? "ColorDodge" : i2 == 19 ? "ColorBurn" : i2 == 20 ? "HardLight" : i2 == 21 ? "Softlight" : i2 == 22 ? "Difference" : i2 == 23 ? "Exclusion" : i2 == 24 ? "Multiply" : i2 == 25 ? "Hue" : i2 == 26 ? "Saturation" : i2 == 27 ? "Color" : i2 == 28 ? "Luminosity" : "Unknown";
    }

    public static we a(int i2, float f2) {
        if ((i2 & 2) != 0) {
            f2 = 0.0f;
        }
        return new we(m, Float.valueOf(0.0f), new xe(f2), Long.MIN_VALUE, Long.MIN_VALUE, false);
    }

    public static final void b(fo3 fo3Var, nd2 nd2Var, ag1 ag1Var, int i2) {
        Object obj = qj0.a;
        ag1Var.X(-977568115);
        int i3 = (i2 & 6) == 0 ? (ag1Var.f(fo3Var) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i3 |= ag1Var.f(nd2Var) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= ag1Var.h(obj) ? 256 : 128;
        }
        int i4 = 0;
        if (ag1Var.N(i3 & 1, (i3 & 147) != 146)) {
            String strY = tv4.y(R.string.m3c_snackbar_pane_title, ag1Var);
            Object objK = ag1Var.K();
            Object obj2 = objK;
            if (objK == rb0.a) {
                m41 m41Var = new m41();
                m41Var.a = new Object();
                m41Var.b = new ArrayList();
                ag1Var.g0(m41Var);
                obj2 = m41Var;
            }
            m41 m41Var2 = (m41) obj2;
            Object obj3 = m41Var2.a;
            ArrayList arrayList = m41Var2.b;
            if (nt1.g(fo3Var, obj3)) {
                ag1Var.W(1443889109);
                ag1Var.p(false);
            } else {
                ag1Var.W(1441886385);
                m41Var2.a = fo3Var;
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                int size = arrayList.size();
                for (int i5 = 0; i5 < size; i5++) {
                    arrayList2.add((fo3) ((l41) arrayList.get(i5)).a);
                }
                ArrayList arrayList3 = new ArrayList(arrayList2);
                if (!arrayList3.contains(fo3Var)) {
                    arrayList3.add(fo3Var);
                }
                arrayList.clear();
                ArrayList arrayList4 = new ArrayList(arrayList3.size());
                int size2 = arrayList3.size();
                for (int i6 = 0; i6 < size2; i6++) {
                    Object obj4 = arrayList3.get(i6);
                    if (obj4 != null) {
                        arrayList4.add(obj4);
                    }
                }
                int size3 = arrayList4.size();
                for (int i7 = 0; i7 < size3; i7++) {
                    fo3 fo3Var2 = (fo3) arrayList4.get(i7);
                    arrayList.add(new l41(fo3Var2, qj0.U(-1952400805, new e02(fo3Var2, fo3Var, m41Var2, strY, 1), ag1Var)));
                }
                ag1Var.p(false);
            }
            db2 db2VarD = qx.d(mj1.o, false);
            int iHashCode = Long.hashCode(ag1Var.T);
            hu2 hu2VarL = ag1Var.l();
            nd2 nd2VarH = is0.H(ag1Var, nd2Var);
            lb0.c.getClass();
            ne1 ne1Var = kb0.b;
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ne1Var);
            } else {
                ag1Var.j0();
            }
            ht4.D(kb0.f, ag1Var, db2VarD);
            ht4.D(kb0.e, ag1Var, hu2VarL);
            ht4.D(kb0.g, ag1Var, Integer.valueOf(iHashCode));
            ht4.y(ag1Var, kb0.h);
            ht4.D(kb0.d, ag1Var, nd2VarH);
            c33 c33VarW = ag1Var.w();
            if (c33VarW == null) {
                k21.n("no recompose scope found");
                return;
            }
            c33VarW.b |= 1;
            m41Var2.c = c33VarW;
            ag1Var.W(-1888182177);
            int size4 = arrayList.size();
            for (int i8 = 0; i8 < size4; i8++) {
                l41 l41Var = (l41) arrayList.get(i8);
                fo3 fo3Var3 = (fo3) l41Var.a;
                ka0 ka0Var = l41Var.b;
                ag1Var.U(1325010085, fo3Var3);
                ka0Var.d(qj0.U(-1893791890, new eo3(fo3Var3, i4), ag1Var), ag1Var, 6);
                ag1Var.p(false);
            }
            ag1Var.p(false);
            ag1Var.p(true);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ia0(i2, 3, fo3Var, nd2Var);
        }
    }

    public static final long c(int i2) {
        long j2 = ((long) i2) << 32;
        int i3 = nx1.p;
        return j2;
    }

    public static final ka3 d(float f2, float f3, float f4, float f5, long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & 4294967295L));
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (4294967295L & ((long) Float.floatToRawIntBits(fIntBitsToFloat2)));
        return new ka3(f2, f3, f4, f5, jFloatToRawIntBits, jFloatToRawIntBits, jFloatToRawIntBits, jFloatToRawIntBits);
    }

    public static final void e(io3 io3Var, nd2 nd2Var, ff1 ff1Var, ag1 ag1Var, int i2) {
        nd2 nd2Var2;
        ag1Var.X(-1077081618);
        int i3 = i2 | 432;
        if (ag1Var.N(i3 & 1, (i3 & 147) != 146)) {
            ff1Var = qj0.a;
            fo3 fo3Var = (fo3) io3Var.b.getValue();
            w2 w2Var = (w2) ag1Var.j(kc0.a);
            boolean zF = ag1Var.f(fo3Var) | ag1Var.h(w2Var);
            Object objK = ag1Var.K();
            if (zF || objK == rb0.a) {
                objK = new d93(fo3Var, w2Var, null, 6);
                ag1Var.g0(objK);
            }
            zf5.c((df1) objK, ag1Var, fo3Var);
            fo3 fo3Var2 = (fo3) io3Var.b.getValue();
            kd2 kd2Var = kd2.b;
            b(fo3Var2, kd2Var, ag1Var, 432);
            nd2Var2 = kd2Var;
        } else {
            ag1Var.Q();
            nd2Var2 = nd2Var;
        }
        ff1 ff1Var2 = ff1Var;
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new bt0(io3Var, nd2Var2, ff1Var2, i2, 7);
        }
    }

    public static bu3 f() {
        return new bu3(null);
    }

    public static final boolean g(bq1 bq1Var) {
        return bq1Var.h && !bq1Var.d;
    }

    public static final void h(WebView webView) {
        webView.getClass();
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        String userAgentString = settings.getUserAgentString();
        userAgentString.getClass();
        settings.setUserAgentString(gt3.w0(gt3.w0(userAgentString, "; wv", ""), "Version/4.0 ", ""));
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        cookieManager.setAcceptThirdPartyCookies(webView, true);
    }

    public static final vf1 i(vf1 vf1Var) {
        if (vf1Var == null) {
            vf1Var = null;
        }
        if (vf1Var != null) {
            return vf1Var;
        }
        wb0.b("Inconsistent composition");
        p61.q();
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object j(defpackage.h22 r5, defpackage.fh0 r6) throws java.lang.Throwable {
        /*
            boolean r0 = r6 instanceof defpackage.x22
            if (r0 == 0) goto L13
            r0 = r6
            x22 r0 = (defpackage.x22) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            x22 r0 = new x22
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.s
            int r1 = r0.t
            t64 r2 = defpackage.t64.a
            r3 = 1
            if (r1 == 0) goto L34
            if (r1 != r3) goto L2d
            w33 r5 = r0.r
            h22 r0 = r0.q
            defpackage.gg4.T(r6)     // Catch: java.lang.Throwable -> L2b
            goto L71
        L2b:
            r6 = move-exception
            goto L80
        L2d:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r5)
            r5 = 0
            return r5
        L34:
            defpackage.gg4.T(r6)
            r6 = r5
            r22 r6 = (defpackage.r22) r6
            g22 r6 = r6.d
            g22 r1 = defpackage.g22.q
            int r6 = r6.compareTo(r1)
            if (r6 < 0) goto L45
            return r2
        L45:
            w33 r6 = new w33
            r6.<init>()
            r0.q = r5     // Catch: java.lang.Throwable -> L7b
            r0.r = r6     // Catch: java.lang.Throwable -> L7b
            r0.t = r3     // Catch: java.lang.Throwable -> L7b
            o20 r1 = new o20     // Catch: java.lang.Throwable -> L7b
            dh0 r0 = defpackage.dm0.A(r0)     // Catch: java.lang.Throwable -> L7b
            r1.<init>(r3, r0)     // Catch: java.lang.Throwable -> L7b
            r1.x()     // Catch: java.lang.Throwable -> L7b
            y22 r0 = new y22     // Catch: java.lang.Throwable -> L7b
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L7b
            r6.n = r0     // Catch: java.lang.Throwable -> L7b
            r5.a(r0)     // Catch: java.lang.Throwable -> L7b
            java.lang.Object r0 = r1.v()     // Catch: java.lang.Throwable -> L7b
            ri0 r1 = defpackage.ri0.n
            if (r0 != r1) goto L6f
            return r1
        L6f:
            r0 = r5
            r5 = r6
        L71:
            java.lang.Object r5 = r5.n
            o22 r5 = (defpackage.o22) r5
            if (r5 == 0) goto L7a
            r0.b(r5)
        L7a:
            return r2
        L7b:
            r0 = move-exception
            r4 = r0
            r0 = r5
            r5 = r6
            r6 = r4
        L80:
            java.lang.Object r5 = r5.n
            o22 r5 = (defpackage.o22) r5
            if (r5 == 0) goto L89
            r0.b(r5)
        L89:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k30.j(h22, fh0):java.lang.Object");
    }

    public static final boolean k(bq1 bq1Var) {
        return !bq1Var.h && bq1Var.d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005a, code lost:
    
        if (r2 == 1.0d) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap l(android.graphics.drawable.Drawable r16, android.graphics.Bitmap.Config r17, defpackage.ln3 r18, defpackage.rd3 r19, defpackage.ln3 r20, boolean r21) {
        /*
            r0 = r16
            r1 = r18
            r4 = r19
            r5 = r20
            boolean r2 = r0 instanceof android.graphics.drawable.BitmapDrawable
            r8 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r10 = 32
            if (r2 == 0) goto L5d
            r2 = r0
            android.graphics.drawable.BitmapDrawable r2 = (android.graphics.drawable.BitmapDrawable) r2
            android.graphics.Bitmap r11 = r2.getBitmap()
            android.graphics.Bitmap$Config r2 = r11.getConfig()
            if (r17 == 0) goto L2a
            boolean r3 = defpackage.tv4.D(r17)
            if (r3 == 0) goto L27
            goto L2a
        L27:
            r3 = r17
            goto L2c
        L2a:
            android.graphics.Bitmap$Config r3 = android.graphics.Bitmap.Config.ARGB_8888
        L2c:
            if (r2 != r3) goto L5d
            if (r21 == 0) goto L31
            goto L5c
        L31:
            int r2 = r11.getWidth()
            int r3 = r11.getHeight()
            long r2 = defpackage.c75.r(r2, r3, r1, r4, r5)
            long r6 = r2 >> r10
            int r6 = (int) r6
            long r2 = r2 & r8
            int r2 = (int) r2
            r5 = r2
            int r2 = r11.getWidth()
            int r3 = r11.getHeight()
            r7 = r6
            r6 = r4
            r4 = r7
            r7 = r20
            double r2 = defpackage.c75.s(r2, r3, r4, r5, r6, r7)
            r4 = r6
            r5 = r7
            r6 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 != 0) goto L5d
        L5c:
            return r11
        L5d:
            android.graphics.drawable.Drawable r6 = r0.mutate()
            int r0 = defpackage.o94.b(r6)
            r2 = 512(0x200, float:7.175E-43)
            if (r0 <= 0) goto L6a
            goto L6b
        L6a:
            r0 = r2
        L6b:
            int r3 = defpackage.o94.a(r6)
            if (r3 <= 0) goto L72
            r2 = r3
        L72:
            long r11 = defpackage.c75.r(r0, r2, r1, r4, r5)
            long r13 = r11 >> r10
            int r1 = (int) r13
            long r7 = r11 & r8
            int r3 = (int) r7
            r15 = r2
            r2 = r1
            r1 = r15
            double r2 = defpackage.c75.s(r0, r1, r2, r3, r4, r5)
            double r4 = (double) r0
            double r4 = r4 * r2
            int r0 = defpackage.is0.U(r4)
            double r4 = (double) r1
            double r2 = r2 * r4
            int r1 = defpackage.is0.U(r2)
            if (r17 == 0) goto L9b
            boolean r2 = defpackage.tv4.D(r17)
            if (r2 == 0) goto L98
            goto L9b
        L98:
            r2 = r17
            goto L9d
        L9b:
            android.graphics.Bitmap$Config r2 = android.graphics.Bitmap.Config.ARGB_8888
        L9d:
            android.graphics.Bitmap r2 = android.graphics.Bitmap.createBitmap(r0, r1, r2)
            android.graphics.Rect r3 = r6.getBounds()
            int r4 = r3.left
            int r5 = r3.top
            int r7 = r3.right
            int r3 = r3.bottom
            r8 = 0
            r6.setBounds(r8, r8, r0, r1)
            android.graphics.Canvas r0 = new android.graphics.Canvas
            r0.<init>(r2)
            r6.draw(r0)
            r6.setBounds(r4, r5, r7, r3)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k30.l(android.graphics.drawable.Drawable, android.graphics.Bitmap$Config, ln3, rd3, ln3, boolean):android.graphics.Bitmap");
    }

    public static we m(we weVar, float f2) {
        float f3 = ((xe) weVar.p).a;
        return new we(weVar.n, Float.valueOf(f2), new xe(f3), weVar.q, weVar.r, weVar.s);
    }

    public static final void n(sb sbVar, double d2, double d3, double d4, double d5, double d6, double d7, double d8, boolean z2, boolean z3) {
        double d9;
        double d10;
        double d11 = d6;
        double d12 = (d8 / 180.0d) * 3.141592653589793d;
        double dCos = Math.cos(d12);
        double dSin = Math.sin(d12);
        double d13 = ((d3 * dSin) + (d2 * dCos)) / d11;
        double d14 = ((d3 * dCos) + ((-d2) * dSin)) / d7;
        double d15 = ((d5 * dSin) + (d4 * dCos)) / d11;
        double d16 = ((d5 * dCos) + ((-d4) * dSin)) / d7;
        double d17 = d13 - d15;
        double d18 = d14 - d16;
        double d19 = (d13 + d15) / 2.0d;
        double d20 = (d14 + d16) / 2.0d;
        double d21 = (d18 * d18) + (d17 * d17);
        if (d21 == 0.0d) {
            return;
        }
        double d22 = (1.0d / d21) - 0.25d;
        if (d22 < 0.0d) {
            double dSqrt = (float) (Math.sqrt(d21) / 1.99999d);
            n(sbVar, d2, d3, d4, d5, d11 * dSqrt, d7 * dSqrt, d8, z2, z3);
            return;
        }
        double dSqrt2 = Math.sqrt(d22);
        double d23 = d17 * dSqrt2;
        double d24 = dSqrt2 * d18;
        if (z2 == z3) {
            d9 = d19 - d24;
            d10 = d20 + d23;
        } else {
            d9 = d19 + d24;
            d10 = d20 - d23;
        }
        double dAtan2 = Math.atan2(d14 - d10, d13 - d9);
        double dAtan22 = Math.atan2(d16 - d10, d15 - d9) - dAtan2;
        if (z3 != (dAtan22 >= 0.0d)) {
            dAtan22 = dAtan22 > 0.0d ? dAtan22 - 6.283185307179586d : dAtan22 + 6.283185307179586d;
        }
        double d25 = d9 * d11;
        double d26 = d10 * d7;
        double d27 = (d25 * dCos) - (d26 * dSin);
        double d28 = (d26 * dCos) + (d25 * dSin);
        int iCeil = (int) Math.ceil(Math.abs((dAtan22 * 4.0d) / 3.141592653589793d));
        double dCos2 = Math.cos(d12);
        double dSin2 = Math.sin(d12);
        double dCos3 = Math.cos(dAtan2);
        double dSin3 = Math.sin(dAtan2);
        double d29 = -d11;
        double d30 = d29 * dCos2;
        double d31 = d7 * dSin2;
        double d32 = (d30 * dSin3) - (d31 * dCos3);
        double d33 = d29 * dSin2;
        double d34 = d7 * dCos2;
        double d35 = (dCos3 * d34) + (dSin3 * d33);
        double d36 = dAtan22 / ((double) iCeil);
        double d37 = dAtan2;
        double d38 = d32;
        int i2 = 0;
        double d39 = d35;
        double d40 = d3;
        while (i2 < iCeil) {
            double d41 = d37 + d36;
            double dSin4 = Math.sin(d41);
            double dCos4 = Math.cos(d41);
            int i3 = iCeil;
            double d42 = (((d11 * dCos2) * dCos4) + d27) - (d31 * dSin4);
            double d43 = (d34 * dSin4) + (d11 * dSin2 * dCos4) + d28;
            double d44 = (d30 * dSin4) - (d31 * dCos4);
            double d45 = (dCos4 * d34) + (dSin4 * d33);
            double d46 = d41 - d37;
            double dTan = Math.tan(d46 / 2.0d);
            double dSqrt3 = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d46)) / 3.0d;
            sbVar.a.cubicTo((float) ((d38 * dSqrt3) + d2), (float) ((d39 * dSqrt3) + d40), (float) (d42 - (dSqrt3 * d44)), (float) (d43 - (dSqrt3 * d45)), (float) d42, (float) d43);
            d36 = d36;
            dSin2 = dSin2;
            d27 = d27;
            d2 = d42;
            i2++;
            d33 = d33;
            d37 = d41;
            d39 = d45;
            d38 = d44;
            iCeil = i3;
            d40 = d43;
            d11 = d6;
        }
    }

    public static void o(Canvas canvas, boolean z2) {
        Method method;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            if (z2) {
                canvas.enableZ();
                return;
            } else {
                canvas.disableZ();
                return;
            }
        }
        if (!y) {
            try {
                if (i2 == 28) {
                    Method declaredMethod = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, new Class[0].getClass());
                    w = (Method) declaredMethod.invoke(Canvas.class, "insertReorderBarrier", new Class[0]);
                    x = (Method) declaredMethod.invoke(Canvas.class, "insertInorderBarrier", new Class[0]);
                } else {
                    w = Canvas.class.getDeclaredMethod("insertReorderBarrier", null);
                    x = Canvas.class.getDeclaredMethod("insertInorderBarrier", null);
                }
                Method method2 = w;
                if (method2 != null) {
                    method2.setAccessible(true);
                }
                Method method3 = x;
                if (method3 != null) {
                    method3.setAccessible(true);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
            y = true;
        }
        if (z2) {
            try {
                Method method4 = w;
                if (method4 != null) {
                    method4.invoke(canvas, null);
                }
            } catch (IllegalAccessException | InvocationTargetException unused2) {
                return;
            }
        }
        if (z2 || (method = x) == null) {
            return;
        }
        method.invoke(canvas, null);
    }

    public static to0 q(ag1 ag1Var) {
        float f2 = uq3.a;
        as0 as0Var = (as0) ag1Var.j(kc0.h);
        boolean zC = ag1Var.c(as0Var.b());
        Object objK = ag1Var.K();
        Object obj = rb0.a;
        if (zC || objK == obj) {
            objK = new sn0(new dd1(as0Var));
            ag1Var.g0(objK);
        }
        sn0 sn0Var = (sn0) objK;
        boolean zF = ag1Var.f(sn0Var);
        Object objK2 = ag1Var.K();
        if (zF || objK2 == obj) {
            objK2 = new to0(sn0Var);
            ag1Var.g0(objK2);
        }
        return (to0) objK2;
    }

    public static void r(StringBuilder sb, SocketAddress socketAddress) {
        if (!(socketAddress instanceof InetSocketAddress)) {
            sb.append(socketAddress);
            return;
        }
        InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
        InetAddress address = inetSocketAddress.getAddress();
        Object hostAddress = address;
        if (address != null) {
            hostAddress = address.getHostAddress();
        }
        sb.append(hostAddress);
        sb.append(':');
        sb.append(inetSocketAddress.getPort());
    }

    public static ArrayList s(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        context.getClass();
        int i2 = context.getApplicationInfo().uid;
        String str = context.getApplicationInfo().processName;
        Object systemService = context.getSystemService("activity");
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            runningAppProcesses = g01.n;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : runningAppProcesses) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i3 = 0;
        int i4 = 0;
        while (i4 < size) {
            Object obj2 = arrayList.get(i4);
            i4++;
            if (((ActivityManager.RunningAppProcessInfo) obj2).uid == i2) {
                arrayList2.add(obj2);
            }
        }
        ArrayList arrayList3 = new ArrayList(p70.a0(arrayList2, 10));
        int size2 = arrayList2.size();
        while (i3 < size2) {
            Object obj3 = arrayList2.get(i3);
            i3++;
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) obj3;
            String str2 = runningAppProcessInfo.processName;
            str2.getClass();
            arrayList3.add(new zy2(runningAppProcessInfo.pid, runningAppProcessInfo.importance, str2, nt1.g(runningAppProcessInfo.processName, str)));
        }
        return arrayList3;
    }

    public static Application t(Context context) {
        if (context instanceof Application) {
            return (Application) context;
        }
        Context baseContext = context;
        while (baseContext instanceof ContextWrapper) {
            baseContext = ((ContextWrapper) baseContext).getBaseContext();
            if (baseContext instanceof Application) {
                return (Application) baseContext;
            }
        }
        q73.k(context, "Could not find an Application in the given context: ");
        return null;
    }

    public static final long u(y84 y84Var, ag1 ag1Var) {
        y84Var.getClass();
        int iOrdinal = y84Var.ordinal();
        if (iOrdinal == 0) {
            ag1Var.W(-738790271);
            long j2 = ((ua2) ag1Var.j(wa2.a)).a.a;
            ag1Var.p(false);
            return j2;
        }
        if (iOrdinal == 1) {
            ag1Var.W(-738786046);
            long j3 = ((ua2) ag1Var.j(wa2.a)).a.j;
            ag1Var.p(false);
            return j3;
        }
        if (iOrdinal == 2) {
            ag1Var.W(-738783645);
            long j4 = ((ua2) ag1Var.j(wa2.a)).a.f;
            ag1Var.p(false);
            return j4;
        }
        if (iOrdinal == 3) {
            ag1Var.W(-738781631);
            long j5 = ((n50) ag1Var.j(gy3.c)).M;
            ag1Var.p(false);
            return j5;
        }
        if (iOrdinal == 4) {
            ag1Var.W(-738788255);
            long j6 = ((n50) ag1Var.j(gy3.c)).M;
            ag1Var.p(false);
            return j6;
        }
        ag1Var.W(-738792320);
        ag1Var.p(false);
        p61.x();
        return 0L;
    }

    public static final Integer v(y84 y84Var) {
        y84Var.getClass();
        int iOrdinal = y84Var.ordinal();
        if (iOrdinal == 1) {
            return Integer.valueOf(R.drawable.gemini_color);
        }
        if (iOrdinal == 2) {
            return Integer.valueOf(R.drawable.antigravity_color);
        }
        if (iOrdinal == 3) {
            return Integer.valueOf(R.drawable.codex_color);
        }
        if (iOrdinal != 4) {
            return null;
        }
        return Integer.valueOf(R.drawable.copilot_color);
    }

    public static final Object w(jo1 jo1Var, i3 i3Var) {
        Object obj = jo1Var.r.a.get(i3Var);
        if (obj != null) {
            return obj;
        }
        Object obj2 = jo1Var.t.n.a.get(i3Var);
        return obj2 == null ? i3Var.a : obj2;
    }

    public static final Object x(er2 er2Var, i3 i3Var) {
        Object obj = er2Var.j.a.get(i3Var);
        return obj == null ? i3Var.a : obj;
    }

    public static zy2 y(Context context) {
        Object obj;
        String myProcessName;
        context.getClass();
        int iMyPid = Process.myPid();
        ArrayList arrayListS = s(context);
        int size = arrayListS.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                obj = null;
                break;
            }
            obj = arrayListS.get(i2);
            i2++;
            if (((zy2) obj).b == iMyPid) {
                break;
            }
        }
        zy2 zy2Var = (zy2) obj;
        if (zy2Var != null) {
            return zy2Var;
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 > 33) {
            myProcessName = Process.myProcessName();
            myProcessName.getClass();
        } else if ((i3 < 28 || (myProcessName = Application.getProcessName()) == null) && (myProcessName = ProcessUtils.getMyProcessName()) == null) {
            myProcessName = "";
        }
        return new zy2(iMyPid, 0, myProcessName, false);
    }

    public static final boolean z(ka3 ka3Var) {
        long j2 = ka3Var.e;
        return (j2 >>> 32) == (4294967295L & j2) && j2 == ka3Var.f && j2 == ka3Var.g && j2 == ka3Var.h;
    }

    public final void p(kh khVar, xn3 xn3Var, l53 l53Var, ar2 ar2Var) {
        this.a.Q0(khVar, xn3Var, l53Var, ar2Var);
    }
}
