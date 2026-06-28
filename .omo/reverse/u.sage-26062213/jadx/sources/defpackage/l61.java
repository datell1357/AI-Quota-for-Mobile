package defpackage;

import android.text.TextUtils;
import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l61 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ m61 o;

    public /* synthetic */ l61(m61 m61Var, int i) {
        this.n = i;
        this.o = m61Var;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.lang.Runnable
    public final void run() {
        to toVarV;
        to toVarH;
        int i = this.n;
        m61 m61Var = this.o;
        switch (i) {
            case 0:
                m61Var.a();
                return;
            case 1:
                m61Var.a();
                return;
            default:
                Object obj = m61.m;
                synchronized (obj) {
                    try {
                        e61 e61Var = m61Var.a;
                        e61Var.a();
                        gw4 gw4VarC = gw4.c(e61Var.a);
                        try {
                            toVarV = m61Var.c.v();
                            if (gw4VarC != null) {
                                gw4VarC.E();
                            }
                        } catch (Throwable th) {
                            if (gw4VarC != null) {
                                gw4VarC.E();
                            }
                            throw th;
                        }
                    } finally {
                    }
                }
                try {
                    int i2 = toVarV.b;
                    if (i2 == 5) {
                        toVarH = m61Var.h(toVarV);
                    } else {
                        if (i2 == 3) {
                            toVarH = m61Var.h(toVarV);
                        } else if (!m61Var.d.a(toVarV)) {
                            return;
                        } else {
                            toVarH = m61Var.b(toVarV);
                        }
                    }
                    synchronized (obj) {
                        try {
                            e61 e61Var2 = m61Var.a;
                            e61Var2.a();
                            gw4 gw4VarC2 = gw4.c(e61Var2.a);
                            try {
                                m61Var.c.s(toVarH);
                                if (gw4VarC2 != null) {
                                    gw4VarC2.E();
                                }
                            } catch (Throwable th2) {
                                if (gw4VarC2 != null) {
                                    gw4VarC2.E();
                                }
                                throw th2;
                            }
                        } finally {
                        }
                    }
                    synchronized (m61Var) {
                        try {
                            if (m61Var.k.size() != 0 && !TextUtils.equals(toVarV.a, toVarH.a)) {
                                Iterator it = m61Var.k.iterator();
                                if (it.hasNext()) {
                                    if (it.next() != null) {
                                        throw new ClassCastException();
                                    }
                                    throw null;
                                }
                            }
                        } finally {
                        }
                    }
                    if (toVarH.b == 4) {
                        String str = toVarH.a;
                        synchronized (m61Var) {
                            m61Var.j = str;
                        }
                    }
                    int i3 = toVarH.b;
                    if (i3 == 5) {
                        m61Var.i(new o61());
                        return;
                    } else if (i3 == 2 || i3 == 1) {
                        m61Var.i(new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."));
                        return;
                    } else {
                        m61Var.j(toVarH);
                        return;
                    }
                } catch (o61 e) {
                    m61Var.i(e);
                    return;
                }
        }
    }
}
