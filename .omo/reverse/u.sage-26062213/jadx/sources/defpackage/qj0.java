package defpackage;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.text.InputFilter;
import android.util.Log;
import android.util.Size;
import android.util.SizeF;
import android.view.View;
import android.widget.Toast;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParserException;
import u.sage.R;
import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class qj0 {
    public static final ka0 a = new ka0(-1548712596, false, new lq(9));
    public static final z70 b = z70.D;
    public static final ll3 c = ll3.q;
    public static final z70 d = z70.E;
    public static final float e = 0.38f;
    public static final float f = 6.0f;
    public static final float g = 1.0f;
    public static final Object h = new Object();
    public static volatile qo3 i;
    public static volatile qo3 j;
    public static so1 k;

    public static final Object A(a81 a81Var, df1 df1Var, bv3 bv3Var) {
        int i2 = u81.a;
        Object objB = u(new w30(new t81(df1Var, null, 0), a81Var, d01.n, -2, vy.n), 0).b(ym2.n, bv3Var);
        t64 t64Var = t64.a;
        ri0 ri0Var = ri0.n;
        if (objB != ri0Var) {
            objB = t64Var;
        }
        return objB == ri0Var ? objB : t64Var;
    }

    public static final int B(pb3 pb3Var, String str) {
        pb3Var.getClass();
        int columnCount = pb3Var.getColumnCount();
        int i2 = 0;
        while (true) {
            if (i2 >= columnCount) {
                i2 = -1;
                break;
            }
            if (str.equals(pb3Var.getColumnName(i2))) {
                break;
            }
            i2++;
        }
        if (i2 >= 0) {
            return i2;
        }
        String str2 = "`" + str + '`';
        int columnCount2 = pb3Var.getColumnCount();
        int i3 = 0;
        while (true) {
            if (i3 >= columnCount2) {
                i3 = -1;
                break;
            }
            if (str2.equals(pb3Var.getColumnName(i3))) {
                break;
            }
            i3++;
        }
        if (i3 >= 0) {
            return i3;
        }
        if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
            int columnCount3 = pb3Var.getColumnCount();
            String strConcat = ".".concat(str);
            String str3 = "." + str + '`';
            for (int i4 = 0; i4 < columnCount3; i4++) {
                String columnName = pb3Var.getColumnName(i4);
                if (columnName.length() >= str.length() + 2 && (gt3.r0(columnName, strConcat, false) || (columnName.charAt(0) == '`' && gt3.r0(columnName, str3, false)))) {
                    return i4;
                }
            }
        }
        return -1;
    }

    public static void C(Object obj, String str, String str2) {
        String strM = M(str);
        if (Log.isLoggable(strM, 3)) {
            Log.d(strM, String.format(str2, obj));
        }
    }

    public static final a81 D(a81 a81Var) {
        if (a81Var instanceof ur3) {
            return a81Var;
        }
        ei0 ei0Var = nt1.c;
        if (a81Var instanceof ov0) {
            ov0 ov0Var = (ov0) a81Var;
            if (ov0Var.o == ei0Var) {
                return ov0Var;
            }
        }
        return new ov0(a81Var, ei0Var);
    }

    public static void E(String str, String str2, Exception exc) {
        String strM = M(str);
        if (Log.isLoggable(strM, 6)) {
            Log.e(strM, str2, exc);
        }
    }

    public static final boolean F(char c2, char c3, boolean z) {
        if (c2 == c3) {
            return true;
        }
        if (!z) {
            return false;
        }
        char upperCase = Character.toUpperCase(c2);
        char upperCase2 = Character.toUpperCase(c3);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static final boolean G(long j2, long j3) {
        return j2 == j3;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object H(defpackage.a81 r7, defpackage.dh0 r8) {
        /*
            boolean r0 = r8 instanceof defpackage.x81
            if (r0 == 0) goto L13
            r0 = r8
            x81 r0 = (defpackage.x81) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            x81 r0 = new x81
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.s
            int r1 = r0.t
            r2 = 0
            sg0 r3 = defpackage.jn2.a
            r4 = 1
            if (r1 == 0) goto L34
            if (r1 != r4) goto L2e
            v81 r7 = r0.r
            w33 r1 = r0.q
            defpackage.gg4.T(r8)     // Catch: defpackage.d -> L2c
            goto L63
        L2c:
            r8 = move-exception
            goto L57
        L2e:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r7)
            return r2
        L34:
            defpackage.gg4.T(r8)
            w33 r1 = new w33
            r1.<init>()
            r1.n = r3
            v81 r8 = new v81
            r5 = 0
            r8.<init>(r5, r1)
            r0.q = r1     // Catch: defpackage.d -> L53
            r0.r = r8     // Catch: defpackage.d -> L53
            r0.t = r4     // Catch: defpackage.d -> L53
            java.lang.Object r7 = r7.b(r8, r0)     // Catch: defpackage.d -> L53
            ri0 r8 = defpackage.ri0.n
            if (r7 != r8) goto L63
            return r8
        L53:
            r7 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
        L57:
            java.lang.Object r4 = r8.n
            if (r4 != r7) goto L6e
            hi0 r7 = r0.o
            r7.getClass()
            defpackage.n44.k0(r7)
        L63:
            java.lang.Object r7 = r1.n
            if (r7 == r3) goto L68
            return r7
        L68:
            java.lang.String r7 = "Expected at least one element"
            defpackage.q73.l(r7)
            return r2
        L6e:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qj0.H(a81, dh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object I(defpackage.a81 r6, defpackage.df1 r7, defpackage.fh0 r8) {
        /*
            boolean r0 = r8 instanceof defpackage.y81
            if (r0 == 0) goto L13
            r0 = r8
            y81 r0 = (defpackage.y81) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            y81 r0 = new y81
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.s
            int r1 = r0.t
            r2 = 0
            sg0 r3 = defpackage.jn2.a
            r4 = 1
            if (r1 == 0) goto L34
            if (r1 != r4) goto L2e
            uq r6 = r0.r
            w33 r7 = r0.q
            defpackage.gg4.T(r8)     // Catch: defpackage.d -> L2c
            goto L65
        L2c:
            r8 = move-exception
            goto L59
        L2e:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            return r2
        L34:
            defpackage.gg4.T(r8)
            w33 r8 = new w33
            r8.<init>()
            r8.n = r3
            uq r1 = new uq
            r5 = 5
            r1.<init>(r5, r7, r8)
            r0.q = r8     // Catch: defpackage.d -> L55
            r0.r = r1     // Catch: defpackage.d -> L55
            r0.t = r4     // Catch: defpackage.d -> L55
            java.lang.Object r6 = r6.b(r1, r0)     // Catch: defpackage.d -> L55
            ri0 r7 = defpackage.ri0.n
            if (r6 != r7) goto L53
            return r7
        L53:
            r7 = r8
            goto L65
        L55:
            r6 = move-exception
            r7 = r8
            r8 = r6
            r6 = r1
        L59:
            java.lang.Object r1 = r8.n
            if (r1 != r6) goto L70
            hi0 r6 = r0.o
            r6.getClass()
            defpackage.n44.k0(r6)
        L65:
            java.lang.Object r6 = r7.n
            if (r6 == r3) goto L6a
            return r6
        L6a:
            java.lang.String r6 = "Expected at least one element matching the predicate"
            defpackage.q73.l(r6)
            return r2
        L70:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qj0.I(a81, df1, fh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object J(defpackage.a81 r5, defpackage.fh0 r6) {
        /*
            boolean r0 = r6 instanceof defpackage.z81
            if (r0 == 0) goto L13
            r0 = r6
            z81 r0 = (defpackage.z81) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            z81 r0 = new z81
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.s
            int r1 = r0.t
            r2 = 1
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2b
            v81 r5 = r0.r
            w33 r1 = r0.q
            defpackage.gg4.T(r6)     // Catch: defpackage.d -> L29
            goto L5e
        L29:
            r6 = move-exception
            goto L52
        L2b:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r5)
            r5 = 0
            return r5
        L32:
            defpackage.gg4.T(r6)
            w33 r1 = new w33
            r1.<init>()
            v81 r6 = new v81
            r6.<init>(r2, r1)
            r0.q = r1     // Catch: defpackage.d -> L4e
            r0.r = r6     // Catch: defpackage.d -> L4e
            r0.t = r2     // Catch: defpackage.d -> L4e
            java.lang.Object r5 = r5.b(r6, r0)     // Catch: defpackage.d -> L4e
            ri0 r6 = defpackage.ri0.n
            if (r5 != r6) goto L5e
            return r6
        L4e:
            r5 = move-exception
            r4 = r6
            r6 = r5
            r5 = r4
        L52:
            java.lang.Object r2 = r6.n
            if (r2 != r5) goto L61
            hi0 r5 = r0.o
            r5.getClass()
            defpackage.n44.k0(r5)
        L5e:
            java.lang.Object r5 = r1.n
            return r5
        L61:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qj0.J(a81, fh0):java.lang.Object");
    }

    public static final int K(pb3 pb3Var, String str) {
        pb3Var.getClass();
        int iB = B(pb3Var, str);
        if (iB >= 0) {
            return iB;
        }
        int columnCount = pb3Var.getColumnCount();
        ArrayList arrayList = new ArrayList(columnCount);
        for (int i2 = 0; i2 < columnCount; i2++) {
            arrayList.add(pb3Var.getColumnName(i2));
        }
        k21.h("Column '", str, "' does not exist. Available columns: [", o70.n0(arrayList, null, null, null, null, 63), 93);
        return 0;
    }

    public static String M(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return "TRuntime.".concat(str);
        }
        String strConcat = "TRuntime.".concat(str);
        return strConcat.length() > 23 ? strConcat.substring(0, 23) : strConcat;
    }

    public static final void N(hi0 hi0Var, Throwable th) {
        if (th instanceof ru0) {
            th = ((ru0) th).n;
        }
        try {
            ki0 ki0Var = (ki0) hi0Var.K(w13.t);
            if (ki0Var != null) {
                ki0Var.L(hi0Var, th);
            } else {
                se0.u(hi0Var, th);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                on4.j(runtimeException, th);
                th = runtimeException;
            }
            se0.u(hi0Var, th);
        }
    }

    public static boolean O(vv2 vv2Var, boolean z) {
        List list = vv2Var.a;
        int size = list.size();
        int i2 = 0;
        while (true) {
            boolean zD = true;
            if (i2 >= size) {
                return true;
            }
            zv2 zv2Var = (zv2) list.get(i2);
            if (!z) {
                zD = se0.d(zv2Var);
            } else if (zv2Var.c() || zv2Var.h || !zv2Var.d) {
                zD = false;
            }
            if (!zD) {
                return false;
            }
            i2++;
        }
    }

    public static boolean P(char c2) {
        return Character.isWhitespace(c2) || Character.isSpaceChar(c2);
    }

    public static int Q(int i2, int i3, int i4) throws IOException {
        if ((i3 & 8) != 0) {
            i2--;
        }
        if (i4 <= i2) {
            return i2 - i4;
        }
        p61.k(di0.p(i4, i2, "PROTOCOL_ERROR padding ", " > remaining length "));
        return 0;
    }

    public static final nd2 R(tk2 tk2Var) {
        return new uk2(tk2Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object S(defpackage.dq3 r4, defpackage.fh0 r5) {
        /*
            boolean r0 = r5 instanceof defpackage.l94
            if (r0 == 0) goto L13
            r0 = r5
            l94 r0 = (defpackage.l94) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            l94 r0 = new l94
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.s
            int r1 = r0.t
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2c
            sy r4 = r0.r
            dq3 r0 = r0.q
            defpackage.gg4.T(r5)     // Catch: java.lang.Throwable -> L2a
            goto L4e
        L2a:
            r4 = move-exception
            goto L57
        L2c:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            return r3
        L32:
            defpackage.gg4.T(r5)
            sy r5 = new sy     // Catch: java.lang.Throwable -> L55
            r5.<init>()     // Catch: java.lang.Throwable -> L55
            r0.q = r4     // Catch: java.lang.Throwable -> L55
            r0.r = r5     // Catch: java.lang.Throwable -> L55
            r0.t = r2     // Catch: java.lang.Throwable -> L55
            fz r0 = r4.n     // Catch: java.lang.Throwable -> L55
            r0.W(r5)     // Catch: java.lang.Throwable -> L55
            t64 r0 = defpackage.t64.a     // Catch: java.lang.Throwable -> L55
            ri0 r1 = defpackage.ri0.n
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r4
            r4 = r5
        L4e:
            defpackage.is0.r(r0, r3)
            return r4
        L52:
            r0 = r4
            r4 = r5
            goto L57
        L55:
            r5 = move-exception
            goto L52
        L57:
            throw r4     // Catch: java.lang.Throwable -> L58
        L58:
            r5 = move-exception
            defpackage.is0.r(r0, r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qj0.S(dq3, fh0):java.lang.Object");
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final vy3 T(md2 md2Var, long j2, long j3, pe1 pe1Var) {
        xy1 xy1VarR = w80.R(md2Var);
        int i2 = xy1VarR.o;
        n33 rectManager = ((q9) az1.a(xy1VarR)).getRectManager();
        wy3 wy3Var = rectManager.d;
        wy3Var.getClass();
        long j4 = j3 == 0 ? j2 : j3;
        tf2 tf2Var = wy3Var.a;
        vy3 vy3Var = new vy3(wy3Var, i2, j2, j4, md2Var, pe1Var);
        Object objB = tf2Var.b(i2);
        if (objB == null) {
            tf2Var.h(i2, vy3Var);
            objB = vy3Var;
        }
        vy3 vy3Var2 = (vy3) objB;
        if (vy3Var2 != vy3Var) {
            while (true) {
                vy3 vy3Var3 = vy3Var2.f;
                if (vy3Var3 == null) {
                    break;
                }
                vy3Var2 = vy3Var3;
            }
            vy3Var2.f = vy3Var;
        }
        xy1 xy1VarR2 = w80.R(md2Var.n);
        if (n33.d(xy1VarR2)) {
            hb hbVar = rectManager.c;
            int iE = rectManager.e(xy1VarR2);
            long[] jArr = (long[]) hbVar.c;
            int i3 = iE + 2;
            jArr[i3] = (jArr[i3] & 8070450532247928831L) | (-8070450532247928832L);
        }
        rectManager.f = true;
        rectManager.k();
        return vy3Var;
    }

    public static final ka0 U(int i2, ef1 ef1Var, ag1 ag1Var) {
        Object objK = ag1Var.K();
        if (objK == rb0.a) {
            objK = new ka0(i2, true, ef1Var);
            ag1Var.g0(objK);
        }
        ka0 ka0Var = (ka0) objK;
        if (!ka0Var.p.equals(ef1Var)) {
            ka0Var.p = ef1Var;
            if (ka0Var.o) {
                c33 c33Var = ka0Var.q;
                if (c33Var != null) {
                    ec0 ec0Var = c33Var.a;
                    if (ec0Var != null) {
                        ec0Var.s(c33Var, null);
                    }
                    ka0Var.q = null;
                }
                ArrayList arrayList = ka0Var.r;
                if (arrayList != null) {
                    int size = arrayList.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        c33 c33Var2 = (c33) arrayList.get(i3);
                        ec0 ec0Var2 = c33Var2.a;
                        if (ec0Var2 != null) {
                            ec0Var2.s(c33Var2, null);
                        }
                    }
                    arrayList.clear();
                }
            }
        }
        return ka0Var;
    }

    public static final ri3 V(ag1 ag1Var) {
        Context context = (Context) ag1Var.j(ea.b);
        boolean zF = ag1Var.f(context);
        Object objK = ag1Var.K();
        if (zF || objK == rb0.a) {
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            objK = (ri3) ((vl0) ((fn3) gg4.w(applicationContext, fn3.class))).d.get();
            ag1Var.g0(objK);
        }
        return (ri3) objK;
    }

    public static final b23 Y(a81 a81Var, qi0 qi0Var, om3 om3Var, Object obj) {
        xh1 xh1Var;
        p30 p30Var;
        a81 a81VarF;
        n30.b.getClass();
        m30 m30Var = m30.a;
        if (!(a81Var instanceof p30) || (a81VarF = (p30Var = (p30) a81Var).f()) == null) {
            xh1Var = new xh1(a81Var, d01.n);
        } else {
            if (p30Var.o != -3) {
            }
            xh1Var = new xh1(a81VarF, p30Var.n);
        }
        wr3 wr3VarA = xr3.a(obj);
        ca.x(qi0Var, (hi0) xh1Var.o, om3Var.equals(nm3.a) ? ti0.n : ti0.q, new qd(om3Var, (a81) xh1Var.n, wr3VarA, obj, (dh0) null));
        return new b23(wr3VarA);
    }

    public static final long Z(long j2) {
        long j3 = 63 & j2;
        int i2 = (int) j3;
        return i2 <= 15 ? j2 : i2 == e80.f81u.c ? c75.R(j2) : ((i2 == e80.v.c || i2 == e80.w.c) && Build.VERSION.SDK_INT < 34) ? c75.R(j2) : (i2 != e80.x.c || Build.VERSION.SDK_INT >= 36) ? (j2 & (-64)) | (j3 - 1) : c75.R(j2);
    }

    public static final void a(String str, String str2, ag1 ag1Var, int i2) {
        String str3;
        String str4;
        ag1 ag1Var2;
        ag1Var.X(141869869);
        int i3 = (ag1Var.f(str) ? 4 : 2) | i2 | (ag1Var.h(null) ? 256 : 128);
        if (ag1Var.N(i3 & 1, (i3 & 147) != 146)) {
            int i4 = i3 << 3;
            str3 = str;
            str4 = str2;
            ag1Var2 = ag1Var;
            n(kt4.W(R.drawable.anthropicon_info, ag1Var), str3, str4, null, false, null, null, ag1Var2, (i4 & 112) | 392 | (i4 & 7168), 112);
        } else {
            str3 = str;
            str4 = str2;
            ag1Var2 = ag1Var;
            ag1Var2.Q();
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new f4(str3, i2, str4);
        }
    }

    public static String a0(long j2) {
        return "PointerId(value=" + j2 + ")";
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00ed A[PHI: r1
  0x00ed: PHI (r1v8 java.lang.String) = 
  (r1v6 java.lang.String)
  (r1v7 java.lang.String)
  (r1v9 java.lang.String)
  (r1v10 java.lang.String)
  (r1v11 java.lang.String)
  (r1v12 java.lang.String)
  (r1v13 java.lang.String)
 binds: [B:60:0x0112, B:62:0x0118, B:57:0x010b, B:54:0x0104, B:49:0x00f7, B:51:0x00fd, B:43:0x00ea] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(defpackage.y84 r13, defpackage.w3 r14, defpackage.ne1 r15, defpackage.ag1 r16, int r17) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qj0.b(y84, w3, ne1, ag1, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [pe1] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13, types: [md2] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [md2] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [ug2] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v6 */
    public static final void b0(md2 md2Var, Object obj, pe1 pe1Var) {
        bo boVar;
        if (!md2Var.n.A) {
            ar1.b("visitAncestors called on an unattached node");
        }
        md2 md2Var2 = md2Var.n.r;
        xy1 xy1VarR = w80.R(md2Var);
        while (xy1VarR != null) {
            if ((((md2) xy1VarR.S.g).q & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                while (md2Var2 != null) {
                    if ((md2Var2.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                        ?? G = md2Var2;
                        ?? ug2Var = 0;
                        while (G != 0) {
                            if (G instanceof b24) {
                                b24 b24Var = (b24) G;
                                if (!(obj.equals(b24Var.n()) ? ((Boolean) pe1Var.k(b24Var)).booleanValue() : true)) {
                                    return;
                                }
                            } else if ((G.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0 && (G instanceof kr0)) {
                                md2 md2Var3 = ((kr0) G).C;
                                int i2 = 0;
                                G = G;
                                ug2Var = ug2Var;
                                while (md2Var3 != null) {
                                    if ((md2Var3.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                                        i2++;
                                        ug2Var = ug2Var;
                                        if (i2 == 1) {
                                            G = md2Var3;
                                        } else {
                                            if (ug2Var == 0) {
                                                ug2Var = new ug2(new md2[16]);
                                            }
                                            if (G != 0) {
                                                ug2Var.c(G);
                                                G = 0;
                                            }
                                            ug2Var.c(md2Var3);
                                        }
                                    }
                                    md2Var3 = md2Var3.s;
                                    G = G;
                                    ug2Var = ug2Var;
                                }
                                if (i2 == 1) {
                                }
                            }
                            G = w80.g(ug2Var);
                        }
                    }
                    md2Var2 = md2Var2.r;
                }
            }
            xy1VarR = xy1VarR.u();
            md2Var2 = (xy1VarR == null || (boVar = xy1VarR.S) == null) ? null : (gw3) boVar.f;
        }
    }

    public static final void c(pe1 pe1Var, nd2 nd2Var, pe1 pe1Var2, pe1 pe1Var3, ag1 ag1Var, int i2) {
        int i3;
        p22 p22Var;
        as0 as0Var;
        int i4;
        hy1 hy1Var;
        hu2 hu2Var;
        ag1Var.X(-180024211);
        if ((i2 & 6) == 0) {
            i3 = (ag1Var.h(pe1Var) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= ag1Var.f(nd2Var) ? 32 : 16;
        }
        int i5 = i3 | 384;
        if ((i2 & 3072) == 0) {
            i5 |= ag1Var.h(pe1Var2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i5 |= ag1Var.h(pe1Var3) ? 16384 : 8192;
        }
        if (ag1Var.N(i5 & 1, (i5 & 9363) != 9362)) {
            int iHashCode = Long.hashCode(ag1Var.T);
            nd2 nd2VarH = is0.H(ag1Var, nd2Var.c(q91.b).c(ja1.b).c(la1.b).c(ga1.b));
            as0 as0Var2 = (as0) ag1Var.j(kc0.h);
            hy1 hy1Var2 = (hy1) ag1Var.j(kc0.n);
            hu2 hu2VarL = ag1Var.l();
            p22 p22Var2 = (p22) ag1Var.j(w62.a);
            yc3 yc3Var = (yc3) ag1Var.j(b72.a);
            ag1Var.W(1314774735);
            int i6 = i5 & 14;
            int iHashCode2 = Long.hashCode(ag1Var.T);
            Context context = (Context) ag1Var.j(ea.b);
            yf1 yf1VarJ = dm0.J(ag1Var);
            ic3 ic3Var = (ic3) ag1Var.j(kc3.a);
            View view = (View) ag1Var.j(ea.f);
            boolean zH = ag1Var.h(context) | ((((i6 & 14) ^ 6) > 4 && ag1Var.f(pe1Var)) || (i6 & 6) == 4) | ag1Var.h(yf1VarJ) | ag1Var.h(ic3Var) | ag1Var.d(iHashCode2) | ag1Var.h(view);
            Object objK = ag1Var.K();
            if (zH || objK == rb0.a) {
                p22Var = p22Var2;
                as0Var = as0Var2;
                i4 = iHashCode;
                hy1Var = hy1Var2;
                hu2Var = hu2VarL;
                Object hdVar = new hd(context, pe1Var, yf1VarJ, ic3Var, iHashCode2, view);
                ag1Var.g0(hdVar);
                objK = hdVar;
            } else {
                as0Var = as0Var2;
                hy1Var = hy1Var2;
                hu2Var = hu2VarL;
                i4 = iHashCode;
                p22Var = p22Var2;
            }
            ne1 ne1Var = (ne1) objK;
            ag1Var.R(125, 1, null, null);
            ag1Var.r = true;
            if (ag1Var.S) {
                ag1Var.k(ne1Var);
            } else {
                ag1Var.j0();
            }
            lb0.c.getClass();
            ht4.D(kb0.e, ag1Var, hu2Var);
            ht4.D(fd.r, ag1Var, nd2VarH);
            ht4.D(fd.s, ag1Var, as0Var);
            ht4.D(fd.t, ag1Var, p22Var);
            ht4.D(fd.f96u, ag1Var, yc3Var);
            ht4.D(fd.v, ag1Var, hy1Var);
            ht4.D(kb0.g, ag1Var, Integer.valueOf(i4));
            ht4.D(fd.p, ag1Var, pe1Var3);
            ht4.D(fd.q, ag1Var, pe1Var2);
            ag1Var.p(true);
            ag1Var.p(false);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new gd(pe1Var, nd2Var, pe1Var2, pe1Var3, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [b24, java.lang.Object, jr0] */
    /* JADX WARN: Type inference failed for: r11v0, types: [pe1] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13, types: [md2] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [md2] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [ug2] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v7 */
    public static final void c0(b24 b24Var, pe1 pe1Var) {
        bo boVar;
        md2 md2Var = (md2) b24Var;
        if (!md2Var.n.A) {
            ar1.b("visitAncestors called on an unattached node");
        }
        md2 md2Var2 = md2Var.n.r;
        xy1 xy1VarR = w80.R(b24Var);
        while (xy1VarR != null) {
            if ((((md2) xy1VarR.S.g).q & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                while (md2Var2 != null) {
                    if ((md2Var2.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                        ?? G = md2Var2;
                        ?? ug2Var = 0;
                        while (G != 0) {
                            boolean zBooleanValue = true;
                            if (G instanceof b24) {
                                b24 b24Var2 = (b24) G;
                                if (nt1.g(b24Var.n(), b24Var2.n()) && b24Var.getClass() == b24Var2.getClass()) {
                                    zBooleanValue = ((Boolean) pe1Var.k(b24Var2)).booleanValue();
                                }
                                if (!zBooleanValue) {
                                    return;
                                }
                            } else if ((G.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0 && (G instanceof kr0)) {
                                md2 md2Var3 = ((kr0) G).C;
                                int i2 = 0;
                                G = G;
                                ug2Var = ug2Var;
                                while (md2Var3 != null) {
                                    if ((md2Var3.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                                        i2++;
                                        ug2Var = ug2Var;
                                        if (i2 == 1) {
                                            G = md2Var3;
                                        } else {
                                            if (ug2Var == 0) {
                                                ug2Var = new ug2(new md2[16]);
                                            }
                                            if (G != 0) {
                                                ug2Var.c(G);
                                                G = 0;
                                            }
                                            ug2Var.c(md2Var3);
                                        }
                                    }
                                    md2Var3 = md2Var3.s;
                                    G = G;
                                    ug2Var = ug2Var;
                                }
                                if (i2 == 1) {
                                }
                            }
                            G = w80.g(ug2Var);
                        }
                    }
                    md2Var2 = md2Var2.r;
                }
            }
            xy1VarR = xy1VarR.u();
            md2Var2 = (xy1VarR == null || (boVar = xy1VarR.S) == null) ? null : (gw3) boVar.f;
        }
    }

    public static final void d(pe1 pe1Var, nd2 nd2Var, pe1 pe1Var2, ag1 ag1Var, int i2, int i3) {
        nd2 nd2Var2;
        ag1 ag1Var2;
        pe1 pe1Var3;
        pe1 pe1Var4;
        l9 l9Var = l9.x;
        ag1Var.X(-1783766393);
        int i4 = (ag1Var.h(pe1Var) ? 4 : 2) | i2;
        int i5 = i3 & 4;
        if (i5 != 0) {
            i4 |= 384;
        } else if ((i2 & 384) == 0) {
            i4 |= ag1Var.h(pe1Var2) ? 256 : 128;
        }
        if (ag1Var.N(i4 & 1, (i4 & 147) != 146)) {
            pe1 pe1Var5 = i5 != 0 ? l9Var : pe1Var2;
            nd2Var2 = nd2Var;
            ag1Var2 = ag1Var;
            c(pe1Var, nd2Var2, l9Var, pe1Var5, ag1Var2, (i4 & 14) | 3120 | ((i4 << 6) & 57344));
            pe1Var3 = pe1Var;
            pe1Var4 = pe1Var5;
        } else {
            nd2Var2 = nd2Var;
            ag1Var2 = ag1Var;
            pe1Var3 = pe1Var;
            ag1Var2.Q();
            pe1Var4 = pe1Var2;
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new ed(pe1Var3, nd2Var2, pe1Var4, i2, i3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [pe1] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [md2] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [md2] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [ug2] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v8 */
    public static final void d0(md2 md2Var, String str, pe1 pe1Var) {
        if (!md2Var.n.A) {
            ar1.b("visitSubtreeIf called on an unattached node");
        }
        ug2 ug2Var = new ug2(new md2[16]);
        md2 md2Var2 = md2Var.n;
        md2 md2Var3 = md2Var2.s;
        if (md2Var3 == null) {
            w80.c(ug2Var, md2Var2);
        } else {
            ug2Var.c(md2Var3);
        }
        while (true) {
            int i2 = ug2Var.p;
            if (i2 == 0) {
                return;
            }
            md2 md2Var4 = (md2) ug2Var.l(i2 - 1);
            if ((md2Var4.q & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                for (md2 md2Var5 = md2Var4; md2Var5 != null && md2Var5.A; md2Var5 = md2Var5.s) {
                    if ((md2Var5.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                        ?? G = md2Var5;
                        ?? ug2Var2 = 0;
                        while (G != 0) {
                            if (G instanceof b24) {
                                b24 b24Var = (b24) G;
                                a24 a24Var = str.equals(b24Var.n()) ? (a24) pe1Var.k(b24Var) : a24.n;
                                if (a24Var == a24.p) {
                                    return;
                                }
                                if (a24Var == a24.o) {
                                    break;
                                }
                            } else if ((G.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0 && (G instanceof kr0)) {
                                md2 md2Var6 = ((kr0) G).C;
                                int i3 = 0;
                                G = G;
                                ug2Var2 = ug2Var2;
                                while (md2Var6 != null) {
                                    if ((md2Var6.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                                        i3++;
                                        ug2Var2 = ug2Var2;
                                        if (i3 == 1) {
                                            G = md2Var6;
                                        } else {
                                            if (ug2Var2 == 0) {
                                                ug2Var2 = new ug2(new md2[16]);
                                            }
                                            if (G != 0) {
                                                ug2Var2.c(G);
                                                G = 0;
                                            }
                                            ug2Var2.c(md2Var6);
                                        }
                                    }
                                    md2Var6 = md2Var6.s;
                                    G = G;
                                    ug2Var2 = ug2Var2;
                                }
                                if (i3 == 1) {
                                }
                            }
                            G = w80.g(ug2Var2);
                        }
                    }
                }
            }
            w80.c(ug2Var, md2Var4);
        }
    }

    public static final void e(y84 y84Var, ne1 ne1Var, ag1 ag1Var, int i2) {
        ag1Var.X(785956170);
        int i3 = i2 | (ag1Var.d(y84Var.ordinal()) ? 4 : 2);
        byte b2 = 0;
        int i4 = 1;
        if (ag1Var.N(i3 & 1, (i3 & 19) != 18)) {
            ca.a(ne1Var, U(1850458514, new o4(7, ne1Var), ag1Var), null, se0.m, se0.n, U(-289924777, new i4(y84Var, i4, b2), ag1Var), null, 0L, 0L, 0L, 0L, null, ag1Var, 1794102);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new al3(y84Var, ne1Var, i2, 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [b24, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v0, types: [pe1] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [md2] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [md2] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [ug2] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [ug2] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public static final void e0(b24 b24Var, pe1 pe1Var) {
        if (!((md2) b24Var).n.A) {
            ar1.b("visitSubtreeIf called on an unattached node");
        }
        ug2 ug2Var = new ug2(new md2[16]);
        md2 md2Var = ((md2) b24Var).n;
        md2 md2Var2 = md2Var.s;
        if (md2Var2 == null) {
            w80.c(ug2Var, md2Var);
        } else {
            ug2Var.c(md2Var2);
        }
        while (true) {
            int i2 = ug2Var.p;
            if (i2 == 0) {
                return;
            }
            md2 md2Var3 = (md2) ug2Var.l(i2 - 1);
            if ((md2Var3.q & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                for (md2 md2Var4 = md2Var3; md2Var4 != null && md2Var4.A; md2Var4 = md2Var4.s) {
                    if ((md2Var4.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                        ?? G = md2Var4;
                        ?? ug2Var2 = 0;
                        while (G != 0) {
                            if (G instanceof b24) {
                                b24 b24Var2 = (b24) G;
                                a24 a24Var = (nt1.g(b24Var.n(), b24Var2.n()) && b24Var.getClass() == b24Var2.getClass()) ? (a24) pe1Var.k(b24Var2) : a24.n;
                                if (a24Var == a24.p) {
                                    return;
                                }
                                if (a24Var == a24.o) {
                                    break;
                                }
                            } else if ((G.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0 && (G instanceof kr0)) {
                                md2 md2Var5 = ((kr0) G).C;
                                int i3 = 0;
                                G = G;
                                ug2Var2 = ug2Var2;
                                while (md2Var5 != null) {
                                    if ((md2Var5.p & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0) {
                                        i3++;
                                        ug2Var2 = ug2Var2;
                                        if (i3 == 1) {
                                            G = md2Var5;
                                        } else {
                                            if (ug2Var2 == 0) {
                                                ug2Var2 = new ug2(new md2[16]);
                                            }
                                            if (G != 0) {
                                                ug2Var2.c(G);
                                                G = 0;
                                            }
                                            ug2Var2.c(md2Var5);
                                        }
                                    }
                                    md2Var5 = md2Var5.s;
                                    G = G;
                                    ug2Var2 = ug2Var2;
                                }
                                if (i3 == 1) {
                                }
                            }
                            G = w80.g(ug2Var2);
                        }
                    }
                }
            }
            w80.c(ug2Var, md2Var3);
        }
    }

    public static final void f(final y84 y84Var, n8 n8Var, ag1 ag1Var, int i2) throws XmlPullParserException, IOException {
        y84 y84Var2;
        ag1 ag1Var2;
        n8 n8Var2;
        Object q6Var;
        is3 is3Var;
        bx3 bx3Var;
        int i3;
        final qi0 qi0Var;
        final wh1 wh1Var;
        final m10 m10Var;
        boolean z;
        h6 h6Var;
        boolean z2;
        String strO;
        Object obj;
        final s92 s92Var;
        boolean z3;
        final n8 n8Var3 = n8Var;
        ag1Var.X(1378933801);
        int i4 = i2 | (ag1Var.d(y84Var.ordinal()) ? 4 : 2) | (ag1Var.h(n8Var3) ? 32 : 16);
        int i5 = 1;
        if (ag1Var.N(i4 & 1, (i4 & 19) != 18)) {
            is3 is3Var2 = ea.b;
            Context context = (Context) ag1Var.j(is3Var2);
            Object objK = ag1Var.K();
            bx3 bx3Var2 = rb0.a;
            if (objK == bx3Var2) {
                objK = zf5.x(ag1Var);
                ag1Var.g0(objK);
            }
            qi0 qi0Var2 = (qi0) objK;
            int i6 = i4 & 14;
            boolean z4 = i6 == 4;
            Object objK2 = ag1Var.K();
            if (z4 || objK2 == bx3Var2) {
                objK2 = new m10(context, y84Var);
                ag1Var.g0(objK2);
            }
            m10 m10Var2 = (m10) objK2;
            boolean z5 = i6 == 4;
            Object objK3 = ag1Var.K();
            if (z5 || objK3 == bx3Var2) {
                objK3 = new wh1(context, y84Var, m10Var2);
                ag1Var.g0(objK3);
            }
            wh1 wh1Var2 = (wh1) objK3;
            a81 a81Var = (a81) m10Var2.b.getValue();
            Boolean bool = Boolean.FALSE;
            final pg2 pg2VarG = ca.g(a81Var, bool, null, ag1Var, 48, 2);
            pg2 pg2VarG2 = ca.g((a81) m10Var2.c.getValue(), null, null, ag1Var, 48, 2);
            Object objK4 = ag1Var.K();
            if (objK4 == bx3Var2) {
                objK4 = ca.A(bool);
                ag1Var.g0(objK4);
            }
            pg2 pg2Var = (pg2) objK4;
            h6 h6Var2 = new h6(i5);
            int i7 = i4 & 112;
            boolean zH = (i6 == 4) | ag1Var.h(qi0Var2) | ag1Var.h(m10Var2) | (i7 == 32 || ag1Var.h(n8Var3)) | ag1Var.h(wh1Var2);
            Object objK5 = ag1Var.K();
            if (zH || objK5 == bx3Var2) {
                is3Var = is3Var2;
                bx3Var = bx3Var2;
                i3 = 0;
                q6Var = new q6(qi0Var2, wh1Var2, m10Var2, n8Var3, y84Var, 3);
                qi0Var = qi0Var2;
                n8Var3 = n8Var3;
                wh1Var = wh1Var2;
                m10Var = m10Var2;
                ag1Var.g0(q6Var);
            } else {
                bx3Var = bx3Var2;
                qi0Var = qi0Var2;
                q6Var = objK5;
                i3 = 0;
                is3Var = is3Var2;
                m10Var = m10Var2;
                wh1Var = wh1Var2;
            }
            ca.E(h6Var2, ag1Var);
            pg2 pg2VarE = ca.E((pe1) q6Var, ag1Var);
            Object[] objArr = new Object[i3];
            Object objK6 = ag1Var.K();
            if (objK6 == bx3Var) {
                objK6 = new l6(1);
                ag1Var.g0(objK6);
            }
            String str = (String) n44.I0(objArr, (ne1) objK6, ag1Var, 48);
            t6 t6Var = (t6) ag1Var.j(r52.a);
            if (t6Var == null) {
                ag1Var.W(1213380307);
                Object baseContext = (Context) ag1Var.j(is3Var);
                while (true) {
                    if (!(baseContext instanceof ContextWrapper)) {
                        baseContext = null;
                        break;
                    } else if (baseContext instanceof t6) {
                        break;
                    } else {
                        baseContext = ((ContextWrapper) baseContext).getBaseContext();
                    }
                }
                t6Var = (t6) baseContext;
                z = false;
            } else {
                z = false;
                ag1Var.W(1213379439);
            }
            ag1Var.p(z);
            if (t6Var == null) {
                k21.n("No ActivityResultRegistryOwner was provided via LocalActivityResultRegistryOwner");
                return;
            }
            p6 activityResultRegistry = t6Var.getActivityResultRegistry();
            Object objK7 = ag1Var.K();
            if (objK7 == bx3Var) {
                objK7 = new j6();
                ag1Var.g0(objK7);
            }
            j6 j6Var = (j6) objK7;
            Object objK8 = ag1Var.K();
            if (objK8 == bx3Var) {
                objK8 = new s92(j6Var);
                ag1Var.g0(objK8);
            }
            s92 s92Var2 = (s92) objK8;
            boolean zH2 = ag1Var.h(j6Var) | ag1Var.h(activityResultRegistry) | ag1Var.f(str) | ag1Var.h(h6Var2) | ag1Var.f(pg2VarE);
            Object objK9 = ag1Var.K();
            if (zH2 || objK9 == bx3Var) {
                objK9 = new q6(j6Var, activityResultRegistry, str, h6Var2, pg2VarE, 0);
                h6Var = h6Var2;
                ag1Var.g0(objK9);
            } else {
                h6Var = h6Var2;
            }
            pe1 pe1Var = (pe1) objK9;
            boolean zF = ag1Var.f(h6Var) | ag1Var.f(str) | ag1Var.f(activityResultRegistry);
            Object objK10 = ag1Var.K();
            if (zF || objK10 == bx3Var) {
                objK10 = new fv0(pe1Var);
                ag1Var.g0(objK10);
            }
            gs2 gs2VarW = kt4.W(R.drawable.anthropicon_calendar, ag1Var);
            String strO2 = on4.O(R.string.settings_calendar_sync, ag1Var);
            if (!((Boolean) pg2VarG.getValue()).booleanValue() || ((String) pg2VarG2.getValue()) == null) {
                z2 = false;
                ag1Var.W(-1541777564);
                strO = on4.O(R.string.settings_calendar_sync_subtitle, ag1Var);
                ag1Var.p(false);
            } else {
                ag1Var.W(-1541828435);
                z2 = false;
                ag1Var.p(false);
                strO = (String) pg2VarG2.getValue();
                strO.getClass();
            }
            String str2 = strO;
            boolean zF2 = ag1Var.f(pg2VarG) | ag1Var.h(qi0Var) | ag1Var.h(m10Var) | ag1Var.h(wh1Var) | ((i7 == 32 || ag1Var.h(n8Var3)) ? true : z2) | (i6 == 4 ? true : z2) | ag1Var.h(s92Var2);
            Object objK11 = ag1Var.K();
            if (zF2 || objK11 == bx3Var) {
                s92Var = s92Var2;
                z3 = z2;
                obj = new ne1() { // from class: zk3
                    @Override // defpackage.ne1
                    public final Object a() {
                        boolean zBooleanValue = ((Boolean) pg2VarG.getValue()).booleanValue();
                        wh1 wh1Var3 = wh1Var;
                        int i8 = 0;
                        if (zBooleanValue) {
                            ca.y(qi0Var, null, null, new cl3(m10Var, wh1Var3, null, i8), 3);
                            n8Var3.i(y84Var, "calendar_sync_enabled", "false");
                        } else {
                            ez3.a.getClass();
                            ra3.c(new Object[0]);
                            Intent signInIntent = wh1Var3.f().getSignInIntent();
                            signInIntent.getClass();
                            Objects.toString(signInIntent.getComponent());
                            ra3.c(new Object[0]);
                            s92Var.a(signInIntent);
                            ra3.c(new Object[0]);
                        }
                        return t64.a;
                    }
                };
                ag1Var.g0(obj);
            } else {
                obj = objK11;
                s92Var = s92Var2;
                z3 = z2;
            }
            ne1 ne1Var = (ne1) obj;
            Object objK12 = ag1Var.K();
            if (objK12 == bx3Var) {
                objK12 = new f02(pg2Var, 4);
                ag1Var.g0(objK12);
            }
            ag1Var2 = ag1Var;
            y84Var2 = y84Var;
            n8Var2 = n8Var;
            n(gs2VarW, strO2, str2, ne1Var, false, (ne1) objK12, U(1372743723, new u82(n8Var, m10Var, qi0Var, wh1Var, s92Var, pg2VarG, y84Var), ag1Var), ag1Var2, 1794056, 0);
            if (((Boolean) pg2Var.getValue()).booleanValue()) {
                ag1Var2.W(-1539025694);
                Object objK13 = ag1Var2.K();
                if (objK13 == bx3Var) {
                    objK13 = new f02(pg2Var, 5);
                    ag1Var2.g0(objK13);
                }
                e(y84Var2, (ne1) objK13, ag1Var2, i6 | 48);
                ag1Var2.p(z3);
            } else {
                ag1Var2.W(-1538880583);
                ag1Var2.p(z3);
            }
        } else {
            y84Var2 = y84Var;
            ag1Var2 = ag1Var;
            n8Var2 = n8Var3;
            ag1Var2.Q();
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new l4(i2, 18, y84Var2, n8Var2);
        }
    }

    public static final int f0(int i2) {
        int i3 = 306783378 & i2;
        int i4 = 613566756 & i2;
        return (i2 & (-920350135)) | (i4 >> 1) | i3 | ((i3 << 1) & i4);
    }

    public static final void g(ne1 ne1Var, ag1 ag1Var, int i2) {
        String strN;
        ne1Var.getClass();
        ag1Var.X(-1453166437);
        int i3 = i2 | (ag1Var.h(ne1Var) ? 4 : 2);
        int size = 0;
        int i4 = 1;
        if (ag1Var.N(i3 & 1, (i3 & 3) != 2)) {
            Context context = (Context) ag1Var.j(ea.b);
            Object objK = ag1Var.K();
            if (objK == rb0.a) {
                File file = it0.b;
                if (file == null) {
                    strN = "";
                } else {
                    synchronized (file) {
                        try {
                            try {
                                strN = file.exists() ? ix.N(file) : "";
                            } catch (Exception e2) {
                                ez3.a.getClass();
                                ra3.g(new Object[0]);
                                strN = "(Error reading logs: " + e2.getMessage() + ")";
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                objK = ca.A(strN);
                ag1Var.g0(objK);
            }
            pg2 pg2Var = (pg2) objK;
            Object objK2 = ag1Var.K();
            if (objK2 == rb0.a) {
                File file2 = it0.b;
                if (file2 != null) {
                    synchronized (file2) {
                        try {
                            if (file2.exists()) {
                                size = ix.M(file2).size();
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
                objK2 = new ts2(size);
                ag1Var.g0(objK2);
            }
            n44.H(null, U(1132339287, new g4((ts2) objK2, ne1Var, context, pg2Var), ag1Var), null, null, null, 0, 0L, 0L, null, U(-1404759060, new mn0(i4, pg2Var), ag1Var), ag1Var, 805306416, 509);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new o4(ne1Var, i2, 4);
        }
    }

    public static final void h(nd2 nd2Var, n12 n12Var, ds2 ds2Var, sh shVar, aw awVar, to0 to0Var, boolean z, wa waVar, pe1 pe1Var, ag1 ag1Var, int i2) {
        n12 n12Var2;
        sh shVar2;
        aw awVar2;
        to0 to0Var2;
        boolean z2;
        wa waVar2;
        n12 n12VarA;
        wa waVarA;
        int i3;
        sh shVar3;
        aw awVar3;
        to0 to0Var3;
        boolean z3;
        ag1Var.X(53695811);
        int i4 = i2 | 46869520 | (ag1Var.h(pe1Var) ? 536870912 : 268435456);
        if (ag1Var.N(i4 & 1, (306783379 & i4) != 306783378)) {
            ag1Var.S();
            if ((i2 & 1) == 0 || ag1Var.x()) {
                n12VarA = p12.a(ag1Var);
                aw awVar4 = mj1.z;
                to0 to0VarQ = k30.q(ag1Var);
                waVarA = qr2.a(ag1Var);
                i3 = i4 & (-238608497);
                shVar3 = th.c;
                awVar3 = awVar4;
                to0Var3 = to0VarQ;
                z3 = true;
            } else {
                ag1Var.Q();
                i3 = i4 & (-238608497);
                n12VarA = n12Var;
                shVar3 = shVar;
                awVar3 = awVar;
                to0Var3 = to0Var;
                z3 = z;
                waVarA = waVar;
            }
            ag1Var.q();
            gg4.d(nd2Var, n12VarA, ds2Var, true, to0Var3, z3, waVarA, awVar3, shVar3, null, null, pe1Var, ag1Var, 806907270, (i3 >> 18) & 7168, 6400);
            sh shVar4 = shVar3;
            z2 = z3;
            shVar2 = shVar4;
            n12Var2 = n12VarA;
            waVar2 = waVarA;
            awVar2 = awVar3;
            to0Var2 = to0Var3;
        } else {
            ag1Var.Q();
            n12Var2 = n12Var;
            shVar2 = shVar;
            awVar2 = awVar;
            to0Var2 = to0Var;
            z2 = z;
            waVar2 = waVar;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new tz1(nd2Var, n12Var2, ds2Var, shVar2, awVar2, to0Var2, z2, waVar2, pe1Var, i2, 1);
        }
    }

    public static final void i(nd2 nd2Var, n12 n12Var, ds2 ds2Var, qh qhVar, bw bwVar, to0 to0Var, boolean z, wa waVar, pe1 pe1Var, ag1 ag1Var, int i2) {
        bw bwVar2;
        to0 to0Var2;
        boolean z2;
        wa waVar2;
        int i3;
        bw bwVar3;
        to0 to0VarQ;
        wa waVarA;
        ag1Var.X(-1884325601);
        int i4 = i2 | (ag1Var.f(nd2Var) ? 4 : 2) | (ag1Var.f(n12Var) ? 32 : 16) | 46861312 | (ag1Var.h(pe1Var) ? 536870912 : 268435456);
        boolean z3 = true;
        if (ag1Var.N(i4 & 1, (306783379 & i4) != 306783378)) {
            ag1Var.S();
            if ((i2 & 1) == 0 || ag1Var.x()) {
                i3 = i4 & (-238551041);
                bwVar3 = mj1.x;
                to0VarQ = k30.q(ag1Var);
                waVarA = qr2.a(ag1Var);
            } else {
                ag1Var.Q();
                i3 = i4 & (-238551041);
                bwVar3 = bwVar;
                to0VarQ = to0Var;
                z3 = z;
                waVarA = waVar;
            }
            ag1Var.q();
            gg4.d(nd2Var, n12Var, ds2Var, false, to0VarQ, z3, waVarA, null, null, bwVar3, qhVar, pe1Var, ag1Var, (i3 & 14) | 24576 | (i3 & 112) | 1576320, 432 | ((i3 >> 18) & 7168), 1792);
            bw bwVar4 = bwVar3;
            waVar2 = waVarA;
            bwVar2 = bwVar4;
            to0Var2 = to0VarQ;
            z2 = z3;
        } else {
            ag1Var.Q();
            bwVar2 = bwVar;
            to0Var2 = to0Var;
            z2 = z;
            waVar2 = waVar;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new tz1(nd2Var, n12Var, ds2Var, qhVar, bwVar2, to0Var2, z2, waVar2, pe1Var, i2, 0);
        }
    }

    public static final void j(yh2 yh2Var, fc3 fc3Var, ka0 ka0Var, ag1 ag1Var, int i2) {
        ag1Var.X(233973821);
        if ((((ag1Var.h(yh2Var) ? 4 : 2) | i2 | (ag1Var.h(fc3Var) ? 32 : 16)) & 147) == 146 && ag1Var.z()) {
            ag1Var.Q();
        } else {
            gg4.b(new j03[]{c72.a.a(yh2Var), w62.a.a(yh2Var), b72.a.a(yh2Var)}, U(1808964477, new qt0(1, fc3Var, ka0Var), ag1Var), ag1Var, 56);
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new bt0(yh2Var, fc3Var, ka0Var, i2, 2);
        }
    }

    public static final void k(ne1 ne1Var, ag1 ag1Var, int i2) {
        ag1Var.X(406172066);
        if (ag1Var.N(i2 & 1, (i2 & 3) != 2)) {
            ca.a(ne1Var, U(-1685436950, new o4(8, ne1Var), ag1Var), null, se0.i, se0.j, se0.k, null, 0L, 0L, 0L, 0L, null, ag1Var, 1794102);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new o4(ne1Var, i2, 9);
        }
    }

    public static final void l(fc3 fc3Var, ka0 ka0Var, ag1 ag1Var, int i2) {
        ag1Var.X(832919318);
        int i3 = 4;
        int i4 = (ag1Var.h(fc3Var) ? 4 : 2) | i2 | (ag1Var.h(ka0Var) ? 32 : 16);
        if ((i4 & 19) == 18 && ag1Var.z()) {
            ag1Var.Q();
        } else {
            Object objK = ag1Var.K();
            if (objK == rb0.a) {
                objK = new z82(i3);
                ag1Var.g0(objK);
            }
            pe1 pe1Var = (pe1) objK;
            cc4 cc4VarA = c72.a(ag1Var);
            if (cc4VarA == null) {
                k21.n("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                return;
            }
            i50 i50VarA = y33.a(bq.class);
            vq1 vq1Var = new vq1(0);
            vq1Var.a(y33.a(bq.class), pe1Var);
            u6 u6VarC = vq1Var.c();
            vk0 defaultViewModelCreationExtras = cc4VarA instanceof ej1 ? ((ej1) cc4VarA).getDefaultViewModelCreationExtras() : tk0.b;
            bc4 viewModelStore = cc4VarA.getViewModelStore();
            viewModelStore.getClass();
            defaultViewModelCreationExtras.getClass();
            qd1 qd1Var = new qd1(viewModelStore, u6VarC, defaultViewModelCreationExtras);
            String strB = i50VarA.b();
            if (strB == null) {
                k21.f("Local and anonymous classes can not be ViewModels");
                return;
            } else {
                bq bqVar = (bq) qd1Var.B(i50VarA, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(strB));
                bqVar.d = new ra3(fc3Var);
                fc3Var.e(bqVar.c, ka0Var, ag1Var, ((i4 << 6) & 896) | (i4 & 112));
            }
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new l4(i2, 14, fc3Var, ka0Var);
        }
    }

    public static final void m(y84 y84Var, pe1 pe1Var, nd2 nd2Var, ag1 ag1Var, int i2) {
        y84 y84Var2;
        nd2 nd2Var2;
        Object pVar;
        Object obj;
        ag1Var.X(297703183);
        int i3 = 2;
        int i4 = i2 | (ag1Var.d(y84Var.ordinal()) ? 4 : 2) | (ag1Var.h(pe1Var) ? 32 : 16) | 384;
        if (ag1Var.N(i4 & 1, (i4 & 147) != 146)) {
            pg2 pg2VarH = ca.h(zi3.b, ag1Var);
            pg2 pg2VarH2 = ca.h(V(ag1Var).c, ag1Var);
            List list = (List) pg2VarH.getValue();
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : list) {
                if (!nt1.g(((Map) pg2VarH2.getValue()).get((y84) obj2), Boolean.FALSE)) {
                    arrayList.add(obj2);
                }
            }
            n12 n12VarA = p12.a(ag1Var);
            int i5 = i4 & 14;
            boolean zH = ag1Var.h(arrayList) | (i5 == 4) | ag1Var.f(n12VarA);
            Object objK = ag1Var.K();
            Object obj3 = rb0.a;
            if (zH || objK == obj3) {
                pVar = new p(arrayList, y84Var, n12VarA, null, 26);
                obj = arrayList;
                y84Var2 = y84Var;
                ag1Var.g0(pVar);
            } else {
                pVar = objK;
                obj = arrayList;
                y84Var2 = y84Var;
            }
            zf5.d(y84Var2, obj, (df1) pVar, ag1Var);
            u51 u51Var = on3.a;
            ds2 ds2Var = new ds2(16.0f, 8.0f, 16.0f, 8.0f);
            rh rhVar = new rh(8.0f, new k21(i3));
            boolean zH2 = ag1Var.h(obj) | (i5 == 4) | ((i4 & 112) == 32);
            Object objK2 = ag1Var.K();
            if (zH2 || objK2 == obj3) {
                objK2 = new md(obj, y84Var2, pe1Var, 8);
                ag1Var.g0(objK2);
            }
            i(u51Var, n12VarA, ds2Var, rhVar, null, null, false, null, (pe1) objK2, ag1Var, 24960);
            nd2Var2 = kd2.b;
        } else {
            y84Var2 = y84Var;
            ag1Var.Q();
            nd2Var2 = nd2Var;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new bt0(y84Var2, pe1Var, nd2Var2, i2, 5);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:126:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void n(final defpackage.gs2 r53, final java.lang.String r54, final java.lang.String r55, final defpackage.ne1 r56, boolean r57, defpackage.ne1 r58, defpackage.df1 r59, defpackage.ag1 r60, final int r61, final int r62) {
        /*
            Method dump skipped, instruction units count: 979
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qj0.n(gs2, java.lang.String, java.lang.String, ne1, boolean, ne1, df1, ag1, int, int):void");
    }

    public static final void o(y84 y84Var, final n8 n8Var, ne1 ne1Var, final pe1 pe1Var, final ne1 ne1Var2, ag1 ag1Var, int i2) {
        ne1Var.getClass();
        pe1Var.getClass();
        ne1Var2.getClass();
        ag1Var.X(-1239698000);
        int i3 = i2 | (ag1Var.d(y84Var == null ? -1 : y84Var.ordinal()) ? 4 : 2) | (ag1Var.h(n8Var) ? 32 : 16) | (ag1Var.h(ne1Var) ? 256 : 128) | (ag1Var.h(pe1Var) ? 2048 : 1024) | (ag1Var.h(ne1Var2) ? 16384 : 8192);
        int i4 = 0;
        if (ag1Var.N(i3 & 1, (i3 & 9363) != 9362)) {
            final lf3 lf3VarO = w80.O(ag1Var);
            final Context context = (Context) ag1Var.j(ea.b);
            Object objK = ag1Var.K();
            Object obj = rb0.a;
            if (objK == obj) {
                objK = zf5.x(ag1Var);
                ag1Var.g0(objK);
            }
            final qi0 qi0Var = (qi0) objK;
            Object[] objArr = new Object[0];
            boolean z = (i3 & 14) == 4;
            Object objK2 = ag1Var.K();
            if (z || objK2 == obj) {
                objK2 = new vc3(5, y84Var);
                ag1Var.g0(objK2);
            }
            final pg2 pg2Var = (pg2) n44.I0(objArr, (ne1) objK2, ag1Var, 0);
            Object objK3 = ag1Var.K();
            Object obj2 = objK3;
            if (objK3 == obj) {
                t11 t11Var = y84.x;
                int iA0 = oa2.a0(p70.a0(t11Var, 10));
                LinkedHashMap linkedHashMap = new LinkedHashMap(iA0 >= 16 ? iA0 : 16);
                g1 g1Var = new g1(i4, t11Var);
                while (g1Var.hasNext()) {
                    Object next = g1Var.next();
                    y84 y84Var2 = (y84) next;
                    linkedHashMap.put(next, new aj3(mt1.v(context, y84Var2), mt1.I(context, y84Var2)));
                }
                ag1Var.g0(linkedHashMap);
                obj2 = linkedHashMap;
            }
            Map map = (Map) obj2;
            Object obj3 = map.get((y84) pg2Var.getValue());
            obj3.getClass();
            final aj3 aj3Var = (aj3) obj3;
            ag1Var.W(-1643798159);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(oa2.a0(map.size()));
            for (Map.Entry entry : map.entrySet()) {
                LinkedHashMap linkedHashMap3 = linkedHashMap2;
                linkedHashMap3.put(entry.getKey(), (w3) ca.g(((aj3) entry.getValue()).a.a(), w3.l, null, ag1Var, 0, 2).getValue());
                linkedHashMap2 = linkedHashMap3;
                obj = obj;
                map = map;
            }
            Map map2 = map;
            LinkedHashMap linkedHashMap4 = linkedHashMap2;
            Object obj4 = obj;
            ag1Var.p(false);
            ag1Var.W(-1643786209);
            final LinkedHashMap linkedHashMap5 = new LinkedHashMap(oa2.a0(map2.size()));
            for (Map.Entry entry2 : map2.entrySet()) {
                Object key = entry2.getKey();
                Boolean bool = (Boolean) ca.g((a81) ((aj3) entry2.getValue()).b.h.getValue(), Boolean.TRUE, null, ag1Var, 48, 2).getValue();
                bool.getClass();
                linkedHashMap5.put(key, bool);
                linkedHashMap4 = linkedHashMap4;
            }
            final LinkedHashMap linkedHashMap6 = linkedHashMap4;
            ag1Var.p(false);
            pg2 pg2VarH = ca.h(V(ag1Var).c, ag1Var);
            Map map3 = (Map) pg2VarH.getValue();
            boolean zF = ag1Var.f(pg2VarH) | ag1Var.f(pg2Var);
            Object objK4 = ag1Var.K();
            if (zF || objK4 == obj4) {
                objK4 = new p4(pg2VarH, pg2Var, null, 10);
                ag1Var.g0(objK4);
            }
            zf5.c((df1) objK4, ag1Var, map3);
            Object objK5 = ag1Var.K();
            if (objK5 == obj4) {
                objK5 = ca.A(Boolean.FALSE);
                ag1Var.g0(objK5);
            }
            Object objK6 = ag1Var.K();
            if (objK6 == obj4) {
                objK6 = ca.A(Boolean.FALSE);
                ag1Var.g0(objK6);
            }
            final pg2 pg2Var2 = (pg2) objK6;
            n44.H(null, U(-1161426828, new o4(10, ne1Var), ag1Var), null, null, null, 0, 0L, 0L, null, U(-1377924673, new ff1(pg2Var, linkedHashMap6, pe1Var, aj3Var, qi0Var, n8Var, context, linkedHashMap5, ne1Var2, pg2Var2) { // from class: bl3
                public final /* synthetic */ pg2 o;
                public final /* synthetic */ LinkedHashMap p;
                public final /* synthetic */ pe1 q;
                public final /* synthetic */ aj3 r;
                public final /* synthetic */ qi0 s;
                public final /* synthetic */ n8 t;

                /* JADX INFO: renamed from: u, reason: collision with root package name */
                public final /* synthetic */ Context f32u;
                public final /* synthetic */ LinkedHashMap v;
                public final /* synthetic */ pg2 w;

                {
                    this.w = pg2Var2;
                }

                @Override // defpackage.ff1
                public final Object d(Object obj5, Object obj6, Object obj7) throws XmlPullParserException, IOException {
                    pg2 pg2Var3;
                    ps psVar;
                    y84 y84Var3;
                    float f2;
                    float f3;
                    boolean z2;
                    bx3 bx3Var;
                    is3 is3Var;
                    float f4;
                    Object obj8;
                    n8 n8Var2;
                    final qi0 qi0Var2;
                    final pg2 pg2Var4;
                    bx3 bx3Var2;
                    kd2 kd2Var;
                    final Context context2;
                    float f5;
                    boolean z3;
                    int i5;
                    float f6;
                    pg2 pg2Var5;
                    y84 y84Var4;
                    pg2 pg2VarG;
                    Object obj9;
                    kd2 kd2Var2;
                    final boolean z4;
                    boolean z5;
                    final aj3 aj3Var2 = this.r;
                    ps psVar2 = aj3Var2.b;
                    zr2 zr2Var = (zr2) obj5;
                    ag1 ag1Var2 = (ag1) obj6;
                    int iIntValue = ((Integer) obj7).intValue();
                    zr2Var.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= ag1Var2.f(zr2Var) ? 4 : 2;
                    }
                    if (ag1Var2.N(iIntValue & 1, (iIntValue & 19) != 18)) {
                        nd2 nd2VarT = w80.T(is0.J(on3.b, zr2Var), this.n, true);
                        k80 k80VarA = i80.a(th.c, mj1.z, ag1Var2, 0);
                        int iHashCode = Long.hashCode(ag1Var2.T);
                        hu2 hu2VarL = ag1Var2.l();
                        nd2 nd2VarH = is0.H(ag1Var2, nd2VarT);
                        lb0.c.getClass();
                        ic0 ic0Var = kb0.b;
                        ag1Var2.Z();
                        if (ag1Var2.S) {
                            ag1Var2.k(ic0Var);
                        } else {
                            ag1Var2.j0();
                        }
                        ht4.D(kb0.f, ag1Var2, k80VarA);
                        ht4.D(kb0.e, ag1Var2, hu2VarL);
                        ht4.D(kb0.g, ag1Var2, Integer.valueOf(iHashCode));
                        ht4.y(ag1Var2, kb0.h);
                        ht4.D(kb0.d, ag1Var2, nd2VarH);
                        final pg2 pg2Var6 = this.o;
                        y84 y84Var5 = (y84) pg2Var6.getValue();
                        boolean zF2 = ag1Var2.f(pg2Var6);
                        Object objK7 = ag1Var2.K();
                        bx3 bx3Var3 = rb0.a;
                        if (zF2 || objK7 == bx3Var3) {
                            objK7 = new e4(pg2Var6, 3);
                            ag1Var2.g0(objK7);
                        }
                        qj0.m(y84Var5, (pe1) objK7, null, ag1Var2, 0);
                        kd2 kd2Var3 = kd2.b;
                        mt1.f(ag1Var2, on3.b(kd2Var3, 8.0f));
                        y84 y84Var6 = (y84) pg2Var6.getValue();
                        w3 w3Var = (w3) this.p.get((y84) pg2Var6.getValue());
                        if (w3Var == null) {
                            w3Var = w3.l;
                        }
                        pe1 pe1Var2 = this.q;
                        boolean zF3 = ag1Var2.f(pe1Var2) | ag1Var2.f(pg2Var6);
                        Object objK8 = ag1Var2.K();
                        if (zF3 || objK8 == bx3Var3) {
                            objK8 = new h4(27, pe1Var2, pg2Var6);
                            ag1Var2.g0(objK8);
                        }
                        qj0.b(y84Var6, w3Var, (ne1) objK8, ag1Var2, 0);
                        nd2 nd2VarL = is0.L(kd2Var3, 16.0f, 8.0f);
                        is3 is3Var2 = gy3.c;
                        tv4.e(nd2VarL, 0.79f, ((n50) ag1Var2.j(is3Var2)).v, ag1Var2, 48, 0);
                        y84 y84Var7 = (y84) pg2Var6.getValue();
                        final qi0 qi0Var3 = this.s;
                        final n8 n8Var3 = this.t;
                        y84 y84Var8 = y84.r;
                        if (y84Var7 == y84Var8) {
                            ag1Var2.W(66955004);
                            r50 r50Var = psVar2 instanceof r50 ? (r50) psVar2 : null;
                            a81 a81Var = r50Var != null ? (a81) r50Var.f.getValue() : null;
                            if (a81Var == null) {
                                ag1Var2.W(67079065);
                                ag1Var2.p(false);
                                psVar = psVar2;
                                y84Var4 = y84Var8;
                                pg2VarG = null;
                            } else {
                                ag1Var2.W(-829120152);
                                psVar = psVar2;
                                y84Var4 = y84Var8;
                                pg2VarG = ca.g(a81Var, Boolean.FALSE, null, ag1Var2, 48, 2);
                                ag1Var2 = ag1Var2;
                                ag1Var2.p(false);
                            }
                            boolean zBooleanValue = pg2VarG != null ? ((Boolean) pg2VarG.getValue()).booleanValue() : false;
                            gs2 gs2VarW = kt4.W(R.drawable.anthropicon_clock, ag1Var2);
                            String strO = on4.O(R.string.settings_auto_wake_up, ag1Var2);
                            String strO2 = on4.O(R.string.settings_auto_wake_up_subtitle, ag1Var2);
                            boolean zH = ag1Var2.h(qi0Var3) | ag1Var2.h(aj3Var2) | ag1Var2.g(zBooleanValue) | ag1Var2.h(n8Var3) | ag1Var2.f(pg2Var6);
                            Object objK9 = ag1Var2.K();
                            if (zH || objK9 == bx3Var3) {
                                kd2Var2 = kd2Var3;
                                y84Var3 = y84Var4;
                                z4 = zBooleanValue;
                                z5 = false;
                                obj9 = new ne1() { // from class: uk3
                                    @Override // defpackage.ne1
                                    public final Object a() {
                                        aj3 aj3Var3 = aj3Var2;
                                        boolean z6 = z4;
                                        ca.y(qi0Var3, null, null, new fl3(aj3Var3, z6, null, 0), 3);
                                        n8Var3.i((y84) pg2Var6.getValue(), "rolling_window_enabled", String.valueOf(!z6));
                                        return t64.a;
                                    }
                                };
                                ag1Var2.g0(obj9);
                            } else {
                                kd2Var2 = kd2Var3;
                                obj9 = objK9;
                                y84Var3 = y84Var4;
                                z4 = zBooleanValue;
                                z5 = false;
                            }
                            ne1 ne1Var3 = (ne1) obj9;
                            Object objK10 = ag1Var2.K();
                            pg2 pg2Var7 = this.w;
                            if (objK10 == bx3Var3) {
                                objK10 = new f02(pg2Var7, 2);
                                ag1Var2.g0(objK10);
                            }
                            ne1 ne1Var4 = (ne1) objK10;
                            ka0 ka0VarU = qj0.U(-1941024816, new zs0(n8Var3, qi0Var3, pg2Var6, aj3Var2, z4), ag1Var2);
                            ag1 ag1Var3 = ag1Var2;
                            pg2Var3 = pg2Var6;
                            f2 = 8.0f;
                            kd2Var3 = kd2Var2;
                            bx3Var = bx3Var3;
                            qj0.n(gs2VarW, strO, strO2, ne1Var3, false, ne1Var4, ka0VarU, ag1Var3, 1794056, 0);
                            ag1Var2 = ag1Var3;
                            is3Var = is3Var2;
                            f3 = 0.79f;
                            tv4.e(is0.L(kd2Var3, 16.0f, 8.0f), 0.79f, ((n50) ag1Var2.j(is3Var)).v, ag1Var2, 48, 0);
                            if (((Boolean) pg2Var7.getValue()).booleanValue()) {
                                ag1Var2.W(69456983);
                                Object objK11 = ag1Var2.K();
                                if (objK11 == bx3Var) {
                                    objK11 = new f02(pg2Var7, 3);
                                    ag1Var2.g0(objK11);
                                }
                                qj0.k((ne1) objK11, ag1Var2, 6);
                                z2 = false;
                                ag1Var2.p(false);
                            } else {
                                z2 = false;
                                ag1Var2.W(69612665);
                                ag1Var2.p(false);
                            }
                            ag1Var2.p(z2);
                        } else {
                            pg2Var3 = pg2Var6;
                            psVar = psVar2;
                            y84Var3 = y84Var8;
                            f2 = 8.0f;
                            f3 = 0.79f;
                            z2 = false;
                            bx3Var = bx3Var3;
                            is3Var = is3Var2;
                            ag1Var2.W(69627545);
                            ag1Var2.p(false);
                        }
                        y84 y84Var9 = (y84) pg2Var3.getValue();
                        y84Var9.getClass();
                        if (y84Var9 == y84Var3 || y84Var9 == y84.f419u) {
                            ag1Var2.W(69793302);
                            qj0.f((y84) pg2Var3.getValue(), n8Var3, ag1Var2, 64);
                            tv4.e(is0.L(kd2Var3, 16.0f, f2), f3, ((n50) ag1Var2.j(is3Var)).v, ag1Var2, 48, 0);
                            f4 = f3;
                            ag1Var2.p(false);
                        } else {
                            ag1Var2.W(70195961);
                            ag1Var2.p(z2);
                            f4 = f3;
                        }
                        ag1 ag1Var4 = ag1Var2;
                        pg2 pg2VarG2 = ca.g(psVar.d(), Boolean.FALSE, null, ag1Var4, 48, 2);
                        gs2 gs2VarW2 = kt4.W(R.drawable.anthropicon_notification, ag1Var4);
                        String strO3 = on4.O(R.string.notification, ag1Var4);
                        String strP = on4.P(R.string.settings_notification_subtitle, new Object[]{((y84) pg2Var3.getValue()).n}, ag1Var4);
                        boolean zF4 = ag1Var4.f(pg2VarG2) | ag1Var4.h(qi0Var3) | ag1Var4.h(aj3Var2);
                        Context context3 = this.f32u;
                        final pg2 pg2Var8 = pg2Var3;
                        boolean zH2 = zF4 | ag1Var4.h(context3) | ag1Var4.f(pg2Var8);
                        Object objK12 = ag1Var4.K();
                        if (zH2 || objK12 == bx3Var) {
                            n8Var2 = n8Var3;
                            qi0Var2 = qi0Var3;
                            pg2Var4 = pg2VarG2;
                            bx3Var2 = bx3Var;
                            kd2Var = kd2Var3;
                            context2 = context3;
                            f5 = 8.0f;
                            z3 = false;
                            obj8 = new ne1() { // from class: vk3
                                @Override // defpackage.ne1
                                public final Object a() {
                                    boolean zBooleanValue2 = ((Boolean) pg2Var4.getValue()).booleanValue();
                                    ca.y(qi0Var2, null, null, new fl3(aj3Var2, !zBooleanValue2, null, 2), 3);
                                    Context context4 = context2;
                                    pg2 pg2Var9 = pg2Var8;
                                    if (zBooleanValue2) {
                                        mt1.T(context4, (y84) pg2Var9.getValue());
                                    } else {
                                        y84 y84Var10 = (y84) pg2Var9.getValue();
                                        context4.getClass();
                                        y84Var10.getClass();
                                        mt1.S(context4, y84Var10);
                                        wr3 wr3Var = a.D;
                                        Intent intent = new Intent(context4, (Class<?>) mt1.G(y84Var10));
                                        intent.setAction("u.sage.ACTION_SHOW_NOTIFICATION");
                                        context4.startService(intent);
                                    }
                                    return t64.a;
                                }
                            };
                            ag1Var4.g0(obj8);
                        } else {
                            kd2Var = kd2Var3;
                            obj8 = objK12;
                            n8Var2 = n8Var3;
                            qi0Var2 = qi0Var3;
                            pg2Var4 = pg2VarG2;
                            bx3Var2 = bx3Var;
                            context2 = context3;
                            f5 = 8.0f;
                            z3 = false;
                        }
                        ne1 ne1Var5 = (ne1) obj8;
                        wk3 wk3Var = new wk3(qi0Var2, pg2Var8, pg2Var4, aj3Var2, context2);
                        final qi0 qi0Var4 = qi0Var2;
                        final n8 n8Var4 = n8Var2;
                        bx3 bx3Var4 = bx3Var2;
                        float f7 = f5;
                        qj0.n(gs2VarW2, strO3, strP, ne1Var5, false, null, qj0.U(-259348597, wk3Var, ag1Var4), ag1Var4, 1597448, 32);
                        tv4.e(is0.L(kd2Var, 16.0f, f7), f4, ((n50) ag1Var4.j(is3Var)).v, ag1Var4, 48, 0);
                        y84 y84Var10 = (y84) pg2Var8.getValue();
                        LinkedHashMap linkedHashMap7 = this.v;
                        Boolean bool2 = (Boolean) linkedHashMap7.get(y84Var10);
                        boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : true;
                        Collection collectionValues = linkedHashMap7.values();
                        if ((collectionValues instanceof Collection) && collectionValues.isEmpty()) {
                            i5 = 0;
                        } else {
                            Iterator it = collectionValues.iterator();
                            i5 = 0;
                            while (it.hasNext()) {
                                if (((Boolean) it.next()).booleanValue() && (i5 = i5 + 1) < 0) {
                                    throw new ArithmeticException("Count overflow has happened.");
                                }
                            }
                        }
                        final boolean z6 = zBooleanValue2 && i5 <= 1;
                        boolean zG = ag1Var4.g(z6) | ag1Var4.h(context2) | ag1Var4.h(qi0Var4) | ag1Var4.h(aj3Var2) | ag1Var4.h(n8Var4) | ag1Var4.f(pg2Var8);
                        Object objK13 = ag1Var4.K();
                        if (zG || objK13 == bx3Var4) {
                            f6 = f7;
                            final Context context4 = context2;
                            pe1 pe1Var3 = new pe1() { // from class: xk3
                                @Override // defpackage.pe1
                                public final Object k(Object obj10) {
                                    boolean zBooleanValue3 = ((Boolean) obj10).booleanValue();
                                    if (zBooleanValue3 || !z6) {
                                        ca.y(qi0Var4, null, null, new fl3(aj3Var2, zBooleanValue3, null, 4), 3);
                                        n8Var4.i((y84) pg2Var8.getValue(), "nav_bar_visible", String.valueOf(zBooleanValue3));
                                    } else {
                                        Context context5 = context4;
                                        Toast.makeText(context5, context5.getString(R.string.settings_nav_bar_keep_one), 0).show();
                                    }
                                    return t64.a;
                                }
                            };
                            pg2Var5 = pg2Var8;
                            context2 = context4;
                            ag1Var4.g0(pe1Var3);
                            objK13 = pe1Var3;
                        } else {
                            f6 = f7;
                            pg2Var5 = pg2Var8;
                        }
                        pe1 pe1Var4 = (pe1) objK13;
                        gs2 gs2VarW3 = kt4.W(R.drawable.anthropicon_eye, ag1Var4);
                        String strO4 = on4.O(R.string.settings_show_in_nav_bar, ag1Var4);
                        String strP2 = on4.P(R.string.settings_show_in_nav_bar_subtitle, new Object[]{((y84) pg2Var5.getValue()).n}, ag1Var4);
                        boolean zF5 = ag1Var4.f(pe1Var4) | ag1Var4.g(zBooleanValue2);
                        Object objK14 = ag1Var4.K();
                        if (zF5 || objK14 == bx3Var4) {
                            objK14 = new ys0(pe1Var4, zBooleanValue2, 1);
                            ag1Var4.g0(objK14);
                        }
                        float f8 = f6;
                        qj0.n(gs2VarW3, strO4, strP2, (ne1) objK14, false, null, qj0.U(1405546612, new ci2(pe1Var4, zBooleanValue2), ag1Var4), ag1Var4, 1597448, 32);
                        ag1 ag1Var5 = ag1Var4;
                        nd2 nd2VarL2 = is0.L(kd2Var, 16.0f, f8);
                        is3 is3Var3 = gy3.c;
                        tv4.e(nd2VarL2, f4, ((n50) ag1Var5.j(is3Var3)).v, ag1Var5, 48, 0);
                        Object objK15 = ag1Var5.K();
                        if (objK15 == bx3Var4) {
                            context2.getClass();
                            objK15 = Boolean.valueOf(Build.VERSION.SDK_INT < 26 ? false : AppWidgetManager.getInstance(context2).isRequestPinAppWidgetSupported());
                            ag1Var5.g0(objK15);
                        }
                        if (((Boolean) objK15).booleanValue()) {
                            ag1Var5.W(75024118);
                            gs2 gs2VarW4 = kt4.W(R.drawable.widgets_24px, ag1Var5);
                            String strO5 = on4.O(R.string.settings_add_home_screen_widget, ag1Var5);
                            String strO6 = on4.O(R.string.settings_track_usage_at_a_glance, ag1Var5);
                            boolean zH3 = ag1Var5.h(context2);
                            Object objK16 = ag1Var5.K();
                            if (zH3 || objK16 == bx3Var4) {
                                objK16 = new ws0(context2, 7);
                                ag1Var5.g0(objK16);
                            }
                            qj0.n(gs2VarW4, strO5, strO6, (ne1) objK16, true, null, null, ag1Var5, 24584, 96);
                            ag1Var5 = ag1Var5;
                            tv4.e(is0.L(kd2Var, 16.0f, f8), f4, ((n50) ag1Var5.j(is3Var3)).v, ag1Var5, 48, 0);
                            ag1Var5.p(false);
                        } else {
                            ag1Var5.W(76041817);
                            ag1Var5.p(false);
                        }
                        qj0.a(on4.O(R.string.version, ag1Var5), "1.260622.7", ag1Var5, 48);
                        mt1.f(ag1Var5, on3.b(kd2Var, 16.0f));
                        ag1Var5.p(true);
                    } else {
                        ag1Var2.Q();
                    }
                    return t64.a;
                }
            }, ag1Var), ag1Var, 805306416, 509);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new wk3(y84Var, n8Var, ne1Var, pe1Var, ne1Var2, i2);
        }
    }

    public static Object p(jf2 jf2Var) {
        if (jf2Var == null) {
            return null;
        }
        return jf2Var.b();
    }

    public static final int q(int i2, ug2 ug2Var) {
        int i3 = ug2Var.p - 1;
        int i4 = 0;
        while (i4 < i3) {
            int i5 = ((i3 - i4) / 2) + i4;
            Object[] objArr = ug2Var.n;
            int i6 = ((it1) objArr[i5]).a;
            if (i6 != i2) {
                if (i6 < i2) {
                    i4 = i5 + 1;
                    if (i2 < ((it1) objArr[i4]).a) {
                    }
                } else {
                    i3 = i5 - 1;
                }
            }
            return i5;
        }
        return i4;
    }

    public static final pb4 r(xy1 xy1Var) {
        pb4 pb4Var = xy1Var.B;
        if (pb4Var != null) {
            return pb4Var;
        }
        throw di0.m("Required value was null.");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0049 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0047 -> B:18:0x004a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object s(defpackage.ev3 r5, boolean r6, defpackage.wv2 r7, defpackage.dr r8) {
        /*
            boolean r0 = r8 instanceof defpackage.iw3
            if (r0 == 0) goto L13
            r0 = r8
            iw3 r0 = (defpackage.iw3) r0
            int r1 = r0.f143u
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f143u = r1
            goto L18
        L13:
            iw3 r0 = new iw3
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.t
            int r1 = r0.f143u
            r2 = 1
            if (r1 == 0) goto L36
            if (r1 != r2) goto L2f
            boolean r5 = r0.s
            wv2 r6 = r0.r
            ev3 r7 = r0.q
            defpackage.gg4.T(r8)
            r4 = r6
            r6 = r5
            r5 = r7
            r7 = r4
            goto L4a
        L2f:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r5)
            r5 = 0
            return r5
        L36:
            defpackage.gg4.T(r8)
        L39:
            r0.q = r5
            r0.r = r7
            r0.s = r6
            r0.f143u = r2
            java.lang.Object r8 = r5.a(r7, r0)
            ri0 r1 = defpackage.ri0.n
            if (r8 != r1) goto L4a
            return r1
        L4a:
            vv2 r8 = (defpackage.vv2) r8
            boolean r1 = O(r8, r6)
            if (r1 == 0) goto L39
            java.util.List r5 = r8.a
            r6 = 0
            java.lang.Object r5 = r5.get(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qj0.s(ev3, boolean, wv2, dr):java.lang.Object");
    }

    public static final int t(int i2, int i3) {
        return i2 << (((i3 % 10) * 3) + 1);
    }

    public static a81 u(a81 a81Var, int i2) {
        vy vyVar;
        if (i2 < 0 && i2 != -2 && i2 != -1) {
            k21.l(di0.q(i2, "Buffer size should be non-negative, BUFFERED, or CONFLATED, but was "));
            return null;
        }
        if (i2 == -1) {
            i2 = 0;
            vyVar = vy.o;
        } else {
            vyVar = vy.n;
        }
        boolean z = a81Var instanceof qf1;
        d01 d01Var = d01.n;
        return z ? ((qf1) a81Var).a(d01Var, i2, vyVar) : new s30(a81Var, d01Var, i2, vyVar);
    }

    public static final ii3 v(String str, dm0 dm0Var, gi3[] gi3VarArr, pe1 pe1Var) {
        if (zs3.I0(str)) {
            k21.f("Blank serial names are prohibited");
            return null;
        }
        if (dm0Var.equals(it3.P)) {
            k21.f("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
            return null;
        }
        j50 j50Var = new j50(str);
        pe1Var.k(j50Var);
        return new ii3(str, dm0Var, j50Var.b.size(), ji.c0(gi3VarArr), j50Var);
    }

    public static ii3 w(String str, dm0 dm0Var, gi3[] gi3VarArr) {
        if (zs3.I0(str)) {
            k21.f("Blank serial names are prohibited");
            return null;
        }
        if (dm0Var.equals(it3.P)) {
            k21.f("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
            return null;
        }
        j50 j50Var = new j50(str);
        return new ii3(str, dm0Var, j50Var.b.size(), ji.c0(gi3VarArr), j50Var);
    }

    public static final Bundle x(js2... js2VarArr) {
        Bundle bundle = new Bundle(js2VarArr.length);
        for (js2 js2Var : js2VarArr) {
            String str = (String) js2Var.n;
            Object obj = js2Var.o;
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Boolean) {
                bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Byte) {
                bundle.putByte(str, ((Number) obj).byteValue());
            } else if (obj instanceof Character) {
                bundle.putChar(str, ((Character) obj).charValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Number) obj).doubleValue());
            } else if (obj instanceof Float) {
                bundle.putFloat(str, ((Number) obj).floatValue());
            } else if (obj instanceof Integer) {
                bundle.putInt(str, ((Number) obj).intValue());
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Number) obj).longValue());
            } else if (obj instanceof Short) {
                bundle.putShort(str, ((Number) obj).shortValue());
            } else if (obj instanceof Bundle) {
                bundle.putBundle(str, (Bundle) obj);
            } else if (obj instanceof CharSequence) {
                bundle.putCharSequence(str, (CharSequence) obj);
            } else if (obj instanceof Parcelable) {
                bundle.putParcelable(str, (Parcelable) obj);
            } else if (obj instanceof boolean[]) {
                bundle.putBooleanArray(str, (boolean[]) obj);
            } else if (obj instanceof byte[]) {
                bundle.putByteArray(str, (byte[]) obj);
            } else if (obj instanceof char[]) {
                bundle.putCharArray(str, (char[]) obj);
            } else if (obj instanceof double[]) {
                bundle.putDoubleArray(str, (double[]) obj);
            } else if (obj instanceof float[]) {
                bundle.putFloatArray(str, (float[]) obj);
            } else if (obj instanceof int[]) {
                bundle.putIntArray(str, (int[]) obj);
            } else if (obj instanceof long[]) {
                bundle.putLongArray(str, (long[]) obj);
            } else if (obj instanceof short[]) {
                bundle.putShortArray(str, (short[]) obj);
            } else if (obj instanceof Object[]) {
                Class<?> componentType = obj.getClass().getComponentType();
                componentType.getClass();
                if (Parcelable.class.isAssignableFrom(componentType)) {
                    bundle.putParcelableArray(str, (Parcelable[]) obj);
                } else if (String.class.isAssignableFrom(componentType)) {
                    bundle.putStringArray(str, (String[]) obj);
                } else if (CharSequence.class.isAssignableFrom(componentType)) {
                    bundle.putCharSequenceArray(str, (CharSequence[]) obj);
                } else {
                    if (!Serializable.class.isAssignableFrom(componentType)) {
                        k21.h("Illegal value array type ", componentType.getCanonicalName(), " for key \"", str, 34);
                        return null;
                    }
                    bundle.putSerializable(str, (Serializable) obj);
                }
            } else if (obj instanceof Serializable) {
                bundle.putSerializable(str, (Serializable) obj);
            } else if (obj instanceof IBinder) {
                bundle.putBinder(str, (IBinder) obj);
            } else if (obj instanceof Size) {
                bundle.putSize(str, (Size) obj);
            } else {
                if (!(obj instanceof SizeF)) {
                    k21.h("Illegal value type ", obj.getClass().getCanonicalName(), " for key \"", str, 34);
                    return null;
                }
                bundle.putSizeF(str, (SizeF) obj);
            }
        }
        return bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0080 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.io.Serializable y(defpackage.a81 r5, defpackage.b81 r6, defpackage.fh0 r7) throws java.lang.Throwable {
        /*
            boolean r0 = r7 instanceof defpackage.m81
            if (r0 == 0) goto L13
            r0 = r7
            m81 r0 = (defpackage.m81) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            m81 r0 = new m81
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.r
            int r1 = r0.s
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            w33 r5 = r0.q
            defpackage.gg4.T(r7)     // Catch: java.lang.Throwable -> L28
            goto L4b
        L28:
            r6 = move-exception
            goto L4e
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r5)
            return r2
        L30:
            defpackage.gg4.T(r7)
            w33 r7 = new w33
            r7.<init>()
            uq r1 = new uq     // Catch: java.lang.Throwable -> L4c
            r4 = 2
            r1.<init>(r4, r6, r7)     // Catch: java.lang.Throwable -> L4c
            r0.q = r7     // Catch: java.lang.Throwable -> L4c
            r0.s = r3     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r5 = r5.b(r1, r0)     // Catch: java.lang.Throwable -> L4c
            ri0 r6 = defpackage.ri0.n
            if (r5 != r6) goto L4b
            return r6
        L4b:
            return r2
        L4c:
            r6 = move-exception
            r5 = r7
        L4e:
            java.lang.Object r5 = r5.n
            java.lang.Throwable r5 = (java.lang.Throwable) r5
            if (r5 == 0) goto L5a
            boolean r7 = r5.equals(r6)
            if (r7 != 0) goto L7d
        L5a:
            hi0 r7 = r0.o
            r7.getClass()
            mj1 r0 = defpackage.mj1.W
            fi0 r7 = r7.K(r0)
            tu1 r7 = (defpackage.tu1) r7
            if (r7 == 0) goto L7e
            boolean r0 = r7.isCancelled()
            if (r0 != 0) goto L70
            goto L7e
        L70:
            java.util.concurrent.CancellationException r7 = r7.N()
            if (r7 == 0) goto L7e
            boolean r7 = r7.equals(r6)
            if (r7 != 0) goto L7d
            goto L7e
        L7d:
            throw r6
        L7e:
            if (r5 != 0) goto L81
            return r6
        L81:
            boolean r7 = r6 instanceof java.util.concurrent.CancellationException
            if (r7 == 0) goto L89
            defpackage.on4.j(r5, r6)
            throw r5
        L89:
            defpackage.on4.j(r6, r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qj0.y(a81, b81, fh0):java.io.Serializable");
    }

    public static void z(int i2) {
        if (2 > i2 || i2 >= 37) {
            StringBuilder sbU = xw1.u("radix ", i2, " was not in valid range ");
            sbU.append(new ms1(2, 36, 1));
            throw new IllegalArgumentException(sbU.toString());
        }
    }

    public abstract InputFilter[] L(InputFilter[] inputFilterArr);

    public abstract void W(boolean z);

    public abstract void X(boolean z);
}
