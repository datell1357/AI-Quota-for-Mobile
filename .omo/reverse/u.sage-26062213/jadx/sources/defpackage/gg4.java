package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import com.google.android.gms.common.ConnectionResult;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlinx.serialization.json.internal.a;
import kotlinx.serialization.json.internal.b;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class gg4 {
    public static final z70 A;
    public static final z70 B;
    public static final float C;
    public static final z70 D;
    public static final float E = 24.0f;
    public static final float F = 24.0f;
    public static so1 G;
    public static final ri0 a = ri0.n;
    public static final Type[] b = new Type[0];
    public static final StackTraceElement[] c = new StackTraceElement[0];
    public static final z70 d = z70.A;
    public static final float e = 1.0f;
    public static final z70 f;
    public static final float g;
    public static final z70 h;
    public static final float i;
    public static final z70 j;
    public static final float k;
    public static final z70 l;
    public static final float m;
    public static final z70 n;
    public static final z70 o;
    public static final ll3 p;
    public static final float q;
    public static final z70 r;
    public static final float s;
    public static final z70 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final z70 f110u;
    public static final float v;
    public static final float w;
    public static final float x;
    public static final ll3 y;
    public static final float z;

    static {
        z70 z70Var = z70.t;
        f = z70Var;
        g = 0.38f;
        h = z70Var;
        i = 0.12f;
        j = z70Var;
        k = 0.38f;
        z70 z70Var2 = z70.D;
        l = z70Var2;
        m = 0.38f;
        n = z70Var2;
        o = z70Var;
        ll3 ll3Var = ll3.p;
        p = ll3Var;
        q = 28.0f;
        r = z70.q;
        s = 24.0f;
        t = z70.r;
        f110u = z70.x;
        v = 40.0f;
        w = 32.0f;
        x = 2.0f;
        y = ll3Var;
        z = 52.0f;
        z70 z70Var3 = z70.v;
        A = z70Var3;
        B = z70Var3;
        C = 16.0f;
        D = z70Var2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x006b, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0026, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final defpackage.ka1 A(defpackage.ka1 r8) {
        /*
            md2 r0 = r8.n
            boolean r0 = r0.A
            r1 = 0
            if (r0 != 0) goto L9
            goto Laa
        L9:
            if (r0 != 0) goto L10
            java.lang.String r0 = "visitChildren called on an unattached node"
            defpackage.ar1.b(r0)
        L10:
            ug2 r0 = new ug2
            r2 = 16
            md2[] r3 = new defpackage.md2[r2]
            r0.<init>(r3)
            md2 r8 = r8.n
            md2 r3 = r8.s
            if (r3 != 0) goto L23
            defpackage.w80.c(r0, r8)
            goto L26
        L23:
            r0.c(r3)
        L26:
            int r8 = r0.p
            if (r8 == 0) goto Laa
            int r8 = r8 + (-1)
            java.lang.Object r8 = r0.l(r8)
            md2 r8 = (defpackage.md2) r8
            int r3 = r8.q
            r3 = r3 & 1024(0x400, float:1.435E-42)
            if (r3 != 0) goto L3c
            defpackage.w80.c(r0, r8)
            goto L26
        L3c:
            if (r8 == 0) goto L26
            int r3 = r8.p
            r3 = r3 & 1024(0x400, float:1.435E-42)
            if (r3 == 0) goto La7
            r3 = r1
        L45:
            if (r8 == 0) goto L26
            boolean r4 = r8 instanceof defpackage.ka1
            r5 = 1
            if (r4 == 0) goto L6c
            ka1 r8 = (defpackage.ka1) r8
            md2 r4 = r8.n
            boolean r4 = r4.A
            if (r4 == 0) goto La2
            fa1 r4 = r8.L0()
            int r4 = r4.ordinal()
            if (r4 == 0) goto L6b
            if (r4 == r5) goto L6b
            r5 = 2
            if (r4 == r5) goto L6b
            r8 = 3
            if (r4 != r8) goto L67
            goto La2
        L67:
            defpackage.p61.x()
            return r1
        L6b:
            return r8
        L6c:
            int r4 = r8.p
            r4 = r4 & 1024(0x400, float:1.435E-42)
            if (r4 == 0) goto La2
            boolean r4 = r8 instanceof defpackage.kr0
            if (r4 == 0) goto La2
            r4 = r8
            kr0 r4 = (defpackage.kr0) r4
            md2 r4 = r4.C
            r6 = 0
        L7c:
            if (r4 == 0) goto L9f
            int r7 = r4.p
            r7 = r7 & 1024(0x400, float:1.435E-42)
            if (r7 == 0) goto L9c
            int r6 = r6 + 1
            if (r6 != r5) goto L8a
            r8 = r4
            goto L9c
        L8a:
            if (r3 != 0) goto L93
            ug2 r3 = new ug2
            md2[] r7 = new defpackage.md2[r2]
            r3.<init>(r7)
        L93:
            if (r8 == 0) goto L99
            r3.c(r8)
            r8 = r1
        L99:
            r3.c(r4)
        L9c:
            md2 r4 = r4.s
            goto L7c
        L9f:
            if (r6 != r5) goto La2
            goto L45
        La2:
            md2 r8 = defpackage.w80.g(r3)
            goto L45
        La7:
            md2 r8 = r8.s
            goto L3c
        Laa:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gg4.A(ka1):ka1");
    }

    public static final int B(pb1 pb1Var, int i2) {
        boolean z2 = nt1.l(pb1Var.n, pb1.o.n) >= 0;
        boolean z3 = i2 == 1;
        if (z3 && z2) {
            return 3;
        }
        if (z2) {
            return 1;
        }
        return z3 ? 2 : 0;
    }

    public static i3 C(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return new i3(sf.d(view));
        }
        return null;
    }

    public static final hi0 D(ga3 ga3Var, fh0 fh0Var) {
        if (!ga3Var.j()) {
            bh0 bh0Var = ga3Var.a;
            if (bh0Var != null) {
                return bh0Var.n;
            }
            nt1.X("coroutineScope");
            throw null;
        }
        if (fh0Var.e().K(b14.n) != null) {
            mk0.b();
            return null;
        }
        bh0 bh0Var2 = ga3Var.a;
        if (bh0Var2 != null) {
            return bh0Var2.n;
        }
        nt1.X("coroutineScope");
        throw null;
    }

    public static Type E(Type type, Class cls, Class cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i2 = 0; i2 < length; i2++) {
                Class<?> cls3 = interfaces[i2];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i2];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return E(cls.getGenericInterfaces()[i2], interfaces[i2], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<?> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return E(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static Class F(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return (Class) ((ParameterizedType) type).getRawType();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance((Class<?>) F(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return F(((WildcardType) type).getUpperBounds()[0]);
        }
        mk0.i("Expected a Class, ParameterizedType, or GenericArrayType, but <", type, "> is of type ", type == null ? "null" : type.getClass().getName());
        return null;
    }

    public static final so1 G() {
        so1 so1Var = G;
        if (so1Var != null) {
            return so1Var;
        }
        ro1 ro1Var = new ro1("Filled.Settings", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i2 = ea4.a;
        sp3 sp3Var = new sp3(t70.b);
        ct2 ct2Var = new ct2();
        ct2Var.h(19.14f, 12.94f);
        ct2Var.c(0.04f, -0.3f, 0.06f, -0.61f, 0.06f, -0.94f);
        ct2Var.c(0.0f, -0.32f, -0.02f, -0.64f, -0.07f, -0.94f);
        ct2Var.g(2.03f, -1.58f);
        ct2Var.c(0.18f, -0.14f, 0.23f, -0.41f, 0.12f, -0.61f);
        ct2Var.g(-1.92f, -3.32f);
        ct2Var.c(-0.12f, -0.22f, -0.37f, -0.29f, -0.59f, -0.22f);
        ct2Var.g(-2.39f, 0.96f);
        ct2Var.c(-0.5f, -0.38f, -1.03f, -0.7f, -1.62f, -0.94f);
        ct2Var.f(14.4f, 2.81f);
        ct2Var.c(-0.04f, -0.24f, -0.24f, -0.41f, -0.48f, -0.41f);
        ct2Var.e(-3.84f);
        ct2Var.c(-0.24f, 0.0f, -0.43f, 0.17f, -0.47f, 0.41f);
        ct2Var.f(9.25f, 5.35f);
        ct2Var.b(8.66f, 5.59f, 8.12f, 5.92f, 7.63f, 6.29f);
        ct2Var.f(5.24f, 5.33f);
        ct2Var.c(-0.22f, -0.08f, -0.47f, 0.0f, -0.59f, 0.22f);
        ct2Var.f(2.74f, 8.87f);
        ct2Var.b(2.62f, 9.08f, 2.66f, 9.34f, 2.86f, 9.48f);
        ct2Var.g(2.03f, 1.58f);
        ct2Var.b(4.84f, 11.36f, 4.8f, 11.69f, 4.8f, 12.0f);
        ct2Var.j(0.02f, 0.64f, 0.07f, 0.94f);
        ct2Var.g(-2.03f, 1.58f);
        ct2Var.c(-0.18f, 0.14f, -0.23f, 0.41f, -0.12f, 0.61f);
        ct2Var.g(1.92f, 3.32f);
        ct2Var.c(0.12f, 0.22f, 0.37f, 0.29f, 0.59f, 0.22f);
        ct2Var.g(2.39f, -0.96f);
        ct2Var.c(0.5f, 0.38f, 1.03f, 0.7f, 1.62f, 0.94f);
        ct2Var.g(0.36f, 2.54f);
        ct2Var.c(0.05f, 0.24f, 0.24f, 0.41f, 0.48f, 0.41f);
        ct2Var.e(3.84f);
        ct2Var.c(0.24f, 0.0f, 0.44f, -0.17f, 0.47f, -0.41f);
        ct2Var.g(0.36f, -2.54f);
        ct2Var.c(0.59f, -0.24f, 1.13f, -0.56f, 1.62f, -0.94f);
        ct2Var.g(2.39f, 0.96f);
        ct2Var.c(0.22f, 0.08f, 0.47f, 0.0f, 0.59f, -0.22f);
        ct2Var.g(1.92f, -3.32f);
        ct2Var.c(0.12f, -0.22f, 0.07f, -0.47f, -0.12f, -0.61f);
        ct2Var.f(19.14f, 12.94f);
        ct2Var.a();
        ct2Var.h(12.0f, 15.6f);
        ct2Var.c(-1.98f, 0.0f, -3.6f, -1.62f, -3.6f, -3.6f);
        ct2Var.j(1.62f, -3.6f, 3.6f, -3.6f);
        ct2Var.j(3.6f, 1.62f, 3.6f, 3.6f);
        ct2Var.i(13.98f, 15.6f, 12.0f, 15.6f);
        ct2Var.a();
        ro1.a(ro1Var, ct2Var.n, sp3Var);
        so1 so1VarB = ro1Var.b();
        G = so1VarB;
        return so1VarB;
    }

    public static Type H(Type type, Class cls, Class cls2) {
        if (type instanceof WildcardType) {
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        if (cls2.isAssignableFrom(cls)) {
            return R(type, cls, E(type, cls, cls2), new HashMap());
        }
        throw new IllegalArgumentException(cls + " is not the same as or a subtype of " + cls2);
    }

    public static final boolean I(ka1 ka1Var) {
        xy1 xy1Var;
        mm2 mm2Var;
        xy1 xy1Var2;
        mm2 mm2Var2 = ka1Var.f206u;
        return (mm2Var2 == null || (xy1Var = mm2Var2.F) == null || !xy1Var.I() || (mm2Var = ka1Var.f206u) == null || (xy1Var2 = mm2Var.F) == null || !xy1Var2.H()) ? false : true;
    }

    public static final boolean J(float[] fArr) {
        return fArr.length >= 16 && fArr[0] == 1.0f && fArr[1] == 0.0f && fArr[2] == 0.0f && fArr[3] == 0.0f && fArr[4] == 0.0f && fArr[5] == 1.0f && fArr[6] == 0.0f && fArr[7] == 0.0f && fArr[8] == 0.0f && fArr[9] == 0.0f && fArr[10] == 1.0f && fArr[11] == 0.0f && fArr[12] == 0.0f && fArr[13] == 0.0f && fArr[14] == 0.0f && fArr[15] == 1.0f;
    }

    public static final boolean K(int i2, int i3, long j2) {
        int iJ = mf0.j(j2);
        if (i2 > mf0.h(j2) || iJ > i2) {
            return false;
        }
        return i3 <= mf0.g(j2) && mf0.i(j2) <= i3;
    }

    public static final jj2 L(pe1 pe1Var) {
        kj2 kj2Var = new kj2();
        pe1Var.k(kj2Var);
        boolean z2 = kj2Var.b;
        boolean z3 = kj2Var.c;
        String str = kj2Var.e;
        ij2 ij2Var = kj2Var.a;
        if (str != null) {
            boolean z4 = kj2Var.f;
            boolean z5 = kj2Var.g;
            ij2Var.b = str;
            ij2Var.a = -1;
            ij2Var.c = z4;
            ij2Var.d = z5;
        } else {
            int i2 = kj2Var.d;
            boolean z6 = kj2Var.f;
            boolean z7 = kj2Var.g;
            ij2Var.a = i2;
            ij2Var.b = null;
            ij2Var.c = z6;
            ij2Var.d = z7;
        }
        String str2 = ij2Var.b;
        if (str2 == null) {
            return new jj2(z2, z3, ij2Var.a, ij2Var.c, ij2Var.d, ij2Var.e, ij2Var.f);
        }
        boolean z8 = ij2Var.c;
        boolean z9 = ij2Var.d;
        int i3 = ij2Var.e;
        int i4 = ij2Var.f;
        int i5 = qi2.r;
        jj2 jj2Var = new jj2(z2, z3, "android-app://androidx.navigation/".concat(str2).hashCode(), z8, z9, i3, i4);
        jj2Var.h = str2;
        return jj2Var;
    }

    public static String M(String str) {
        char cCharAt;
        if (str == null) {
            return null;
        }
        int length = str.length();
        int i2 = 0;
        while (length > 0 && ((cCharAt = str.charAt(i2)) < 'A' || cCharAt > 'Z')) {
            i2++;
            length--;
        }
        if (length <= 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        sb.append((CharSequence) str, 0, i2);
        while (length > 0) {
            char cCharAt2 = str.charAt(i2);
            if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                sb.append(cCharAt2);
            } else {
                sb.append((char) (cCharAt2 + ' '));
            }
            i2++;
            length--;
        }
        return sb.toString();
    }

    public static final Object N(ga3 ga3Var, boolean z2, boolean z3, pe1 pe1Var) {
        ga3Var.getClass();
        ga3Var.a();
        if (!ga3Var.j() || ga3Var.k() || ga3Var.h.get() == null) {
            return ca.J(new ll0(null, pe1Var, ga3Var, z2, z3));
        }
        k21.n("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object O(defpackage.ga3 r7, boolean r8, defpackage.ba4 r9, defpackage.fh0 r10) throws java.lang.Throwable {
        /*
            boolean r0 = r10 instanceof defpackage.nl0
            if (r0 == 0) goto L13
            r0 = r10
            nl0 r0 = (defpackage.nl0) r0
            int r1 = r0.f224u
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f224u = r1
            goto L18
        L13:
            nl0 r0 = new nl0
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.t
            int r1 = r0.f224u
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            ri0 r6 = defpackage.ri0.n
            if (r1 == 0) goto L42
            if (r1 == r5) goto L3e
            if (r1 == r4) goto L34
            if (r1 != r3) goto L2e
            T(r10)
            return r10
        L2e:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r7)
            return r2
        L34:
            boolean r8 = r0.s
            ba4 r9 = r0.r
            ga3 r7 = r0.q
            T(r10)
            goto L75
        L3e:
            T(r10)
            return r10
        L42:
            T(r10)
            boolean r10 = r7.j()
            if (r10 == 0) goto L66
            boolean r10 = r7.m()
            if (r10 == 0) goto L66
            boolean r10 = r7.k()
            if (r10 == 0) goto L66
            ol0 r10 = new ol0
            r10.<init>(r2, r9, r7, r8)
            r0.f224u = r5
            java.lang.Object r7 = r7.q(r8, r10, r0)
            if (r7 != r6) goto L65
            goto L88
        L65:
            return r7
        L66:
            r0.q = r7
            r0.r = r9
            r0.s = r8
            r0.f224u = r4
            hi0 r10 = D(r7, r0)
            if (r10 != r6) goto L75
            goto L88
        L75:
            hi0 r10 = (defpackage.hi0) r10
            ml0 r1 = new ml0
            r1.<init>(r2, r9, r7, r8)
            r0.q = r2
            r0.r = r2
            r0.f224u = r3
            java.lang.Object r7 = defpackage.ca.O(r10, r1, r0)
            if (r7 != r6) goto L89
        L88:
            return r6
        L89:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gg4.O(ga3, boolean, ba4, fh0):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x013f A[EDGE_INSN: B:86:0x013f->B:80:0x013f BREAK  A[LOOP:0: B:3:0x0002->B:89:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:? A[LOOP:0: B:3:0x0002->B:89:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r12v10, types: [java.lang.Object, java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v17, types: [java.lang.reflect.Type[]] */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r12v3, types: [ti1] */
    /* JADX WARN: Type inference failed for: r12v4, types: [ti1] */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.lang.reflect.ParameterizedType] */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.lang.reflect.GenericArrayType] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Type R(java.lang.reflect.Type r10, java.lang.Class r11, java.lang.reflect.Type r12, java.util.HashMap r13) {
        /*
            Method dump skipped, instruction units count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gg4.R(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type, java.util.HashMap):java.lang.reflect.Type");
    }

    public static final Object S(me3 me3Var, boolean z2, me3 me3Var2, df1 df1Var) {
        Object c90Var;
        Object objW;
        try {
            if (df1Var instanceof dr) {
                n44.R(2, df1Var);
                c90Var = df1Var.f(me3Var2, me3Var);
            } else {
                c90Var = dm0.O(df1Var, me3Var2, me3Var);
            }
        } catch (ru0 e2) {
            Throwable th = e2.n;
            me3Var.U(new c90(th, false));
            throw th;
        } catch (Throwable th2) {
            c90Var = new c90(th2, false);
        }
        ri0 ri0Var = ri0.n;
        if (c90Var == ri0Var || (objW = me3Var.W(c90Var)) == cv1.b) {
            return ri0Var;
        }
        me3Var.t0();
        if (!(objW instanceof c90)) {
            return cv1.a(objW);
        }
        if (!z2) {
            Throwable th3 = ((c90) objW).a;
            if ((th3 instanceof nz3) && ((nz3) th3).n == me3Var) {
                if (c90Var instanceof c90) {
                    throw ((c90) c90Var).a;
                }
                return c90Var;
            }
        }
        throw ((c90) objW).a;
    }

    public static final void T(Object obj) {
        if (obj instanceof f83) {
            throw ((f83) obj).n;
        }
    }

    public static String U(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(defpackage.j03 r11, defpackage.df1 r12, defpackage.ag1 r13, int r14) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gg4.a(j03, df1, ag1, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(defpackage.j03[] r8, defpackage.df1 r9, defpackage.ag1 r10, int r11) {
        /*
            r0 = 415205898(0x18bf8a0a, float:4.9511727E-24)
            r10.X(r0)
            ss1 r0 = r10.x
            hu2 r1 = r10.l()
            r2 = 201(0xc9, float:2.82E-43)
            pp2 r3 = defpackage.wb0.b
            r10.T(r2, r3)
            boolean r2 = r10.S
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L27
            hu2 r2 = defpackage.hu2.q
            hu2 r2 = defpackage.bi4.N(r8, r1, r2)
            hu2 r1 = r10.f0(r1, r2)
            r10.J = r3
        L25:
            r2 = r4
            goto L72
        L27:
            tn3 r2 = r10.G
            int r5 = r2.g
            java.lang.Object r2 = r2.h(r5, r4)
            r2.getClass()
            hu2 r2 = (defpackage.hu2) r2
            tn3 r5 = r10.G
            int r6 = r5.g
            java.lang.Object r5 = r5.h(r6, r3)
            r5.getClass()
            hu2 r5 = (defpackage.hu2) r5
            hu2 r6 = defpackage.bi4.N(r8, r1, r5)
            boolean r7 = r10.z()
            if (r7 == 0) goto L63
            boolean r7 = r10.y
            if (r7 != 0) goto L63
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L56
            goto L63
        L56:
            int r1 = r10.l
            tn3 r5 = r10.G
            int r5 = r5.s()
            int r5 = r5 + r1
            r10.l = r5
            r1 = r2
            goto L25
        L63:
            hu2 r1 = r10.f0(r1, r6)
            boolean r5 = r10.y
            if (r5 != 0) goto L71
            boolean r2 = defpackage.nt1.g(r1, r2)
            if (r2 != 0) goto L25
        L71:
            r2 = r3
        L72:
            if (r2 == 0) goto L7b
            boolean r5 = r10.S
            if (r5 != 0) goto L7b
            r10.I(r1)
        L7b:
            boolean r5 = r10.w
            r0.c(r5)
            r10.w = r2
            r10.K = r1
            r2 = 202(0xca, float:2.83E-43)
            pp2 r5 = defpackage.wb0.c
            r10.R(r2, r4, r5, r1)
            int r1 = r11 >> 3
            r1 = r1 & 14
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r9.f(r10, r1)
            r10.p(r4)
            r10.p(r4)
            int r0 = r0.b()
            if (r0 == 0) goto La3
            goto La4
        La3:
            r3 = r4
        La4:
            r10.w = r3
            r0 = 0
            r10.K = r0
            c33 r10 = r10.r()
            if (r10 == 0) goto Lb7
            ia0 r0 = new ia0
            r1 = 2
            r0.<init>(r11, r1, r8, r9)
            r10.d = r0
        Lb7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gg4.b(j03[], df1, ag1, int):void");
    }

    public static gb c(int i2, int i3, int i4) {
        Bitmap bitmapCreateBitmap;
        w83 w83Var = e80.e;
        Bitmap.Config configJ = bi4.J(i4);
        if (Build.VERSION.SDK_INT >= 26) {
            bitmapCreateBitmap = Bitmap.createBitmap((DisplayMetrics) null, i2, i3, bi4.J(i4), true, sf.a(w83Var));
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap((DisplayMetrics) null, i2, i3, configJ);
            bitmapCreateBitmap.setHasAlpha(true);
        }
        return new gb(bitmapCreateBitmap);
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01d4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x025b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0380 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:250:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0463  */
    /* JADX WARN: Removed duplicated region for block: B:282:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void d(defpackage.nd2 r38, defpackage.n12 r39, final defpackage.ds2 r40, final boolean r41, final defpackage.to0 r42, final boolean r43, final defpackage.wa r44, defpackage.aw r45, defpackage.sh r46, defpackage.bw r47, defpackage.qh r48, final defpackage.pe1 r49, defpackage.ag1 r50, final int r51, final int r52, final int r53) {
        /*
            Method dump skipped, instruction units count: 1156
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gg4.d(nd2, n12, ds2, boolean, to0, boolean, wa, aw, sh, bw, qh, pe1, ag1, int, int, int):void");
    }

    public static final void e(b bVar) {
        bVar.getClass();
        if ((bVar instanceof b ? bVar : null) != null) {
            return;
        }
        p61.w(y33.a(bVar.getClass()), "This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got ");
    }

    public static final a f(vn0 vn0Var) {
        vn0Var.getClass();
        a aVar = vn0Var instanceof a ? (a) vn0Var : null;
        if (aVar != null) {
            return aVar;
        }
        p61.w(y33.a(vn0Var.getClass()), "This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got ");
        return null;
    }

    public static final nd2 g() {
        return new ki();
    }

    public static void h(long j2, sy syVar, int i2, ArrayList arrayList, int i3, int i4, ArrayList arrayList2) {
        int i5;
        int i6;
        ArrayList arrayList3;
        long j3;
        int i7;
        int i8 = i2;
        ArrayList arrayList4 = arrayList;
        ArrayList arrayList5 = arrayList2;
        if (i3 >= i4) {
            k21.f("Failed requirement.");
            return;
        }
        for (int i9 = i3; i9 < i4; i9++) {
            if (((g00) arrayList4.get(i9)).c() < i8) {
                k21.f("Failed requirement.");
                return;
            }
        }
        g00 g00Var = (g00) arrayList.get(i3);
        g00 g00Var2 = (g00) arrayList4.get(i4 - 1);
        if (i8 == g00Var.c()) {
            int iIntValue = ((Number) arrayList5.get(i3)).intValue();
            int i10 = i3 + 1;
            g00 g00Var3 = (g00) arrayList4.get(i10);
            i5 = i10;
            i6 = iIntValue;
            g00Var = g00Var3;
        } else {
            i5 = i3;
            i6 = -1;
        }
        if (g00Var.h(i8) == g00Var2.h(i8)) {
            int iMin = Math.min(g00Var.c(), g00Var2.c());
            int i11 = 0;
            for (int i12 = i8; i12 < iMin && g00Var.h(i12) == g00Var2.h(i12); i12++) {
                i11++;
            }
            long j4 = (syVar.o / 4) + j2 + 2 + ((long) i11) + 1;
            syVar.r0(-i11);
            syVar.r0(i6);
            int i13 = i8 + i11;
            while (i8 < i13) {
                syVar.r0(g00Var.h(i8) & 255);
                i8++;
            }
            if (i5 + 1 == i4) {
                if (i13 == ((g00) arrayList4.get(i5)).c()) {
                    syVar.r0(((Number) arrayList5.get(i5)).intValue());
                    return;
                } else {
                    k21.n("Check failed.");
                    return;
                }
            }
            sy syVar2 = new sy();
            syVar.r0(((int) ((syVar2.o / 4) + j4)) * (-1));
            h(j4, syVar2, i13, arrayList4, i5, i4, arrayList5);
            syVar.n0(syVar2);
            return;
        }
        int i14 = 1;
        for (int i15 = i5 + 1; i15 < i4; i15++) {
            if (((g00) arrayList4.get(i15 - 1)).h(i8) != ((g00) arrayList4.get(i15)).h(i8)) {
                i14++;
            }
        }
        long j5 = (syVar.o / 4) + j2 + 2 + ((long) (i14 * 2));
        syVar.r0(i14);
        syVar.r0(i6);
        for (int i16 = i5; i16 < i4; i16++) {
            int iH = ((g00) arrayList4.get(i16)).h(i8);
            if (i16 == i5 || iH != ((g00) arrayList4.get(i16 - 1)).h(i8)) {
                syVar.r0(iH & 255);
            }
        }
        sy syVar3 = new sy();
        int i17 = i5;
        while (i17 < i4) {
            byte bH = ((g00) arrayList4.get(i17)).h(i8);
            int i18 = i17 + 1;
            int i19 = i18;
            while (true) {
                if (i19 >= i4) {
                    i19 = i4;
                    break;
                } else if (bH != ((g00) arrayList4.get(i19)).h(i8)) {
                    break;
                } else {
                    i19++;
                }
            }
            if (i18 == i19 && i8 + 1 == ((g00) arrayList4.get(i17)).c()) {
                syVar.r0(((Number) arrayList5.get(i17)).intValue());
                arrayList3 = arrayList5;
                j3 = j5;
                i7 = i19;
            } else {
                syVar.r0(((int) ((syVar3.o / 4) + j5)) * (-1));
                arrayList3 = arrayList5;
                j3 = j5;
                i7 = i19;
                h(j3, syVar3, i8 + 1, arrayList, i17, i7, arrayList3);
                arrayList4 = arrayList;
            }
            j5 = j3;
            i17 = i7;
            arrayList5 = arrayList3;
        }
        syVar.n0(syVar3);
    }

    public static Type i(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new ri1(i(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new si1(parameterizedType.getOwnerType(), (Class) parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return new ri1(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new ti1(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static void m(Object obj, String str) {
        if (obj != null) {
            return;
        }
        q73.r(str);
    }

    public static void n(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            k21.f("Primitive type is not allowed");
        }
    }

    public static Object o(Object obj) throws CloneNotSupportedException {
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof Cloneable)) {
            throw new CloneNotSupportedException();
        }
        try {
            try {
                return obj.getClass().getMethod("clone", null).invoke(obj, null);
            } catch (IllegalAccessException e2) {
                throw new IllegalAccessError(e2.getMessage());
            } catch (InvocationTargetException e3) {
                Throwable cause = e3.getCause();
                if (cause instanceof CloneNotSupportedException) {
                    throw ((CloneNotSupportedException) cause);
                }
                throw new Error("Unexpected exception", cause);
            }
        } catch (NoSuchMethodException e4) {
            throw new NoSuchMethodError(e4.getMessage());
        }
    }

    public static StaticLayout p(CharSequence charSequence, TextPaint textPaint, int i2, int i3, TextDirectionHeuristic textDirectionHeuristic, Layout.Alignment alignment, int i4, TextUtils.TruncateAt truncateAt, int i5, int i6, boolean z2, int i7, int i8, int i9, int i10) {
        if (i3 < 0) {
            br1.a("invalid start value");
        }
        int length = charSequence.length();
        if (i3 < 0 || i3 > length) {
            br1.a("invalid end value");
        }
        if (i4 < 0) {
            br1.a("invalid maxLines value");
        }
        if (i2 < 0) {
            br1.a("invalid width value");
        }
        if (i5 < 0) {
            br1.a("invalid ellipsizedWidth value");
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequence, 0, i3, textPaint, i2);
        builderObtain.setTextDirection(textDirectionHeuristic);
        builderObtain.setAlignment(alignment);
        builderObtain.setMaxLines(i4);
        builderObtain.setEllipsize(truncateAt);
        builderObtain.setEllipsizedWidth(i5);
        builderObtain.setLineSpacing(0.0f, 1.0f);
        builderObtain.setIncludePad(z2);
        builderObtain.setBreakStrategy(i7);
        builderObtain.setHyphenationFrequency(i10);
        builderObtain.setIndents(null, null);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 26) {
            builderObtain.setJustificationMode(i6);
        }
        if (i11 >= 28) {
            builderObtain.setUseLineSpacingFromFallbacks(true);
        }
        if (i11 >= 33) {
            builderObtain.setLineBreakConfig(c3.a().setLineBreakStyle(i8).setLineBreakWordStyle(i9).build());
        }
        if (i11 >= 35) {
            builderObtain.setUseBoundsForWidth(false);
        }
        return builderObtain.build();
    }

    public static final f83 q(Throwable th) {
        th.getClass();
        return new f83(th);
    }

    public static final eg4 r(Context context, md0 md0Var) {
        ea3 ea3Var;
        String name;
        dz0 dz0VarE;
        mu3 mu3Var;
        boolean zContainsKey;
        boolean z2;
        context.getClass();
        qd1 qd1Var = new qd1(md0Var.c);
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        ji3 ji3Var = (ji3) qd1Var.o;
        ji3Var.getClass();
        pr3 pr3Var = md0Var.d;
        boolean z3 = context.getResources().getBoolean(R.bool.workmanager_test_configuration);
        pr3Var.getClass();
        if (z3) {
            ea3Var = new ea3(applicationContext, null);
            ea3Var.i = true;
        } else {
            if (zs3.I0("androidx.work.workdb")) {
                k21.f("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
                return null;
            }
            ea3 ea3Var2 = new ea3(applicationContext, "androidx.work.workdb");
            ea3Var2.h = new r6(19, applicationContext);
            ea3Var = ea3Var2;
        }
        ea3Var.f = ji3Var;
        z50 z50Var = new z50(pr3Var);
        ArrayList arrayList = ea3Var.d;
        arrayList.add(z50Var);
        ea3Var.a(bd2.h);
        ea3Var.a(new h73(applicationContext, 2, 3));
        ea3Var.a(bd2.i);
        ea3Var.a(bd2.j);
        ea3Var.a(new h73(applicationContext, 5, 6));
        ea3Var.a(bd2.k);
        ea3Var.a(bd2.l);
        ea3Var.a(bd2.m);
        ea3Var.a(new h73(applicationContext));
        ea3Var.a(new h73(applicationContext, 10, 11));
        ea3Var.a(bd2.d);
        ea3Var.a(bd2.e);
        ea3Var.a(bd2.f);
        ea3Var.a(bd2.g);
        ea3Var.a(new h73(applicationContext, 21, 22));
        ea3Var.p = false;
        ea3Var.q = true;
        ea3Var.r = true;
        Executor executor = ea3Var.f;
        if (executor == null && ea3Var.g == null) {
            mh mhVar = nh.R;
            ea3Var.g = mhVar;
            ea3Var.f = mhVar;
        } else if (executor != null && ea3Var.g == null) {
            ea3Var.g = executor;
        } else if (executor == null) {
            ea3Var.f = ea3Var.g;
        }
        LinkedHashSet linkedHashSet = ea3Var.n;
        linkedHashSet.getClass();
        LinkedHashSet linkedHashSet2 = ea3Var.m;
        linkedHashSet2.getClass();
        if (!linkedHashSet.isEmpty()) {
            Iterator it = linkedHashSet.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Number) it.next()).intValue();
                if (linkedHashSet2.contains(Integer.valueOf(iIntValue))) {
                    k21.l(di0.q(iIntValue, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "));
                    return null;
                }
            }
        }
        lu3 b21Var = ea3Var.h;
        if (b21Var == null) {
            b21Var = new b21(4);
        }
        lu3 lu3Var = b21Var;
        if (ea3Var.k > 0) {
            if (ea3Var.c != null) {
                k21.f("Required value was null.");
                return null;
            }
            k21.f("Cannot create auto-closing database for an in-memory database.");
            return null;
        }
        boolean z4 = ea3Var.i;
        fa3 fa3Var = ea3Var.j;
        fa3Var.getClass();
        Context context2 = ea3Var.b;
        context2.getClass();
        if (fa3Var == fa3.n) {
            Object systemService = context2.getSystemService("activity");
            ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
            fa3Var = (activityManager == null || activityManager.isLowRamDevice()) ? fa3.o : fa3.p;
        }
        Executor executor2 = ea3Var.f;
        if (executor2 == null) {
            k21.f("Required value was null.");
            return null;
        }
        Executor executor3 = ea3Var.g;
        if (executor3 == null) {
            k21.f("Required value was null.");
            return null;
        }
        boolean z5 = false;
        in0 in0Var = new in0(context2, ea3Var.c, lu3Var, ea3Var.l, arrayList, z4, fa3Var, executor2, executor3, null, ea3Var.p, ea3Var.q, linkedHashSet2, null, null, null, ea3Var.e, ea3Var.o, ea3Var.r, null, null);
        in0Var.q = ea3Var.s;
        Class clsX = on4.x(ea3Var.a);
        Package r0 = clsX.getPackage();
        if (r0 == null || (name = r0.getName()) == null) {
            name = "";
        }
        String canonicalName = clsX.getCanonicalName();
        canonicalName.getClass();
        if (name.length() != 0) {
            canonicalName = canonicalName.substring(name.length() + 1);
        }
        String strReplace = canonicalName.replace('.', '_');
        strReplace.getClass();
        String strConcat = strReplace.concat("_Impl");
        try {
            Class<?> cls = Class.forName(name.length() == 0 ? strConcat : name + '.' + strConcat, true, clsX.getClassLoader());
            cls.getClass();
            ga3 ga3Var = (ga3) cls.getDeclaredConstructor(null).newInstance(null);
            ga3Var.getClass();
            ga3Var.j = in0Var.q;
            try {
                dz0VarE = ga3Var.e();
                dz0VarE.getClass();
            } catch (an2 unused) {
                dz0VarE = null;
            }
            if (dz0VarE == null) {
                new da3(in0Var, new z82(ga3Var));
                throw null;
            }
            ga3Var.d = new da3(in0Var, dz0VarE);
            ga3Var.e = ga3Var.d();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Set setH = ga3Var.h();
            int size = setH.size();
            boolean[] zArr = new boolean[size];
            Iterator it2 = setH.iterator();
            while (true) {
                boolean zHasNext = it2.hasNext();
                int i2 = -1;
                List list = in0Var.n;
                if (zHasNext) {
                    i50 i50Var = (i50) it2.next();
                    int size2 = list.size() - 1;
                    boolean z6 = z5;
                    if (size2 >= 0) {
                        while (true) {
                            int i3 = size2 - 1;
                            z2 = z6;
                            if (i50Var.d(list.get(size2))) {
                                zArr[size2] = true;
                                i2 = size2;
                                break;
                            }
                            if (i3 < 0) {
                                break;
                            }
                            size2 = i3;
                            z6 = z2;
                        }
                    } else {
                        z2 = z5;
                    }
                    if (i2 < 0) {
                        p61.h(i50Var.b(), ") is missing in the database configuration.", "A required auto migration spec (");
                        return null;
                    }
                    linkedHashMap.put(i50Var, list.get(i2));
                    z5 = z2;
                } else {
                    boolean z7 = z5;
                    int size3 = list.size() - 1;
                    if (size3 >= 0) {
                        while (true) {
                            int i4 = size3 - 1;
                            if (size3 >= size || !zArr[size3]) {
                                break;
                            }
                            if (i4 < 0) {
                                break;
                            }
                            size3 = i4;
                        }
                        k21.f("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                        return null;
                    }
                    for (ad2 ad2Var : ga3Var.c(linkedHashMap)) {
                        int i5 = ad2Var.a;
                        int i6 = ad2Var.b;
                        vq1 vq1Var = in0Var.d;
                        LinkedHashMap linkedHashMap2 = vq1Var.a;
                        if (linkedHashMap2.containsKey(Integer.valueOf(i5))) {
                            Map map = (Map) linkedHashMap2.get(Integer.valueOf(i5));
                            if (map == null) {
                                map = h01.n;
                            }
                            zContainsKey = map.containsKey(Integer.valueOf(i6));
                        } else {
                            zContainsKey = z7 ? 1 : 0;
                        }
                        if (!zContainsKey) {
                            vq1Var.b(ad2Var);
                        }
                    }
                    LinkedHashMap linkedHashMapI = ga3Var.i();
                    boolean[] zArr2 = new boolean[linkedHashMapI.size()];
                    Iterator it3 = linkedHashMapI.entrySet().iterator();
                    while (true) {
                        boolean zHasNext2 = it3.hasNext();
                        List list2 = in0Var.m;
                        if (!zHasNext2) {
                            int size4 = list2.size() - 1;
                            if (size4 >= 0) {
                                while (true) {
                                    int i7 = size4 - 1;
                                    if (!zArr2[size4]) {
                                        throw new IllegalArgumentException("Unexpected type converter " + list2.get(size4) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
                                    }
                                    if (i7 < 0) {
                                        break;
                                    }
                                    size4 = i7;
                                }
                            }
                            ga3Var.b = in0Var.h;
                            ga3Var.c = new ji3(in0Var.i, 1);
                            Executor executor4 = ga3Var.b;
                            if (executor4 == null) {
                                nt1.X("internalQueryExecutor");
                                throw null;
                            }
                            bh0 bh0VarC = dm0.c(ca.B(ht4.p(executor4), k30.f()));
                            ga3Var.a = bh0VarC;
                            hi0 hi0Var = bh0VarC.n;
                            ji3 ji3Var2 = ga3Var.c;
                            if (ji3Var2 == null) {
                                nt1.X("internalTransactionExecutor");
                                throw null;
                            }
                            hi0Var.F(ht4.p(ji3Var2));
                            ga3Var.g = in0Var.f;
                            da3 da3Var = ga3Var.d;
                            if (da3Var == null) {
                                nt1.X("connectionManager");
                                throw null;
                            }
                            mu3 mu3VarC = da3Var.c();
                            if (mu3VarC == null) {
                                mu3VarC = null;
                                break;
                            }
                            while (!(mu3VarC instanceof bx2)) {
                                if (!(mu3VarC instanceof lr0)) {
                                    mu3VarC = null;
                                    break;
                                }
                                mu3VarC = ((lr0) mu3VarC).b();
                            }
                            da3 da3Var2 = ga3Var.d;
                            if (da3Var2 == null) {
                                nt1.X("connectionManager");
                                throw null;
                            }
                            mu3 mu3VarC2 = da3Var2.c();
                            if (mu3VarC2 == null) {
                                mu3Var = null;
                                break;
                            }
                            while (!(mu3VarC2 instanceof qk)) {
                                if (!(mu3VarC2 instanceof lr0)) {
                                    mu3Var = null;
                                    break;
                                }
                                mu3VarC2 = ((lr0) mu3VarC2).b();
                            }
                            mu3Var = mu3VarC2;
                            WorkDatabase workDatabase = (WorkDatabase) ga3Var;
                            Context applicationContext2 = context.getApplicationContext();
                            applicationContext2.getClass();
                            rp rpVar = new rp(applicationContext2, qd1Var);
                            ez2 ez2Var = new ez2(context.getApplicationContext(), md0Var, qd1Var, workDatabase);
                            int i8 = fg4.f98u;
                            String str = zd3.a;
                            aw3 aw3Var = new aw3(context, workDatabase, md0Var);
                            vr2.a(context, SystemJobService.class, true);
                            t72.g().c(zd3.a, "Created SystemJobScheduler and enabled SystemJobService");
                            ki1 ki1Var = new ki1(context, md0Var, rpVar, ez2Var, new pc4(ez2Var, qd1Var), qd1Var);
                            wd3[] wd3VarArr = new wd3[2];
                            wd3VarArr[z7 ? 1 : 0] = aw3Var;
                            wd3VarArr[1] = ki1Var;
                            return new eg4(context.getApplicationContext(), md0Var, qd1Var, workDatabase, tv4.F(wd3VarArr), ez2Var, rpVar);
                        }
                        Map.Entry entry = (Map.Entry) it3.next();
                        i50 i50Var2 = (i50) entry.getKey();
                        for (i50 i50Var3 : (List) entry.getValue()) {
                            int size5 = list2.size() - 1;
                            if (size5 >= 0) {
                                while (true) {
                                    int i9 = size5 - 1;
                                    if (i50Var3.d(list2.get(size5))) {
                                        zArr2[size5] = true;
                                        break;
                                    }
                                    if (i9 < 0) {
                                        break;
                                    }
                                    size5 = i9;
                                }
                                size5 = -1;
                            } else {
                                size5 = -1;
                            }
                            if (size5 < 0) {
                                throw new IllegalArgumentException(("A required type converter (" + i50Var3.b() + ") for " + i50Var2.b() + " is missing in the database configuration.").toString());
                            }
                            Object obj = list2.get(size5);
                            i50Var3.getClass();
                            obj.getClass();
                            ga3Var.i.put(i50Var3, obj);
                        }
                    }
                }
            }
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("Cannot find implementation for " + clsX.getCanonicalName() + ". " + strConcat + " does not exist. Is Room annotation processor correctly configured?", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Cannot access the constructor " + clsX.getCanonicalName(), e3);
        } catch (InstantiationException e4) {
            throw new RuntimeException("Failed to create an instance of " + clsX.getCanonicalName(), e4);
        }
    }

    public static boolean s(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            return Objects.equals(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return s(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return Objects.equals(typeVariable.getGenericDeclaration(), typeVariable2.getGenericDeclaration()) && typeVariable.getName().equals(typeVariable2.getName());
    }

    public static String t(f00 f00Var) {
        StringBuilder sb = new StringBuilder(f00Var.size());
        for (int i2 = 0; i2 < f00Var.size(); i2++) {
            byte bA = f00Var.a(i2);
            if (bA == 34) {
                sb.append("\\\"");
            } else if (bA == 39) {
                sb.append("\\'");
            } else if (bA != 92) {
                switch (bA) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case ConnectionResult.SERVICE_INVALID /* 9 */:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bA < 32 || bA > 126) {
                            sb.append('\\');
                            sb.append((char) (((bA >>> 6) & 3) + 48));
                            sb.append((char) (((bA >>> 3) & 7) + 48));
                            sb.append((char) ((bA & 7) + 48));
                        } else {
                            sb.append((char) bA);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static final ka1 u(ka1 ka1Var) {
        ka1 ka1VarF = ((dh) ((q9) w80.S(ka1Var)).getFocusOwner()).f();
        if (ka1VarF == null || !ka1VarF.A) {
            return null;
        }
        return ka1VarF;
    }

    public static final l33 v(ka1 ka1Var) {
        mm2 mm2Var;
        if (ka1Var.A && (mm2Var = ka1Var.f206u) != null) {
            gy1 gy1VarD = zf5.D(mm2Var);
            if (!gy1VarD.B()) {
                gy1VarD = null;
            }
            if (gy1VarD != null) {
                return ka1Var.J0(gy1VarD);
            }
        }
        return l33.e;
    }

    public static final Object w(Context context, Class cls) {
        context.getClass();
        return bi4.u(k30.t(context.getApplicationContext()), cls);
    }

    public static String z(List list) {
        list.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            p84 p84Var = (p84) obj;
            if (p84Var.b() != null && p84Var.b().longValue() > jCurrentTimeMillis) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(p70.a0(arrayList, 10));
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj2 = arrayList.get(i2);
            i2++;
            p84 p84Var2 = (p84) obj2;
            boolean z2 = p84Var2.e() >= 90.0d;
            arrayList2.add(p84Var2.d() + "_" + p84Var2.b() + "_" + z2);
        }
        List listX0 = o70.x0(arrayList2);
        if (listX0.isEmpty()) {
            return null;
        }
        return o70.n0(listX0, ",", null, null, null, 62);
    }

    public abstract void P(a1 a1Var, a1 a1Var2);

    public abstract void Q(a1 a1Var, Thread thread);

    public abstract boolean j(s0 s0Var, p0 p0Var, p0 p0Var2);

    public abstract boolean k(b1 b1Var, Object obj, Object obj2);

    public abstract boolean l(b1 b1Var, a1 a1Var, a1 a1Var2);

    public abstract p0 x(s0 s0Var);

    public abstract a1 y(s0 s0Var);
}
