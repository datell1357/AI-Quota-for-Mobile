package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import android.view.View;
import android.window.BackEvent;
import androidx.work.impl.WorkDatabase;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ht4 {
    public static m55 a;
    public static final ll3 b = ll3.p;
    public static final float c = 1.0f;
    public static final z70 d = z70.x;
    public static final f54 e = f54.p;
    public static final z70 f = z70.C;
    public static final ll3 g = ll3.n;
    public static final z70 h = z70.t;
    public static final f54 i = f54.o;
    public static final z70 j = z70.f434u;
    public static final f54 k = f54.n;
    public static final z70 l = z70.y;
    public static final yb m = new yb(6);
    public static final gi3[] n = new gi3[0];
    public static final jd3 o = new jd3(15);
    public static so1 p;
    public static so1 q;

    public static final boolean A(kg2 kg2Var, Object obj, Object obj2) {
        Object objG = kg2Var.g(obj);
        if (objG == null) {
            return false;
        }
        if (!(objG instanceof lg2)) {
            if (!objG.equals(obj2)) {
                return false;
            }
            kg2Var.k(obj);
            return true;
        }
        lg2 lg2Var = (lg2) objG;
        boolean zL = lg2Var.l(obj2);
        if (zL && lg2Var.g()) {
            kg2Var.k(obj);
        }
        return zL;
    }

    public static final void B(kg2 kg2Var, Object obj) {
        boolean zG;
        long[] jArr = kg2Var.a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        int i5 = (i2 << 3) + i4;
                        Object obj2 = kg2Var.b[i5];
                        Object obj3 = kg2Var.c[i5];
                        if (obj3 instanceof lg2) {
                            lg2 lg2Var = (lg2) obj3;
                            lg2Var.l(obj);
                            zG = lg2Var.g();
                        } else {
                            zG = obj3 == obj;
                        }
                        if (zG) {
                            kg2Var.l(i5);
                        }
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    public static final Object C(ka1 ka1Var, int i2, pe1 pe1Var) {
        int i3;
        int i4;
        Object objK;
        md2 md2VarG;
        zz1 zz1VarK0;
        int i5;
        bo boVar;
        if (!ka1Var.n.A) {
            ar1.b("visitAncestors called on an unattached node");
        }
        md2 md2Var = ka1Var.n.r;
        xy1 xy1VarR = w80.R(ka1Var);
        loop0: while (true) {
            i3 = 0;
            i4 = 1;
            objK = null;
            if (xy1VarR == null) {
                md2VarG = null;
                break;
            }
            if ((((md2) xy1VarR.S.g).q & 1024) != 0) {
                while (md2Var != null) {
                    if ((md2Var.p & 1024) != 0) {
                        md2VarG = md2Var;
                        ug2 ug2Var = null;
                        while (md2VarG != null) {
                            if (md2VarG instanceof ka1) {
                                break loop0;
                            }
                            if ((md2VarG.p & 1024) != 0 && (md2VarG instanceof kr0)) {
                                int i6 = 0;
                                for (md2 md2Var2 = ((kr0) md2VarG).C; md2Var2 != null; md2Var2 = md2Var2.s) {
                                    if ((md2Var2.p & 1024) != 0) {
                                        i6++;
                                        if (i6 == 1) {
                                            md2VarG = md2Var2;
                                        } else {
                                            if (ug2Var == null) {
                                                ug2Var = new ug2(new md2[16]);
                                            }
                                            if (md2VarG != null) {
                                                ug2Var.c(md2VarG);
                                                md2VarG = null;
                                            }
                                            ug2Var.c(md2Var2);
                                        }
                                    }
                                }
                                if (i6 == 1) {
                                }
                            }
                            md2VarG = w80.g(ug2Var);
                        }
                    }
                    md2Var = md2Var.r;
                }
            }
            xy1VarR = xy1VarR.u();
            md2Var = (xy1VarR == null || (boVar = xy1VarR.S) == null) ? null : (gw3) boVar.f;
        }
        ka1 ka1Var2 = (ka1) md2VarG;
        if ((ka1Var2 == null || !nt1.g(ka1Var2.K0(), ka1Var.K0())) && (zz1VarK0 = ka1Var.K0()) != null) {
            int i7 = 5;
            if (i2 != 5) {
                i7 = 6;
                if (i2 != 6) {
                    i7 = 3;
                    if (i2 != 3) {
                        i7 = 4;
                        if (i2 != 4) {
                            if (i2 == 1) {
                                i7 = 2;
                            } else if (i2 == 2) {
                                i7 = 1;
                            } else {
                                k21.n("Unsupported direction for beyond bounds layout");
                            }
                        }
                    }
                }
            }
            if (zz1VarK0.B.a.h().n <= 0 || zz1VarK0.B.a.h().k.isEmpty() || !zz1VarK0.A) {
                return pe1Var.k(zz1.E);
            }
            boolean zH0 = zz1VarK0.H0(i7);
            x02 x02Var = zz1VarK0.B;
            int iMin = zH0 ? Math.min(x02Var.a.h().n - 1, ((g12) o70.o0(x02Var.a.h().k)).a) : Math.max(0, x02Var.a.d());
            w33 w33Var = new w33();
            zx zxVar = zz1VarK0.C;
            zxVar.getClass();
            vz1 vz1Var = new vz1(iMin, iMin);
            zxVar.a.c(vz1Var);
            w33Var.n = vz1Var;
            n12 n12Var = zz1VarK0.B.a;
            if (n12Var.h().k.isEmpty()) {
                i4 = 0;
            } else {
                f12 f12VarH = n12Var.h();
                int i8 = (int) (f12VarH.o == hr2.n ? f12VarH.i() & 4294967295L : f12VarH.i() >> 32);
                int iO = bi4.O(n12Var.h());
                if (iO != 0 && (i5 = i8 / iO) >= 1) {
                    i4 = i5;
                }
            }
            int i9 = i4 * 2;
            int i10 = zz1VarK0.B.a.h().n;
            if (i9 > i10) {
                i9 = i10;
            }
            while (objK == null && zz1VarK0.G0((vz1) w33Var.n, i7) && i3 < i9) {
                vz1 vz1Var2 = (vz1) w33Var.n;
                int i11 = vz1Var2.a;
                int i12 = vz1Var2.b;
                if (zz1VarK0.H0(i7)) {
                    i12++;
                } else {
                    i11--;
                }
                zx zxVar2 = zz1VarK0.C;
                zxVar2.getClass();
                vz1 vz1Var3 = new vz1(i11, i12);
                zxVar2.a.c(vz1Var3);
                zz1VarK0.C.a.k((vz1) w33Var.n);
                w33Var.n = vz1Var3;
                i3++;
                w80.R(zz1VarK0).k();
                objK = pe1Var.k(new yz1(zz1VarK0, w33Var, i7));
            }
            zz1VarK0.C.a.k((vz1) w33Var.n);
            w80.R(zz1VarK0).k();
            return objK;
        }
        return null;
    }

    public static final void D(df1 df1Var, ag1 ag1Var, Object obj) {
        if (ag1Var.S || !nt1.g(ag1Var.K(), obj)) {
            ag1Var.g0(obj);
            ag1Var.b(df1Var, obj);
        }
    }

    public static final void E(TextPaint textPaint, float f2) {
        if (Float.isNaN(f2)) {
            return;
        }
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        textPaint.setAlpha(Math.round(f2 * 255.0f));
    }

    public static final void F(i50 i50Var, String str) {
        String string;
        String str2 = "in the polymorphic scope of '" + i50Var.c() + '\'';
        if (str == null) {
            string = "Class discriminator was missing and no default serializers were registered " + str2 + '.';
        } else {
            StringBuilder sbB = di0.B("Serializer for subclass '", str, "' is not found ", str2, ".\nCheck if class with serial name '");
            di0.E(sbB, str, "' exists and serializer is registered in a corresponding SerializersModule.\nTo be registered automatically, class '", str, "' has to be '@Serializable', and the base class '");
            sbB.append(i50Var.c());
            sbB.append("' has to be sealed and '@Serializable'.");
            string = sbB.toString();
        }
        throw new mi3(string);
    }

    public static final bk2 G(BackEvent backEvent) {
        float touchX = backEvent.getTouchX();
        float touchY = backEvent.getTouchY();
        return new bk2(backEvent.getSwipeEdge(), backEvent.getProgress(), touchX, touchY, Build.VERSION.SDK_INT >= 36 ? backEvent.getFrameTimeMillis() : 0L);
    }

    public static final n14 H(Boolean bool, ag1 ag1Var, int i2) {
        Object objK = ag1Var.K();
        bx3 bx3Var = rb0.a;
        if (objK == bx3Var) {
            objK = new n14(new qg2(bool), null, "AnimatedVisibility");
            ag1Var.g0(objK);
        }
        n14 n14Var = (n14) objK;
        n14Var.a(bool, ag1Var, (i2 & 14) | (i2 & 8) | 48);
        Object objK2 = ag1Var.K();
        if (objK2 == bx3Var) {
            objK2 = new p14(n14Var, 1);
            ag1Var.g0(objK2);
        }
        zf5.a(n14Var, (pe1) objK2, ag1Var);
        return n14Var;
    }

    public static final float a(long j2, long j3) {
        return Math.min(Float.intBitsToFloat((int) (j3 >> 32)) / Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j3 & 4294967295L)) / Float.intBitsToFloat((int) (j2 & 4294967295L)));
    }

    public static final void b(kg2 kg2Var, Object obj, Object obj2) {
        int iF = kg2Var.f(obj);
        boolean z = iF < 0;
        Object obj3 = z ? null : kg2Var.c[iF];
        if (obj3 != null) {
            if (obj3 instanceof lg2) {
                ((lg2) obj3).a(obj2);
            } else if (obj3 != obj2) {
                lg2 lg2Var = new lg2();
                lg2Var.a(obj3);
                lg2Var.a(obj2);
                obj2 = lg2Var;
            }
            obj2 = obj3;
        }
        if (!z) {
            kg2Var.c[iF] = obj2;
            return;
        }
        int i2 = ~iF;
        kg2Var.b[i2] = obj;
        kg2Var.c[i2] = obj2;
    }

    public static final Drawable c(ao1 ao1Var, Resources resources) {
        return ao1Var instanceof ox0 ? ((ox0) ao1Var).a : ao1Var instanceof kw ? new BitmapDrawable(resources, ((kw) ao1Var).a) : new j5(1, ao1Var);
    }

    public static final ao1 d(Drawable drawable) {
        return drawable instanceof BitmapDrawable ? new kw(((BitmapDrawable) drawable).getBitmap()) : new ox0(drawable);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005a -> B:21:0x005d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object e(defpackage.ev3 r7, defpackage.wv2 r8, defpackage.dr r9) {
        /*
            boolean r0 = r9 instanceof defpackage.sb1
            if (r0 == 0) goto L13
            r0 = r9
            sb1 r0 = (defpackage.sb1) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            sb1 r0 = new sb1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.s
            int r1 = r0.t
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L34
            if (r1 != r3) goto L2d
            wv2 r7 = r0.r
            ev3 r8 = r0.q
            defpackage.gg4.T(r9)
            r6 = r8
            r8 = r7
            r7 = r6
            goto L5d
        L2d:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r7)
            r7 = 0
            return r7
        L34:
            defpackage.gg4.T(r9)
            fv3 r9 = r7.s
            vv2 r9 = r9.F
            java.util.List r9 = r9.a
            int r1 = r9.size()
            r4 = r2
        L42:
            if (r4 >= r1) goto L79
            java.lang.Object r5 = r9.get(r4)
            zv2 r5 = (defpackage.zv2) r5
            boolean r5 = r5.d
            if (r5 == 0) goto L76
        L4e:
            r0.q = r7
            r0.r = r8
            r0.t = r3
            java.lang.Object r9 = r7.a(r8, r0)
            ri0 r1 = defpackage.ri0.n
            if (r9 != r1) goto L5d
            return r1
        L5d:
            vv2 r9 = (defpackage.vv2) r9
            java.util.List r9 = r9.a
            int r1 = r9.size()
            r4 = r2
        L66:
            if (r4 >= r1) goto L79
            java.lang.Object r5 = r9.get(r4)
            zv2 r5 = (defpackage.zv2) r5
            boolean r5 = r5.d
            if (r5 == 0) goto L73
            goto L4e
        L73:
            int r4 = r4 + 1
            goto L66
        L76:
            int r4 = r4 + 1
            goto L42
        L79:
            t64 r7 = defpackage.t64.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ht4.e(ev3, wv2, dr):java.lang.Object");
    }

    public static final Object f(dw2 dw2Var, df1 df1Var, dh0 dh0Var) {
        tb1 tb1Var = new tb1(dh0Var.e(), df1Var, null);
        fv3 fv3Var = (fv3) dw2Var;
        fv3Var.getClass();
        o20 o20Var = new o20(1, dm0.A(dh0Var));
        o20Var.x();
        ev3 ev3Var = new ev3(fv3Var, o20Var);
        synchronized (fv3Var.H) {
            fv3Var.G.c(ev3Var);
            new vb3(dm0.A(dm0.s(ev3Var, ev3Var, tb1Var))).g(t64.a);
        }
        o20Var.z(new c8(24, ev3Var));
        Object objV = o20Var.v();
        return objV == ri0.n ? objV : t64.a;
    }

    public static final Set g(gi3 gi3Var) {
        gi3Var.getClass();
        if (gi3Var instanceof c10) {
            return ((c10) gi3Var).g();
        }
        HashSet hashSet = new HashSet(gi3Var.d());
        int iD = gi3Var.d();
        for (int i2 = 0; i2 < iD; i2++) {
            hashSet.add(gi3Var.e(i2));
        }
        return hashSet;
    }

    public static final void h(eg4 eg4Var, String str) {
        hh4 hh4VarB;
        WorkDatabase workDatabase = eg4Var.c;
        workDatabase.getClass();
        qg4 qg4VarW = workDatabase.w();
        js0 js0VarR = workDatabase.r();
        ArrayList arrayListH = tv4.H(str);
        while (!arrayListH.isEmpty()) {
            String str2 = (String) o70.u0(arrayListH);
            cg4 cg4VarB = qg4VarW.b(str2);
            if (cg4VarB != cg4.p && cg4VarB != cg4.q) {
                ((Number) gg4.N(qg4VarW.a, false, true, new ao0(str2, 17))).intValue();
            }
            arrayListH.addAll(js0VarR.a(str2));
        }
        ez2 ez2Var = eg4Var.f;
        ez2Var.getClass();
        synchronized (ez2Var.k) {
            t72.g().c(ez2.l, "Processor cancelling " + str);
            ez2Var.i.add(str);
            hh4VarB = ez2Var.b(str);
        }
        ez2.d(str, hh4VarB, 1);
        Iterator it = eg4Var.e.iterator();
        while (it.hasNext()) {
            ((wd3) it.next()).a(str);
        }
    }

    public static void i(int i2, String str) {
        if (i2 >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i2);
    }

    public static final gi3[] j(List list) {
        gi3[] gi3VarArr;
        if (list == null || list.isEmpty()) {
            list = null;
        }
        return (list == null || (gi3VarArr = (gi3[]) list.toArray(new gi3[0])) == null) ? n : gi3VarArr;
    }

    public static kg2 k() {
        long[] jArr = td3.a;
        return new kg2();
    }

    public static i90 l(String str, String str2) {
        mo moVar = new mo(str, str2);
        h90 h90VarB = i90.b(mo.class);
        h90VarB.e = 1;
        h90VarB.f = new g90(0, moVar);
        return h90VarB.b();
    }

    public static final j14 m(n14 n14Var, e34 e34Var, String str, ag1 ag1Var, int i2, int i3) {
        i14 i14Var;
        if ((i3 & 2) != 0) {
            str = "DeferredAnimation";
        }
        boolean zF = ag1Var.f(n14Var);
        Object objK = ag1Var.K();
        Object obj = rb0.a;
        if (zF || objK == obj) {
            objK = new j14(n14Var, e34Var, str);
            ag1Var.g0(objK);
        }
        j14 j14Var = (j14) objK;
        boolean zF2 = ag1Var.f(n14Var) | ag1Var.h(j14Var);
        Object objK2 = ag1Var.K();
        if (zF2 || objK2 == obj) {
            objK2 = new q14(1, n14Var, j14Var);
            ag1Var.g0(objK2);
        }
        zf5.a(j14Var, (pe1) objK2, ag1Var);
        if (n14Var.g() && (i14Var = (i14) j14Var.b.getValue()) != null) {
            n14 n14Var2 = j14Var.c;
            i14Var.n.f(i14Var.p.k(n14Var2.f().b()), i14Var.p.k(n14Var2.f().c()), (z51) i14Var.o.k(n14Var2.f()));
        }
        return j14Var;
    }

    public static vb4 n(Class cls) throws InvocationTargetException {
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(null);
            if (!Modifier.isPublic(declaredConstructor.getModifiers())) {
                throw new RuntimeException("Cannot create an instance of " + cls);
            }
            try {
                Object objNewInstance = declaredConstructor.newInstance(null);
                objNewInstance.getClass();
                return (vb4) objNewInstance;
            } catch (IllegalAccessException e2) {
                q73.o("Cannot create an instance of ", cls, e2);
                return null;
            } catch (InstantiationException e3) {
                q73.o("Cannot create an instance of ", cls, e3);
                return null;
            }
        } catch (NoSuchMethodException e4) {
            q73.o("Cannot create an instance of ", cls, e4);
            return null;
        }
    }

    public static final Object o(lm0 lm0Var, df1 df1Var, dh0 dh0Var) {
        return lm0Var.a(new ox2(df1Var, null, 1), dh0Var);
    }

    public static final ji0 p(Executor executor) {
        return new k31(executor);
    }

    public static i90 q(String str, mk0 mk0Var) {
        h90 h90VarB = i90.b(mo.class);
        h90VarB.e = 1;
        h90VarB.a(fs0.b(Context.class));
        h90VarB.f = new rr(str, mk0Var, 6);
        return h90VarB.b();
    }

    public static final yc3 r(View view) {
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_saved_state_registry_owner);
            yc3 yc3Var = tag instanceof yc3 ? (yc3) tag : null;
            if (yc3Var != null) {
                return yc3Var;
            }
            Object objQ = fl4.q(view);
            view = objQ instanceof View ? (View) objQ : null;
        }
        return null;
    }

    public static final Rect s(TextPaint textPaint, CharSequence charSequence, int i2, int i3) {
        int i4 = i2;
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            if (spanned.nextSpanTransition(i4 - 1, i3, MetricAffectingSpan.class) != i3) {
                Rect rect = new Rect();
                Rect rect2 = new Rect();
                TextPaint textPaint2 = new TextPaint();
                while (i4 < i3) {
                    int iNextSpanTransition = spanned.nextSpanTransition(i4, i3, MetricAffectingSpan.class);
                    MetricAffectingSpan[] metricAffectingSpanArr = (MetricAffectingSpan[]) spanned.getSpans(i4, iNextSpanTransition, MetricAffectingSpan.class);
                    textPaint2.set(textPaint);
                    for (MetricAffectingSpan metricAffectingSpan : metricAffectingSpanArr) {
                        if (spanned.getSpanStart(metricAffectingSpan) != spanned.getSpanEnd(metricAffectingSpan)) {
                            metricAffectingSpan.updateMeasureState(textPaint2);
                        }
                    }
                    if (Build.VERSION.SDK_INT >= 29) {
                        textPaint2.getTextBounds(charSequence, i4, iNextSpanTransition, rect2);
                    } else {
                        textPaint2.getTextBounds(charSequence.toString(), i4, iNextSpanTransition, rect2);
                    }
                    rect.right = rect2.width() + rect.right;
                    rect.top = Math.min(rect.top, rect2.top);
                    rect.bottom = Math.max(rect.bottom, rect2.bottom);
                    i4 = iNextSpanTransition;
                }
                return rect;
            }
        }
        Rect rect3 = new Rect();
        if (Build.VERSION.SDK_INT >= 29) {
            textPaint.getTextBounds(charSequence, i4, i3, rect3);
            return rect3;
        }
        textPaint.getTextBounds(charSequence.toString(), i4, i3, rect3);
        return rect3;
    }

    public static final so1 t() {
        so1 so1Var = p;
        if (so1Var != null) {
            return so1Var;
        }
        ro1 ro1Var = new ro1("Outlined.DataUsage", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i2 = ea4.a;
        sp3 sp3Var = new sp3(t70.b);
        ct2 ct2Var = new ct2();
        ct2Var.h(13.0f, 2.05f);
        ct2Var.m(3.03f);
        ct2Var.c(3.39f, 0.49f, 6.0f, 3.39f, 6.0f, 6.92f);
        ct2Var.c(0.0f, 0.9f, -0.18f, 1.75f, -0.48f, 2.54f);
        ct2Var.g(2.6f, 1.53f);
        ct2Var.c(0.56f, -1.24f, 0.88f, -2.62f, 0.88f, -4.07f);
        ct2Var.c(0.0f, -5.18f, -3.95f, -9.45f, -9.0f, -9.95f);
        ct2Var.a();
        ct2Var.h(12.0f, 19.0f);
        ct2Var.c(-3.87f, 0.0f, -7.0f, -3.13f, -7.0f, -7.0f);
        ct2Var.c(0.0f, -3.53f, 2.61f, -6.43f, 6.0f, -6.92f);
        ct2Var.l(2.05f);
        ct2Var.c(-5.06f, 0.5f, -9.0f, 4.76f, -9.0f, 9.95f);
        ct2Var.c(0.0f, 5.52f, 4.47f, 10.0f, 9.99f, 10.0f);
        ct2Var.c(3.31f, 0.0f, 6.24f, -1.61f, 8.06f, -4.09f);
        ct2Var.g(-2.6f, -1.53f);
        ct2Var.b(16.17f, 17.98f, 14.21f, 19.0f, 12.0f, 19.0f);
        ct2Var.a();
        ro1.a(ro1Var, ct2Var.n, sp3Var);
        so1 so1VarB = ro1Var.b();
        p = so1VarB;
        return so1VarB;
    }

    public static final so1 u() {
        so1 so1Var = q;
        if (so1Var != null) {
            return so1Var;
        }
        ro1 ro1Var = new ro1("Filled.Share", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i2 = ea4.a;
        sp3 sp3Var = new sp3(t70.b);
        ct2 ct2Var = new ct2();
        ct2Var.h(18.0f, 16.08f);
        ct2Var.c(-0.76f, 0.0f, -1.44f, 0.3f, -1.96f, 0.77f);
        ct2Var.f(8.91f, 12.7f);
        ct2Var.c(0.05f, -0.23f, 0.09f, -0.46f, 0.09f, -0.7f);
        ct2Var.j(-0.04f, -0.47f, -0.09f, -0.7f);
        ct2Var.g(7.05f, -4.11f);
        ct2Var.c(0.54f, 0.5f, 1.25f, 0.81f, 2.04f, 0.81f);
        ct2Var.c(1.66f, 0.0f, 3.0f, -1.34f, 3.0f, -3.0f);
        ct2Var.j(-1.34f, -3.0f, -3.0f, -3.0f);
        ct2Var.j(-3.0f, 1.34f, -3.0f, 3.0f);
        ct2Var.c(0.0f, 0.24f, 0.04f, 0.47f, 0.09f, 0.7f);
        ct2Var.f(8.04f, 9.81f);
        ct2Var.b(7.5f, 9.31f, 6.79f, 9.0f, 6.0f, 9.0f);
        ct2Var.c(-1.66f, 0.0f, -3.0f, 1.34f, -3.0f, 3.0f);
        ct2Var.j(1.34f, 3.0f, 3.0f, 3.0f);
        ct2Var.c(0.79f, 0.0f, 1.5f, -0.31f, 2.04f, -0.81f);
        ct2Var.g(7.12f, 4.16f);
        ct2Var.c(-0.05f, 0.21f, -0.08f, 0.43f, -0.08f, 0.65f);
        ct2Var.c(0.0f, 1.61f, 1.31f, 2.92f, 2.92f, 2.92f);
        ct2Var.c(1.61f, 0.0f, 2.92f, -1.31f, 2.92f, -2.92f);
        ct2Var.j(-1.31f, -2.92f, -2.92f, -2.92f);
        ct2Var.a();
        ro1.a(ro1Var, ct2Var.n, sp3Var);
        so1 so1VarB = ro1Var.b();
        q = so1VarB;
        return so1VarB;
    }

    public static boolean v(CharSequence charSequence) {
        if (charSequence == null) {
            return true;
        }
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (!Character.isWhitespace(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static String w(String str, Object... objArr) {
        String string;
        int iIndexOf;
        String strValueOf = String.valueOf(str);
        int i2 = 0;
        if (objArr == null) {
            objArr = new Object[]{"(Object[])null"};
        } else {
            for (int i3 = 0; i3 < objArr.length; i3++) {
                Object obj = objArr[i3];
                if (obj == null) {
                    string = "null";
                } else {
                    try {
                        string = obj.toString();
                    } catch (Exception e2) {
                        String str2 = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
                        Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for ".concat(str2), (Throwable) e2);
                        StringBuilder sbA = di0.A("<", str2, " threw ");
                        sbA.append(e2.getClass().getName());
                        sbA.append(">");
                        string = sbA.toString();
                    }
                }
                objArr[i3] = string;
            }
        }
        StringBuilder sb = new StringBuilder((objArr.length * 16) + strValueOf.length());
        int i4 = 0;
        while (i2 < objArr.length && (iIndexOf = strValueOf.indexOf("%s", i4)) != -1) {
            sb.append((CharSequence) strValueOf, i4, iIndexOf);
            sb.append(objArr[i2]);
            i4 = iIndexOf + 2;
            i2++;
        }
        sb.append((CharSequence) strValueOf, i4, strValueOf.length());
        if (i2 < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i2]);
            for (int i5 = i2 + 1; i5 < objArr.length; i5++) {
                sb.append(", ");
                sb.append(objArr[i5]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static yc2 x(MappedByteBuffer mappedByteBuffer) throws IOException {
        long j2;
        ByteBuffer byteBufferDuplicate = mappedByteBuffer.duplicate();
        byteBufferDuplicate.order(ByteOrder.BIG_ENDIAN);
        byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
        int i2 = byteBufferDuplicate.getShort() & 65535;
        if (i2 > 100) {
            p61.k("Cannot read metadata.");
            return null;
        }
        byteBufferDuplicate.position(byteBufferDuplicate.position() + 6);
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                j2 = -1;
                break;
            }
            int i4 = byteBufferDuplicate.getInt();
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
            j2 = ((long) byteBufferDuplicate.getInt()) & 4294967295L;
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
            if (1835365473 == i4) {
                break;
            }
            i3++;
        }
        if (j2 != -1) {
            byteBufferDuplicate.position(byteBufferDuplicate.position() + ((int) (j2 - ((long) byteBufferDuplicate.position()))));
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 12);
            long j3 = ((long) byteBufferDuplicate.getInt()) & 4294967295L;
            for (int i5 = 0; i5 < j3; i5++) {
                int i6 = byteBufferDuplicate.getInt();
                long j4 = ((long) byteBufferDuplicate.getInt()) & 4294967295L;
                byteBufferDuplicate.getInt();
                if (1164798569 == i6 || 1701669481 == i6) {
                    byteBufferDuplicate.position((int) (j4 + j2));
                    yc2 yc2Var = new yc2();
                    byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
                    int iPosition = byteBufferDuplicate.position() + byteBufferDuplicate.getInt(byteBufferDuplicate.position());
                    yc2Var.q = byteBufferDuplicate;
                    yc2Var.n = iPosition;
                    int i7 = iPosition - byteBufferDuplicate.getInt(iPosition);
                    yc2Var.o = i7;
                    yc2Var.p = ((ByteBuffer) yc2Var.q).getShort(i7);
                    return yc2Var;
                }
            }
        }
        p61.k("Cannot read metadata.");
        return null;
    }

    public static final void y(ag1 ag1Var, pe1 pe1Var) {
        ag1Var.b(new sp0(22, pe1Var), t64.a);
    }

    public static final n14 z(ib0 ib0Var, String str, ag1 ag1Var, int i2) {
        int i3 = (i2 & 14) ^ 6;
        int i4 = 0;
        boolean z = i3 > 4 && ag1Var.f(ib0Var);
        Object objK = ag1Var.K();
        Object obj = rb0.a;
        dh0 dh0Var = null;
        if (z || objK == obj) {
            po3 po3VarX = k75.x();
            pe1 pe1VarE = po3VarX != null ? po3VarX.e() : null;
            po3 po3VarE = k75.E(po3VarX);
            try {
                Object n14Var = new n14(ib0Var, null, str);
                k75.L(po3VarX, po3VarE, pe1VarE);
                ag1Var.g0(n14Var);
                objK = n14Var;
            } catch (Throwable th) {
                k75.L(po3VarX, po3VarE, pe1VarE);
                throw th;
            }
        }
        n14 n14Var2 = (n14) objK;
        if (ib0Var instanceof pg3) {
            ag1Var.W(-1357341561);
            Object objK2 = ag1Var.K();
            if (objK2 == obj) {
                objK2 = zf5.x(ag1Var);
                ag1Var.g0(objK2);
            }
            Object obj2 = (qi0) objK2;
            boolean zH = ag1Var.h(obj2) | (i3 > 4 && ag1Var.f(ib0Var));
            Object objK3 = ag1Var.K();
            if (zH || objK3 == obj) {
                objK3 = new m(29, ib0Var, obj2);
                ag1Var.g0(objK3);
            }
            zf5.a(obj2, (pe1) objK3, ag1Var);
            pg3 pg3Var = (pg3) ib0Var;
            Object value = pg3Var.c.getValue();
            Object value2 = pg3Var.b.getValue();
            boolean z2 = i3 > 4 && ag1Var.f(ib0Var);
            Object objK4 = ag1Var.K();
            if (z2 || objK4 == obj) {
                objK4 = new p(ib0Var, dh0Var, 28);
                ag1Var.g0(objK4);
            }
            zf5.d(value, value2, (df1) objK4, ag1Var);
            ag1Var.p(false);
        } else {
            ag1Var.W(-1356348972);
            n14Var2.a(ib0Var.m(), ag1Var, 0);
            ag1Var.p(false);
        }
        boolean zF = ag1Var.f(n14Var2);
        Object objK5 = ag1Var.K();
        if (zF || objK5 == obj) {
            objK5 = new p14(n14Var2, i4);
            ag1Var.g0(objK5);
        }
        zf5.a(n14Var2, (pe1) objK5, ag1Var);
        return n14Var2;
    }
}
