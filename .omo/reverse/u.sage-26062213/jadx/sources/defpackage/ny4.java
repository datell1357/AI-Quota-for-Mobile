package defpackage;

import android.content.Context;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ny4 implements mu4, jy0, RemoteCall, cu3, eh0 {
    public final /* synthetic */ int n;
    public static final /* synthetic */ ny4 o = new ny4(0);
    public static final /* synthetic */ ny4 p = new ny4(1);
    public static final /* synthetic */ ny4 q = new ny4(2);
    public static final /* synthetic */ ny4 r = new ny4(3);
    public static final /* synthetic */ ny4 s = new ny4(4);
    public static final /* synthetic */ ny4 t = new ny4(5);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ ny4 f229u = new ny4(7);
    public static final /* synthetic */ ny4 v = new ny4(8);
    public static final /* synthetic */ ny4 w = new ny4(9);
    public static final /* synthetic */ ny4 x = new ny4(10);
    public static final /* synthetic */ ny4 y = new ny4(11);
    public static final /* synthetic */ ny4 z = new ny4(12);
    public static final /* synthetic */ ny4 A = new ny4(13);
    public static final /* synthetic */ ny4 B = new ny4(14);
    public static final /* synthetic */ ny4 C = new ny4(15);
    public static final /* synthetic */ ny4 D = new ny4(16);
    public static final /* synthetic */ ny4 E = new ny4(17);
    public static final /* synthetic */ ny4 F = new ny4(20);
    public static final /* synthetic */ ny4 G = new ny4(21);

    public /* synthetic */ ny4(int i) {
        this.n = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean c(byte[] bArr, int i, int i2) {
        int iA;
        while (i < i2 && bArr[i] >= 0) {
            i++;
        }
        if (i >= i2) {
            iA = 0;
        } else {
            while (i < i2) {
                int i3 = i + 1;
                iA = bArr[i];
                if (iA < 0) {
                    if (iA >= -32) {
                        if (iA >= -16) {
                            if (i3 < i2 - 2) {
                                int i4 = i + 2;
                                int i5 = bArr[i3];
                                if (i5 <= -65) {
                                    if ((((i5 + 112) + (iA << 28)) >> 30) == 0) {
                                        int i6 = i + 3;
                                        if (bArr[i4] <= -65) {
                                            i += 4;
                                            if (bArr[i6] > -65) {
                                            }
                                        }
                                    }
                                }
                                iA = -1;
                                break;
                            }
                            iA = n35.a(bArr, i3, i2);
                            break;
                        }
                        if (i3 < i2 - 1) {
                            int i7 = i + 2;
                            char c = bArr[i3];
                            if (c <= -65 && ((iA != -32 || c >= -96) && (iA != -19 || c < -96))) {
                                i += 3;
                                if (bArr[i7] > -65) {
                                }
                            }
                            iA = -1;
                            break;
                        }
                        iA = n35.a(bArr, i3, i2);
                        break;
                    }
                    if (i3 >= i2) {
                        break;
                    }
                    if (iA >= -62) {
                        i += 2;
                        if (bArr[i3] > -65) {
                        }
                    }
                    iA = -1;
                    break;
                }
                i = i3;
            }
            iA = 0;
        }
        return iA == 0;
    }

    @Override // defpackage.jy0
    public int a(Context context, String str, boolean z2) {
        return ly0.d(context, str, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public void accept(Object obj, Object obj2) {
        switch (this.n) {
            case 19:
                ib5 ib5Var = new ib5(0, (pw3) obj2);
                l25 l25Var = (l25) ((bf5) obj).getService();
                Parcel parcelE = l25Var.E();
                int i = jv4.a;
                parcelE.writeStrongBinder(ib5Var);
                l25Var.F(4, parcelE);
                break;
            case 20:
                int i2 = w65.a;
                break;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
            case 22:
            case ConnectionResult.API_DISABLED /* 23 */:
            default:
                l25 l25Var2 = (l25) ((bf5) obj).getService();
                vk4 vk4Var = new vk4(1, (pw3) obj2);
                Parcel parcelE2 = l25Var2.E();
                int i3 = jv4.a;
                parcelE2.writeStrongBinder(vk4Var);
                l25Var2.F(1, parcelE2);
                break;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                le5 le5Var = new le5(2, (pw3) obj2);
                h05 h05Var = (h05) ((zy4) obj).getService();
                Parcel parcelObtainAndWriteInterfaceToken = h05Var.obtainAndWriteInterfaceToken();
                int i4 = kv4.a;
                parcelObtainAndWriteInterfaceToken.writeStrongBinder(le5Var.asBinder());
                h05Var.transactAndReadExceptionReturnVoid(11, parcelObtainAndWriteInterfaceToken);
                break;
            case 25:
                ee5 ee5Var = new ee5((pw3) obj2);
                l25 l25Var3 = (l25) ((bf5) obj).getService();
                Parcel parcelE3 = l25Var3.E();
                int i5 = jv4.a;
                parcelE3.writeStrongBinder(ee5Var.asBinder());
                l25Var3.F(6, parcelE3);
                break;
            case 26:
                cf5 cf5Var = new cf5(1, (pw3) obj2);
                h05 h05Var2 = (h05) ((zy4) obj).getService();
                Parcel parcelObtainAndWriteInterfaceToken2 = h05Var2.obtainAndWriteInterfaceToken();
                int i6 = kv4.a;
                parcelObtainAndWriteInterfaceToken2.writeStrongBinder(cf5Var.asBinder());
                h05Var2.transactAndReadExceptionReturnVoid(2, parcelObtainAndWriteInterfaceToken2);
                break;
        }
    }

    @Override // defpackage.jy0
    public int b(Context context, String str) {
        return ly0.a(context, str);
    }

    @Override // defpackage.cu3
    public Object get() {
        Object obj = o75.j;
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(b73.b);
        return scheduledExecutorServiceNewSingleThreadScheduledExecutor instanceof wd2 ? (wd2) scheduledExecutorServiceNewSingleThreadScheduledExecutor : new wd2(scheduledExecutorServiceNewSingleThreadScheduledExecutor);
    }

    @Override // defpackage.eh0
    public Object then(ow3 ow3Var) {
        rn4 rn4VarD;
        t55 t55Var = (t55) ow3Var.g();
        n85 n85VarZ = p85.z();
        String str = t55Var.n;
        n85VarZ.b();
        ((p85) n85VarZ.o).A(str);
        String str2 = t55Var.p;
        n85VarZ.b();
        ((p85) n85VarZ.o).C(str2);
        boolean z2 = t55Var.s;
        n85VarZ.b();
        ((p85) n85VarZ.o).F(z2);
        long j = t55Var.t;
        n85VarZ.b();
        ((p85) n85VarZ.o).G(j);
        byte[] bArr = t55Var.o;
        if (bArr != null) {
            ym4 ym4VarI = zm4.i(bArr, 0, bArr.length);
            n85VarZ.b();
            ((p85) n85VarZ.o).B(ym4VarI);
        }
        for (r55 r55Var : t55Var.q) {
            for (b65 b65Var : r55Var.o) {
                int i = b65Var.t;
                String str3 = b65Var.n;
                if (i == 1) {
                    r85 r85VarZ = s85.z();
                    r85VarZ.g(str3);
                    if (i != 1) {
                        k21.f("Not a long type");
                        return null;
                    }
                    long j2 = b65Var.o;
                    r85VarZ.b();
                    ((s85) r85VarZ.o).C(j2);
                    rn4VarD = r85VarZ.d();
                } else if (i == 2) {
                    r85 r85VarZ2 = s85.z();
                    r85VarZ2.g(str3);
                    if (i != 2) {
                        k21.f("Not a boolean type");
                        return null;
                    }
                    boolean z3 = b65Var.p;
                    r85VarZ2.b();
                    ((s85) r85VarZ2.o).D(z3);
                    rn4VarD = r85VarZ2.d();
                } else if (i == 3) {
                    r85 r85VarZ3 = s85.z();
                    r85VarZ3.g(str3);
                    if (i != 3) {
                        k21.f("Not a double type");
                        return null;
                    }
                    double d = b65Var.q;
                    r85VarZ3.b();
                    ((s85) r85VarZ3.o).E(d);
                    rn4VarD = r85VarZ3.d();
                } else if (i == 4) {
                    r85 r85VarZ4 = s85.z();
                    r85VarZ4.g(str3);
                    if (i != 4) {
                        k21.f("Not a String type");
                        return null;
                    }
                    String str4 = (String) Preconditions.checkNotNull(b65Var.r);
                    r85VarZ4.b();
                    ((s85) r85VarZ4.o).F(str4);
                    rn4VarD = r85VarZ4.d();
                } else {
                    if (i != 5) {
                        k21.f(di0.r(i, "Unrecognized flag type: ", new StringBuilder(String.valueOf(i).length() + 24)));
                        return null;
                    }
                    r85 r85VarZ5 = s85.z();
                    r85VarZ5.g(str3);
                    if (i != 5) {
                        k21.f("Not a bytes type");
                        return null;
                    }
                    byte[] bArr2 = (byte[]) Preconditions.checkNotNull(b65Var.s);
                    ym4 ym4Var = zm4.o;
                    ym4 ym4VarI2 = zm4.i(bArr2, 0, bArr2.length);
                    r85VarZ5.b();
                    ((s85) r85VarZ5.o).G(ym4VarI2);
                    rn4VarD = r85VarZ5.d();
                }
                n85VarZ.b();
                ((p85) n85VarZ.o).D((s85) rn4VarD);
            }
            String[] strArr = r55Var.p;
            if (strArr != null) {
                for (String str5 : strArr) {
                    n85VarZ.b();
                    ((p85) n85VarZ.o).E(str5);
                }
            }
        }
        return (p85) n85VarZ.d();
    }

    @Override // defpackage.mu4
    public Object zza() {
        switch (this.n) {
            case 0:
                List list = e05.a;
                yp4.o.get();
                return (Boolean) zp4.a.e("measurement.config.bundle_for_all_apps_on_backgrounded", 2, true).get();
            case 1:
                List list2 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.rb.attribution.notify_app_delay_millis", 30, 3000L).get()).longValue());
            case 2:
                List list3 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("45769094", 11, 3600000L).get();
            case 3:
                List list4 = e05.a;
                return (Boolean) qq4.b.get();
            case 4:
                List list5 = e05.a;
                return (Boolean) qq4.c.get();
            case 5:
                List list6 = e05.a;
                return (Boolean) xr4.a.get();
            case 6:
            default:
                return new Boolean(((Boolean) pr4.a.get()).booleanValue());
            case 7:
                List list7 = e05.a;
                return (Boolean) oq4.a.get();
            case 8:
                List list8 = e05.a;
                return (Boolean) nr4.a.get();
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                List list9 = e05.a;
                return (Boolean) rr4.a.get();
            case 10:
                List list10 = e05.a;
                er4.o.get();
                return (Boolean) fr4.a.e("measurement.rb.attribution.client2", 1, true).get();
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                List list11 = e05.a;
                er4.o.get();
                return (Boolean) fr4.a.e("measurement.rb.attribution.enable_trigger_redaction", 7, true).get();
            case 12:
                List list12 = e05.a;
                return (Boolean) hr4.a.get();
            case 13:
                List list13 = e05.a;
                return (Boolean) jr4.b.get();
            case 14:
                List list14 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.upload.max_events_per_day", 71, 100000L).get()).longValue());
            case 15:
                return new Boolean(((Boolean) uq4.a.get()).booleanValue());
            case 16:
                return new Boolean(((Boolean) br4.a.get()).booleanValue());
        }
    }

    public /* synthetic */ ny4(GoogleApi googleApi, int i) {
        this.n = i;
    }
}
