package defpackage;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class wu4 implements l8, ux, yb2, wt3, w70, bo2 {
    public static volatile wu4 p;
    public static final ls3 q = new ls3(11);
    public static final ry4 r = new ry4(1);
    public static final dg5 s = new dg5();
    public final /* synthetic */ int n;
    public Object o;

    public wu4(int i) {
        b05 b05Var;
        this.n = i;
        switch (i) {
            case 3:
                try {
                    b05Var = (b05) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
                } catch (Exception unused) {
                    b05Var = r;
                }
                vz4 vz4Var = new vz4(ry4.b, b05Var);
                Charset charset = dz4.a;
                this.o = vz4Var;
                break;
            case 5:
                if (Build.VERSION.SDK_INT < 26) {
                    this.o = new k3(this);
                } else {
                    this.o = new l3(this);
                }
                break;
            case 10:
                this.o = new AtomicReference(null);
                break;
            case 13:
                this.o = new gt4();
                break;
            case 16:
                TimeUnit.MINUTES.getClass();
                tw3 tw3Var = tw3.l;
                tw3Var.getClass();
                this.o = new az0(tw3Var);
                break;
            case 19:
                this.o = xr3.a(j64.b);
                break;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                this.o = w80.p(Looper.getMainLooper());
                break;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                this.o = new wp3(fl4.p);
                break;
            case 28:
                this.o = new dc3();
                break;
            default:
                this.o = new CopyOnWriteArrayList();
                break;
        }
    }

    public static String t(String str, Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put("name", str);
        jSONObject.put("parameters", jSONObject2);
        return jSONObject.toString();
    }

    public static void w(String str, cg5 cg5Var) {
        StringBuilder sb = new StringBuilder();
        sb.append(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ").format(new Date(cg5Var.b / 1000000)));
        sb.append(": logging error [");
        kg5 kg5Var = cg5Var.d;
        if (kg5Var == null) {
            k21.n("cannot request log site information prior to postProcess()");
            return;
        }
        ve4.c(1, kg5Var, sb);
        sb.append("]: ");
        sb.append(str);
        System.err.println(sb);
        System.err.flush();
    }

    @Override // defpackage.w70
    public long a() {
        vr0 vr0Var = (vr0) this.o;
        return ((ua2) n44.g0(vr0Var, wa2.a)).a.g;
    }

    @Override // defpackage.yb2
    public void b(ub2 ub2Var, MenuItem menuItem) {
        ((g30) this.o).s.removeCallbacksAndMessages(ub2Var);
    }

    @Override // defpackage.ux
    public void c(hj0 hj0Var) {
        this.o = hj0Var;
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Registered Firebase Analytics event receiver for breadcrumbs", null);
        }
    }

    @Override // defpackage.yb2
    public void d(ub2 ub2Var, zb2 zb2Var) {
        g30 g30Var = (g30) this.o;
        Handler handler = g30Var.s;
        handler.removeCallbacksAndMessages(null);
        ArrayList arrayList = g30Var.f104u;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (ub2Var == ((f30) arrayList.get(i)).b) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        int i2 = i + 1;
        handler.postAtTime(new e30(this, i2 < arrayList.size() ? (f30) arrayList.get(i2) : null, zb2Var, ub2Var, 0), ub2Var, SystemClock.uptimeMillis() + 200);
    }

    @Override // defpackage.bo2
    public void e(Object obj) {
        p22 p22Var = (p22) obj;
        nt0 nt0Var = (nt0) this.o;
        if (p22Var == null || !nt0Var.mShowsDialog) {
            return;
        }
        View viewRequireView = nt0Var.requireView();
        if (viewRequireView.getParent() != null) {
            k21.n("DialogFragment can not be attached to a container view");
            return;
        }
        if (nt0Var.mDialog != null) {
            if (hd1.G(3)) {
                Log.d("FragmentManager", "DialogFragment " + this + " setting the content view on " + nt0Var.mDialog);
            }
            nt0Var.mDialog.setContentView(viewRequireView);
        }
    }

    public void f(xy1 xy1Var) {
        if (!xy1Var.H()) {
            ar1.b("DepthSortedSet.add called on an unattached node");
        }
        ((wp3) this.o).add(xy1Var);
    }

    @Override // defpackage.l8
    public void h(String str, Bundle bundle) {
        hj0 hj0Var = (hj0) this.o;
        if (hj0Var != null) {
            try {
                String str2 = "$A$:" + t(str, bundle);
                ij0 ij0Var = hj0Var.a;
                ((qk0) ij0Var.o.o).b(new fj0(ij0Var, System.currentTimeMillis() - ij0Var.d, str2));
            } catch (JSONException unused) {
                Log.w("FirebaseCrashlytics", "Unable to serialize Firebase Analytics event to breadcrumb.", null);
            }
        }
    }

    public j3 i(int i) {
        return null;
    }

    public void j() {
        ((zb0) this.o).getClass();
    }

    public j3 k(int i) {
        return null;
    }

    public vb4 l(i50 i50Var) {
        qd1 qd1Var = (qd1) this.o;
        String strB = i50Var.b();
        if (strB != null) {
            return qd1Var.B(i50Var, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(strB));
        }
        k21.f("Local and anonymous classes can not be ViewModels");
        return null;
    }

    public sr3 m() {
        return (sr3) ((wr3) this.o).getValue();
    }

    public tr3 n() {
        hz0 hz0VarA = hz0.a();
        if (hz0VarA.b() == 1) {
            return new bp1(true);
        }
        ws2 ws2VarA = ca.A(Boolean.FALSE);
        hz0VarA.g(new jp0(ws2VarA, this));
        return ws2VarA;
    }

    public KeyListener o(KeyListener keyListener) {
        if (keyListener instanceof NumberKeyListener) {
            return keyListener;
        }
        ((gw4) ((dh1) this.o).n).getClass();
        if (keyListener instanceof rz0) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new rz0(keyListener);
    }

    public void p(ed0 ed0Var, Thread thread, Throwable th) {
        dj0 dj0Var = (dj0) this.o;
        synchronized (dj0Var) {
            String str = "Handling uncaught exception \"" + th + "\" from thread " + thread.getName();
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", str, null);
            }
            qn0.B();
            try {
                i94.a(((qk0) dj0Var.e.o).b(new bj0(dj0Var, System.currentTimeMillis(), th, thread, ed0Var)));
            } catch (TimeoutException unused) {
                Log.e("FirebaseCrashlytics", "Cannot send reports. Timed out while fetching settings.", null);
            } catch (Exception e) {
                Log.e("FirebaseCrashlytics", "Error handling uncaught exception", e);
            }
        }
    }

    public boolean q(int i, int i2, Bundle bundle) {
        return false;
    }

    public JSONObject r() throws Throwable {
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        FileInputStream fileInputStream2 = null;
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Checking for cached settings...", null);
        }
        try {
            File file = (File) this.o;
            if (file.exists()) {
                fileInputStream = new FileInputStream(file);
                try {
                    try {
                        jSONObject = new JSONObject(w80.W(fileInputStream));
                        fileInputStream2 = fileInputStream;
                    } catch (Exception e) {
                        e = e;
                        Log.e("FirebaseCrashlytics", "Failed to fetch cached settings", e);
                        w80.n(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    w80.n(fileInputStream2, "Error while closing settings cache file.");
                    throw th;
                }
            } else {
                if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                    Log.v("FirebaseCrashlytics", "Settings file does not exist.", null);
                }
                jSONObject = null;
            }
            w80.n(fileInputStream2, "Error while closing settings cache file.");
            return jSONObject;
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            w80.n(fileInputStream2, "Error while closing settings cache file.");
            throw th;
        }
    }

    public boolean s(xy1 xy1Var) {
        if (!xy1Var.H()) {
            ar1.b("DepthSortedSet.remove called on an unattached node");
        }
        return ((wp3) this.o).remove(xy1Var);
    }

    @Override // defpackage.wt3
    public ow3 then(Object obj) {
        mk3 mk3Var = (mk3) obj;
        gw4 gw4Var = (gw4) this.o;
        if (mk3Var == null) {
            Log.w("FirebaseCrashlytics", "Received null app settings at app startup. Cannot send cached reports", null);
            return mt1.t(null);
        }
        dj0 dj0Var = (dj0) gw4Var.p;
        dj0.a(dj0Var);
        dj0Var.m.r(null, (qk0) dj0Var.e.o);
        dj0Var.q.d(null);
        return mt1.t(null);
    }

    public String toString() {
        switch (this.n) {
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return ((wp3) this.o).toString();
            default:
                return super.toString();
        }
    }

    public void u(boolean z) {
        yz0 yz0Var = (yz0) ((gw4) ((dh1) this.o).n).p;
        if (yz0Var.p != z) {
            if (yz0Var.o != null) {
                hz0 hz0VarA = hz0.a();
                xz0 xz0Var = yz0Var.o;
                hz0VarA.getClass();
                bi4.k(xz0Var, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = hz0VarA.a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    hz0VarA.b.remove(xz0Var);
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
            yz0Var.p = z;
            if (z) {
                yz0.a(yz0Var.n, hz0.a().b());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void v(defpackage.sr3 r5) {
        /*
            r4 = this;
            r5.getClass()
            java.lang.Object r4 = r4.o
            wr3 r4 = (defpackage.wr3) r4
        L7:
            java.lang.Object r0 = r4.getValue()
            r1 = r0
            sr3 r1 = (defpackage.sr3) r1
            boolean r2 = r1 instanceof defpackage.x13
            if (r2 != 0) goto L3c
            j64 r2 = defpackage.j64.b
            boolean r2 = defpackage.nt1.g(r1, r2)
            if (r2 == 0) goto L1b
            goto L3c
        L1b:
            boolean r2 = r1 instanceof defpackage.am0
            if (r2 == 0) goto L29
            int r2 = r5.a
            r3 = r1
            am0 r3 = (defpackage.am0) r3
            int r3 = r3.a
            if (r2 <= r3) goto L3d
            goto L3c
        L29:
            boolean r2 = r1 instanceof defpackage.y51
            if (r2 == 0) goto L2e
            goto L3d
        L2e:
            boolean r4 = r1 instanceof defpackage.fm2
            if (r4 == 0) goto L38
            java.lang.String r4 = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"
            defpackage.k21.n(r4)
            return
        L38:
            defpackage.p61.x()
            return
        L3c:
            r1 = r5
        L3d:
            sg0 r2 = defpackage.jn2.a
            if (r0 != 0) goto L42
            r0 = r2
        L42:
            if (r1 != 0) goto L45
            r1 = r2
        L45:
            boolean r0 = r4.i(r0, r1)
            if (r0 == 0) goto L7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wu4.v(sr3):void");
    }

    public /* synthetic */ wu4(int i, boolean z) {
        this.n = i;
    }

    public /* synthetic */ wu4(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    public wu4(q51 q51Var) {
        this.n = 12;
        this.o = new File((File) q51Var.c, "com.crashlytics.settings.json");
    }

    public wu4(boolean z) {
        this.n = 9;
        this.o = new AtomicBoolean(z);
    }

    public wu4(fg fgVar) {
        this.n = 8;
        dh1 dh1Var = new dh1();
        dh1Var.n = new gw4(fgVar);
        this.o = dh1Var;
    }

    public wu4(bc4 bc4Var, zb4 zb4Var, vk0 vk0Var) {
        this.n = 2;
        bc4Var.getClass();
        zb4Var.getClass();
        vk0Var.getClass();
        this.o = new qd1(bc4Var, zb4Var, vk0Var);
    }

    public void g(int i, j3 j3Var, String str, Bundle bundle) {
    }
}
