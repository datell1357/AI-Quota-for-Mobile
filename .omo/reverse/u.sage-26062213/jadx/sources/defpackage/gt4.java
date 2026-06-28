package defpackage;

import android.app.ActivityManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.auth.blockstore.RetrieveBytesRequest;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gt4 implements p75, qo4, RemoteCall, pi, xo2, cu3 {
    public final /* synthetic */ int n;
    public final Object o;

    public gt4(AppMeasurementSdk appMeasurementSdk, gw4 gw4Var) {
        this.n = 2;
        this.o = gw4Var;
        appMeasurementSdk.a(new ww4(1, this));
    }

    public void a() {
        ia5 ia5Var = (ia5) this.o;
        ia5Var.v();
        r45 r45Var = (r45) ia5Var.a;
        f35 f35Var = r45Var.e;
        r45.j(f35Var);
        Clock clock = r45Var.k;
        if (f35Var.E(clock.currentTimeMillis())) {
            f35 f35Var2 = r45Var.e;
            r45.j(f35Var2);
            f35Var2.l.b(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                a25 a25Var = r45Var.f;
                r45.l(a25Var);
                a25Var.n.a("Detected application was in foreground");
                e(clock.currentTimeMillis(), r45Var.d.G(null, e05.e1) ? clock.elapsedRealtime() : 0L);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public void accept(Object obj, Object obj2) {
        int i = this.n;
        Object obj3 = this.o;
        switch (i) {
            case 6:
                y65 y65Var = (y65) ((a75) obj).getService();
                n65 n65Var = new n65((w65) obj3, (pw3) obj2);
                Parcel parcelF = y65Var.F();
                ku4.c(parcelF, n65Var);
                y65Var.G(27, parcelF);
                break;
            case 13:
                cf5 cf5Var = new cf5(0, (pw3) obj2);
                h05 h05Var = (h05) ((zy4) obj).getService();
                Parcel parcelObtainAndWriteInterfaceToken = h05Var.obtainAndWriteInterfaceToken();
                int i2 = kv4.a;
                parcelObtainAndWriteInterfaceToken.writeStrongBinder(cf5Var.asBinder());
                kv4.b(parcelObtainAndWriteInterfaceToken, (RetrieveBytesRequest) obj3);
                h05Var.transactAndReadExceptionReturnVoid(12, parcelObtainAndWriteInterfaceToken);
                break;
            default:
                hb5 hb5Var = (hb5) ((l45) obj).getService();
                uf5 uf5Var = new uf5((pw3) obj2);
                Parcel parcelZza = hb5Var.zza();
                iv4.d(parcelZza, uf5Var);
                iv4.c(parcelZza, (zu4) obj3);
                hb5Var.zzc(2, parcelZza);
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    @Override // defpackage.p75
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(int r18, java.lang.Throwable r19, byte[] r20) {
        /*
            Method dump skipped, instruction units count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gt4.b(int, java.lang.Throwable, byte[]):void");
    }

    public void c(int i, String str, List list, boolean z, boolean z2) {
        x15 x15Var;
        w35 w35Var = (w35) this.o;
        int i2 = i - 1;
        if (i2 == 0) {
            a25 a25Var = ((r45) w35Var.a).f;
            r45.l(a25Var);
            x15Var = a25Var.m;
        } else if (i2 != 1) {
            if (i2 == 3) {
                a25 a25Var2 = ((r45) w35Var.a).f;
                r45.l(a25Var2);
                x15Var = a25Var2.n;
            } else if (i2 != 4) {
                a25 a25Var3 = ((r45) w35Var.a).f;
                r45.l(a25Var3);
                x15Var = a25Var3.l;
            } else if (z) {
                a25 a25Var4 = ((r45) w35Var.a).f;
                r45.l(a25Var4);
                x15Var = a25Var4.j;
            } else if (z2) {
                a25 a25Var5 = ((r45) w35Var.a).f;
                r45.l(a25Var5);
                x15Var = a25Var5.i;
            } else {
                a25 a25Var6 = ((r45) w35Var.a).f;
                r45.l(a25Var6);
                x15Var = a25Var6.k;
            }
        } else if (z) {
            a25 a25Var7 = ((r45) w35Var.a).f;
            r45.l(a25Var7);
            x15Var = a25Var7.g;
        } else if (z2) {
            a25 a25Var8 = ((r45) w35Var.a).f;
            r45.l(a25Var8);
            x15Var = a25Var8.f;
        } else {
            a25 a25Var9 = ((r45) w35Var.a).f;
            r45.l(a25Var9);
            x15Var = a25Var9.h;
        }
        int size = list.size();
        if (size == 1) {
            x15Var.b(list.get(0), str);
            return;
        }
        if (size == 2) {
            x15Var.c(list.get(0), list.get(1), str);
        } else if (size != 3) {
            x15Var.a(str);
        } else {
            x15Var.d(str, list.get(0), list.get(1), list.get(2));
        }
    }

    @Override // defpackage.pi
    public ListenableFuture call() {
        s0 s0VarA;
        int i = this.n;
        fu0 fu0Var = fu0.n;
        Object obj = this.o;
        switch (i) {
            case 7:
                a34 a34Var = new a34((Callable) obj);
                fu0Var.execute(a34Var);
                return a34Var;
            case 15:
                bo boVar = (bo) obj;
                fi3 fi3Var = (fi3) boVar.e;
                try {
                    return tf1.c(boVar.l((Uri) tf1.b((ListenableFuture) boVar.c)));
                } catch (IOException e) {
                    fy2 fy2Var = (fy2) boVar.g;
                    fy2Var.getClass();
                    if ((e instanceof od5) || (e.getCause() instanceof od5)) {
                        zo1 zo1Var = new zo1();
                        zo1Var.n(e);
                        return zo1Var;
                    }
                    oe5 oe5Var = (oe5) fy2Var.n;
                    oe5Var.getClass();
                    int i2 = 4;
                    if (e.getCause() instanceof fo4) {
                        ap1 ap1VarC = tf1.c(oe5Var.a);
                        ge5 ge5Var = new ge5(boVar, 2);
                        int i3 = vf5.a;
                        s0VarA = tf1.a(tf1.f(ap1VarC, new ic5(i2, ye5.a(), ge5Var), fi3Var), IOException.class, new bb5(5, e), fu0Var);
                    } else {
                        s0VarA = new zo1();
                        s0VarA.n(e);
                    }
                    ge5 ge5Var2 = new ge5(boVar, 1);
                    int i4 = vf5.a;
                    return tf1.f(s0VarA, new ic5(i2, ye5.a(), ge5Var2), fi3Var);
                }
            default:
                return (s0) obj;
        }
    }

    public void d(long j, long j2) {
        ia5 ia5Var = (ia5) this.o;
        ia5Var.v();
        ia5Var.z();
        r45 r45Var = (r45) ia5Var.a;
        f35 f35Var = r45Var.e;
        r45.j(f35Var);
        if (f35Var.E(j)) {
            r45.j(f35Var);
            f35Var.l.b(true);
            r45Var.q().A();
        }
        r45.j(f35Var);
        f35Var.p.b(j);
        if (f35Var.l.a()) {
            e(j, j2);
        }
    }

    public void e(long j, long j2) {
        ia5 ia5Var = (ia5) this.o;
        ia5Var.v();
        r45 r45Var = (r45) ia5Var.a;
        if (r45Var.a()) {
            f35 f35Var = r45Var.e;
            r45.j(f35Var);
            f35Var.p.b(j);
            long jElapsedRealtime = r45Var.k.elapsedRealtime();
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.n.b(Long.valueOf(jElapsedRealtime), "Session started, time");
            long j3 = j / 1000;
            Long lValueOf = Long.valueOf(j3);
            m75 m75Var = r45Var.m;
            r45.k(m75Var);
            m75Var.G(j, lValueOf, "auto", "_sid");
            r45.j(f35Var);
            f35Var.q.b(j3);
            f35Var.l.b(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", j3);
            r45.k(m75Var);
            m75Var.D(j, j2, bundle, "auto", "_s");
            String strH = f35Var.v.h();
            if (TextUtils.isEmpty(strH)) {
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_ffr", strH);
            r45.k(m75Var);
            m75Var.D(j, j2, bundle2, "auto", "_ssr");
        }
    }

    @Override // defpackage.cu3
    public Object get() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return new fy2(new mc5((cu3) ((hg) obj).b));
            default:
                yc5 yc5Var = (yc5) obj;
                wd2 wd2Var = (wd2) yc5Var.c.get();
                wd2Var.getClass();
                x85 x85Var = (x85) yc5Var.b.get();
                x85Var.getClass();
                w65 w65Var = x85Var.a;
                i iVarB = x85.b(w65Var.doRead(TaskApiCall.builder().run(new gt4(6, w65Var)).setFeatures(a65.c).setAutoResolveMissingFeatures(false).build()));
                wp4 wp4Var = wp4.r;
                int i2 = k.y;
                j jVar = new j(iVarB, t85.class, wp4Var);
                iVarB.a(jVar, k75.I(wd2Var, jVar));
                i2 i2VarE = tf1.e(jVar, new gb5(2, yc5Var), wd2Var);
                i2VarE.a(new o9(25, i2VarE), wd2Var);
                return i2VarE;
        }
    }

    @Override // defpackage.xo2
    public void onComplete(ow3 ow3Var) {
        d75 d75Var = (d75) this.o;
        if (((ef5) ow3Var).d) {
            d75Var.cancel(false);
            return;
        }
        if (ow3Var.j()) {
            d75Var.m(ow3Var.g());
            return;
        }
        Exception excF = ow3Var.f();
        if (excF == null) {
            throw new IllegalStateException();
        }
        d75Var.n(excF);
    }

    @Override // defpackage.qo4
    public Object zza() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 1:
                aw4 aw4Var = (aw4) obj;
                Cursor cursorQuery = aw4Var.a.query(aw4Var.b, aw4.h, null, null, null);
                if (cursorQuery == null) {
                    return Collections.EMPTY_MAP;
                }
                try {
                    int count = cursorQuery.getCount();
                    if (count == 0) {
                        return Collections.EMPTY_MAP;
                    }
                    Map diVar = count <= 256 ? new di(count) : new HashMap(count, 1.0f);
                    while (cursorQuery.moveToNext()) {
                        diVar.put(cursorQuery.getString(0), cursorQuery.getString(1));
                    }
                    cursorQuery.close();
                    return diVar;
                } finally {
                    cursorQuery.close();
                }
            default:
                return ((di2) obj).o;
        }
    }

    public /* synthetic */ gt4(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    public /* synthetic */ gt4(GoogleApi googleApi, AbstractSafeParcelable abstractSafeParcelable, int i) {
        this.n = i;
        this.o = abstractSafeParcelable;
    }

    public gt4() {
        this.n = 0;
        this.o = new ef5();
    }
}
