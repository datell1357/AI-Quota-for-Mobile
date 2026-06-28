package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Trace;
import androidx.work.impl.WorkDatabase;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class eg4 {
    public static eg4 k;
    public static eg4 l;
    public static final Object m;
    public final Context a;
    public final md0 b;
    public final WorkDatabase c;
    public final qd1 d;
    public final List e;
    public final ez2 f;
    public final dd1 g;
    public boolean h = false;
    public BroadcastReceiver.PendingResult i;
    public final rp j;

    static {
        t72.i("WorkManagerImpl");
        k = null;
        l = null;
        m = new Object();
    }

    public eg4(Context context, final md0 md0Var, qd1 qd1Var, final WorkDatabase workDatabase, final List list, ez2 ez2Var, rp rpVar) {
        int i = 0;
        Context applicationContext = context.getApplicationContext();
        js2 js2Var = null;
        if (applicationContext.isDeviceProtectedStorage()) {
            k21.n("Cannot initialize WorkManager in direct boot mode");
            throw null;
        }
        t72 t72Var = new t72(md0Var.h);
        synchronized (t72.o) {
            try {
                if (t72.p == null) {
                    t72.p = t72Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.a = applicationContext;
        this.d = qd1Var;
        this.c = workDatabase;
        this.f = ez2Var;
        this.j = rpVar;
        this.b = md0Var;
        this.e = list;
        ji0 ji0Var = (ji0) qd1Var.p;
        ji0Var.getClass();
        bh0 bh0VarC = dm0.c(ji0Var);
        this.g = new dd1(10, workDatabase);
        final ji3 ji3Var = (ji3) qd1Var.o;
        String str = zd3.a;
        ez2Var.a(new f31() { // from class: yd3
            @Override // defpackage.f31
            public final void d(bg4 bg4Var, boolean z) {
                ji3Var.execute(new yp0(list, bg4Var, md0Var, workDatabase, 1));
            }
        });
        ((ji3) qd1Var.o).execute(new ub1(applicationContext, this));
        String str2 = q64.a;
        if (dz2.a(applicationContext, md0Var)) {
            ga3 ga3Var = workDatabase.w().a;
            ba4 ba4Var = new ba4(17);
            bu1 bu1VarF = ga3Var.f();
            int i2 = 1;
            String[] strArr = (String[]) Arrays.copyOf(new String[]{"workspec"}, 1);
            v24 v24Var = bu1VarF.b;
            v24Var.getClass();
            hk3 hk3Var = new hk3();
            for (String str3 : strArr) {
                LinkedHashMap linkedHashMap = v24Var.c;
                String lowerCase = str3.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                Set set = (Set) linkedHashMap.get(lowerCase);
                if (set != null) {
                    hk3Var.addAll(set);
                } else {
                    hk3Var.add(str3);
                }
            }
            String[] strArr2 = (String[]) is0.o(hk3Var).toArray(new String[0]);
            int length = strArr2.length;
            int[] iArr = new int[length];
            while (true) {
                if (i >= length) {
                    js2Var = new js2(strArr2, iArr);
                    break;
                }
                String str4 = strArr2[i];
                LinkedHashMap linkedHashMap2 = v24Var.f;
                String lowerCase2 = str4.toLowerCase(Locale.ROOT);
                lowerCase2.getClass();
                Integer num = (Integer) linkedHashMap2.get(lowerCase2);
                if (num == null) {
                    k21.f("There is no table with name ".concat(str4));
                    break;
                } else {
                    iArr[i] = num.intValue();
                    i++;
                }
            }
            String[] strArr3 = (String[]) js2Var.n;
            int[] iArr2 = (int[]) js2Var.o;
            strArr3.getClass();
            iArr2.getClass();
            dh0 dh0Var = null;
            int i3 = 3;
            ca.y(bh0VarC, null, null, new x50(new k81(qj0.D(qj0.u(new vq(i3, new c91(qj0.u(new mt(i3, new qd(v24Var, iArr2, strArr3, dh0Var, 12)), -1), ga3Var, ba4Var, i2), new p64(4, null)), -1)), new ms(applicationContext, null), 2), dh0Var, 4), 3);
        }
    }

    public static eg4 c(Context context) {
        eg4 eg4Var;
        Object obj = m;
        synchronized (obj) {
            try {
                synchronized (obj) {
                    eg4Var = k;
                    if (eg4Var == null) {
                        eg4Var = l;
                    }
                }
                return eg4Var;
            } catch (Throwable th) {
                throw th;
            } finally {
            }
        }
        if (eg4Var != null) {
            return eg4Var;
        }
        context.getApplicationContext();
        throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
    }

    public final void a(op2 op2Var) {
        op2Var.getClass();
        List listE = tv4.E(op2Var);
        if (listE.isEmpty()) {
            k21.f("enqueue needs at least one WorkRequest.");
        } else {
            new tf4(this, null, x31.o, listE, 0).a();
        }
    }

    public final void b(String str, op2 op2Var) {
        op2Var.getClass();
        new tf4(this, str, x31.n, tv4.E(op2Var), 0).a();
    }

    public final void d() {
        synchronized (m) {
            try {
                this.h = true;
                BroadcastReceiver.PendingResult pendingResult = this.i;
                if (pendingResult != null) {
                    pendingResult.finish();
                    this.i = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        qv3 qv3Var = this.b.m;
        vc3 vc3Var = new vc3(12, this);
        qv3Var.getClass();
        boolean zB = ix.B();
        if (zB) {
            try {
                Trace.beginSection(ix.Y("ReschedulingWork"));
            } finally {
                if (zB) {
                    Trace.endSection();
                }
            }
        }
        vc3Var.a();
    }
}
