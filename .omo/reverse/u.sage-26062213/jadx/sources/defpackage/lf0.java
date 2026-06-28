package defpackage;

import android.net.NetworkRequest;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lf0 {
    public static final lf0 j = new lf0();
    public final zl2 a;
    public final tl2 b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final long g;
    public final long h;
    public final Set i;

    public lf0(lf0 lf0Var) {
        lf0Var.getClass();
        this.c = lf0Var.c;
        this.d = lf0Var.d;
        this.b = lf0Var.b;
        this.a = lf0Var.a;
        this.e = lf0Var.e;
        this.f = lf0Var.f;
        this.i = lf0Var.i;
        this.g = lf0Var.g;
        this.h = lf0Var.h;
    }

    public final NetworkRequest a() {
        return (NetworkRequest) this.b.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !lf0.class.equals(obj.getClass())) {
            return false;
        }
        lf0 lf0Var = (lf0) obj;
        if (this.c == lf0Var.c && this.d == lf0Var.d && this.e == lf0Var.e && this.f == lf0Var.f && this.g == lf0Var.g && this.h == lf0Var.h && nt1.g(a(), lf0Var.a()) && this.a == lf0Var.a) {
            return nt1.g(this.i, lf0Var.i);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((((((((this.a.hashCode() * 31) + (this.c ? 1 : 0)) * 31) + (this.d ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31) + (this.f ? 1 : 0)) * 31;
        long j2 = this.g;
        int i = (iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.h;
        int iHashCode2 = (this.i.hashCode() + ((i + ((int) (j3 ^ (j3 >>> 32)))) * 31)) * 31;
        NetworkRequest networkRequestA = a();
        return iHashCode2 + (networkRequestA != null ? networkRequestA.hashCode() : 0);
    }

    public final String toString() {
        return "Constraints{requiredNetworkType=" + this.a + ", requiresCharging=" + this.c + ", requiresDeviceIdle=" + this.d + ", requiresBatteryNotLow=" + this.e + ", requiresStorageNotLow=" + this.f + ", contentTriggerUpdateDelayMillis=" + this.g + ", contentTriggerMaxDelayMillis=" + this.h + ", contentUriTriggers=" + this.i + ", }";
    }

    public lf0(tl2 tl2Var, zl2 zl2Var, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, Set set) {
        this.b = tl2Var;
        this.a = zl2Var;
        this.c = z;
        this.d = z2;
        this.e = z3;
        this.f = z4;
        this.g = j2;
        this.h = j3;
        this.i = set;
    }

    public lf0() {
        this.b = new tl2(null);
        this.a = zl2.n;
        this.c = false;
        this.d = false;
        this.e = false;
        this.f = false;
        this.g = -1L;
        this.h = -1L;
        this.i = k01.n;
    }
}
