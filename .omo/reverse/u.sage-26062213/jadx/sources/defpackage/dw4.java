package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dw4 extends iu4 implements mw4 {
    public final AtomicReference c;
    public boolean d;

    public dw4() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
        this.c = new AtomicReference();
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0002, code lost:
    
        r3 = r3.get("r");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object G(android.os.Bundle r3, java.lang.Class r4) {
        /*
            if (r3 == 0) goto L38
            java.lang.String r0 = "r"
            java.lang.Object r3 = r3.get(r0)
            if (r3 == 0) goto L38
            java.lang.Object r3 = r4.cast(r3)     // Catch: java.lang.ClassCastException -> Lf
            return r3
        Lf:
            r0 = move-exception
            java.lang.String r4 = r4.getCanonicalName()
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = r3.getCanonicalName()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Unexpected object type. Expected, Received: "
            r1.<init>(r2)
            r1.append(r4)
            java.lang.String r4 = ", "
            r1.append(r4)
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            java.lang.String r4 = "AM"
            android.util.Log.w(r4, r3, r0)
            throw r0
        L38:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dw4.G(android.os.Bundle, java.lang.Class):java.lang.Object");
    }

    @Override // defpackage.iu4
    public final boolean E(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        Bundle bundle = (Bundle) ku4.a(parcel, Bundle.CREATOR);
        ku4.d(parcel);
        i(bundle);
        parcel2.writeNoException();
        return true;
    }

    public final Bundle F(long j) {
        Bundle bundle;
        AtomicReference atomicReference = this.c;
        synchronized (atomicReference) {
            if (!this.d) {
                try {
                    atomicReference.wait(j);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = (Bundle) this.c.get();
        }
        return bundle;
    }

    @Override // defpackage.mw4
    public final void i(Bundle bundle) {
        AtomicReference atomicReference = this.c;
        synchronized (atomicReference) {
            try {
                try {
                    atomicReference.set(bundle);
                    this.d = true;
                } finally {
                    this.c.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
