package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o55 extends iu4 implements n05 {
    public final pb5 c;
    public Boolean d;
    public String e;

    public o55(pb5 pb5Var) {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
        Preconditions.checkNotNull(pb5Var);
        this.c = pb5Var;
        this.e = null;
    }

    @Override // defpackage.n05
    public final void A(vc5 vc5Var) {
        String str = vc5Var.n;
        Preconditions.checkNotEmpty(str);
        H(str, false);
        I(new v45(this, vc5Var, 3));
    }

    @Override // defpackage.n05
    public final void B(vc5 vc5Var) {
        G(vc5Var);
        I(new v45(this, vc5Var, 0));
    }

    @Override // defpackage.n05
    public final void C(vc5 vc5Var, wa5 wa5Var, d15 d15Var) {
        G(vc5Var);
        this.c.d().E(new e30(this, (String) Preconditions.checkNotNull(vc5Var.n), wa5Var, d15Var, 2, false));
    }

    @Override // defpackage.n05
    public final byte[] D(String str, bu4 bu4Var) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(bu4Var);
        H(str, true);
        pb5 pb5Var = this.c;
        x15 x15Var = pb5Var.c().m;
        r45 r45Var = pb5Var.l;
        p15 p15Var = r45Var.j;
        String str2 = bu4Var.n;
        x15Var.b(p15Var.a(str2), "Log and bundle. event");
        long jNanoTime = pb5Var.f().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) pb5Var.d().D(new id2(this, bu4Var, str)).get();
            if (bArr == null) {
                pb5Var.c().f.b(a25.D(str), "Log and bundle returned null. appId");
                bArr = new byte[0];
            }
            pb5Var.c().m.d("Log and bundle processed. event, size, time_ms", r45Var.j.a(str2), Integer.valueOf(bArr.length), Long.valueOf((pb5Var.f().nanoTime() / 1000000) - jNanoTime));
            return bArr;
        } catch (InterruptedException e) {
            e = e;
            pb5Var.c().f.d("Failed to log and bundle. appId, event, error", a25.D(str), r45Var.j.a(bu4Var.n), e);
            return null;
        } catch (ExecutionException e2) {
            e = e2;
            pb5Var.c().f.d("Failed to log and bundle. appId, event, error", a25.D(str), r45Var.j.a(bu4Var.n), e);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.iu4
    public final boolean E(int i, Parcel parcel, Parcel parcel2) {
        List list;
        pb5 pb5Var = this.c;
        ArrayList arrayList = null;
        v05 r05Var = null;
        d15 y05Var = null;
        int i2 = 1;
        switch (i) {
            case 1:
                bu4 bu4Var = (bu4) ku4.a(parcel, bu4.CREATOR);
                vc5 vc5Var = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                r(bu4Var, vc5Var);
                parcel2.writeNoException();
                return true;
            case 2:
                vb5 vb5Var = (vb5) ku4.a(parcel, vb5.CREATOR);
                vc5 vc5Var2 = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                o(vb5Var, vc5Var2);
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            case 22:
            case ConnectionResult.API_DISABLED /* 23 */:
            case 28:
            default:
                return false;
            case 4:
                vc5 vc5Var3 = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                B(vc5Var3);
                parcel2.writeNoException();
                return true;
            case 5:
                bu4 bu4Var2 = (bu4) ku4.a(parcel, bu4.CREATOR);
                String string = parcel.readString();
                parcel.readString();
                ku4.d(parcel);
                Preconditions.checkNotNull(bu4Var2);
                Preconditions.checkNotEmpty(string);
                H(string, true);
                I(new i63(this, bu4Var2, string, 4));
                parcel2.writeNoException();
                return true;
            case 6:
                vc5 vc5Var4 = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                m(vc5Var4);
                parcel2.writeNoException();
                return true;
            case 7:
                vc5 vc5Var5 = (vc5) ku4.a(parcel, vc5.CREATOR);
                Object[] objArr = parcel.readInt() != 0;
                ku4.d(parcel);
                G(vc5Var5);
                String str = vc5Var5.n;
                Preconditions.checkNotNull(str);
                try {
                    List<xb5> list2 = (List) pb5Var.d().C(new t45(this, str, z ? 1 : 0)).get();
                    ArrayList arrayList2 = new ArrayList(list2.size());
                    for (xb5 xb5Var : list2) {
                        if (objArr != false || !ac5.Y(xb5Var.c)) {
                            arrayList2.add(new vb5(xb5Var));
                        }
                        break;
                    }
                    arrayList = arrayList2;
                } catch (InterruptedException e) {
                    e = e;
                    pb5Var.c().f.c(a25.D(str), e, "Failed to get user properties. appId");
                } catch (ExecutionException e2) {
                    e = e2;
                    pb5Var.c().f.c(a25.D(str), e, "Failed to get user properties. appId");
                }
                parcel2.writeNoException();
                parcel2.writeTypedList(arrayList);
                return true;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                bu4 bu4Var3 = (bu4) ku4.a(parcel, bu4.CREATOR);
                String string2 = parcel.readString();
                ku4.d(parcel);
                byte[] bArrD = D(string2, bu4Var3);
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrD);
                return true;
            case 10:
                long j = parcel.readLong();
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                String string5 = parcel.readString();
                ku4.d(parcel);
                p(j, string3, string4, string5);
                parcel2.writeNoException();
                return true;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                vc5 vc5Var6 = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                String strT = t(vc5Var6);
                parcel2.writeNoException();
                parcel2.writeString(strT);
                return true;
            case 12:
                fq4 fq4Var = (fq4) ku4.a(parcel, fq4.CREATOR);
                vc5 vc5Var7 = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                q(fq4Var, vc5Var7);
                parcel2.writeNoException();
                return true;
            case 13:
                fq4 fq4Var2 = (fq4) ku4.a(parcel, fq4.CREATOR);
                ku4.d(parcel);
                Preconditions.checkNotNull(fq4Var2);
                Preconditions.checkNotNull(fq4Var2.p);
                Preconditions.checkNotEmpty(fq4Var2.n);
                H(fq4Var2.n, true);
                I(new rf1(21, this, new fq4(fq4Var2), z));
                parcel2.writeNoException();
                return true;
            case 14:
                String string6 = parcel.readString();
                String string7 = parcel.readString();
                ClassLoader classLoader = ku4.a;
                z = parcel.readInt() != 0;
                vc5 vc5Var8 = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                List listK = k(string6, string7, z, vc5Var8);
                parcel2.writeNoException();
                parcel2.writeTypedList(listK);
                return true;
            case 15:
                String string8 = parcel.readString();
                String string9 = parcel.readString();
                String string10 = parcel.readString();
                ClassLoader classLoader2 = ku4.a;
                boolean z = parcel.readInt() != 0;
                ku4.d(parcel);
                List listC = c(string8, string9, string10, z);
                parcel2.writeNoException();
                parcel2.writeTypedList(listC);
                return true;
            case 16:
                String string11 = parcel.readString();
                String string12 = parcel.readString();
                vc5 vc5Var9 = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                List listG = g(string11, string12, vc5Var9);
                parcel2.writeNoException();
                parcel2.writeTypedList(listG);
                return true;
            case 17:
                String string13 = parcel.readString();
                String string14 = parcel.readString();
                String string15 = parcel.readString();
                ku4.d(parcel);
                List listV = v(string13, string14, string15);
                parcel2.writeNoException();
                parcel2.writeTypedList(listV);
                return true;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                vc5 vc5Var10 = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                A(vc5Var10);
                parcel2.writeNoException();
                return true;
            case 19:
                Bundle bundle = (Bundle) ku4.a(parcel, Bundle.CREATOR);
                vc5 vc5Var11 = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                x(bundle, vc5Var11);
                parcel2.writeNoException();
                return true;
            case 20:
                vc5 vc5Var12 = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                j(vc5Var12);
                parcel2.writeNoException();
                return true;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                vc5 vc5Var13 = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                ms4 ms4VarW = w(vc5Var13);
                parcel2.writeNoException();
                if (ms4VarW == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                ms4VarW.writeToParcel(parcel2, 1);
                return true;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                vc5 vc5Var14 = (vc5) ku4.a(parcel, vc5.CREATOR);
                Bundle bundle2 = (Bundle) ku4.a(parcel, Bundle.CREATOR);
                ku4.d(parcel);
                G(vc5Var14);
                String str2 = vc5Var14.n;
                Preconditions.checkNotNull(str2);
                if (!pb5Var.e0().G(null, e05.T0)) {
                    try {
                        list = (List) pb5Var.d().C(new i55(this, vc5Var14, bundle2, i2)).get();
                    } catch (InterruptedException | ExecutionException e3) {
                        pb5Var.c().f.c(a25.D(str2), e3, "Failed to get trigger URIs. appId");
                        list = Collections.EMPTY_LIST;
                    }
                    break;
                } else {
                    try {
                        list = (List) pb5Var.d().D(new i55(this, vc5Var14, bundle2, z ? 1 : 0)).get(10000L, TimeUnit.MILLISECONDS);
                    } catch (InterruptedException | ExecutionException | TimeoutException e4) {
                        pb5Var.c().f.c(a25.D(str2), e4, "Failed to get trigger URIs. appId");
                        list = Collections.EMPTY_LIST;
                    }
                    break;
                }
                parcel2.writeNoException();
                parcel2.writeTypedList(list);
                return true;
            case 25:
                vc5 vc5Var15 = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                e(vc5Var15);
                parcel2.writeNoException();
                return true;
            case 26:
                vc5 vc5Var16 = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                n(vc5Var16);
                parcel2.writeNoException();
                return true;
            case 27:
                vc5 vc5Var17 = (vc5) ku4.a(parcel, vc5.CREATOR);
                ku4.d(parcel);
                h(vc5Var17);
                parcel2.writeNoException();
                return true;
            case 29:
                vc5 vc5Var18 = (vc5) ku4.a(parcel, vc5.CREATOR);
                wa5 wa5Var = (wa5) ku4.a(parcel, wa5.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IUploadBatchesCallback");
                    y05Var = iInterfaceQueryLocalInterface instanceof d15 ? (d15) iInterfaceQueryLocalInterface : new y05(strongBinder, "com.google.android.gms.measurement.internal.IUploadBatchesCallback");
                }
                ku4.d(parcel);
                C(vc5Var18, wa5Var, y05Var);
                parcel2.writeNoException();
                return true;
            case 30:
                vc5 vc5Var19 = (vc5) ku4.a(parcel, vc5.CREATOR);
                po4 po4Var = (po4) ku4.a(parcel, po4.CREATOR);
                ku4.d(parcel);
                s(vc5Var19, po4Var);
                parcel2.writeNoException();
                return true;
            case 31:
                vc5 vc5Var20 = (vc5) ku4.a(parcel, vc5.CREATOR);
                Bundle bundle3 = (Bundle) ku4.a(parcel, Bundle.CREATOR);
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.measurement.internal.ITriggerUrisCallback");
                    r05Var = iInterfaceQueryLocalInterface2 instanceof v05 ? (v05) iInterfaceQueryLocalInterface2 : new r05(strongBinder2, "com.google.android.gms.measurement.internal.ITriggerUrisCallback");
                }
                ku4.d(parcel);
                b(vc5Var20, bundle3, r05Var);
                parcel2.writeNoException();
                return true;
        }
    }

    public final void F(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        pb5 pb5Var = this.c;
        if (pb5Var.d().B()) {
            runnable.run();
        } else {
            pb5Var.d().G(runnable);
        }
    }

    public final void G(vc5 vc5Var) {
        Preconditions.checkNotNull(vc5Var);
        String str = vc5Var.n;
        Preconditions.checkNotEmpty(str);
        H(str, false);
        this.c.k0().B(vc5Var.o);
    }

    public final void H(String str, boolean z) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        pb5 pb5Var = this.c;
        if (zIsEmpty) {
            pb5Var.c().f.a("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.d == null) {
                    boolean z2 = true;
                    if (!"com.google.android.gms".equals(this.e) && !UidVerifier.isGooglePlayServicesUid(pb5Var.l.a, Binder.getCallingUid()) && !GoogleSignatureVerifier.getInstance(pb5Var.l.a).isUidGoogleSigned(Binder.getCallingUid())) {
                        z2 = false;
                    }
                    this.d = Boolean.valueOf(z2);
                }
                if (this.d.booleanValue()) {
                    return;
                }
            } catch (SecurityException e) {
                pb5Var.c().f.b(a25.D(str), "Measurement Service called with invalid calling package. appId");
                throw e;
            }
        }
        if (this.e == null && GooglePlayServicesUtilLight.uidHasPackageName(pb5Var.l.a, Binder.getCallingUid(), str)) {
            this.e = str;
        }
        if (str.equals(this.e)) {
            return;
        }
        throw new SecurityException("Unknown calling package name '" + str + "'.");
    }

    public final void I(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        pb5 pb5Var = this.c;
        if (pb5Var.d().B()) {
            runnable.run();
        } else {
            pb5Var.d().E(runnable);
        }
    }

    @Override // defpackage.n05
    public final void b(vc5 vc5Var, Bundle bundle, v05 v05Var) {
        G(vc5Var);
        this.c.d().E(new k55(this, vc5Var, bundle, v05Var, (String) Preconditions.checkNotNull(vc5Var.n)));
    }

    @Override // defpackage.n05
    public final List c(String str, String str2, String str3, boolean z) {
        H(str, true);
        pb5 pb5Var = this.c;
        try {
            List<xb5> list = (List) pb5Var.d().C(new a55(this, str, str2, str3, 1)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (xb5 xb5Var : list) {
                if (z || !ac5.Y(xb5Var.c)) {
                    arrayList.add(new vb5(xb5Var));
                }
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            pb5Var.c().f.c(a25.D(str), e, "Failed to get user properties as. appId");
            return Collections.EMPTY_LIST;
        } catch (ExecutionException e2) {
            e = e2;
            pb5Var.c().f.c(a25.D(str), e, "Failed to get user properties as. appId");
            return Collections.EMPTY_LIST;
        }
    }

    @Override // defpackage.n05
    public final void e(vc5 vc5Var) {
        Preconditions.checkNotEmpty(vc5Var.n);
        Preconditions.checkNotNull(vc5Var.F);
        F(new v45(this, vc5Var, 6));
    }

    @Override // defpackage.n05
    public final List g(String str, String str2, vc5 vc5Var) {
        G(vc5Var);
        String str3 = vc5Var.n;
        Preconditions.checkNotNull(str3);
        pb5 pb5Var = this.c;
        try {
            return (List) pb5Var.d().C(new a55(this, str3, str, str2, 2)).get();
        } catch (InterruptedException | ExecutionException e) {
            pb5Var.c().f.b(e, "Failed to get conditional user properties");
            return Collections.EMPTY_LIST;
        }
    }

    @Override // defpackage.n05
    public final void h(vc5 vc5Var) {
        G(vc5Var);
        I(new v45(this, vc5Var, 1));
    }

    @Override // defpackage.n05
    public final void j(vc5 vc5Var) {
        Preconditions.checkNotEmpty(vc5Var.n);
        Preconditions.checkNotNull(vc5Var.F);
        F(new v45(this, vc5Var, 4));
    }

    @Override // defpackage.n05
    public final List k(String str, String str2, boolean z, vc5 vc5Var) {
        G(vc5Var);
        String str3 = vc5Var.n;
        Preconditions.checkNotNull(str3);
        pb5 pb5Var = this.c;
        try {
            List<xb5> list = (List) pb5Var.d().C(new a55(this, str3, str, str2, 0)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (xb5 xb5Var : list) {
                if (z || !ac5.Y(xb5Var.c)) {
                    arrayList.add(new vb5(xb5Var));
                }
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            pb5Var.c().f.c(a25.D(str3), e, "Failed to query user properties. appId");
            return Collections.EMPTY_LIST;
        } catch (ExecutionException e2) {
            e = e2;
            pb5Var.c().f.c(a25.D(str3), e, "Failed to query user properties. appId");
            return Collections.EMPTY_LIST;
        }
    }

    @Override // defpackage.n05
    public final void m(vc5 vc5Var) {
        G(vc5Var);
        I(new v45(this, vc5Var, 2));
    }

    @Override // defpackage.n05
    public final void n(vc5 vc5Var) {
        Preconditions.checkNotEmpty(vc5Var.n);
        Preconditions.checkNotNull(vc5Var.F);
        F(new v45(this, vc5Var, 5));
    }

    @Override // defpackage.n05
    public final void o(vb5 vb5Var, vc5 vc5Var) {
        Preconditions.checkNotNull(vb5Var);
        G(vc5Var);
        I(new i63(this, vb5Var, vc5Var, 5));
    }

    @Override // defpackage.n05
    public final void p(long j, String str, String str2, String str3) {
        I(new w45(this, str2, str3, str, j, 0));
    }

    @Override // defpackage.n05
    public final void q(fq4 fq4Var, vc5 vc5Var) {
        Preconditions.checkNotNull(fq4Var);
        Preconditions.checkNotNull(fq4Var.p);
        G(vc5Var);
        fq4 fq4Var2 = new fq4(fq4Var);
        fq4Var2.n = vc5Var.n;
        I(new i63(this, fq4Var2, vc5Var, 2));
    }

    @Override // defpackage.n05
    public final void r(bu4 bu4Var, vc5 vc5Var) {
        Preconditions.checkNotNull(bu4Var);
        G(vc5Var);
        I(new i63(this, bu4Var, vc5Var, 3));
    }

    @Override // defpackage.n05
    public final void s(vc5 vc5Var, po4 po4Var) {
        G(vc5Var);
        I(new i63(this, vc5Var, po4Var, 6, false));
    }

    @Override // defpackage.n05
    public final String t(vc5 vc5Var) {
        G(vc5Var);
        pb5 pb5Var = this.c;
        try {
            return (String) pb5Var.d().C(new t45(pb5Var, vc5Var)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            pb5Var.c().f.c(a25.D(vc5Var.n), e, "Failed to get app instance id. appId");
            return null;
        }
    }

    @Override // defpackage.n05
    public final List v(String str, String str2, String str3) {
        H(str, true);
        pb5 pb5Var = this.c;
        try {
            return (List) pb5Var.d().C(new a55(this, str, str2, str3, 3)).get();
        } catch (InterruptedException | ExecutionException e) {
            pb5Var.c().f.b(e, "Failed to get conditional user properties as");
            return Collections.EMPTY_LIST;
        }
    }

    @Override // defpackage.n05
    public final ms4 w(vc5 vc5Var) {
        G(vc5Var);
        String str = vc5Var.n;
        Preconditions.checkNotEmpty(str);
        pb5 pb5Var = this.c;
        try {
            return (ms4) pb5Var.d().D(new t45(this, vc5Var, 1)).get(10000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            pb5Var.c().f.c(a25.D(str), e, "Failed to get consent. appId");
            return new ms4(null);
        }
    }

    @Override // defpackage.n05
    public final void x(Bundle bundle, vc5 vc5Var) {
        G(vc5Var);
        String str = vc5Var.n;
        Preconditions.checkNotNull(str);
        I(new e30(this, bundle, str, vc5Var, 4, false));
    }
}
