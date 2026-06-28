package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k55 implements Runnable {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ String o;
    public final /* synthetic */ vc5 p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;

    public /* synthetic */ k55(o55 o55Var, vc5 vc5Var, Bundle bundle, v05 v05Var, String str) {
        this.q = o55Var;
        this.p = vc5Var;
        this.r = bundle;
        this.s = v05Var;
        this.o = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        o95 o95Var;
        n05 n05Var;
        ac5 ac5Var;
        n05 n05Var2;
        switch (this.n) {
            case 0:
                o55 o55Var = (o55) this.q;
                vc5 vc5Var = this.p;
                Bundle bundle = (Bundle) this.r;
                v05 v05Var = (v05) this.s;
                String str = this.o;
                pb5 pb5Var = o55Var.c;
                pb5Var.V();
                try {
                    v05Var.z(pb5Var.d0(bundle, vc5Var));
                    return;
                } catch (RemoteException e) {
                    pb5Var.c().f.c(str, e, "Failed to return trigger URIs for app");
                    return;
                }
            case 1:
                AtomicReference atomicReference2 = (AtomicReference) this.q;
                synchronized (atomicReference2) {
                    try {
                        try {
                            o95Var = (o95) this.s;
                            n05Var = o95Var.d;
                        } catch (RemoteException e2) {
                            a25 a25Var = ((r45) ((o95) this.s).a).f;
                            r45.l(a25Var);
                            a25Var.f.d("(legacy) Failed to get conditional properties; remote exception", null, this.o, e2);
                            ((AtomicReference) this.q).set(Collections.EMPTY_LIST);
                            atomicReference = (AtomicReference) this.q;
                        }
                        if (n05Var == null) {
                            a25 a25Var2 = ((r45) o95Var.a).f;
                            r45.l(a25Var2);
                            a25Var2.f.d("(legacy) Failed to get conditional properties; not connected to service", null, this.o, (String) this.r);
                            atomicReference2.set(Collections.EMPTY_LIST);
                            atomicReference2.notify();
                            return;
                        }
                        if (TextUtils.isEmpty(null)) {
                            vc5 vc5Var2 = this.p;
                            Preconditions.checkNotNull(vc5Var2);
                            atomicReference2.set(n05Var.g(this.o, (String) this.r, vc5Var2));
                        } else {
                            atomicReference2.set(n05Var.v(null, this.o, (String) this.r));
                        }
                        o95Var.I();
                        atomicReference = (AtomicReference) this.q;
                        atomicReference.notify();
                        return;
                    } catch (Throwable th) {
                        ((AtomicReference) this.q).notify();
                        throw th;
                    }
                }
            default:
                mw4 mw4Var = (mw4) this.r;
                String str2 = (String) this.q;
                String str3 = this.o;
                o95 o95Var2 = (o95) this.s;
                ArrayList arrayList = new ArrayList();
                try {
                    try {
                        n05Var2 = o95Var2.d;
                    } catch (RemoteException e3) {
                        a25 a25Var3 = ((r45) o95Var2.a).f;
                        r45.l(a25Var3);
                        a25Var3.f.d("Failed to get conditional properties; remote exception", str3, str2, e3);
                    }
                    if (n05Var2 == null) {
                        r45 r45Var = (r45) o95Var2.a;
                        a25 a25Var4 = r45Var.f;
                        r45.l(a25Var4);
                        a25Var4.f.c(str3, str2, "Failed to get conditional properties; not connected to service");
                        ac5Var = r45Var.i;
                        r45.j(ac5Var);
                        ac5Var.n0(mw4Var, arrayList);
                        return;
                    }
                    vc5 vc5Var3 = this.p;
                    Preconditions.checkNotNull(vc5Var3);
                    arrayList = ac5.o0(n05Var2.g(str3, str2, vc5Var3));
                    o95Var2.I();
                    ac5Var = ((r45) o95Var2.a).i;
                    r45.j(ac5Var);
                    ac5Var.n0(mw4Var, arrayList);
                    return;
                } catch (Throwable th2) {
                    ac5 ac5Var2 = ((r45) o95Var2.a).i;
                    r45.j(ac5Var2);
                    ac5Var2.n0(mw4Var, arrayList);
                    throw th2;
                }
        }
    }

    public k55(o95 o95Var, String str, String str2, vc5 vc5Var, mw4 mw4Var) {
        this.o = str;
        this.q = str2;
        this.p = vc5Var;
        this.r = mw4Var;
        this.s = o95Var;
    }

    public k55(o95 o95Var, AtomicReference atomicReference, String str, String str2, vc5 vc5Var) {
        this.q = atomicReference;
        this.o = str;
        this.r = str2;
        this.p = vc5Var;
        this.s = o95Var;
    }
}
