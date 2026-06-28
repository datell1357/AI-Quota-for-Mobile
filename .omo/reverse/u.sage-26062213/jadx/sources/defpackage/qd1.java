package defpackage;

import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.internal.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.ByteArrayInputStream;
import java.io.InterruptedIOException;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qd1 implements jp3, r20, xj3, x11, la4, pi {
    public final /* synthetic */ int n;
    public Object o;
    public Object p;
    public Object q;
    public Object r;

    public qd1(Typeface typeface, yc2 yc2Var) {
        int i;
        int i2;
        int i3;
        int i4;
        this.n = 10;
        this.r = typeface;
        this.o = yc2Var;
        this.q = new zc2(1024);
        int iB = yc2Var.b(6);
        if (iB != 0) {
            int i5 = iB + yc2Var.n;
            i = ((ByteBuffer) yc2Var.q).getInt(((ByteBuffer) yc2Var.q).getInt(i5) + i5);
        } else {
            i = 0;
        }
        this.p = new char[i * 2];
        int iB2 = yc2Var.b(6);
        if (iB2 != 0) {
            int i6 = iB2 + yc2Var.n;
            i2 = ((ByteBuffer) yc2Var.q).getInt(((ByteBuffer) yc2Var.q).getInt(i6) + i6);
        } else {
            i2 = 0;
        }
        for (int i7 = 0; i7 < i2; i7++) {
            z44 z44Var = new z44(this, i7);
            xc2 xc2VarB = z44Var.b();
            int iB3 = xc2VarB.b(4);
            Character.toChars(iB3 != 0 ? ((ByteBuffer) xc2VarB.q).getInt(iB3 + xc2VarB.n) : 0, (char[]) this.p, i7 * 2);
            xc2 xc2VarB2 = z44Var.b();
            int iB4 = xc2VarB2.b(16);
            if (iB4 != 0) {
                int i8 = iB4 + xc2VarB2.n;
                i3 = ((ByteBuffer) xc2VarB2.q).getInt(((ByteBuffer) xc2VarB2.q).getInt(i8) + i8);
            } else {
                i3 = 0;
            }
            if (!(i3 > 0)) {
                k21.f("invalid metadata codepoint length");
                throw null;
            }
            zc2 zc2Var = (zc2) this.q;
            xc2 xc2VarB3 = z44Var.b();
            int iB5 = xc2VarB3.b(16);
            if (iB5 != 0) {
                int i9 = iB5 + xc2VarB3.n;
                i4 = ((ByteBuffer) xc2VarB3.q).getInt(((ByteBuffer) xc2VarB3.q).getInt(i9) + i9);
            } else {
                i4 = 0;
            }
            zc2Var.a(z44Var, 0, i4 - 1);
        }
    }

    public static void F(qd1 qd1Var, e23 e23Var, e23 e23Var2, int i) {
        wu0 wu0Var;
        if ((i & 1) != 0) {
            e23Var = null;
        }
        if ((i & 4) != 0) {
            e23Var2 = null;
        }
        qd1Var.getClass();
        TimeZone timeZone = hi4.a;
        boolean zIsShutdown = ((ThreadPoolExecutor) qd1Var.r()).isShutdown();
        synchronized (qd1Var) {
            if (e23Var2 != null) {
                try {
                    e23Var2.o.decrementAndGet();
                    if (!((ArrayDeque) qd1Var.q).remove(e23Var2)) {
                        throw new IllegalStateException("Call wasn't in-flight!");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (e23Var != null) {
                ((ArrayDeque) qd1Var.p).add(e23Var);
                e23 e23VarT = qd1Var.t(e23Var.p.o.a.d);
                if (e23VarT != null) {
                    e23Var.o = e23VarT.o;
                }
            }
            if (e23Var2 != null && (zIsShutdown || ((ArrayDeque) qd1Var.q).isEmpty())) {
                ((ArrayDeque) qd1Var.r).isEmpty();
            }
            if (zIsShutdown) {
                List listC0 = o70.C0((ArrayDeque) qd1Var.p);
                ((ArrayDeque) qd1Var.p).clear();
                wu0Var = new wu0(listC0);
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = ((ArrayDeque) qd1Var.p).iterator();
                it.getClass();
                while (it.hasNext()) {
                    e23 e23Var3 = (e23) it.next();
                    if (((ArrayDeque) qd1Var.q).size() >= 64) {
                        break;
                    }
                    if (e23Var3.o.get() < 5) {
                        it.remove();
                        e23Var3.o.incrementAndGet();
                        arrayList.add(e23Var3);
                        ((ArrayDeque) qd1Var.q).add(e23Var3);
                    }
                }
                wu0Var = new wu0(arrayList);
            }
        }
        int size = wu0Var.n.size();
        for (int i2 = 0; i2 < size; i2++) {
            e23 e23Var4 = (e23) wu0Var.n.get(i2);
            if (e23Var4 != e23Var) {
                h23 h23Var = e23Var4.p;
            }
            if (zIsShutdown) {
                e23Var4.getClass();
                InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                interruptedIOException.initCause(null);
                e23Var4.p.h(interruptedIOException);
                ((o20) e23Var4.n.n).g(new f83(interruptedIOException));
            } else {
                ExecutorService executorServiceR = qd1Var.r();
                e23Var4.getClass();
                h23 h23Var2 = e23Var4.p;
                h23Var2.n.a.getClass();
                try {
                    try {
                        ((ThreadPoolExecutor) executorServiceR).execute(e23Var4);
                    } catch (RejectedExecutionException e) {
                        InterruptedIOException interruptedIOException2 = new InterruptedIOException("executor rejected");
                        interruptedIOException2.initCause(e);
                        e23Var4.p.h(interruptedIOException2);
                        ((o20) e23Var4.n.n).g(new f83(interruptedIOException2));
                        qd1 qd1Var2 = h23Var2.n.a;
                        qd1Var2.getClass();
                        F(qd1Var2, null, e23Var4, 3);
                    }
                } catch (Throwable th2) {
                    qd1 qd1Var3 = h23Var2.n.a;
                    qd1Var3.getClass();
                    F(qd1Var3, null, e23Var4, 3);
                    throw th2;
                }
            }
        }
    }

    public bf A(long j, bf bfVar, bf bfVar2) {
        if (((bf) this.q) == null) {
            this.q = bfVar.c();
        }
        bf bfVar3 = (bf) this.q;
        if (bfVar3 == null) {
            nt1.X("velocityVector");
            throw null;
        }
        int iB = bfVar3.b();
        int i = 0;
        while (true) {
            bf bfVar4 = (bf) this.q;
            if (i >= iB) {
                if (bfVar4 != null) {
                    return bfVar4;
                }
                nt1.X("velocityVector");
                throw null;
            }
            if (bfVar4 == null) {
                nt1.X("velocityVector");
                throw null;
            }
            dd1 dd1Var = (dd1) this.o;
            bfVar.getClass();
            long j2 = j / 1000000;
            o71 o71VarA = ((ld) dd1Var.o).a(bfVar2.a(i));
            long j3 = o71VarA.c;
            bfVar4.e(i, (((Math.signum(o71VarA.a) * bb.a(j3 > 0 ? j2 / j3 : 1.0f).b) * o71VarA.b) / j3) * 1000.0f);
            i++;
        }
    }

    public vb4 B(i50 i50Var, String str) {
        vb4 vb4Var;
        vb4 vb4VarA;
        synchronized (((ls3) this.r)) {
            try {
                bc4 bc4Var = (bc4) this.o;
                bc4Var.getClass();
                vb4Var = (vb4) bc4Var.a.get(str);
                if (i50Var.d(vb4Var)) {
                    zb4 zb4Var = (zb4) this.p;
                    if (zb4Var instanceof zc3) {
                        zc3 zc3Var = (zc3) zb4Var;
                        vb4Var.getClass();
                        h22 h22Var = zc3Var.d;
                        if (h22Var != null) {
                            uc3 uc3Var = zc3Var.e;
                            uc3Var.getClass();
                            on4.l(vb4Var, uc3Var, h22Var);
                        }
                    }
                    vb4Var.getClass();
                } else {
                    of2 of2Var = new of2((vk0) this.q);
                    of2Var.a.put(wu4.q, str);
                    zb4 zb4Var2 = (zb4) this.p;
                    zb4Var2.getClass();
                    try {
                        try {
                            vb4VarA = zb4Var2.c(i50Var, of2Var);
                        } catch (AbstractMethodError unused) {
                            vb4VarA = zb4Var2.b(on4.x(i50Var), of2Var);
                        }
                    } catch (AbstractMethodError unused2) {
                        vb4VarA = zb4Var2.a(on4.x(i50Var));
                    }
                    vb4Var = vb4VarA;
                    bc4 bc4Var2 = (bc4) this.o;
                    bc4Var2.getClass();
                    vb4Var.getClass();
                    vb4 vb4Var2 = (vb4) bc4Var2.a.put(str, vb4Var);
                    if (vb4Var2 != null) {
                        vb4Var2.a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return vb4Var;
    }

    public void C(pd1 pd1Var) {
        lc1 lc1Var = pd1Var.c;
        String str = lc1Var.mWho;
        HashMap map = (HashMap) this.p;
        if (map.get(str) != null) {
            return;
        }
        map.put(lc1Var.mWho, pd1Var);
        if (lc1Var.mRetainInstanceChangedWhileDetached) {
            boolean z = lc1Var.mRetainInstance;
            ld1 ld1Var = (ld1) this.r;
            if (z) {
                ld1Var.c(lc1Var);
            } else {
                ld1Var.f(lc1Var);
            }
            lc1Var.mRetainInstanceChangedWhileDetached = false;
        }
        if (hd1.G(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + lc1Var);
        }
    }

    public void D(pd1 pd1Var) {
        lc1 lc1Var = pd1Var.c;
        if (lc1Var.mRetainInstance) {
            ((ld1) this.r).f(lc1Var);
        }
        if (((pd1) ((HashMap) this.p).put(lc1Var.mWho, null)) != null && hd1.G(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + lc1Var);
        }
    }

    public qd1 E() {
        CharSequence charSequence = (CharSequence) this.p;
        Matcher matcher = (Matcher) this.o;
        int iEnd = matcher.end() + (matcher.end() == matcher.start() ? 1 : 0);
        if (iEnd > charSequence.length()) {
            return null;
        }
        Matcher matcher2 = matcher.pattern().matcher(charSequence);
        matcher2.getClass();
        return is0.h(matcher2, iEnd, charSequence);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object G(defpackage.fh0 r10) throws java.lang.Throwable {
        /*
            r9 = this;
            java.lang.Object r0 = r9.p
            z80 r0 = (defpackage.z80) r0
            boolean r1 = r10 instanceof defpackage.gb3
            if (r1 == 0) goto L17
            r1 = r10
            gb3 r1 = (defpackage.gb3) r1
            int r2 = r1.t
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.t = r2
            goto L1c
        L17:
            gb3 r1 = new gb3
            r1.<init>(r9, r10)
        L1c:
            java.lang.Object r10 = r1.r
            int r2 = r1.t
            r3 = 2
            r4 = 1
            t64 r5 = defpackage.t64.a
            r6 = 0
            ri0 r7 = defpackage.ri0.n
            if (r2 == 0) goto L42
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L35
            fh2 r9 = r1.q
            defpackage.gg4.T(r10)     // Catch: java.lang.Throwable -> L33
            goto L75
        L33:
            r10 = move-exception
            goto L80
        L35:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r9)
            return r6
        L3b:
            fh2 r2 = r1.q
            defpackage.gg4.T(r10)
            r10 = r2
            goto L5d
        L42:
            defpackage.gg4.T(r10)
            java.lang.Object r10 = r0.M()
            boolean r10 = r10 instanceof defpackage.rp1
            if (r10 != 0) goto L4e
            return r5
        L4e:
            java.lang.Object r10 = r9.o
            hh2 r10 = (defpackage.hh2) r10
            r1.q = r10
            r1.t = r4
            java.lang.Object r2 = r10.j(r1)
            if (r2 != r7) goto L5d
            goto L73
        L5d:
            java.lang.Object r2 = r0.M()     // Catch: java.lang.Throwable -> L7c
            boolean r2 = r2 instanceof defpackage.rp1     // Catch: java.lang.Throwable -> L7c
            if (r2 != 0) goto L69
            r10.b(r6)
            return r5
        L69:
            r1.q = r10     // Catch: java.lang.Throwable -> L7c
            r1.t = r3     // Catch: java.lang.Throwable -> L7c
            java.lang.Object r9 = r9.n(r1)     // Catch: java.lang.Throwable -> L7c
            if (r9 != r7) goto L74
        L73:
            return r7
        L74:
            r9 = r10
        L75:
            r0.U(r5)     // Catch: java.lang.Throwable -> L33
            r9.b(r6)
            return r5
        L7c:
            r9 = move-exception
            r8 = r10
            r10 = r9
            r9 = r8
        L80:
            r9.b(r6)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qd1.G(fh0):java.lang.Object");
    }

    public void H(vv2 vv2Var) {
        if (((ew2) this.p) == ew2.o) {
            gy1 gy1Var = (gy1) this.o;
            if (gy1Var == null) {
                k21.n("layoutCoordinates not set");
                return;
            } else {
                dm0.N(vv2Var, gy1Var.J(0L), new c8(19, (fw2) this.r), true);
            }
        }
        this.p = ew2.p;
    }

    public void I(nr3 nr3Var) {
        nr3Var.getClass();
        h7 h7Var = new h7(18, this, nr3Var);
        synchronized (this.q) {
        }
        ((Handler) ((wu4) this.o).o).postDelayed(h7Var, 5400000L);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00fe A[Catch: NumberFormatException | JSONException -> 0x010b, NumberFormatException | JSONException -> 0x010b, TRY_LEAVE, TryCatch #0 {NumberFormatException | JSONException -> 0x010b, blocks: (B:10:0x0031, B:24:0x0065, B:24:0x0065, B:26:0x0072, B:26:0x0072, B:28:0x0084, B:28:0x0084, B:29:0x008d, B:29:0x008d, B:51:0x00fe, B:51:0x00fe, B:33:0x009a, B:33:0x009a, B:35:0x00a7, B:35:0x00a7, B:37:0x00b9, B:37:0x00b9, B:38:0x00c2, B:38:0x00c2, B:42:0x00ce, B:42:0x00ce, B:46:0x00de, B:46:0x00de, B:50:0x00f2, B:50:0x00f2), top: B:63:0x0031, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle J() {
        /*
            Method dump skipped, instruction units count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qd1.J():android.os.Bundle");
    }

    public ls4 K(qd1 qd1Var, p55... p55VarArr) {
        ls4 ls4VarD = ls4.f;
        for (p55 p55Var : p55VarArr) {
            ls4VarD = vj4.d(p55Var);
            ai4.q((qd1) this.q);
            if ((ls4VarD instanceof ns4) || (ls4VarD instanceof is4)) {
                ls4VarD = ((pc4) this.o).h(qd1Var, ls4VarD);
            }
        }
        return ls4VarD;
    }

    public ls4 L(ls4 ls4Var) {
        return ((pc4) this.r).h(this, ls4Var);
    }

    public ls4 M(vn4 vn4Var) {
        ls4 ls4VarH = ls4.f;
        Iterator itK = vn4Var.k();
        while (itK.hasNext()) {
            ls4VarH = ((pc4) this.r).h(this, vn4Var.m(((Integer) itK.next()).intValue()));
            if (ls4VarH instanceof jp4) {
                break;
            }
        }
        return ls4VarH;
    }

    public void N(Bundle bundle) {
        f35 f35Var = (f35) this.r;
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        SharedPreferences sharedPreferencesZ = f35Var.z();
        r45 r45Var = (r45) f35Var.a;
        SharedPreferences.Editor editorEdit = sharedPreferencesZ.edit();
        int size = bundle2.size();
        String str = (String) this.o;
        if (size == 0) {
            editorEdit.remove(str);
        } else {
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle2.keySet()) {
                Object obj = bundle2.get(str2);
                if (obj != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("n", str2);
                        er4.a();
                        if (r45Var.d.G(null, e05.P0)) {
                            if (obj instanceof String) {
                                jSONObject.put("v", obj.toString());
                                jSONObject.put("t", "s");
                            } else if (obj instanceof Long) {
                                jSONObject.put("v", obj.toString());
                                jSONObject.put("t", "l");
                            } else if (obj instanceof int[]) {
                                jSONObject.put("v", Arrays.toString((int[]) obj));
                                jSONObject.put("t", "ia");
                            } else if (obj instanceof long[]) {
                                jSONObject.put("v", Arrays.toString((long[]) obj));
                                jSONObject.put("t", "la");
                            } else if (obj instanceof Double) {
                                jSONObject.put("v", obj.toString());
                                jSONObject.put("t", "d");
                            } else {
                                a25 a25Var = r45Var.f;
                                r45.l(a25Var);
                                a25Var.f.b(obj.getClass(), "Cannot serialize bundle value to SharedPreferences. Type");
                            }
                            jSONArray.put(jSONObject);
                        } else {
                            jSONObject.put("v", obj.toString());
                            if (obj instanceof String) {
                                jSONObject.put("t", "s");
                            } else if (obj instanceof Long) {
                                jSONObject.put("t", "l");
                            } else if (obj instanceof Double) {
                                jSONObject.put("t", "d");
                            } else {
                                a25 a25Var2 = r45Var.f;
                                r45.l(a25Var2);
                                a25Var2.f.b(obj.getClass(), "Cannot serialize bundle value to SharedPreferences. Type");
                            }
                            jSONArray.put(jSONObject);
                        }
                    } catch (JSONException e) {
                        a25 a25Var3 = r45Var.f;
                        r45.l(a25Var3);
                        a25Var3.f.b(e, "Cannot serialize bundle value to SharedPreferences");
                    }
                }
            }
            editorEdit.putString(str, jSONArray.toString());
        }
        editorEdit.apply();
        this.q = bundle2;
    }

    public qd1 O() {
        return new qd1(this, (pc4) this.r);
    }

    public boolean P(String str) {
        if (((HashMap) this.p).containsKey(str)) {
            return true;
        }
        qd1 qd1Var = (qd1) this.o;
        if (qd1Var != null) {
            return qd1Var.P(str);
        }
        return false;
    }

    public void Q(String str, ls4 ls4Var) {
        qd1 qd1Var;
        HashMap map = (HashMap) this.p;
        if (!map.containsKey(str) && (qd1Var = (qd1) this.o) != null && qd1Var.P(str)) {
            qd1Var.Q(str, ls4Var);
        } else {
            if (((HashMap) this.q).containsKey(str)) {
                return;
            }
            if (ls4Var == null) {
                map.remove(str);
            } else {
                map.put(str, ls4Var);
            }
        }
    }

    public void R(String str, ls4 ls4Var) {
        if (((HashMap) this.q).containsKey(str)) {
            return;
        }
        HashMap map = (HashMap) this.p;
        if (ls4Var == null) {
            map.remove(str);
        } else {
            map.put(str, ls4Var);
        }
    }

    public ls4 S(String str) {
        HashMap map = (HashMap) this.p;
        if (map.containsKey(str)) {
            return (ls4) map.get(str);
        }
        qd1 qd1Var = (qd1) this.o;
        if (qd1Var != null) {
            return qd1Var.S(str);
        }
        throw new IllegalArgumentException(str + " is not defined");
    }

    @Override // defpackage.xj3
    public qz0 b() {
        return ((pp3) this.o).f262u;
    }

    @Override // defpackage.ia4
    public long c(bf bfVar, bf bfVar2, bf bfVar3) {
        int iB = bfVar.b();
        long jMax = 0;
        for (int i = 0; i < iB; i++) {
            jMax = Math.max(jMax, ((cf) this.o).get(i).d(bfVar.a(i), bfVar2.a(i), bfVar3.a(i)));
        }
        return jMax;
    }

    @Override // defpackage.pi
    public ListenableFuture call() {
        int i = this.n;
        fu0 fu0Var = fu0.n;
        int i2 = 4;
        switch (i) {
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                final bo boVar = (bo) this.o;
                final int i3 = 0;
                final h2 h2VarF = tf1.f((ListenableFuture) this.p, new ge5(boVar, i3), fu0Var);
                final h2 h2VarF2 = tf1.f(h2VarF, (ic5) this.q, (Executor) this.r);
                qi qiVar = new qi() { // from class: he5
                    @Override // defpackage.qi
                    public final ListenableFuture apply(Object obj) {
                        switch (i3) {
                            case 0:
                                bo boVar2 = (bo) boVar;
                                h2 h2Var = (h2) h2VarF;
                                h2 h2Var2 = (h2) h2VarF2;
                                if (tf1.b(h2Var).equals(tf1.b(h2Var2))) {
                                    return tf1.c(obj);
                                }
                                ic5 ic5Var = new ic5(2, boVar2, h2Var2);
                                int i4 = vf5.a;
                                h2 h2VarF3 = tf1.f(h2Var2, new ic5(4, ye5.a(), ic5Var), (fi3) boVar2.e);
                                synchronized (boVar2.i) {
                                    break;
                                }
                                return h2VarF3;
                            default:
                                ce5 ce5Var = (ce5) boVar;
                                return ce5Var.c.k((ic5) h2VarF, (Executor) h2VarF2);
                        }
                    }
                };
                int i4 = vf5.a;
                return tf1.f(h2VarF2, new ic5(i2, ye5.a(), qiVar), fu0Var);
            default:
                final ce5 ce5Var = (ce5) this.o;
                final ic5 ic5Var = (ic5) this.q;
                final Executor executor = (Executor) this.r;
                final int i5 = 1;
                qi qiVar2 = new qi() { // from class: he5
                    @Override // defpackage.qi
                    public final ListenableFuture apply(Object obj) {
                        switch (i5) {
                            case 0:
                                bo boVar2 = (bo) ce5Var;
                                h2 h2Var = (h2) ic5Var;
                                h2 h2Var2 = (h2) executor;
                                if (tf1.b(h2Var).equals(tf1.b(h2Var2))) {
                                    return tf1.c(obj);
                                }
                                ic5 ic5Var2 = new ic5(2, boVar2, h2Var2);
                                int i42 = vf5.a;
                                h2 h2VarF3 = tf1.f(h2Var2, new ic5(4, ye5.a(), ic5Var2), (fi3) boVar2.e);
                                synchronized (boVar2.i) {
                                    break;
                                }
                                return h2VarF3;
                            default:
                                ce5 ce5Var2 = (ce5) ce5Var;
                                return ce5Var2.c.k((ic5) ic5Var, (Executor) executor);
                        }
                    }
                };
                int i6 = vf5.a;
                return tf1.f((s0) this.p, new ic5(i2, ye5.a(), qiVar2), fu0Var);
        }
    }

    @Override // defpackage.xj3
    public int d(b40 b40Var) throws UnsupportedEncodingException {
        int iD = ((pp3) this.o).d(b40Var);
        kf4 kf4Var = (kf4) this.q;
        if (kf4Var.a() && iD >= 0) {
            byte[] bytes = new String(b40Var.n, b40Var.o - iD, iD).concat("\r\n").getBytes((String) this.r);
            w80.L(bytes, "Input");
            kf4Var.e("<< ", new ByteArrayInputStream(bytes));
        }
        return iD;
    }

    @Override // defpackage.x11
    public boolean e() {
        x11 x11Var = (x11) this.p;
        if (x11Var != null) {
            return x11Var.e();
        }
        return false;
    }

    @Override // defpackage.jp3
    public kn3 f() {
        return (hq0) this.r;
    }

    @Override // defpackage.jp3
    public yp3 g() {
        return (iq0) this.q;
    }

    @Override // defpackage.xj3
    public boolean h(int i) {
        return ((pp3) this.o).h(i);
    }

    public void i(lc1 lc1Var) {
        if (((ArrayList) this.o).contains(lc1Var)) {
            q73.k(lc1Var, "Fragment already added: ");
            return;
        }
        synchronized (((ArrayList) this.o)) {
            ((ArrayList) this.o).add(lc1Var);
        }
        lc1Var.mAdded = true;
    }

    public void j(nr3 nr3Var) {
        Runnable runnable;
        nr3Var.getClass();
        synchronized (this.q) {
            runnable = (Runnable) ((LinkedHashMap) this.r).remove(nr3Var);
        }
        if (runnable != null) {
            ((Handler) ((wu4) this.o).o).removeCallbacks(runnable);
        }
    }

    public void l(vv2 vv2Var, boolean z) {
        fw2 fw2Var = (fw2) this.r;
        List list = vv2Var.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((zv2) list.get(i)).c()) {
                H(vv2Var);
                return;
            }
        }
        gy1 gy1Var = (gy1) this.o;
        if (gy1Var == null) {
            k21.n("layoutCoordinates not set");
            return;
        }
        dm0.N(vv2Var, gy1Var.J(0L), new oc(6, this, fw2Var), false);
        if (((ew2) this.p) == ew2.o) {
            if (z) {
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    ((zv2) list.get(i2)).a();
                }
            }
            ft1 ft1Var = vv2Var.b;
            if (ft1Var != null) {
                ft1Var.o = !fw2Var.d;
            }
        }
    }

    @Override // defpackage.ia4
    public bf m(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        if (((bf) this.q) == null) {
            this.q = bfVar3.c();
        }
        bf bfVar4 = (bf) this.q;
        if (bfVar4 == null) {
            nt1.X("velocityVector");
            throw null;
        }
        int iB = bfVar4.b();
        int i = 0;
        while (true) {
            bf bfVar5 = (bf) this.q;
            if (i >= iB) {
                if (bfVar5 != null) {
                    return bfVar5;
                }
                nt1.X("velocityVector");
                throw null;
            }
            if (bfVar5 == null) {
                nt1.X("velocityVector");
                throw null;
            }
            bfVar5.e(i, ((cf) this.o).get(i).c(j, bfVar.a(i), bfVar2.a(i), bfVar3.a(i)));
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0058, code lost:
    
        if (r7 == r2) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0065, code lost:
    
        if (r7 == r2) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object n(defpackage.fh0 r7) {
        /*
            r6 = this;
            java.lang.Object r0 = r6.r
            fn0 r0 = (defpackage.fn0) r0
            boolean r1 = r7 instanceof defpackage.nm0
            if (r1 == 0) goto L17
            r1 = r7
            nm0 r1 = (defpackage.nm0) r1
            int r2 = r1.s
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.s = r2
            goto L1c
        L17:
            nm0 r1 = new nm0
            r1.<init>(r6, r7)
        L1c:
            java.lang.Object r7 = r1.q
            int r2 = r1.s
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L37
            if (r2 == r5) goto L33
            if (r2 != r4) goto L2d
            defpackage.gg4.T(r7)
            goto L5b
        L2d:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            return r3
        L33:
            defpackage.gg4.T(r7)
            goto L68
        L37:
            defpackage.gg4.T(r7)
            java.lang.Object r7 = r6.q
            java.util.List r7 = (java.util.List) r7
            ri0 r2 = defpackage.ri0.n
            if (r7 == 0) goto L5e
            boolean r7 = r7.isEmpty()
            if (r7 == 0) goto L49
            goto L5e
        L49:
            vs1 r7 = r0.i()
            qm0 r5 = new qm0
            r5.<init>(r0, r6, r3)
            r1.s = r4
            java.lang.Object r7 = r7.a(r5, r1)
            if (r7 != r2) goto L5b
            goto L67
        L5b:
            am0 r7 = (defpackage.am0) r7
            goto L6a
        L5e:
            r1.s = r5
            r6 = 0
            java.lang.Object r7 = defpackage.fn0.h(r0, r6, r1)
            if (r7 != r2) goto L68
        L67:
            return r2
        L68:
            am0 r7 = (defpackage.am0) r7
        L6a:
            wu4 r6 = r0.h
            r6.v(r7)
            t64 r6 = defpackage.t64.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qd1.n(fh0):java.lang.Object");
    }

    @Override // defpackage.r20
    public void onCancel() {
        View view = (View) this.o;
        view.clearAnimation();
        ((ViewGroup) this.p).endViewTransition(view);
        ((mq0) this.q).a();
        if (hd1.G(2)) {
            Log.v("FragmentManager", "Animation from operation " + ((pq3) this.r) + " has been cancelled.");
        }
    }

    @Override // defpackage.ia4
    public bf p(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        if (((bf) this.p) == null) {
            this.p = bfVar.c();
        }
        bf bfVar4 = (bf) this.p;
        if (bfVar4 == null) {
            nt1.X("valueVector");
            throw null;
        }
        int iB = bfVar4.b();
        int i = 0;
        while (true) {
            bf bfVar5 = (bf) this.p;
            if (i >= iB) {
                if (bfVar5 != null) {
                    return bfVar5;
                }
                nt1.X("valueVector");
                throw null;
            }
            if (bfVar5 == null) {
                nt1.X("valueVector");
                throw null;
            }
            bfVar5.e(i, ((cf) this.o).get(i).b(j, bfVar.a(i), bfVar2.a(i), bfVar3.a(i)));
            i++;
        }
    }

    @Override // defpackage.ia4
    public bf q(bf bfVar, bf bfVar2, bf bfVar3) {
        if (((bf) this.r) == null) {
            this.r = bfVar3.c();
        }
        bf bfVar4 = (bf) this.r;
        if (bfVar4 == null) {
            nt1.X("endVelocityVector");
            throw null;
        }
        int iB = bfVar4.b();
        int i = 0;
        while (true) {
            bf bfVar5 = (bf) this.r;
            if (i >= iB) {
                if (bfVar5 != null) {
                    return bfVar5;
                }
                nt1.X("endVelocityVector");
                throw null;
            }
            if (bfVar5 == null) {
                nt1.X("endVelocityVector");
                throw null;
            }
            bfVar5.e(i, ((cf) this.o).get(i).e(bfVar.a(i), bfVar2.a(i), bfVar3.a(i)));
            i++;
        }
    }

    public synchronized ExecutorService r() {
        ThreadPoolExecutor threadPoolExecutor;
        try {
            if (((ThreadPoolExecutor) this.o) == null) {
                this.o = new ThreadPoolExecutor(0, Api.BaseClientBuilder.API_PRIORITY_OTHER, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new gi4(hi4.b + " Dispatcher", false));
            }
            threadPoolExecutor = (ThreadPoolExecutor) this.o;
            threadPoolExecutor.getClass();
        } catch (Throwable th) {
            throw th;
        }
        return threadPoolExecutor;
    }

    @Override // defpackage.xj3
    public int read() {
        int i = ((pp3) this.o).read();
        kf4 kf4Var = (kf4) this.q;
        if (kf4Var.a() && i != -1) {
            kf4Var.e("<< ", new ByteArrayInputStream(new byte[]{(byte) i}));
        }
        return i;
    }

    public lc1 s(String str) {
        pd1 pd1Var = (pd1) ((HashMap) this.p).get(str);
        if (pd1Var != null) {
            return pd1Var.c;
        }
        return null;
    }

    public e23 t(String str) {
        Iterator it = ((ArrayDeque) this.q).iterator();
        it.getClass();
        while (it.hasNext()) {
            e23 e23Var = (e23) it.next();
            if (nt1.g(e23Var.p.o.a.d, str)) {
                return e23Var;
            }
        }
        Iterator it2 = ((ArrayDeque) this.p).iterator();
        it2.getClass();
        while (it2.hasNext()) {
            e23 e23Var2 = (e23) it2.next();
            if (nt1.g(e23Var2.p.o.a.d, str)) {
                return e23Var2;
            }
        }
        return null;
    }

    public String toString() {
        switch (this.n) {
            case 5:
                String string = ((Socket) this.o).toString();
                string.getClass();
                return string;
            default:
                return super.toString();
        }
    }

    public lc1 u(String str) {
        lc1 lc1VarFindFragmentByWho;
        for (pd1 pd1Var : ((HashMap) this.p).values()) {
            if (pd1Var != null && (lc1VarFindFragmentByWho = pd1Var.c.findFragmentByWho(str)) != null) {
                return lc1VarFindFragmentByWho;
            }
        }
        return null;
    }

    public ArrayList v() {
        ArrayList arrayList = new ArrayList();
        for (pd1 pd1Var : ((HashMap) this.p).values()) {
            if (pd1Var != null) {
                arrayList.add(pd1Var);
            }
        }
        return arrayList;
    }

    public ArrayList w() {
        ArrayList arrayList = new ArrayList();
        for (pd1 pd1Var : ((HashMap) this.p).values()) {
            if (pd1Var != null) {
                arrayList.add(pd1Var.c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public List x() {
        ArrayList arrayList;
        if (((ArrayList) this.o).isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (((ArrayList) this.o)) {
            arrayList = new ArrayList((ArrayList) this.o);
        }
        return arrayList;
    }

    public List y() {
        if (((qa2) this.r) == null) {
            this.r = new qa2(this);
        }
        qa2 qa2Var = (qa2) this.r;
        qa2Var.getClass();
        return qa2Var;
    }

    public ms1 z() {
        Matcher matcher = (Matcher) this.o;
        return ix.a0(matcher.start(), matcher.end());
    }

    @Override // defpackage.xj3
    public int read(byte[] bArr, int i, int i2) {
        int i3 = ((pp3) this.o).read(bArr, i, i2);
        kf4 kf4Var = (kf4) this.q;
        if (kf4Var.a() && i3 > 0) {
            w80.L(bArr, "Input");
            kf4Var.e("<< ", new ByteArrayInputStream(bArr, i, i3));
        }
        return i3;
    }

    public /* synthetic */ qd1(int i, boolean z) {
        this.n = i;
    }

    public /* synthetic */ qd1(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
        this.q = obj3;
        this.r = obj4;
    }

    public qd1(wu4 wu4Var, pc4 pc4Var) {
        this.n = 14;
        wu4Var.getClass();
        this.o = wu4Var;
        this.p = pc4Var;
        this.q = new Object();
        this.r = new LinkedHashMap();
    }

    public qd1(qd1 qd1Var, pc4 pc4Var) {
        this.n = 22;
        this.p = new HashMap();
        this.q = new HashMap();
        this.o = qd1Var;
        this.r = pc4Var;
    }

    public qd1(f35 f35Var, String str) {
        this.n = 23;
        this.r = f35Var;
        Preconditions.checkNotEmpty(str);
        this.o = str;
        this.p = new Bundle();
    }

    public qd1(qi0 qi0Var, v vVar, ei0 ei0Var, n nVar) {
        this.n = 13;
        this.o = qi0Var;
        this.p = nVar;
        this.q = ix.c(Api.BaseClientBuilder.API_PRIORITY_OTHER, 6, null);
        this.r = new jj(0);
        tu1 tu1Var = (tu1) qi0Var.d().K(mj1.W);
        if (tu1Var != null) {
            tu1Var.V(new md(vVar, this, ei0Var, 9));
        }
    }

    public qd1(int i) {
        this.n = i;
        switch (i) {
            case 7:
                this.p = new ArrayDeque();
                this.q = new ArrayDeque();
                this.r = new ArrayDeque();
                break;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                pc4 pc4Var = new pc4(11);
                this.o = pc4Var;
                qd1 qd1Var = new qd1((qd1) null, pc4Var);
                this.q = qd1Var;
                this.p = qd1Var.O();
                ra3 ra3Var = new ra3(18);
                this.r = ra3Var;
                qd1Var.Q("require", new df5(ra3Var));
                ((HashMap) ra3Var.o).put("internal.platform", gy4.b);
                qd1Var.Q("runtime.counter", new eq4(Double.valueOf(0.0d)));
                break;
            default:
                this.o = new ArrayList();
                this.p = new HashMap();
                this.q = new HashMap();
                break;
        }
    }

    public qd1(bc4 bc4Var, zb4 zb4Var, vk0 vk0Var) {
        this.n = 18;
        bc4Var.getClass();
        zb4Var.getClass();
        vk0Var.getClass();
        this.o = bc4Var;
        this.p = zb4Var;
        this.q = vk0Var;
        this.r = new ls3(1);
    }

    public qd1(Socket socket) {
        this.n = 5;
        this.o = socket;
        this.p = new AtomicInteger();
        this.q = new iq0(this);
        this.r = new hq0(this);
    }

    public qd1(fw2 fw2Var) {
        this.n = 11;
        this.r = fw2Var;
        this.p = ew2.n;
    }

    public qd1(ExecutorService executorService) {
        this.n = 20;
        this.q = new Handler(Looper.getMainLooper());
        this.r = new c73(2, this);
        ji3 ji3Var = new ji3(executorService, 0);
        this.o = ji3Var;
        this.p = ht4.p(ji3Var);
    }

    public qd1(pp3 pp3Var, kf4 kf4Var, String str) {
        this.n = 8;
        this.o = pp3Var;
        this.p = pp3Var;
        this.q = kf4Var;
        this.r = str == null ? uf0.b.name() : str;
    }

    public /* synthetic */ qd1(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    public qd1(sd0 sd0Var, sb0 sb0Var, ym1 ym1Var, Object obj) {
        this.n = 3;
        this.r = sd0Var;
        this.o = sb0Var;
        this.p = ym1Var;
        this.q = obj;
    }

    public qd1(Matcher matcher, CharSequence charSequence) {
        this.n = 9;
        charSequence.getClass();
        this.o = matcher;
        this.p = charSequence;
        this.q = new ra2(0, this);
    }

    public qd1(fn0 fn0Var, List list) {
        this.n = 4;
        this.r = fn0Var;
        this.o = new hh2();
        this.p = ix.d();
        this.q = o70.C0(list);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public qd1(s71 s71Var) {
        this(16, new ra3(10, s71Var));
        this.n = 16;
    }
}
