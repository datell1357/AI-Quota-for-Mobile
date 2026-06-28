package defpackage;

import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class xl3 {
    public static final sg0 a = new sg0("NO_VALUE", 3);

    public static wl3 a(int i, int i2) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        int i3 = (i2 & 2) == 0 ? 16 : 0;
        int i4 = i2 & 4;
        vy vyVar = vy.n;
        vy vyVar2 = i4 != 0 ? vyVar : vy.o;
        if (i < 0) {
            k21.l(di0.q(i, "replay cannot be negative, but was "));
            return null;
        }
        if (i <= 0 && i3 <= 0 && vyVar2 != vyVar) {
            q73.s(vyVar2, "replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy ");
            return null;
        }
        int i5 = i3 + i;
        if (i5 < 0) {
            i5 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        return new wl3(i, i5, vyVar2);
    }

    public static final void b(Object[] objArr, long j, Object obj) {
        objArr[((int) j) & (objArr.length - 1)] = obj;
    }

    public static final a81 c(tl3 tl3Var, hi0 hi0Var, int i, vy vyVar) {
        return ((i == 0 || i == -3) && vyVar == vy.n) ? tl3Var : new s30(tl3Var, hi0Var, i, vyVar);
    }
}
