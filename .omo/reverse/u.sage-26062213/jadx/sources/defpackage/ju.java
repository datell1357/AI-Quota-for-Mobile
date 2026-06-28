package defpackage;

import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ju extends ku {
    public int[] w;
    public boolean x;

    @Override // defpackage.ku
    public final int[] a() {
        return this.w;
    }

    @Override // defpackage.ku
    public final boolean b(Date date) {
        return this.x || super.b(date);
    }

    @Override // defpackage.ku
    public final Object clone() {
        ju juVar = (ju) super.clone();
        int[] iArr = this.w;
        if (iArr != null) {
            juVar.w = (int[]) iArr.clone();
        }
        return juVar;
    }
}
