package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h85 implements Runnable {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ String o;
    public final /* synthetic */ String p;
    public final /* synthetic */ vc5 q;
    public final /* synthetic */ boolean r;
    public final /* synthetic */ o95 s;
    public final /* synthetic */ Object t;

    public h85(o95 o95Var, String str, String str2, vc5 vc5Var, boolean z, mw4 mw4Var) {
        this.o = str;
        this.p = str2;
        this.q = vc5Var;
        this.r = z;
        this.t = mw4Var;
        this.s = o95Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        ac5 ac5Var;
        n05 n05Var;
        r45 r45Var;
        AtomicReference atomicReference;
        o95 o95Var;
        n05 n05Var2;
        switch (this.n) {
            case 0:
                String str = this.p;
                String str2 = this.o;
                mw4 mw4Var = (mw4) this.t;
                o95 o95Var2 = this.s;
                Bundle bundle = new Bundle();
                try {
                    try {
                        n05Var = o95Var2.d;
                        r45Var = (r45) o95Var2.a;
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (RemoteException e) {
                    e = e;
                }
                if (n05Var == null) {
                    a25 a25Var = r45Var.f;
                    r45.l(a25Var);
                    a25Var.f.c(str2, str, "Failed to get user properties; not connected to service");
                    ac5Var = r45Var.i;
                    r45.j(ac5Var);
                    ac5Var.m0(mw4Var, bundle);
                    return;
                }
                vc5 vc5Var = this.q;
                Preconditions.checkNotNull(vc5Var);
                List<vb5> listK = n05Var.k(str2, str, this.r, vc5Var);
                Bundle bundle2 = new Bundle();
                if (listK != null) {
                    for (vb5 vb5Var : listK) {
                        String str3 = vb5Var.r;
                        String str4 = vb5Var.o;
                        if (str3 != null) {
                            bundle2.putString(str4, str3);
                        } else {
                            Long l = vb5Var.q;
                            if (l != null) {
                                bundle2.putLong(str4, l.longValue());
                            } else {
                                Double d = vb5Var.t;
                                if (d != null) {
                                    bundle2.putDouble(str4, d.doubleValue());
                                }
                            }
                        }
                    }
                }
                try {
                    o95Var2.I();
                    ac5 ac5Var2 = r45Var.i;
                    r45.j(ac5Var2);
                    ac5Var2.m0(mw4Var, bundle2);
                    return;
                } catch (RemoteException e2) {
                    e = e2;
                    bundle = bundle2;
                    a25 a25Var2 = ((r45) o95Var2.a).f;
                    r45.l(a25Var2);
                    a25Var2.f.c(str2, e, "Failed to get user properties; remote exception");
                    ac5Var = ((r45) o95Var2.a).i;
                    r45.j(ac5Var);
                    ac5Var.m0(mw4Var, bundle);
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    bundle = bundle2;
                    ac5 ac5Var3 = ((r45) o95Var2.a).i;
                    r45.j(ac5Var3);
                    ac5Var3.m0(mw4Var, bundle);
                    throw th;
                }
            default:
                AtomicReference atomicReference2 = (AtomicReference) this.t;
                synchronized (atomicReference2) {
                    try {
                        try {
                            o95Var = this.s;
                            n05Var2 = o95Var.d;
                        } catch (RemoteException e3) {
                            a25 a25Var3 = ((r45) this.s.a).f;
                            r45.l(a25Var3);
                            a25Var3.f.d("(legacy) Failed to get user properties; remote exception", null, this.o, e3);
                            ((AtomicReference) this.t).set(Collections.EMPTY_LIST);
                            atomicReference = (AtomicReference) this.t;
                        }
                        if (n05Var2 == null) {
                            a25 a25Var4 = ((r45) o95Var.a).f;
                            r45.l(a25Var4);
                            a25Var4.f.d("(legacy) Failed to get user properties; not connected to service", null, this.o, this.p);
                            atomicReference2.set(Collections.EMPTY_LIST);
                            atomicReference2.notify();
                            return;
                        }
                        if (TextUtils.isEmpty(null)) {
                            vc5 vc5Var2 = this.q;
                            Preconditions.checkNotNull(vc5Var2);
                            atomicReference2.set(n05Var2.k(this.o, this.p, this.r, vc5Var2));
                        } else {
                            atomicReference2.set(n05Var2.c(null, this.o, this.p, this.r));
                        }
                        o95Var.I();
                        atomicReference = (AtomicReference) this.t;
                        atomicReference.notify();
                        return;
                    } catch (Throwable th3) {
                        ((AtomicReference) this.t).notify();
                        throw th3;
                    }
                }
        }
    }

    public h85(o95 o95Var, AtomicReference atomicReference, String str, String str2, vc5 vc5Var, boolean z) {
        this.t = atomicReference;
        this.o = str;
        this.p = str2;
        this.q = vc5Var;
        this.r = z;
        this.s = o95Var;
    }
}
