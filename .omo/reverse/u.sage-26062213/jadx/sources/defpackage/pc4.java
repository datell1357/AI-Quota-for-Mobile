package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Process;
import android.view.WindowInsetsAnimation;
import com.google.android.gms.auth.api.identity.AuthorizationRequest;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.ClearTokenRequest;
import com.google.android.gms.auth.api.identity.GetPhoneNumberHintIntentRequest;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.auth.api.identity.RevokeAccessRequest;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pc4 implements RemoteCall, eh0, cu3, xo2, qo4, fd5, pi {
    public final /* synthetic */ int n;
    public Object o;
    public Object p;

    public pc4(int i) {
        this.n = i;
        switch (i) {
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                this.o = new HashMap();
                this.p = new ws4(6);
                ws4 ws4Var = new ws4(0);
                fu4 fu4Var = fu4.s;
                ArrayList arrayList = ws4Var.a;
                arrayList.add(fu4Var);
                arrayList.add(fu4.t);
                arrayList.add(fu4.f102u);
                arrayList.add(fu4.v);
                arrayList.add(fu4.w);
                arrayList.add(fu4.x);
                arrayList.add(fu4.y);
                g(ws4Var);
                ws4 ws4Var2 = new ws4(1);
                fu4 fu4Var2 = fu4.J;
                ArrayList arrayList2 = ws4Var2.a;
                arrayList2.add(fu4Var2);
                arrayList2.add(fu4.W);
                arrayList2.add(fu4.X);
                arrayList2.add(fu4.Y);
                arrayList2.add(fu4.Z);
                arrayList2.add(fu4.b0);
                arrayList2.add(fu4.c0);
                arrayList2.add(fu4.h0);
                g(ws4Var2);
                ws4 ws4Var3 = new ws4(2);
                fu4 fu4Var3 = fu4.q;
                ArrayList arrayList3 = ws4Var3.a;
                arrayList3.add(fu4Var3);
                arrayList3.add(fu4.z);
                arrayList3.add(fu4.A);
                arrayList3.add(fu4.B);
                arrayList3.add(fu4.G);
                arrayList3.add(fu4.D);
                arrayList3.add(fu4.H);
                arrayList3.add(fu4.L);
                arrayList3.add(fu4.a0);
                arrayList3.add(fu4.m0);
                arrayList3.add(fu4.p0);
                arrayList3.add(fu4.s0);
                arrayList3.add(fu4.t0);
                g(ws4Var3);
                ws4 ws4Var4 = new ws4(3);
                fu4 fu4Var4 = fu4.p;
                ArrayList arrayList4 = ws4Var4.a;
                arrayList4.add(fu4Var4);
                arrayList4.add(fu4.g0);
                arrayList4.add(fu4.j0);
                g(ws4Var4);
                ws4 ws4Var5 = new ws4(4);
                fu4 fu4Var5 = fu4.M;
                ArrayList arrayList5 = ws4Var5.a;
                arrayList5.add(fu4Var5);
                arrayList5.add(fu4.N);
                arrayList5.add(fu4.O);
                arrayList5.add(fu4.P);
                arrayList5.add(fu4.Q);
                arrayList5.add(fu4.R);
                arrayList5.add(fu4.S);
                arrayList5.add(fu4.x0);
                g(ws4Var5);
                ws4 ws4Var6 = new ws4(5);
                fu4 fu4Var6 = fu4.o;
                ArrayList arrayList6 = ws4Var6.a;
                arrayList6.add(fu4Var6);
                arrayList6.add(fu4.I);
                arrayList6.add(fu4.d0);
                arrayList6.add(fu4.e0);
                arrayList6.add(fu4.f0);
                arrayList6.add(fu4.k0);
                arrayList6.add(fu4.l0);
                arrayList6.add(fu4.n0);
                arrayList6.add(fu4.o0);
                arrayList6.add(fu4.r0);
                g(ws4Var6);
                ws4 ws4Var7 = new ws4(7);
                fu4 fu4Var7 = fu4.r;
                ArrayList arrayList7 = ws4Var7.a;
                arrayList7.add(fu4Var7);
                arrayList7.add(fu4.C);
                arrayList7.add(fu4.E);
                arrayList7.add(fu4.F);
                arrayList7.add(fu4.K);
                arrayList7.add(fu4.T);
                arrayList7.add(fu4.U);
                arrayList7.add(fu4.V);
                arrayList7.add(fu4.i0);
                arrayList7.add(fu4.q0);
                arrayList7.add(fu4.u0);
                arrayList7.add(fu4.v0);
                arrayList7.add(fu4.w0);
                g(ws4Var7);
                break;
            case 25:
                break;
            case 29:
                this.o = new TreeMap();
                this.p = new TreeMap();
                break;
            default:
                this.o = new ug2(new Reference[16]);
                this.p = new ReferenceQueue();
                break;
        }
    }

    @Override // defpackage.fd5
    public Object a(ed5 ed5Var) throws IOException {
        Uri uri = ed5Var.d;
        AtomicLong atomicLong = vd5.a;
        int iMyPid = Process.myPid();
        long id = Thread.currentThread().getId();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long andIncrement = vd5.a.getAndIncrement();
        int length = String.valueOf(iMyPid).length();
        int length2 = String.valueOf(id).length();
        StringBuilder sb = new StringBuilder(length + 15 + length2 + 1 + String.valueOf(jCurrentTimeMillis).length() + 1 + String.valueOf(andIncrement).length());
        sb.append(".mobstore_tmp-");
        sb.append(iMyPid);
        sb.append("-");
        sb.append(id);
        sb.append("-");
        sb.append(jCurrentTimeMillis);
        sb.append("-");
        sb.append(andIncrement);
        Uri uriBuild = uri.buildUpon().path(String.valueOf(uri.getPath()).concat(sb.toString())).build();
        wd5 wd5Var = ed5Var.a;
        ArrayList arrayListA = ed5Var.a(wd5Var.c(uriBuild));
        pc4[] pc4VarArr = (pc4[]) this.p;
        if (pc4VarArr != null) {
            pc4VarArr[0].f(arrayListA);
        }
        try {
            OutputStream outputStream = (OutputStream) arrayListA.get(0);
            try {
                ((sm4) this.o).b(outputStream);
                pc4[] pc4VarArr2 = (pc4[]) this.p;
                if (pc4VarArr2 != null) {
                    pc4 pc4Var = pc4VarArr2[0];
                    if (((qd5) pc4Var.p) == null) {
                        throw new c70("Cannot sync underlying stream");
                    }
                    ((OutputStream) pc4Var.o).flush();
                    ((qd5) pc4Var.p).n.getFD().sync();
                }
                outputStream.close();
                wd5Var.e(uriBuild, uri);
                return null;
            } finally {
            }
        } catch (Exception e) {
            try {
                wd5Var.d(uriBuild);
            } catch (FileNotFoundException unused) {
            }
            if (e instanceof IOException) {
                throw ((IOException) e);
            }
            throw new IOException(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public void accept(Object obj, Object obj2) {
        switch (this.n) {
            case 3:
                ek4 ek4Var = (ek4) obj;
                kk4 kk4Var = new kk4((ij4) this.o, (pw3) obj2);
                gk4 gk4Var = (gk4) ek4Var.getService();
                RevokeAccessRequest revokeAccessRequest = (RevokeAccessRequest) Preconditions.checkNotNull((RevokeAccessRequest) this.p);
                ApiMetadata apiMetadataA = tj4.a(ek4Var.getContext());
                Parcel parcelZba = gk4Var.zba();
                int i = bk4.a;
                parcelZba.writeStrongBinder(kk4Var.asBinder());
                bk4.b(parcelZba, revokeAccessRequest);
                bk4.b(parcelZba, apiMetadataA);
                gk4Var.zbb(3, parcelZba);
                break;
            case 4:
                ek4 ek4Var2 = (ek4) obj;
                lk4 lk4Var = new lk4((ij4) this.o, (pw3) obj2);
                gk4 gk4Var2 = (gk4) ek4Var2.getService();
                ClearTokenRequest clearTokenRequest = (ClearTokenRequest) Preconditions.checkNotNull((ClearTokenRequest) this.p);
                ApiMetadata apiMetadataA2 = tj4.a(ek4Var2.getContext());
                Parcel parcelZba2 = gk4Var2.zba();
                int i2 = bk4.a;
                parcelZba2.writeStrongBinder(lk4Var.asBinder());
                bk4.b(parcelZba2, clearTokenRequest);
                bk4.b(parcelZba2, apiMetadataA2);
                gk4Var2.zbb(4, parcelZba2);
                break;
            case 5:
                ek4 ek4Var3 = (ek4) obj;
                kj4 kj4Var = new kj4((ij4) this.o, (pw3) obj2);
                gk4 gk4Var3 = (gk4) ek4Var3.getService();
                AuthorizationRequest authorizationRequest = (AuthorizationRequest) Preconditions.checkNotNull((AuthorizationRequest) this.p);
                ApiMetadata apiMetadataA3 = tj4.a(ek4Var3.getContext());
                Parcel parcelZba3 = gk4Var3.zba();
                int i3 = bk4.a;
                parcelZba3.writeStrongBinder(kj4Var.asBinder());
                bk4.b(parcelZba3, authorizationRequest);
                bk4.b(parcelZba3, apiMetadataA3);
                gk4Var3.zbb(1, parcelZba3);
                break;
            case 6:
                fk4 fk4Var = (fk4) obj;
                kj4 kj4Var2 = new kj4((lj4) this.o, (pw3) obj2, 1);
                hk4 hk4Var = (hk4) fk4Var.getService();
                SavePasswordRequest savePasswordRequest = (SavePasswordRequest) Preconditions.checkNotNull((SavePasswordRequest) this.p);
                ApiMetadata apiMetadataA4 = tj4.a(fk4Var.getContext());
                Parcel parcelZba4 = hk4Var.zba();
                int i4 = bk4.a;
                parcelZba4.writeStrongBinder(kj4Var2.asBinder());
                bk4.b(parcelZba4, savePasswordRequest);
                bk4.b(parcelZba4, apiMetadataA4);
                hk4Var.zbb(2, parcelZba4);
                break;
            case 7:
                fk4 fk4Var2 = (fk4) obj;
                kj4 kj4Var3 = new kj4((lj4) this.o, (pw3) obj2, 0);
                hk4 hk4Var2 = (hk4) fk4Var2.getService();
                SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest = (SaveAccountLinkingTokenRequest) Preconditions.checkNotNull((SaveAccountLinkingTokenRequest) this.p);
                ApiMetadata apiMetadataA5 = tj4.a(fk4Var2.getContext());
                Parcel parcelZba5 = hk4Var2.zba();
                int i5 = bk4.a;
                parcelZba5.writeStrongBinder(kj4Var3.asBinder());
                bk4.b(parcelZba5, saveAccountLinkingTokenRequest);
                bk4.b(parcelZba5, apiMetadataA5);
                hk4Var2.zbb(1, parcelZba5);
                break;
            case 8:
                pj4 pj4Var = (pj4) obj;
                kj4 kj4Var4 = new kj4((oj4) this.o, (pw3) obj2, 3);
                ik4 ik4Var = (ik4) pj4Var.getService();
                GetSignInIntentRequest getSignInIntentRequest = (GetSignInIntentRequest) Preconditions.checkNotNull((GetSignInIntentRequest) this.p);
                ApiMetadata apiMetadataA6 = tj4.a(pj4Var.getContext());
                Parcel parcelZba6 = ik4Var.zba();
                int i6 = bk4.a;
                parcelZba6.writeStrongBinder(kj4Var4.asBinder());
                bk4.b(parcelZba6, getSignInIntentRequest);
                bk4.b(parcelZba6, apiMetadataA6);
                ik4Var.zbb(3, parcelZba6);
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                oj4 oj4Var = (oj4) this.o;
                GetPhoneNumberHintIntentRequest getPhoneNumberHintIntentRequest = (GetPhoneNumberHintIntentRequest) this.p;
                pj4 pj4Var2 = (pj4) obj;
                kj4 kj4Var5 = new kj4(oj4Var, (pw3) obj2, 4);
                ik4 ik4Var2 = (ik4) pj4Var2.getService();
                ApiMetadata apiMetadataA7 = tj4.a(pj4Var2.getContext());
                String str = oj4Var.a;
                Parcel parcelZba7 = ik4Var2.zba();
                int i7 = bk4.a;
                parcelZba7.writeStrongBinder(kj4Var5.asBinder());
                bk4.b(parcelZba7, getPhoneNumberHintIntentRequest);
                parcelZba7.writeString(str);
                bk4.b(parcelZba7, apiMetadataA7);
                ik4Var2.zbb(4, parcelZba7);
                break;
            case 10:
                pj4 pj4Var3 = (pj4) obj;
                kj4 kj4Var6 = new kj4((oj4) this.o, (pw3) obj2, 2);
                ik4 ik4Var3 = (ik4) pj4Var3.getService();
                BeginSignInRequest beginSignInRequest = (BeginSignInRequest) Preconditions.checkNotNull((BeginSignInRequest) this.p);
                ApiMetadata apiMetadataA8 = tj4.a(pj4Var3.getContext());
                Parcel parcelZba8 = ik4Var3.zba();
                int i8 = bk4.a;
                parcelZba8.writeStrongBinder(kj4Var6.asBinder());
                bk4.b(parcelZba8, beginSignInRequest);
                bk4.b(parcelZba8, apiMetadataA8);
                ik4Var3.zbb(1, parcelZba8);
                break;
            default:
                int i9 = w65.a;
                n65 n65Var = new n65((pw3) obj2);
                y65 y65Var = (y65) ((a75) obj).getService();
                String[] strArr = (String[]) this.p;
                String str2 = (String) this.o;
                Parcel parcelF = y65Var.F();
                ku4.c(parcelF, n65Var);
                parcelF.writeString(str2);
                parcelF.writeInt(0);
                parcelF.writeStringArray(strArr);
                parcelF.writeByteArray(null);
                y65Var.G(1, parcelF);
                break;
        }
    }

    public void b(Throwable th) {
        m75 m75Var = (m75) this.p;
        m75Var.v();
        r45 r45Var = (r45) m75Var.a;
        m75Var.i = false;
        m75Var.T().add((oa5) this.o);
        if (m75Var.j > ((Integer) e05.v0.a(null)).intValue()) {
            m75Var.j = 1;
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.i.c(a25.D(r45Var.q().B()), a25.D(th.toString()), "registerTriggerAsync failed. May try later. App ID, throwable");
            return;
        }
        a25 a25Var2 = r45Var.f;
        r45.l(a25Var2);
        a25Var2.i.d("registerTriggerAsync failed. App ID, delay in seconds, throwable", a25.D(r45Var.q().B()), a25.D(String.valueOf(m75Var.j)), a25.D(th.toString()));
        int i = m75Var.j;
        if (m75Var.k == null) {
            m75Var.k = new i65(m75Var, r45Var, 1);
        }
        m75Var.k.b(((long) i) * 1000);
        int i2 = m75Var.j;
        m75Var.j = i2 + i2;
    }

    public void c(nr3 nr3Var, ls3 ls3Var) {
        nr3Var.getClass();
        qd1 qd1Var = (qd1) this.p;
        ((ji3) qd1Var.o).execute(new l20(this, nr3Var, ls3Var, 5));
    }

    @Override // defpackage.pi
    public ListenableFuture call() {
        switch (this.n) {
            case 27:
                ce5 ce5Var = (ce5) this.p;
                String strValueOf = String.valueOf(ce5Var.a);
                ky4 ky4Var = ce5Var.h;
                String strConcat = "Initialize ".concat(strValueOf);
                ky4Var.getClass();
                kf5 kf5VarB = ky4.b(strConcat);
                try {
                    synchronized (ce5Var.g) {
                        try {
                            if (((List) this.o) == null) {
                                this.o = ce5Var.i;
                                ce5Var.i = Collections.EMPTY_LIST;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                    ArrayList arrayList = new ArrayList(((List) this.o).size());
                    je5 je5Var = new je5((ce5) this.p);
                    Iterator it = ((List) this.o).iterator();
                    while (it.hasNext()) {
                        try {
                            arrayList.add(((qi) it.next()).apply(je5Var));
                        } catch (Exception e) {
                            zo1 zo1Var = new zo1();
                            zo1Var.n(e);
                            arrayList.add(zo1Var);
                        }
                    }
                    lp1 lp1VarK = lp1.k(arrayList);
                    id2 id2Var = new id2(3, this);
                    s80 s80Var = new s80(lp1VarK, true);
                    s80Var.A = new r80(s80Var, id2Var);
                    s80Var.s();
                    kf5VarB.b(s80Var);
                    kf5VarB.close();
                    return s80Var;
                } catch (Throwable th2) {
                    try {
                        kf5VarB.close();
                        break;
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            default:
                rf5 rf5Var = (rf5) this.o;
                qf5 qf5VarC = ye5.c();
                rf5 rf5VarB = ye5.b(qf5VarC, rf5Var);
                try {
                    ListenableFuture listenableFutureCall = ((pi) this.p).call();
                    ye5.b(qf5VarC, rf5VarB);
                    listenableFutureCall.getClass();
                    return listenableFutureCall;
                } finally {
                }
        }
    }

    public void d(nr3 nr3Var, int i) {
        nr3Var.getClass();
        qd1 qd1Var = (qd1) this.p;
        ((ji3) qd1Var.o).execute(new ns3((ez2) this.o, nr3Var, false, i));
    }

    public na5 e(String str, int i, boolean z) {
        AtomicReferenceArray atomicReferenceArray = (AtomicReferenceArray) this.o;
        na5 na5Var = (na5) atomicReferenceArray.get(i);
        if (na5Var != null) {
            return na5Var;
        }
        da5 da5VarO = ((ra3) this.p).o(str, z);
        while (!atomicReferenceArray.compareAndSet(i, null, da5VarO)) {
            if (atomicReferenceArray.get(i) != null) {
                na5 na5Var2 = (na5) atomicReferenceArray.get(i);
                na5Var2.getClass();
                return na5Var2;
            }
        }
        return da5VarO;
    }

    public void f(ArrayList arrayList) {
        OutputStream outputStream = (OutputStream) nt1.A(arrayList);
        if (outputStream instanceof qd5) {
            this.p = (qd5) outputStream;
            this.o = (OutputStream) arrayList.get(0);
        }
    }

    public void g(ws4 ws4Var) {
        ArrayList arrayList = ws4Var.a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((HashMap) this.o).put(Integer.valueOf(((fu4) obj).n).toString(), ws4Var);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // defpackage.cu3
    public Object get() {
        long j;
        char c;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        switch (this.n) {
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                ui3 ui3Var = (ui3) this.o;
                String str = (String) this.p;
                int i = fj1.a;
                int i2 = nf2.s;
                mf2 mf2VarC = new mf2().c(str.getBytes());
                ByteBuffer byteBuffer = mf2VarC.a;
                byteBuffer.put((byte) 0);
                if (byteBuffer.remaining() < 8) {
                    mf2VarC.a();
                }
                mf2 mf2VarC2 = mf2VarC.c("".getBytes());
                mf2VarC2.a();
                ByteBuffer byteBuffer2 = mf2VarC2.a;
                byteBuffer2.flip();
                if (byteBuffer2.remaining() > 0) {
                    mf2VarC2.f = byteBuffer2.remaining() + mf2VarC2.f;
                    long j8 = 0;
                    switch (byteBuffer2.remaining()) {
                        case 1:
                            j = 0;
                            j7 = j ^ ((long) (byteBuffer2.get(0) & 255));
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        case 2:
                            c = '\b';
                            j2 = 0;
                            j = j2 ^ (((long) (byteBuffer2.get(1) & 255)) << c);
                            j7 = j ^ ((long) (byteBuffer2.get(0) & 255));
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        case 3:
                            c = '\b';
                            j3 = 0;
                            j2 = j3 ^ (((long) (byteBuffer2.get(2) & 255)) << 16);
                            j = j2 ^ (((long) (byteBuffer2.get(1) & 255)) << c);
                            j7 = j ^ ((long) (byteBuffer2.get(0) & 255));
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        case 4:
                            c = '\b';
                            j4 = 0;
                            j3 = j4 ^ (((long) (byteBuffer2.get(3) & 255)) << 24);
                            j2 = j3 ^ (((long) (byteBuffer2.get(2) & 255)) << 16);
                            j = j2 ^ (((long) (byteBuffer2.get(1) & 255)) << c);
                            j7 = j ^ ((long) (byteBuffer2.get(0) & 255));
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        case 5:
                            c = '\b';
                            j5 = 0;
                            j4 = j5 ^ (((long) (byteBuffer2.get(4) & 255)) << 32);
                            j3 = j4 ^ (((long) (byteBuffer2.get(3) & 255)) << 24);
                            j2 = j3 ^ (((long) (byteBuffer2.get(2) & 255)) << 16);
                            j = j2 ^ (((long) (byteBuffer2.get(1) & 255)) << c);
                            j7 = j ^ ((long) (byteBuffer2.get(0) & 255));
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        case 6:
                            j6 = 0;
                            c = '\b';
                            j5 = (((long) (byteBuffer2.get(5) & 255)) << 40) ^ j6;
                            j4 = j5 ^ (((long) (byteBuffer2.get(4) & 255)) << 32);
                            j3 = j4 ^ (((long) (byteBuffer2.get(3) & 255)) << 24);
                            j2 = j3 ^ (((long) (byteBuffer2.get(2) & 255)) << 16);
                            j = j2 ^ (((long) (byteBuffer2.get(1) & 255)) << c);
                            j7 = j ^ ((long) (byteBuffer2.get(0) & 255));
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        case 7:
                            j6 = ((long) (byteBuffer2.get(6) & 255)) << 48;
                            c = '\b';
                            j5 = (((long) (byteBuffer2.get(5) & 255)) << 40) ^ j6;
                            j4 = j5 ^ (((long) (byteBuffer2.get(4) & 255)) << 32);
                            j3 = j4 ^ (((long) (byteBuffer2.get(3) & 255)) << 24);
                            j2 = j3 ^ (((long) (byteBuffer2.get(2) & 255)) << 16);
                            j = j2 ^ (((long) (byteBuffer2.get(1) & 255)) << c);
                            j7 = j ^ ((long) (byteBuffer2.get(0) & 255));
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        case 8:
                            j7 = byteBuffer2.getLong();
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        case ConnectionResult.SERVICE_INVALID /* 9 */:
                            j8 ^= (long) (byteBuffer2.get(8) & 255);
                            j7 = byteBuffer2.getLong();
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        case 10:
                            j8 ^= ((long) (byteBuffer2.get(9) & 255)) << 8;
                            j8 ^= (long) (byteBuffer2.get(8) & 255);
                            j7 = byteBuffer2.getLong();
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                            j8 ^= ((long) (byteBuffer2.get(10) & 255)) << 16;
                            j8 ^= ((long) (byteBuffer2.get(9) & 255)) << 8;
                            j8 ^= (long) (byteBuffer2.get(8) & 255);
                            j7 = byteBuffer2.getLong();
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        case 12:
                            j8 ^= ((long) (byteBuffer2.get(11) & 255)) << 24;
                            j8 ^= ((long) (byteBuffer2.get(10) & 255)) << 16;
                            j8 ^= ((long) (byteBuffer2.get(9) & 255)) << 8;
                            j8 ^= (long) (byteBuffer2.get(8) & 255);
                            j7 = byteBuffer2.getLong();
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        case 13:
                            j8 ^= ((long) (byteBuffer2.get(12) & 255)) << 32;
                            j8 ^= ((long) (byteBuffer2.get(11) & 255)) << 24;
                            j8 ^= ((long) (byteBuffer2.get(10) & 255)) << 16;
                            j8 ^= ((long) (byteBuffer2.get(9) & 255)) << 8;
                            j8 ^= (long) (byteBuffer2.get(8) & 255);
                            j7 = byteBuffer2.getLong();
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        case 14:
                            j8 ^= ((long) (byteBuffer2.get(13) & 255)) << 40;
                            j8 ^= ((long) (byteBuffer2.get(12) & 255)) << 32;
                            j8 ^= ((long) (byteBuffer2.get(11) & 255)) << 24;
                            j8 ^= ((long) (byteBuffer2.get(10) & 255)) << 16;
                            j8 ^= ((long) (byteBuffer2.get(9) & 255)) << 8;
                            j8 ^= (long) (byteBuffer2.get(8) & 255);
                            j7 = byteBuffer2.getLong();
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        case 15:
                            j8 = ((long) (byteBuffer2.get(14) & 255)) << 48;
                            j8 ^= ((long) (byteBuffer2.get(13) & 255)) << 40;
                            j8 ^= ((long) (byteBuffer2.get(12) & 255)) << 32;
                            j8 ^= ((long) (byteBuffer2.get(11) & 255)) << 24;
                            j8 ^= ((long) (byteBuffer2.get(10) & 255)) << 16;
                            j8 ^= ((long) (byteBuffer2.get(9) & 255)) << 8;
                            j8 ^= (long) (byteBuffer2.get(8) & 255);
                            j7 = byteBuffer2.getLong();
                            mf2VarC2.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ mf2VarC2.d;
                            mf2VarC2.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                            byteBuffer2.position(byteBuffer2.limit());
                            break;
                        default:
                            k21.c("Should never get here.");
                            return null;
                    }
                }
                long j9 = mf2VarC2.d;
                long j10 = mf2VarC2.f;
                long j11 = j9 ^ j10;
                long j12 = j10 ^ mf2VarC2.e;
                long j13 = j11 + j12;
                long j14 = j12 + j13;
                long j15 = (j13 ^ (j13 >>> 33)) * (-49064778989728563L);
                long j16 = (j15 ^ (j15 >>> 33)) * (-4265267296055464877L);
                long j17 = (j14 ^ (j14 >>> 33)) * (-49064778989728563L);
                long j18 = (j17 ^ (j17 >>> 33)) * (-4265267296055464877L);
                long j19 = j18 ^ (j18 >>> 33);
                long j20 = (j16 ^ (j16 >>> 33)) + j19;
                mf2VarC2.d = j20;
                mf2VarC2.e = j19 + j20;
                byte[] bArrArray = ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(mf2VarC2.d).putLong(mf2VarC2.e).array();
                bArrArray.getClass();
                return ((hr) ui3Var.o).c((byte[]) bArrArray.clone());
            default:
                return ((hr) ((ui3) this.o).o).c(((zm4) this.p).l());
        }
    }

    public ls4 h(qd1 qd1Var, ls4 ls4Var) {
        ai4.q(qd1Var);
        if (!(ls4Var instanceof ns4)) {
            return ls4Var;
        }
        ns4 ns4Var = (ns4) ls4Var;
        ArrayList arrayList = ns4Var.o;
        String str = ns4Var.n;
        HashMap map = (HashMap) this.o;
        return (map.containsKey(str) ? (ws4) map.get(str) : (ws4) this.p).a(str, qd1Var, arrayList);
    }

    public na5 i(String str, int i, long j) {
        AtomicReferenceArray atomicReferenceArray = (AtomicReferenceArray) this.o;
        na5 na5Var = (na5) atomicReferenceArray.get(i);
        if (na5Var != null) {
            return na5Var;
        }
        ha5 ha5Var = new ha5(str, (sb5) ((ra3) this.p).o, j);
        while (!atomicReferenceArray.compareAndSet(i, null, ha5Var)) {
            if (atomicReferenceArray.get(i) != null) {
                na5 na5Var2 = (na5) atomicReferenceArray.get(i);
                na5Var2.getClass();
                return na5Var2;
            }
        }
        return ha5Var;
    }

    public void j(qd1 qd1Var, ui3 ui3Var) {
        e75 e75Var = new e75(ui3Var);
        TreeMap treeMap = (TreeMap) this.o;
        for (Integer num : treeMap.keySet()) {
            xk4 xk4VarA = ((xk4) ui3Var.p).clone();
            ls4 ls4VarB = ((is4) treeMap.get(num)).b(qd1Var, Collections.singletonList(e75Var));
            int iM = ls4VarB instanceof eq4 ? ai4.m(((eq4) ls4VarB).n.doubleValue()) : -1;
            if (iM == 2 || iM == -1) {
                ui3Var.p = xk4VarA;
            }
        }
        TreeMap treeMap2 = (TreeMap) this.p;
        Iterator it = treeMap2.keySet().iterator();
        while (it.hasNext()) {
            ls4 ls4VarB2 = ((is4) treeMap2.get((Integer) it.next())).b(qd1Var, Collections.singletonList(e75Var));
            if (ls4VarB2 instanceof eq4) {
                ai4.m(((eq4) ls4VarB2).n.doubleValue());
            }
        }
    }

    public na5 k(String str, int i, String str2) {
        AtomicReferenceArray atomicReferenceArray = (AtomicReferenceArray) this.o;
        na5 na5Var = (na5) atomicReferenceArray.get(i);
        if (na5Var != null) {
            return na5Var;
        }
        ka5 ka5Var = new ka5(str, (sb5) ((ra3) this.p).o, str2);
        while (!atomicReferenceArray.compareAndSet(i, null, ka5Var)) {
            if (atomicReferenceArray.get(i) != null) {
                na5 na5Var2 = (na5) atomicReferenceArray.get(i);
                na5Var2.getClass();
                return na5Var2;
            }
        }
        return ka5Var;
    }

    @Override // defpackage.xo2
    public void onComplete(ow3 ow3Var) {
        tf5 tf5Var = (tf5) this.o;
        pw3 pw3Var = (pw3) this.p;
        synchronized (tf5Var.f) {
            tf5Var.e.remove(pw3Var);
        }
    }

    @Override // defpackage.eh0
    public Object then(ow3 ow3Var) {
        boolean z = ow3Var.f() instanceof UnsupportedApiCallException;
        l85 l85Var = (l85) this.p;
        w65 w65Var = (w65) this.o;
        if (z) {
            return w65Var.a(l85Var.t());
        }
        if (ow3Var.f() instanceof ApiException) {
            ApiException apiException = (ApiException) ow3Var.f();
            apiException.getClass();
            if (apiException.getStatusCode() == 29514) {
                return w65Var.a(l85Var.t());
            }
        }
        return ow3Var;
    }

    public String toString() {
        switch (this.n) {
            case 1:
                return "Bounds{lower=" + ((nr1) this.o) + " upper=" + ((nr1) this.p) + "}";
            case 28:
                pi piVar = (pi) this.p;
                StringBuilder sb = new StringBuilder(piVar.toString().length() + 14);
                sb.append("propagating=[");
                sb.append(piVar);
                sb.append("]");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.qo4
    public Object zza() {
        switch (this.n) {
            case 12:
                gw4 gw4Var = (gw4) this.o;
                String str = (String) this.p;
                ContentResolver contentResolver = ((Context) gw4Var.o).getContentResolver();
                Uri uri = rv4.a;
                synchronized (rv4.class) {
                    try {
                        int i = 0;
                        String str2 = null;
                        Object[] objArr = 0;
                        if (rv4.e == null) {
                            rv4.d.set(false);
                            rv4.e = new HashMap(16, 1.0f);
                            rv4.j = new Object();
                            contentResolver.registerContentObserver(rv4.a, true, new pv4(objArr == true ? 1 : 0, i));
                        } else if (rv4.d.getAndSet(false)) {
                            rv4.e.clear();
                            rv4.f.clear();
                            rv4.g.clear();
                            rv4.h.clear();
                            rv4.i.clear();
                            rv4.j = new Object();
                        }
                        Object obj = rv4.j;
                        if (rv4.e.containsKey(str)) {
                            String str3 = (String) rv4.e.get(str);
                            if (str3 != null) {
                                str2 = str3;
                            }
                            return str2;
                        }
                        int length = rv4.k.length;
                        Cursor cursorQuery = contentResolver.query(rv4.a, null, null, new String[]{str}, null);
                        if (cursorQuery == null) {
                            return null;
                        }
                        try {
                            if (!cursorQuery.moveToFirst()) {
                                synchronized (rv4.class) {
                                    try {
                                        if (obj == rv4.j) {
                                            rv4.e.put(str, null);
                                        }
                                    } finally {
                                    }
                                    break;
                                }
                                return null;
                            }
                            String string = cursorQuery.getString(1);
                            if (string != null && string.equals(null)) {
                                string = null;
                            }
                            synchronized (rv4.class) {
                                try {
                                    if (obj == rv4.j) {
                                        rv4.e.put(str, string);
                                    }
                                } finally {
                                }
                                break;
                            }
                            if (string != null) {
                                return string;
                            }
                            return null;
                        } finally {
                            cursorQuery.close();
                        }
                    } finally {
                    }
                }
            default:
                return new wc5(((di2) ((gt4) this.o).o).o, (yd5) ((qo4) this.p).zza());
        }
    }

    public /* synthetic */ pc4(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }

    public /* synthetic */ pc4(int i, Object obj, Object obj2, boolean z) {
        this.n = i;
        this.o = obj2;
        this.p = obj;
    }

    public pc4(sm4 sm4Var) {
        this.n = 26;
        this.o = sm4Var;
    }

    public pc4(ra3 ra3Var, int i) {
        this.n = 23;
        this.p = ra3Var;
        this.o = new AtomicReferenceArray(i);
    }

    public pc4(AppMeasurementSdk appMeasurementSdk, gw4 gw4Var) {
        this.n = 13;
        this.p = gw4Var;
        appMeasurementSdk.a(new ww4(0, this));
        this.o = new HashSet();
    }

    public /* synthetic */ pc4(int i, Object obj) {
        this.n = i;
        this.p = obj;
    }

    public pc4(ez2 ez2Var, qd1 qd1Var) {
        this.n = 2;
        ez2Var.getClass();
        qd1Var.getClass();
        this.o = ez2Var;
        this.p = qd1Var;
    }

    public pc4(WindowInsetsAnimation.Bounds bounds) {
        this.n = 1;
        this.o = nr1.c(bounds.getLowerBound());
        this.p = nr1.c(bounds.getUpperBound());
    }
}
