package defpackage;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.AssetManager;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w85 implements Runnable {
    public final /* synthetic */ int n;
    public Object o;
    public Object p;

    public w85(o95 o95Var, w75 w75Var) {
        this.n = 0;
        this.o = w75Var;
        Objects.requireNonNull(o95Var);
        this.p = o95Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.n) {
            case 0:
                o95 o95Var = (o95) this.p;
                n05 n05Var = o95Var.d;
                r45 r45Var = (r45) o95Var.a;
                if (n05Var == null) {
                    a25 a25Var = r45Var.f;
                    r45.l(a25Var);
                    a25Var.f.a("Failed to send current screen to service");
                    return;
                }
                try {
                    w75 w75Var = (w75) this.o;
                    if (w75Var == null) {
                        n05Var.p(0L, null, null, r45Var.a.getPackageName());
                    } else {
                        n05Var.p(w75Var.c, w75Var.a, w75Var.b, r45Var.a.getPackageName());
                    }
                    o95Var.I();
                    return;
                } catch (RemoteException e) {
                    a25 a25Var2 = ((r45) o95Var.a).f;
                    r45.l(a25Var2);
                    a25Var2.f.b(e, "Failed to send current screen to the service");
                    return;
                }
            case 1:
                ((j95) this.p).c.G((ComponentName) this.o);
                return;
            case 2:
                o95 o95Var2 = ((j95) this.p).c;
                o95Var2.d = null;
                if (((ConnectionResult) this.o).getErrorCode() != 7777) {
                    o95Var2.K();
                    return;
                }
                if (o95Var2.g == null) {
                    o95Var2.g = Executors.newScheduledThreadPool(1);
                }
                o95Var2.g.schedule(new o9(18, this), ((Long) e05.Z.a(null)).longValue(), TimeUnit.MILLISECONDS);
                return;
            case 3:
                pb5 pb5Var = (pb5) this.o;
                pb5Var.V();
                Runnable runnable = (Runnable) this.p;
                pb5Var.d().v();
                if (pb5Var.p == null) {
                    pb5Var.p = new ArrayList();
                }
                pb5Var.p.add(runnable);
                pb5Var.q();
                return;
            case 4:
                ra3 ra3Var = (ra3) this.o;
                JobParameters jobParameters = (JobParameters) this.p;
                Log.v("FA", "[sgtm] AppMeasurementJobService processed last Scion upload request.");
                ((u95) ((Service) ra3Var.o)).c(jobParameters);
                return;
            case 5:
                n25 n25Var = (n25) this.p;
                try {
                    ow3 ow3VarThen = ((wt3) n25Var.p).then(((ow3) this.o).g());
                    if (ow3VarThen == null) {
                        n25Var.c(new NullPointerException("Continuation returned null"));
                        return;
                    }
                    gu0 gu0Var = qw3.b;
                    ow3VarThen.c(gu0Var, n25Var);
                    ow3VarThen.b(gu0Var, n25Var);
                    ow3VarThen.a(gu0Var, n25Var);
                    return;
                } catch (hb3 e2) {
                    if (e2.getCause() instanceof Exception) {
                        n25Var.c((Exception) e2.getCause());
                        return;
                    } else {
                        n25Var.c(e2);
                        return;
                    }
                } catch (CancellationException unused) {
                    n25Var.a();
                    return;
                } catch (Exception e3) {
                    n25Var.c(e3);
                    return;
                }
            case 6:
                Context context = ((o75) this.o).b;
                e53 e53VarB = bc5.q;
                if (e53VarB == null) {
                    synchronized (bc5.p) {
                        e53VarB = bc5.q;
                        if (e53VarB == null) {
                            hb hbVar = new hb(4);
                            try {
                                String[] list = context.getAssets().list("phenotype");
                                if (list != null) {
                                    for (String str : list) {
                                        if (str.endsWith("_package_metadata.binarypb")) {
                                            try {
                                                AssetManager assets = context.getAssets();
                                                StringBuilder sb = new StringBuilder(str.length() + 10);
                                                sb.append("phenotype/");
                                                sb.append(str);
                                                InputStream inputStreamOpen = assets.open(sb.toString());
                                                try {
                                                    kn4 kn4Var = kn4.a;
                                                    int i = um4.a;
                                                    bc5 bc5Var = new bc5(context, cc5.v(inputStreamOpen, kn4.b));
                                                    hbVar.h(bc5Var.o, bc5Var);
                                                    if (inputStreamOpen != null) {
                                                        inputStreamOpen.close();
                                                    }
                                                } catch (Throwable th) {
                                                    if (inputStreamOpen != null) {
                                                        try {
                                                            inputStreamOpen.close();
                                                        } catch (Throwable th2) {
                                                            th.addSuppressed(th2);
                                                        }
                                                        break;
                                                    }
                                                    throw th;
                                                }
                                            } catch (fo4 e4) {
                                                StringBuilder sb2 = new StringBuilder(str.length() + 45);
                                                sb2.append("Unable to read Phenotype PackageMetadata for ");
                                                sb2.append(str);
                                                Log.e("PackageInfo", sb2.toString(), e4);
                                            }
                                        }
                                    }
                                }
                            } catch (IOException e5) {
                                Log.e("PackageInfo", "Unable to read Phenotype PackageMetadata from assets.", e5);
                            }
                            e53VarB = hbVar.b(true);
                            bc5.q = e53VarB;
                        }
                        break;
                    }
                }
                String str2 = (String) this.p;
                if (e53VarB.containsKey(str2)) {
                    return;
                }
                StringBuilder sb3 = new StringBuilder(String.valueOf(str2).length() + 173);
                sb3.append("Config package ");
                sb3.append(str2);
                sb3.append(" cannot use FILE backing without declarative registration. See go/phenotype-android-integration#phenotype for more information. This will lead to stale flags.");
                Log.e("FilePhenotypeFlags", sb3.toString());
                return;
            case 7:
                this.o = null;
                this.p = null;
                return;
            default:
                ef5 ef5Var = (ef5) this.o;
                try {
                    ef5Var.n(((Callable) this.p).call());
                    return;
                } catch (Exception e6) {
                    ef5Var.p(e6);
                    return;
                } catch (Throwable th3) {
                    ef5Var.p(new RuntimeException(th3));
                    return;
                }
        }
    }

    public /* synthetic */ w85(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj2;
        this.p = obj;
    }

    public /* synthetic */ w85(int i, Object obj, Object obj2, boolean z) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }

    public w85(ra3 ra3Var, pb5 pb5Var, Runnable runnable) {
        this.n = 3;
        this.o = pb5Var;
        this.p = runnable;
    }

    public /* synthetic */ w85() {
        this.n = 7;
    }
}
