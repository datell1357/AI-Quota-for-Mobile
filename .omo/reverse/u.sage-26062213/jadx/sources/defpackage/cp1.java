package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class cp1 {
    public Object[] a;
    public int b;
    public boolean c;

    public cp1(int i) {
        ht4.i(i, "initialCapacity");
        this.a = new Object[i];
        this.b = 0;
    }

    public static int b(int i, int i2) {
        if (i2 < 0) {
            k21.f("cannot store more than Integer.MAX_VALUE elements");
            return 0;
        }
        if (i2 <= i) {
            return i;
        }
        int iHighestOneBit = i + (i >> 1) + 1;
        if (iHighestOneBit < i2) {
            iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
        }
        return iHighestOneBit < 0 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : iHighestOneBit;
    }

    public final void a(Object obj) {
        obj.getClass();
        Object[] objArr = this.a;
        int iB = b(objArr.length, this.b + 1);
        if (iB > objArr.length || this.c) {
            this.a = Arrays.copyOf(this.a, iB);
            this.c = false;
        }
        Object[] objArr2 = this.a;
        int i = this.b;
        this.b = i + 1;
        objArr2[i] = obj;
    }
}
