package defpackage;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.widget.EdgeEffect;
import com.google.android.gms.common.api.Api;
import java.io.EOFException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import u.sage.R;
import u.sage.widget.UsageWidgetProvider;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class zf5 {
    public static final ka0 a = new ka0(2085594190, false, new sq(5));
    public static final ka0 b = new ka0(733290414, false, new sq(6));
    public static final ka0 c = new ka0(-1811943556, false, new sq(7));
    public static final ka0 d = new ka0(-1103093197, false, new sq(8));
    public static final hv0 e = new hv0();
    public static final p93 f = new p93(new o93());
    public static final char[] g = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static final Object A(long j, dh0 dh0Var) {
        if (j > 0) {
            o20 o20Var = new o20(1, dm0.A(dh0Var));
            o20Var.x();
            if (j < Long.MAX_VALUE) {
                F(o20Var.r).z(j, o20Var);
            }
            Object objV = o20Var.v();
            if (objV == ri0.n) {
                return objV;
            }
        }
        return t64.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    public static final void B(kx0 kx0Var, zh1 zh1Var) {
        int i;
        Canvas canvas;
        ?? r21;
        ?? r16;
        int i2;
        v20 v20VarU = kx0Var.z().u();
        zh1 zh1Var2 = (zh1) kx0Var.z().p;
        bi1 bi1Var = zh1Var.a;
        if (zh1Var.s) {
            return;
        }
        long j = zh1Var.h;
        Canvas canvasA = z8.a(v20VarU);
        boolean zIsHardwareAccelerated = canvasA.isHardwareAccelerated();
        if (!zIsHardwareAccelerated) {
            long j2 = zh1Var.t;
            float f2 = (int) (j2 >> 32);
            float f3 = f2 - zh1Var.v;
            float f4 = (int) (j2 & 4294967295L);
            float f5 = f4 - zh1Var.w;
            long j3 = zh1Var.f438u;
            float f6 = f2 + ((int) (j3 >> 32)) + zh1Var.x;
            float f7 = f4 + ((int) (j3 & 4294967295L)) + zh1Var.y;
            float fC = bi1Var.c();
            ow owVarA = bi1Var.A();
            int iN = bi1Var.N();
            if (fC < 1.0f || iN != 3 || owVarA != null || bi1Var.x() == 1) {
                lb lbVarE = zh1Var.p;
                if (lbVarE == null) {
                    lbVarE = on4.e();
                    zh1Var.p = lbVarE;
                }
                lbVarE.d(fC);
                lbVarE.e(iN);
                lbVarE.g(owVarA);
                canvasA.saveLayer(f3, f5, f6, f7, (Paint) lbVarE.o);
            } else {
                canvasA.save();
            }
            canvasA.translate(f3, f5);
            Matrix matrixF = bi1Var.F();
            matrixF.preTranslate(zh1Var.v, zh1Var.w);
            canvasA.concat(matrixF);
            zh1Var.h = go2.d(zh1Var.h, (((long) Float.floatToRawIntBits(zh1Var.w)) & 4294967295L) | (((long) Float.floatToRawIntBits(zh1Var.v)) << 32));
        }
        zh1Var.a();
        if (!bi1Var.K()) {
            try {
                zh1Var.a.z(zh1Var.b, zh1Var.c, zh1Var, zh1Var.e);
            } catch (Throwable unused) {
            }
        }
        ?? r13 = bi1Var.J() > 0.0f;
        if (r13 != false) {
            v20VarU.p();
        }
        ?? r14 = !zIsHardwareAccelerated && zh1Var.A;
        if (r14 == true) {
            v20VarU.j();
            fl4 fl4VarD = zh1Var.d();
            if (fl4VarD instanceof lr2) {
                l33 l33Var = ((lr2) fl4VarD).x;
                i = 1;
                v20VarU.e(l33Var.a, l33Var.b, l33Var.c, l33Var.d, 1);
            } else {
                i = 1;
                if (fl4VarD instanceof mr2) {
                    sb sbVarA = zh1Var.m;
                    if (sbVarA != null) {
                        sbVarA.a.rewind();
                    } else {
                        sbVarA = ub.a();
                        zh1Var.m = sbVarA;
                    }
                    sb.b(sbVarA, ((mr2) fl4VarD).x);
                    v20VarU.q(sbVarA);
                } else {
                    if (!(fl4VarD instanceof kr2)) {
                        p61.x();
                        return;
                    }
                    v20VarU.q(((kr2) fl4VarD).x);
                }
            }
        } else {
            i = 1;
        }
        if (zh1Var2 != null) {
            ic icVar = zh1Var2.r;
            if (!icVar.a) {
                zq1.a("Only add dependencies during a tracking");
            }
            lg2 lg2Var = (lg2) icVar.d;
            if (lg2Var != null) {
                lg2Var.a(zh1Var);
            } else if (((zh1) icVar.b) != null) {
                lg2 lg2Var2 = ud3.a;
                lg2 lg2Var3 = new lg2();
                zh1 zh1Var3 = (zh1) icVar.b;
                zh1Var3.getClass();
                lg2Var3.a(zh1Var3);
                lg2Var3.a(zh1Var);
                icVar.d = lg2Var3;
                icVar.b = null;
            } else {
                icVar.b = zh1Var;
            }
            lg2 lg2Var4 = (lg2) icVar.e;
            if (lg2Var4 != null) {
                i2 = !lg2Var4.l(zh1Var) ? 1 : 0;
            } else if (((zh1) icVar.c) != zh1Var) {
                i2 = i;
            } else {
                icVar.c = null;
                i2 = 0;
            }
            if (i2 != 0) {
                zh1Var.q += i;
            }
        }
        if (((y8) v20VarU).a.isHardwareAccelerated()) {
            canvas = canvasA;
            r21 = r13;
            r16 = r14;
            bi1Var.v(v20VarU);
        } else {
            x20 x20Var = zh1Var.o;
            if (x20Var == null) {
                x20Var = new x20();
                zh1Var.o = x20Var;
            }
            eh ehVar = x20Var.o;
            as0 as0Var = zh1Var.b;
            hy1 hy1Var = zh1Var.c;
            long jH = se0.H(zh1Var.f438u);
            as0 as0VarV = ehVar.v();
            hy1 hy1VarX = ehVar.x();
            v20 v20VarU2 = ehVar.u();
            r21 = r13;
            r16 = r14;
            long jZ = ehVar.z();
            canvas = canvasA;
            zh1 zh1Var4 = (zh1) ehVar.p;
            ehVar.I(as0Var);
            ehVar.J(hy1Var);
            ehVar.H(v20VarU);
            ehVar.K(jH);
            ehVar.p = zh1Var;
            v20VarU.j();
            try {
                zh1Var.c(x20Var);
            } finally {
                v20VarU.h();
                ehVar.I(as0VarV);
                ehVar.J(hy1VarX);
                ehVar.H(v20VarU2);
                ehVar.K(jZ);
                ehVar.p = zh1Var4;
            }
        }
        if (r16 != false) {
            v20VarU.h();
        }
        if (r21 != false) {
            v20VarU.l();
        }
        if (!zIsHardwareAccelerated) {
            canvas.restore();
        }
        zh1Var.h = j;
    }

    public static final boolean C(long j, long j2) {
        return j == j2;
    }

    public static final gy1 D(gy1 gy1Var) {
        gy1 gy1Var2;
        gy1 gy1VarJ = gy1Var.j();
        while (true) {
            gy1 gy1Var3 = gy1VarJ;
            gy1Var2 = gy1Var;
            gy1Var = gy1Var3;
            if (gy1Var == null) {
                break;
            }
            gy1VarJ = gy1Var.j();
        }
        mm2 mm2Var = gy1Var2 instanceof mm2 ? (mm2) gy1Var2 : null;
        if (mm2Var == null) {
            return gy1Var2;
        }
        mm2 mm2Var2 = mm2Var.H;
        while (true) {
            mm2 mm2Var3 = mm2Var2;
            mm2 mm2Var4 = mm2Var;
            mm2Var = mm2Var3;
            if (mm2Var == null) {
                return mm2Var4;
            }
            mm2Var2 = mm2Var.H;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
    
        if (r5.c == r8.hashCode()) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList E(android.content.Context r8, int r9) {
        /*
            android.content.res.Resources r0 = r8.getResources()
            android.content.res.Resources$Theme r8 = r8.getTheme()
            s73 r1 = new s73
            r1.<init>(r0, r8)
            java.lang.Object r2 = defpackage.t73.c
            monitor-enter(r2)
            java.util.WeakHashMap r3 = defpackage.t73.b     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r3 = r3.get(r1)     // Catch: java.lang.Throwable -> L3c
            android.util.SparseArray r3 = (android.util.SparseArray) r3     // Catch: java.lang.Throwable -> L3c
            r4 = 0
            if (r3 == 0) goto L50
            int r5 = r3.size()     // Catch: java.lang.Throwable -> L3c
            if (r5 <= 0) goto L50
            java.lang.Object r5 = r3.get(r9)     // Catch: java.lang.Throwable -> L3c
            r73 r5 = (defpackage.r73) r5     // Catch: java.lang.Throwable -> L3c
            if (r5 == 0) goto L50
            android.content.res.Configuration r6 = r5.b     // Catch: java.lang.Throwable -> L3c
            android.content.res.Configuration r7 = r0.getConfiguration()     // Catch: java.lang.Throwable -> L3c
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L4d
            if (r8 != 0) goto L3f
            int r6 = r5.c     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L49
            goto L3f
        L3c:
            r8 = move-exception
            goto Lb8
        L3f:
            if (r8 == 0) goto L4d
            int r6 = r5.c     // Catch: java.lang.Throwable -> L3c
            int r7 = r8.hashCode()     // Catch: java.lang.Throwable -> L3c
            if (r6 != r7) goto L4d
        L49:
            android.content.res.ColorStateList r3 = r5.a     // Catch: java.lang.Throwable -> L3c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            goto L52
        L4d:
            r3.remove(r9)     // Catch: java.lang.Throwable -> L3c
        L50:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            r3 = r4
        L52:
            if (r3 == 0) goto L55
            return r3
        L55:
            java.lang.ThreadLocal r2 = defpackage.t73.a
            java.lang.Object r3 = r2.get()
            android.util.TypedValue r3 = (android.util.TypedValue) r3
            if (r3 != 0) goto L67
            android.util.TypedValue r3 = new android.util.TypedValue
            r3.<init>()
            r2.set(r3)
        L67:
            r2 = 1
            r0.getValue(r9, r3, r2)
            int r2 = r3.type
            r3 = 28
            if (r2 < r3) goto L76
            r3 = 31
            if (r2 > r3) goto L76
            goto L87
        L76:
            android.content.res.XmlResourceParser r2 = r0.getXml(r9)
            android.content.res.ColorStateList r4 = defpackage.f80.a(r0, r2, r8)     // Catch: java.lang.Exception -> L7f
            goto L87
        L7f:
            r2 = move-exception
            java.lang.String r3 = "ResourcesCompat"
            java.lang.String r5 = "Failed to inflate ColorStateList, leaving it to the framework"
            android.util.Log.w(r3, r5, r2)
        L87:
            if (r4 == 0) goto Lb3
            java.lang.Object r2 = defpackage.t73.c
            monitor-enter(r2)
            java.util.WeakHashMap r0 = defpackage.t73.b     // Catch: java.lang.Throwable -> L9f
            java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Throwable -> L9f
            android.util.SparseArray r3 = (android.util.SparseArray) r3     // Catch: java.lang.Throwable -> L9f
            if (r3 != 0) goto La1
            android.util.SparseArray r3 = new android.util.SparseArray     // Catch: java.lang.Throwable -> L9f
            r3.<init>()     // Catch: java.lang.Throwable -> L9f
            r0.put(r1, r3)     // Catch: java.lang.Throwable -> L9f
            goto La1
        L9f:
            r8 = move-exception
            goto Lb1
        La1:
            r73 r0 = new r73     // Catch: java.lang.Throwable -> L9f
            android.content.res.Resources r1 = r1.a     // Catch: java.lang.Throwable -> L9f
            android.content.res.Configuration r1 = r1.getConfiguration()     // Catch: java.lang.Throwable -> L9f
            r0.<init>(r4, r1, r8)     // Catch: java.lang.Throwable -> L9f
            r3.append(r9, r0)     // Catch: java.lang.Throwable -> L9f
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L9f
            goto Lb7
        Lb1:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L9f
            throw r8
        Lb3:
            android.content.res.ColorStateList r4 = r0.getColorStateList(r9, r8)
        Lb7:
            return r4
        Lb8:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zf5.E(android.content.Context, int):android.content.res.ColorStateList");
    }

    public static final hr0 F(hi0 hi0Var) {
        fi0 fi0VarK = hi0Var.K(w13.s);
        hr0 hr0Var = fi0VarK instanceof hr0 ? (hr0) fi0VarK : null;
        return hr0Var == null ? ro0.a : hr0Var;
    }

    public static float G(EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return oy0.b(edgeEffect);
        }
        return 0.0f;
    }

    public static Drawable H(Context context, int i) {
        return o73.b().c(context, i);
    }

    public static final Object I(bh3 bh3Var, oh3 oh3Var) {
        Object objG = bh3Var.n.g(oh3Var);
        if (objG == null) {
            return null;
        }
        return objG;
    }

    public static final int J(int i, int i2, int i3) {
        if (i3 > 0) {
            if (i < i2) {
                int i4 = i2 % i3;
                if (i4 < 0) {
                    i4 += i3;
                }
                int i5 = i % i3;
                if (i5 < 0) {
                    i5 += i3;
                }
                int i6 = (i4 - i5) % i3;
                if (i6 < 0) {
                    i6 += i3;
                }
                return i2 - i6;
            }
        } else {
            if (i3 >= 0) {
                k21.f("Step is zero.");
                return 0;
            }
            if (i > i2) {
                int i7 = -i3;
                int i8 = i % i7;
                if (i8 < 0) {
                    i8 += i7;
                }
                int i9 = i2 % i7;
                if (i9 < 0) {
                    i9 += i7;
                }
                int i10 = (i8 - i9) % i7;
                if (i10 < 0) {
                    i10 += i7;
                }
                return i10 + i2;
            }
        }
        return i2;
    }

    public static final void K(y84 y84Var) {
        y84Var.getClass();
        int iOrdinal = y84Var.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 3 || iOrdinal == 4) {
            return;
        }
        p61.x();
    }

    public static int L(int i) {
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 8) {
            return 3;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 32) {
            return 5;
        }
        if (i == 64) {
            return 6;
        }
        if (i == 128) {
            return 7;
        }
        if (i == 256) {
            return 8;
        }
        if (i == 512) {
            return 9;
        }
        k21.f(di0.q(i, "type needs to be >= FIRST and <= LAST, type="));
        return 0;
    }

    public static final float[] M(float[] fArr) {
        float f2 = fArr[0];
        float f3 = fArr[3];
        float f4 = fArr[6];
        float f5 = fArr[1];
        float f6 = fArr[4];
        float f7 = fArr[7];
        float f8 = fArr[2];
        float f9 = fArr[5];
        float f10 = fArr[8];
        float f11 = (f6 * f10) - (f7 * f9);
        float f12 = (f7 * f8) - (f5 * f10);
        float f13 = (f5 * f9) - (f6 * f8);
        float f14 = (f4 * f13) + (f3 * f12) + (f2 * f11);
        float[] fArr2 = new float[fArr.length];
        fArr2[0] = f11 / f14;
        fArr2[1] = f12 / f14;
        fArr2[2] = f13 / f14;
        fArr2[3] = ((f4 * f9) - (f3 * f10)) / f14;
        fArr2[4] = ((f10 * f2) - (f4 * f8)) / f14;
        fArr2[5] = ((f8 * f3) - (f9 * f2)) / f14;
        fArr2[6] = ((f3 * f7) - (f4 * f6)) / f14;
        fArr2[7] = ((f4 * f5) - (f7 * f2)) / f14;
        fArr2[8] = ((f2 * f6) - (f3 * f5)) / f14;
        return fArr2;
    }

    public static final boolean N(int i, String str, int i2) {
        str.getClass();
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && fi4.j(str.charAt(i + 1)) != -1 && fi4.j(str.charAt(i3)) != -1;
    }

    public static final eb2 O(za3 za3Var, int i, int i2, int i3, int i4, int i5, gb2 gb2Var, List list, dv2[] dv2VarArr, int i6, int i7, int[] iArr, int i8) {
        int i9;
        float f2;
        long j;
        int i10;
        int i11;
        int i12;
        List list2 = list;
        long j2 = i5;
        int i13 = i7 - i6;
        int[] iArr2 = new int[i13];
        int i14 = i6;
        int iMax = 0;
        int i15 = 0;
        int i16 = 0;
        int iMin = 0;
        float f3 = 0.0f;
        while (i14 < i7) {
            ya2 ya2Var = (ya2) list2.get(i14);
            float fC = k75.C(k75.B(ya2Var));
            if (fC > 0.0f) {
                f3 += fC;
                i15++;
                j = j2;
                i10 = i14;
            } else {
                int i17 = i3 - i16;
                dv2 dv2VarE = dv2VarArr[i14];
                j = j2;
                if (dv2VarE == null) {
                    if (i3 == Integer.MAX_VALUE) {
                        i10 = i14;
                        i11 = i15;
                        i12 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                    } else {
                        i10 = i14;
                        i11 = i15;
                        i12 = i17 < 0 ? 0 : i17;
                    }
                    dv2VarE = ya2Var.e(za3Var.d(0, i12, i4, false));
                } else {
                    i10 = i14;
                    i11 = i15;
                }
                dv2 dv2Var = dv2VarE;
                int iH = za3Var.h(dv2Var);
                int iE = za3Var.e(dv2Var);
                iArr2[i10 - i6] = iH;
                int i18 = i17 - iH;
                if (i18 < 0) {
                    i18 = 0;
                }
                iMin = Math.min(i5, i18);
                i16 += iH + iMin;
                iMax = Math.max(iMax, iE);
                dv2VarArr[i10] = dv2Var;
                i15 = i11;
            }
            i14 = i10 + 1;
            j2 = j;
        }
        long j3 = j2;
        int i19 = i15;
        if (i19 == 0) {
            i16 -= iMin;
            i9 = 0;
        } else {
            long j4 = ((long) (i19 - 1)) * j3;
            long jRound = ((long) ((i3 != Integer.MAX_VALUE ? i3 : i) - i16)) - j4;
            if (jRound < 0) {
                jRound = 0;
            }
            float f4 = jRound / f3;
            for (int i20 = i6; i20 < i7; i20++) {
                jRound -= (long) Math.round(k75.C(k75.B((ya2) list2.get(i20))) * f4);
            }
            int i21 = i6;
            int i22 = iMax;
            int i23 = 0;
            while (i21 < i7) {
                if (dv2VarArr[i21] == null) {
                    ya2 ya2Var2 = (ya2) list2.get(i21);
                    f2 = f4;
                    ab3 ab3VarB = k75.B(ya2Var2);
                    float fC2 = k75.C(ab3VarB);
                    if (fC2 <= 0.0f) {
                        yq1.b("All weights <= 0 should have placeables");
                    }
                    int iSignum = Long.signum(jRound);
                    long j5 = jRound - ((long) iSignum);
                    int iMax2 = Math.max(0, Math.round(fC2 * f2) + iSignum);
                    dv2 dv2VarE2 = ya2Var2.e(za3Var.d((!(ab3VarB != null ? ab3VarB.b : true) || iMax2 == Integer.MAX_VALUE) ? 0 : iMax2, iMax2, i4, true));
                    int iH2 = za3Var.h(dv2VarE2);
                    int iE2 = za3Var.e(dv2VarE2);
                    iArr2[i21 - i6] = iH2;
                    i23 += iH2;
                    int iMax3 = Math.max(i22, iE2);
                    dv2VarArr[i21] = dv2VarE2;
                    i22 = iMax3;
                    jRound = j5;
                } else {
                    f2 = f4;
                }
                i21++;
                list2 = list;
                f4 = f2;
            }
            i9 = (int) (((long) i23) + j4);
            int i24 = i3 - i16;
            if (i9 < 0) {
                i9 = 0;
            }
            if (i9 > i24) {
                i9 = i24;
            }
            iMax = i22;
        }
        int i25 = i9 + i16;
        if (i25 < 0) {
            i25 = 0;
        }
        int iMax4 = Math.max(i25, i);
        int iMax5 = Math.max(iMax, Math.max(i2, 0));
        int[] iArr3 = new int[i13];
        za3Var.b(iMax4, gb2Var, iArr2, iArr3);
        return za3Var.j(dv2VarArr, gb2Var, iArr3, iMax4, iMax5, iArr, i8, i6, i7);
    }

    public static final float[] P(float[] fArr, float[] fArr2) {
        float[] fArr3 = new float[9];
        if (fArr.length < 9 || fArr2.length < 9) {
            return fArr3;
        }
        float f2 = fArr[0] * fArr2[0];
        float f3 = fArr[3];
        float f4 = fArr2[1];
        float f5 = fArr[6];
        float f6 = fArr2[2];
        fArr3[0] = (f5 * f6) + (f3 * f4) + f2;
        float f7 = fArr[1];
        float f8 = fArr2[0];
        float f9 = fArr[4];
        float f10 = fArr[7];
        float f11 = f10 * f6;
        fArr3[1] = f11 + (f4 * f9) + (f7 * f8);
        float f12 = fArr[2] * f8;
        float f13 = fArr[5];
        float f14 = (fArr2[1] * f13) + f12;
        float f15 = fArr[8];
        fArr3[2] = (f6 * f15) + f14;
        float f16 = fArr[0];
        float f17 = fArr2[3] * f16;
        float f18 = fArr2[4];
        float f19 = (f3 * f18) + f17;
        float f20 = fArr2[5];
        fArr3[3] = (f5 * f20) + f19;
        float f21 = fArr[1];
        float f22 = fArr2[3];
        float f23 = f9 * f18;
        fArr3[4] = (f10 * f20) + f23 + (f21 * f22);
        float f24 = fArr[2];
        float f25 = f20 * f15;
        fArr3[5] = f25 + (f13 * fArr2[4]) + (f22 * f24);
        float f26 = f16 * fArr2[6];
        float f27 = fArr[3];
        float f28 = fArr2[7];
        float f29 = (f27 * f28) + f26;
        float f30 = fArr2[8];
        fArr3[6] = (f5 * f30) + f29;
        float f31 = fArr2[6];
        float f32 = f10 * f30;
        fArr3[7] = f32 + (fArr[4] * f28) + (f21 * f31);
        float f33 = f15 * f30;
        fArr3[8] = f33 + (fArr[5] * fArr2[7]) + (f24 * f31);
        return fArr3;
    }

    public static final float[] Q(float[] fArr, float[] fArr2) {
        if (fArr.length < 9 || fArr2.length < 3) {
            return fArr2;
        }
        float f2 = fArr2[0];
        float f3 = fArr2[1];
        float f4 = fArr2[2];
        fArr2[0] = (fArr[6] * f4) + (fArr[3] * f3) + (fArr[0] * f2);
        fArr2[1] = (fArr[7] * f4) + (fArr[4] * f3) + (fArr[1] * f2);
        fArr2[2] = (fArr[8] * f4) + (fArr[5] * f3) + (fArr[2] * f2);
        return fArr2;
    }

    public static float R(EdgeEffect edgeEffect, float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 31) {
            return oy0.c(edgeEffect, f2, f3);
        }
        edgeEffect.onPull(f2, f3);
        return f2;
    }

    public static BigDecimal S(String str) {
        p(str);
        BigDecimal bigDecimal = new BigDecimal(str);
        if (Math.abs(bigDecimal.scale()) < 10000) {
            return bigDecimal;
        }
        throw new NumberFormatException("Number has unsupported scale: ".concat(str));
    }

    public static String T(int i, int i2, int i3, String str) {
        int i4;
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        boolean z = (i3 & 4) == 0;
        str.getClass();
        int iCharCount = i;
        while (iCharCount < i2) {
            char cCharAt = str.charAt(iCharCount);
            if (cCharAt == '%' || (cCharAt == '+' && z)) {
                sy syVar = new sy();
                syVar.t0(i, str, iCharCount);
                while (iCharCount < i2) {
                    int iCodePointAt = str.codePointAt(iCharCount);
                    if (iCodePointAt == 37 && (i4 = iCharCount + 2) < i2) {
                        int iJ = fi4.j(str.charAt(iCharCount + 1));
                        int iJ2 = fi4.j(str.charAt(i4));
                        if (iJ == -1 || iJ2 == -1) {
                            syVar.v0(iCodePointAt);
                            iCharCount += Character.charCount(iCodePointAt);
                        } else {
                            syVar.o0((iJ << 4) + iJ2);
                            iCharCount = Character.charCount(iCodePointAt) + i4;
                        }
                    } else if (iCodePointAt == 43 && z) {
                        syVar.o0(32);
                        iCharCount++;
                    } else {
                        syVar.v0(iCodePointAt);
                        iCharCount += Character.charCount(iCodePointAt);
                    }
                }
                return syVar.V();
            }
            iCharCount++;
        }
        return str.substring(i, i2);
    }

    public static final Object U(Object obj, Object obj2) {
        if (obj == null) {
            return obj2;
        }
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(obj2);
            return obj;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(obj2);
        return arrayList;
    }

    public static boolean V(String str) {
        return str == null || str.isEmpty();
    }

    public static String W(long j) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        return Float.intBitsToFloat(i) == Float.intBitsToFloat(i2) ? di0.v("CornerRadius.circular(", k75.N(Float.intBitsToFloat(i)), ")") : xw1.r("CornerRadius.elliptical(", k75.N(Float.intBitsToFloat(i)), ", ", k75.N(Float.intBitsToFloat(i2)), ")");
    }

    public static void X(Context context, y84 y84Var) {
        context.getClass();
        y84Var.getClass();
        try {
            ra3 ra3Var = ez3.a;
            y84Var.name();
            Thread.currentThread().getName();
            ra3Var.getClass();
            ra3.c(new Object[0]);
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
            int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) UsageWidgetProvider.class));
            ArrayList arrayList = new ArrayList();
            appWidgetIds.getClass();
            for (int i : appWidgetIds) {
                if (nt1.g(c75.G(context, i), y84Var.name())) {
                    ez3.a.getClass();
                    ra3.c(new Object[0]);
                    c75.P(context, i, false);
                    arrayList.add(Integer.valueOf(i));
                }
            }
            if (arrayList.isEmpty()) {
                ra3 ra3Var2 = ez3.a;
                y84Var.name();
                ra3Var2.getClass();
                ra3.c(new Object[0]);
                return;
            }
            if (Build.VERSION.SDK_INT < 31) {
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    int iIntValue = ((Number) obj).intValue();
                    ez3.a.getClass();
                    ra3.c(new Object[0]);
                    appWidgetManager.notifyAppWidgetViewDataChanged(iIntValue, R.id.widget_limit_list);
                }
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            ra3 ra3Var3 = ez3.a;
            Thread.currentThread().getName();
            arrayList.toString();
            ra3Var3.getClass();
            ra3.c(new Object[0]);
            new Handler(Looper.getMainLooper()).post(new h7(jCurrentTimeMillis, arrayList, context));
            arrayList.size();
            y84Var.name();
            ra3.c(new Object[0]);
        } catch (Exception unused) {
            ez3.a.getClass();
            ra3.g(new Object[0]);
        }
    }

    public static final yq3 Y(fe2 fe2Var, ag1 ag1Var) {
        ee2 ee2Var = ((ua2) ag1Var.j(wa2.a)).d;
        int iOrdinal = fe2Var.ordinal();
        if (iOrdinal == 0) {
            ee2Var.getClass();
            yq3 yq3Var = ee2.b;
            yq3Var.getClass();
            return yq3Var;
        }
        if (iOrdinal == 1) {
            ee2Var.getClass();
            yq3 yq3Var2 = ee2.c;
            yq3Var2.getClass();
            return yq3Var2;
        }
        if (iOrdinal == 2) {
            ee2Var.getClass();
            yq3 yq3Var3 = ee2.d;
            yq3Var3.getClass();
            return yq3Var3;
        }
        if (iOrdinal == 3) {
            ee2Var.getClass();
            yq3 yq3Var4 = ee2.e;
            yq3Var4.getClass();
            return yq3Var4;
        }
        if (iOrdinal == 4) {
            ee2Var.getClass();
            yq3 yq3Var5 = ee2.f;
            yq3Var5.getClass();
            return yq3Var5;
        }
        if (iOrdinal != 5) {
            p61.x();
            return null;
        }
        ee2Var.getClass();
        yq3 yq3Var6 = ee2.g;
        yq3Var6.getClass();
        return yq3Var6;
    }

    public static final void a(Object obj, pe1 pe1Var, ag1 ag1Var) {
        boolean zF = ag1Var.f(obj);
        Object objK = ag1Var.K();
        if (zF || objK == rb0.a) {
            objK = new fv0(pe1Var);
            ag1Var.g0(objK);
        }
    }

    public static final void b(Object obj, Object obj2, pe1 pe1Var, ag1 ag1Var) {
        boolean zF = ag1Var.f(obj) | ag1Var.f(obj2);
        Object objK = ag1Var.K();
        if (zF || objK == rb0.a) {
            objK = new fv0(pe1Var);
            ag1Var.g0(objK);
        }
    }

    public static final void c(df1 df1Var, ag1 ag1Var, Object obj) {
        hi0 hi0Var = ag1Var.R;
        boolean zF = ag1Var.f(obj);
        Object objK = ag1Var.K();
        if (zF || objK == rb0.a) {
            objK = new yx1(hi0Var, df1Var);
            ag1Var.g0(objK);
        }
    }

    public static final void d(Object obj, Object obj2, df1 df1Var, ag1 ag1Var) {
        hi0 hi0Var = ag1Var.R;
        boolean zF = ag1Var.f(obj) | ag1Var.f(obj2);
        Object objK = ag1Var.K();
        if (zF || objK == rb0.a) {
            objK = new yx1(hi0Var, df1Var);
            ag1Var.g0(objK);
        }
    }

    public static final void e(nd2 nd2Var, long j, List list, ag1 ag1Var, int i) {
        long j2;
        ag1 ag1Var2;
        nd2 nd2Var2;
        List list2;
        int i2;
        ag1Var.X(387862047);
        int i3 = i | 6 | (ag1Var.e(j) ? 32 : 16) | 128;
        if (ag1Var.N(i3 & 1, (i3 & 147) != 146)) {
            ag1Var.S();
            if ((i & 1) == 0 || ag1Var.x()) {
                list = o52.c;
                i2 = i3 & (-897);
                nd2Var = kd2.b;
            } else {
                ag1Var.Q();
                i2 = i3 & (-897);
            }
            nd2 nd2Var3 = nd2Var;
            List list3 = list;
            ag1Var.q();
            long j3 = t70.f;
            float f2 = o52.a;
            j2 = j;
            ag1Var2 = ag1Var;
            f(nd2Var3, j3, j2, ol3.a(w80.l, ag1Var), list3, ag1Var2, 54 | ((i2 << 3) & 896));
            nd2Var2 = nd2Var3;
            list2 = list3;
        } else {
            j2 = j;
            ag1Var2 = ag1Var;
            ag1Var2.Q();
            nd2Var2 = nd2Var;
            list2 = list;
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new sz(nd2Var2, j2, list2, i);
        }
    }

    public static final void f(final nd2 nd2Var, final long j, final long j2, final jl3 jl3Var, final List list, ag1 ag1Var, final int i) {
        int i2;
        int i3;
        float f2;
        pd pdVar;
        ag1Var.X(-1776169461);
        if ((i & 6) == 0) {
            i2 = (ag1Var.f(nd2Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.e(j) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= ag1Var.e(j2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= ag1Var.f(jl3Var) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= ag1Var.h(list) ? 16384 : 8192;
        }
        if (!ag1Var.N(i2 & 1, (i2 & 9363) != 9362)) {
            ag1Var.Q();
        } else {
            if (list.size() <= 1) {
                k21.f("indicatorPolygons should have, at least, two RoundedPolygons");
                return;
            }
            boolean zF = ag1Var.f(list);
            Object objK = ag1Var.K();
            Object obj = rb0.a;
            if (zF || objK == obj) {
                a42 a42VarP = tv4.p();
                int size = list.size();
                int i4 = 0;
                while (i4 < size) {
                    int i5 = i4 + 1;
                    if (i5 < list.size()) {
                        i3 = i5;
                        a42VarP.add(new xd2(((pa3) list.get(i4)).b(), ((pa3) list.get(i5)).b()));
                    } else {
                        i3 = i5;
                        a42VarP.add(new xd2(((pa3) list.get(i4)).b(), ((pa3) list.get(0)).b()));
                    }
                    i4 = i3;
                }
                objK = tv4.l(a42VarP);
                ag1Var.g0(objK);
            }
            final List list2 = (List) objK;
            boolean zF2 = ag1Var.f(list);
            Object objK2 = ag1Var.K();
            if (zF2 || objK2 == obj) {
                float[] fArr = new float[4];
                int size2 = list.size();
                float fMin = 1.0f;
                int i6 = 0;
                f2 = 0.0f;
                while (i6 < size2) {
                    int i7 = size2;
                    pa3 pa3Var = (pa3) list.get(i6);
                    pa3.a(pa3Var, fArr, 2);
                    a42 a42Var = pa3Var.d;
                    float[] fArr2 = fArr;
                    float f3 = pa3Var.c;
                    float f4 = pa3Var.b;
                    int iA = a42Var.a();
                    int i8 = i6;
                    float fMax = 0.0f;
                    int i9 = 0;
                    while (i9 < iA) {
                        int i10 = iA;
                        cl0 cl0Var = (cl0) a42Var.get(i9);
                        a42 a42Var2 = a42Var;
                        float[] fArr3 = cl0Var.a;
                        float f5 = fArr3[0] - f4;
                        float f6 = fArr3[1] - f3;
                        float f7 = k94.b;
                        float f8 = (f6 * f6) + (f5 * f5);
                        int i11 = i9;
                        long jC = cl0Var.c(0.5f);
                        float fX = ix.x(jC) - f4;
                        float fY = ix.y(jC) - f3;
                        fMax = Math.max(fMax, Math.max(f8, (fY * fY) + (fX * fX)));
                        i9 = i11 + 1;
                        a42Var = a42Var2;
                        iA = i10;
                    }
                    float fSqrt = (float) Math.sqrt(fMax);
                    float[] fArr4 = {f4 - fSqrt, f3 - fSqrt, f4 + fSqrt, f3 + fSqrt};
                    fMin = Math.min(fMin, Math.max((fArr2[2] - fArr2[0]) / (fArr4[2] - fArr4[0]), (fArr2[3] - fArr2[1]) / (fArr4[3] - fArr4[1])));
                    i6 = i8 + 1;
                    fArr = fArr2;
                    size2 = i7;
                }
                objK2 = Float.valueOf(fMin * o52.d);
                ag1Var.g0(objK2);
            } else {
                f2 = 0.0f;
            }
            final float fFloatValue = ((Number) objK2).floatValue();
            Object objK3 = ag1Var.K();
            if (objK3 == obj) {
                objK3 = dm0.a(f2);
                ag1Var.g0(objK3);
            }
            pd pdVar2 = (pd) objK3;
            Object objK4 = ag1Var.K();
            if (objK4 == obj) {
                objK4 = new ss2(90.0f);
                ag1Var.g0(objK4);
            }
            final ss2 ss2Var = (ss2) objK4;
            Object objK5 = ag1Var.K();
            if (objK5 == obj) {
                objK5 = dm0.a(f2);
                ag1Var.g0(objK5);
            }
            final pd pdVar3 = (pd) objK5;
            boolean zF3 = ag1Var.f(list);
            Object objK6 = ag1Var.K();
            if (zF3 || objK6 == obj) {
                objK6 = new ts2(0);
                ag1Var.g0(objK6);
            }
            final ts2 ts2Var = (ts2) objK6;
            boolean zH = ag1Var.h(pdVar2) | ag1Var.f(ts2Var) | ag1Var.h(list2) | ag1Var.h(pdVar3);
            Object objK7 = ag1Var.K();
            if (zH || objK7 == obj) {
                objK7 = new f5(pdVar2, list2, ts2Var, ss2Var, pdVar3, null);
                pdVar = pdVar2;
                ag1Var.g0(objK7);
            } else {
                pdVar = pdVar2;
            }
            c((df1) objK7, ag1Var, list);
            Object objK8 = ag1Var.K();
            if (objK8 == obj) {
                objK8 = ub.a();
                ag1Var.g0(objK8);
            }
            final sb sbVar = (sb) objK8;
            Object objK9 = ag1Var.K();
            if (objK9 == obj) {
                Object xa2Var = new xa2(xa2.a());
                ag1Var.g0(xa2Var);
                objK9 = xa2Var;
            }
            final float[] fArr5 = ((xa2) objK9).a;
            z82 z82Var = new z82(22);
            AtomicInteger atomicInteger = dh3.a;
            nd2 nd2VarJ = bi4.j(n44.c0(on3.d(nd2Var.c(new gh(z82Var, true)), o52.a, o52.b).c(on3.b), jl3Var), j, k75.d);
            db2 db2VarD = qx.d(mj1.s, false);
            final pd pdVar4 = pdVar;
            int iHashCode = Long.hashCode(ag1Var.T);
            hu2 hu2VarL = ag1Var.l();
            nd2 nd2VarH = is0.H(ag1Var, nd2VarJ);
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
            nd2 nd2VarG = gg4.g();
            boolean zH2 = ag1Var.h(pdVar4) | ag1Var.h(pdVar3) | ag1Var.h(list2) | ag1Var.f(ts2Var) | ag1Var.h(sbVar) | ag1Var.c(fFloatValue) | ag1Var.h(fArr5) | ((i2 & 896) == 256);
            Object objK10 = ag1Var.K();
            if (zH2 || objK10 == obj) {
                Object obj2 = new pe1() { // from class: p52
                    @Override // defpackage.pe1
                    public final Object k(Object obj3) {
                        List list3 = list2;
                        sb sbVar2 = sbVar;
                        float f9 = fFloatValue;
                        float[] fArr6 = fArr5;
                        long j3 = j2;
                        ts2 ts2Var2 = ts2Var;
                        zy1 zy1Var = (zy1) obj3;
                        float fFloatValue2 = ((Number) pdVar4.d()).floatValue();
                        float fG = ss2Var.g();
                        float fFloatValue3 = ((Number) pdVar3.d()).floatValue() + fG + (90.0f * fFloatValue2);
                        long jU = zy1Var.n.U();
                        x20 x20Var = zy1Var.n;
                        eh ehVar = x20Var.o;
                        long jZ = ehVar.z();
                        ehVar.u().j();
                        try {
                            ((dh1) ehVar.o).r(fFloatValue3, jU);
                            fl4.z((xd2) list3.get(ts2Var2.g()), fFloatValue2, sbVar2);
                            long jD = x20Var.d();
                            xa2.d(fArr6);
                            xa2.f(fArr6, Float.intBitsToFloat((int) (jD >> 32)) * f9, Float.intBitsToFloat((int) (jD & 4294967295L)) * f9);
                            if (sbVar2.d == null) {
                                sbVar2.d = new Matrix();
                            }
                            Matrix matrix = sbVar2.d;
                            matrix.getClass();
                            fl4.v(matrix, fArr6);
                            Path path = sbVar2.a;
                            Matrix matrix2 = sbVar2.d;
                            matrix2.getClass();
                            path.transform(matrix2);
                            long jD2 = go2.d(kt4.C(jD), sbVar2.c().a());
                            Matrix matrix3 = sbVar2.d;
                            if (matrix3 == null) {
                                sbVar2.d = new Matrix();
                            } else {
                                matrix3.reset();
                            }
                            Matrix matrix4 = sbVar2.d;
                            matrix4.getClass();
                            matrix4.setTranslate(Float.intBitsToFloat((int) (jD2 >> 32)), Float.intBitsToFloat((int) (jD2 & 4294967295L)));
                            Path path2 = sbVar2.a;
                            Matrix matrix5 = sbVar2.d;
                            matrix5.getClass();
                            path2.transform(matrix5);
                            zy1Var.f(sbVar2, j3, t51.f);
                            ehVar.u().h();
                            ehVar.K(jZ);
                            return t64.a;
                        } catch (Throwable th) {
                            ehVar.u().h();
                            ehVar.K(jZ);
                            throw th;
                        }
                    }
                };
                ag1Var.g0(obj2);
                objK10 = obj2;
            }
            mt1.f(ag1Var, nd2VarG.c(new mx0((pe1) objK10)));
            ag1Var.p(true);
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1() { // from class: q52
                @Override // defpackage.df1
                public final Object f(Object obj3, Object obj4) {
                    ((Integer) obj4).intValue();
                    zf5.f(nd2Var, j, j2, jl3Var, list, (ag1) obj3, qj0.f0(i | 1));
                    return t64.a;
                }
            };
        }
    }

    public static final void g(ne1 ne1Var, ag1 ag1Var) {
        br2 br2Var = ag1Var.M.b.a;
        br2Var.S0(pq2.c);
        is0.X(br2Var, 0, ne1Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object h(java.io.File r4, defpackage.pe1 r5, defpackage.fh0 r6) throws java.io.IOException {
        /*
            boolean r0 = r6 instanceof defpackage.o51
            if (r0 == 0) goto L13
            r0 = r6
            o51 r0 = (defpackage.o51) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            o51 r0 = new o51
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.r
            int r1 = r0.s
            r2 = 1
            if (r1 == 0) goto L30
            if (r1 != r2) goto L29
            java.io.File r4 = r0.q
            defpackage.gg4.T(r6)     // Catch: java.io.IOException -> L27
            return r6
        L27:
            r5 = move-exception
            goto L41
        L29:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            r4 = 0
            return r4
        L30:
            defpackage.gg4.T(r6)
            r0.q = r4     // Catch: java.io.IOException -> L27
            r0.s = r2     // Catch: java.io.IOException -> L27
            java.lang.Object r4 = r5.k(r0)     // Catch: java.io.IOException -> L27
            ri0 r5 = defpackage.ri0.n
            if (r4 != r5) goto L40
            return r5
        L40:
            return r4
        L41:
            boolean r6 = r5 instanceof defpackage.xi0
            if (r6 != 0) goto La5
            r4.getClass()
            boolean r6 = r4.exists()
            if (r6 == 0) goto La0
            boolean r6 = r4.isFile()
            if (r6 == 0) goto L7a
            boolean r6 = r4.canRead()
            if (r6 == 0) goto L6a
            boolean r6 = r4.canWrite()
            if (r6 == 0) goto L65
            java.io.IOException r4 = defpackage.k75.k(r4, r5)
            goto La4
        L65:
            java.io.IOException r4 = defpackage.k75.k(r4, r5)
            goto La4
        L6a:
            boolean r6 = r4.canWrite()
            if (r6 == 0) goto L75
            java.io.IOException r4 = defpackage.k75.k(r4, r5)
            goto La4
        L75:
            java.io.IOException r4 = defpackage.k75.k(r4, r5)
            goto La4
        L7a:
            boolean r6 = r4.canRead()
            if (r6 == 0) goto L90
            boolean r6 = r4.canWrite()
            if (r6 == 0) goto L8b
            java.io.IOException r4 = defpackage.k75.k(r4, r5)
            goto La4
        L8b:
            java.io.IOException r4 = defpackage.k75.k(r4, r5)
            goto La4
        L90:
            boolean r6 = r4.canWrite()
            if (r6 == 0) goto L9b
            java.io.IOException r4 = defpackage.k75.k(r4, r5)
            goto La4
        L9b:
            java.io.IOException r4 = defpackage.k75.k(r4, r5)
            goto La4
        La0:
            java.io.IOException r4 = defpackage.k75.k(r4, r5)
        La4:
            throw r4
        La5:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zf5.h(java.io.File, pe1, fh0):java.lang.Object");
    }

    public static b80 i(b80 b80Var) {
        cd4 cd4Var = fl4.r;
        if (k75.v(b80Var.b, 12884901888L)) {
            w83 w83Var = (w83) b80Var;
            cd4 cd4Var2 = w83Var.d;
            if (!v(cd4Var2, cd4Var)) {
                return new w83(w83Var.a, w83Var.h, cd4Var, P(s(b7.c.b, cd4Var2.a(), cd4Var.a()), w83Var.i), w83Var.k, w83Var.n, w83Var.e, w83Var.f, w83Var.g, -1);
            }
        }
        return b80Var;
    }

    public static final l33 k(gy1 gy1Var) {
        gy1 gy1VarJ = gy1Var.j();
        return gy1VarJ != null ? gy1VarJ.H(gy1Var, true) : new l33(0.0f, 0.0f, (int) (gy1Var.I() >> 32), (int) (gy1Var.I() & 4294967295L));
    }

    public static final l33 l(gy1 gy1Var, boolean z) {
        gy1 gy1VarD = D(gy1Var);
        float fI = (int) (gy1VarD.I() >> 32);
        float fI2 = (int) (gy1VarD.I() & 4294967295L);
        l33 l33VarH = gy1VarD.H(gy1Var, z);
        float f2 = l33VarH.a;
        if (z) {
            if (f2 < 0.0f) {
                f2 = 0.0f;
            }
            if (f2 > fI) {
                f2 = fI;
            }
        }
        float f3 = l33VarH.b;
        if (z) {
            if (f3 < 0.0f) {
                f3 = 0.0f;
            }
            if (f3 > fI2) {
                f3 = fI2;
            }
        }
        float f4 = l33VarH.c;
        if (z) {
            if (f4 < 0.0f) {
                f4 = 0.0f;
            }
            if (f4 <= fI) {
                fI = f4;
            }
            f4 = fI;
        }
        float f5 = l33VarH.d;
        if (z) {
            float f6 = f5 >= 0.0f ? f5 : 0.0f;
            if (f6 <= fI2) {
                fI2 = f6;
            }
            f5 = fI2;
        }
        if (f2 == f4 || f3 == f5) {
            return l33.e;
        }
        long jH = gy1VarD.h((((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f3)) & 4294967295L));
        long jH2 = gy1VarD.h((((long) Float.floatToRawIntBits(f4)) << 32) | (((long) Float.floatToRawIntBits(f3)) & 4294967295L));
        long jH3 = gy1VarD.h((((long) Float.floatToRawIntBits(f4)) << 32) | (((long) Float.floatToRawIntBits(f5)) & 4294967295L));
        long jH4 = gy1VarD.h((((long) Float.floatToRawIntBits(f5)) & 4294967295L) | (((long) Float.floatToRawIntBits(f2)) << 32));
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jH >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jH2 >> 32));
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (jH4 >> 32));
        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (jH3 >> 32));
        float fMin = Math.min(fIntBitsToFloat, Math.min(fIntBitsToFloat2, Math.min(fIntBitsToFloat3, fIntBitsToFloat4)));
        float fMax = Math.max(fIntBitsToFloat, Math.max(fIntBitsToFloat2, Math.max(fIntBitsToFloat3, fIntBitsToFloat4)));
        float fIntBitsToFloat5 = Float.intBitsToFloat((int) (jH & 4294967295L));
        float fIntBitsToFloat6 = Float.intBitsToFloat((int) (jH2 & 4294967295L));
        float fIntBitsToFloat7 = Float.intBitsToFloat((int) (jH4 & 4294967295L));
        float fIntBitsToFloat8 = Float.intBitsToFloat((int) (jH3 & 4294967295L));
        return new l33(fMin, Math.min(fIntBitsToFloat5, Math.min(fIntBitsToFloat6, Math.min(fIntBitsToFloat7, fIntBitsToFloat8))), fMax, Math.max(fIntBitsToFloat5, Math.max(fIntBitsToFloat6, Math.max(fIntBitsToFloat7, fIntBitsToFloat8))));
    }

    public static String m(String str, int i, int i2, String str2, int i3) throws EOFException {
        int i4 = (i3 & 1) != 0 ? 0 : i;
        int length = (i3 & 2) != 0 ? str.length() : i2;
        boolean z = (i3 & 8) == 0;
        boolean z2 = (i3 & 16) == 0;
        boolean z3 = (i3 & 32) == 0;
        boolean z4 = (i3 & 64) == 0;
        str.getClass();
        int iCharCount = i4;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            int i5 = 32;
            if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z4) || zs3.C0(str2, (char) iCodePointAt) || ((iCodePointAt == 37 && (!z || (z2 && !N(iCharCount, str, length)))) || (iCodePointAt == 43 && z3)))) {
                sy syVar = new sy();
                syVar.t0(i4, str, iCharCount);
                sy syVar2 = null;
                while (iCharCount < length) {
                    int iCodePointAt2 = str.codePointAt(iCharCount);
                    if (!z || (iCodePointAt2 != 9 && iCodePointAt2 != 10 && iCodePointAt2 != 12 && iCodePointAt2 != 13)) {
                        if (iCodePointAt2 == i5 && str2 == " !\"#$&'()+,/:;<=>?@[\\]^`{|}~") {
                            syVar.u0("+");
                        } else if (iCodePointAt2 == 43 && z3) {
                            syVar.u0(z ? "+" : "%2B");
                        } else {
                            if (iCodePointAt2 >= i5 && iCodePointAt2 != 127) {
                                if ((iCodePointAt2 < 128 || z4) && !zs3.C0(str2, (char) iCodePointAt2) && (iCodePointAt2 != 37 || (z && (!z2 || N(iCharCount, str, length))))) {
                                    syVar.v0(iCodePointAt2);
                                }
                            }
                            if (syVar2 == null) {
                                syVar2 = new sy();
                            }
                            syVar2.v0(iCodePointAt2);
                            while (!syVar2.r()) {
                                byte b2 = syVar2.readByte();
                                syVar.o0(37);
                                char[] cArr = g;
                                syVar.o0(cArr[((b2 & 255) >> 4) & 15]);
                                syVar.o0(cArr[b2 & 15]);
                            }
                        }
                    }
                    iCharCount += Character.charCount(iCodePointAt2);
                    i5 = 32;
                }
                return syVar.V();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.substring(i4, length);
    }

    public static final void o(int i, int i2) {
        if (i < 0 || i >= i2) {
            mk0.h(di0.p(i, i2, "index: ", ", size: "));
        }
    }

    public static void p(String str) {
        if (str.length() <= 10000) {
            return;
        }
        throw new NumberFormatException("Number string too large: " + str.substring(0, 30) + "...");
    }

    public static final void q(int i, int i2) {
        if (i < 0 || i > i2) {
            mk0.h(di0.p(i, i2, "index: ", ", size: "));
        }
    }

    public static final void r(int i, int i2, int i3) {
        if (i < 0 || i2 > i3) {
            k21.k(xw1.v("fromIndex: ", i, ", toIndex: ", i2, ", size: "), i3);
        } else {
            if (i <= i2) {
                return;
            }
            k21.f(di0.p(i, i2, "fromIndex: ", " > toIndex: "));
        }
    }

    public static final float[] s(float[] fArr, float[] fArr2, float[] fArr3) {
        Q(fArr, fArr2);
        Q(fArr, fArr3);
        float[] fArr4 = {fArr3[0] / fArr2[0], fArr3[1] / fArr2[1], fArr3[2] / fArr2[2]};
        float[] fArrM = M(fArr);
        float f2 = fArr4[0];
        float f3 = fArr[0] * f2;
        float f4 = fArr4[1];
        float f5 = fArr[1] * f4;
        float f6 = fArr4[2];
        return P(fArrM, new float[]{f3, f5, fArr[2] * f6, fArr[3] * f2, fArr[4] * f4, fArr[5] * f6, f2 * fArr[6], f4 * fArr[7], f6 * fArr[8]});
    }

    public static gv3 u(long j, ag1 ag1Var) {
        long jD = a80.d(gg4.r, ag1Var);
        long jD2 = a80.d(gg4.f110u, ag1Var);
        long j2 = t70.e;
        long jD3 = a80.d(gg4.t, ag1Var);
        long jD4 = a80.d(gg4.B, ag1Var);
        long jD5 = a80.d(gg4.A, ag1Var);
        long jD6 = a80.d(gg4.D, ag1Var);
        long jB = t70.b(gg4.e, a80.d(gg4.d, ag1Var));
        is3 is3Var = wa2.a;
        long jQ = c75.q(jB, ((ua2) ag1Var.j(is3Var)).a.p);
        long jD7 = a80.d(gg4.h, ag1Var);
        float f2 = gg4.i;
        return new gv3(jD, jD2, j2, jD3, jD4, j, jD5, jD6, jQ, c75.q(t70.b(f2, jD7), ((ua2) ag1Var.j(is3Var)).a.p), j2, c75.q(t70.b(gg4.g, a80.d(gg4.f, ag1Var)), ((ua2) ag1Var.j(is3Var)).a.p), c75.q(t70.b(gg4.k, a80.d(gg4.j, ag1Var)), ((ua2) ag1Var.j(is3Var)).a.p), c75.q(t70.b(f2, a80.d(gg4.n, ag1Var)), ((ua2) ag1Var.j(is3Var)).a.p), c75.q(t70.b(f2, a80.d(gg4.o, ag1Var)), ((ua2) ag1Var.j(is3Var)).a.p), c75.q(t70.b(gg4.m, a80.d(gg4.l, ag1Var)), ((ua2) ag1Var.j(is3Var)).a.p));
    }

    public static final boolean v(cd4 cd4Var, cd4 cd4Var2) {
        if (cd4Var == cd4Var2) {
            return true;
        }
        return Math.abs(cd4Var.a - cd4Var2.a) < 0.001f && Math.abs(cd4Var.b - cd4Var2.b) < 0.001f;
    }

    public static final qi0 x(ag1 ag1Var) {
        return new p53(ag1Var.R);
    }

    public static final ve0 y(b80 b80Var, b80 b80Var2) {
        return b80Var == b80Var2 ? new te0(b80Var, b80Var, 1) : (k75.v(b80Var.b, 12884901888L) && k75.v(b80Var2.b, 12884901888L)) ? new ue0((w83) b80Var, (w83) b80Var2) : new ve0(b80Var, b80Var2, 0);
    }

    public abstract void j(float f2, long j, lb lbVar);

    public abstract void n();

    public abstract List t(String str, List list);

    public abstract void w(s80 s80Var, Set set);

    public abstract int z(s80 s80Var);
}
