package defpackage;

import java.io.FileOutputStream;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wc0 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ wc0(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        boolean z = false;
        switch (this.a) {
            case 0:
                yc0 yc0Var = (yc0) this.b;
                ad0 ad0Var = (ad0) this.c;
                kd0 kd0Var = yc0Var.b;
                synchronized (kd0Var) {
                    FileOutputStream fileOutputStreamOpenFileOutput = kd0Var.a.openFileOutput(kd0Var.b, 0);
                    try {
                        fileOutputStreamOpenFileOutput.write(ad0Var.a.toString().getBytes("UTF-8"));
                    } finally {
                        fileOutputStreamOpenFileOutput.close();
                    }
                }
                return null;
            case 1:
                s61 s61Var = (s61) this.b;
                o00 o00Var = (o00) this.c;
                jd0 jd0Var = s61Var.h;
                synchronized (jd0Var.b) {
                    jd0Var.a.edit().putLong("fetch_timeout_in_seconds", 60L).putLong("minimum_fetch_interval_in_seconds", o00Var.b).commit();
                    break;
                }
                return null;
            default:
                cg4 cg4Var = cg4.n;
                dh4 dh4Var = (dh4) this.b;
                hh4 hh4Var = (hh4) this.c;
                String str = hh4Var.l;
                String str2 = hh4Var.c;
                qg4 qg4Var = hh4Var.i;
                og4 og4Var = hh4Var.a;
                if (dh4Var instanceof bh4) {
                    u42 u42Var = ((bh4) dh4Var).a;
                    cg4 cg4VarB = qg4Var.b(str2);
                    jg4 jg4VarV = hh4Var.h.v();
                    jg4VarV.getClass();
                    gg4.N(jg4VarV.a, false, true, new ao0(str2, 13));
                    if (cg4VarB != null) {
                        if (cg4VarB == cg4.o) {
                            if (u42Var instanceof t42) {
                                String str3 = ih4.a;
                                t72.g().h(str3, "Worker result SUCCESS for " + str);
                                if (og4Var.c()) {
                                    hh4Var.c();
                                } else {
                                    qg4Var.h(cg4.p, str2);
                                    zl0 zl0Var = ((t42) u42Var).a;
                                    zl0Var.getClass();
                                    gg4.N(qg4Var.a, false, true, new q14(7, zl0Var, str2));
                                    hh4Var.f.getClass();
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    js0 js0Var = hh4Var.j;
                                    for (String str4 : js0Var.a(str2)) {
                                        if (qg4Var.b(str4) == cg4.r && ((Boolean) gg4.N(js0Var.a, true, false, new ao0(str4, 3))).booleanValue()) {
                                            t72.g().h(ih4.a, "Setting status to enqueued for ".concat(str4));
                                            qg4Var.h(cg4Var, str4);
                                            qg4Var.g(jCurrentTimeMillis, str4);
                                        }
                                    }
                                }
                            } else if (u42Var instanceof s42) {
                                String str5 = ih4.a;
                                t72.g().h(str5, "Worker result RETRY for " + str);
                                hh4Var.b(-256);
                                z = true;
                            } else {
                                String str6 = ih4.a;
                                t72.g().h(str6, "Worker result FAILURE for " + str);
                                if (og4Var.c()) {
                                    hh4Var.c();
                                } else {
                                    hh4Var.d(u42Var);
                                }
                            }
                        } else if (!cg4VarB.a()) {
                            hh4Var.b(-512);
                            z = true;
                        }
                    }
                } else if (dh4Var instanceof ah4) {
                    u42 u42Var2 = ((ah4) dh4Var).a;
                    String str7 = ih4.a;
                    t72.g().h(str7, "Worker result FAILURE for " + str);
                    if (og4Var.c()) {
                        hh4Var.c();
                    } else {
                        hh4Var.d(u42Var2);
                    }
                } else {
                    if (!(dh4Var instanceof ch4)) {
                        p61.x();
                        return null;
                    }
                    int i = ((ch4) dh4Var).a;
                    if (nt1.g(og4Var.y, Boolean.TRUE)) {
                        String str8 = ih4.a;
                        t72.g().c(str8, "Worker " + og4Var.c + " was interrupted. Backing off.");
                        hh4Var.b(i);
                    } else {
                        cg4 cg4VarB2 = qg4Var.b(str2);
                        if (cg4VarB2 == null || cg4VarB2.a()) {
                            String str9 = ih4.a;
                            t72.g().c(str9, "Status for " + str2 + " is " + cg4VarB2 + " ; not doing any work");
                        } else {
                            String str10 = ih4.a;
                            t72.g().c(str10, "Status for " + str2 + " is " + cg4VarB2 + "; not doing any work and rescheduling for later execution");
                            qg4Var.h(cg4Var, str2);
                            qg4Var.i(i, str2);
                            qg4Var.e(-1L, str2);
                        }
                    }
                    z = true;
                }
                return Boolean.valueOf(z);
        }
    }
}
