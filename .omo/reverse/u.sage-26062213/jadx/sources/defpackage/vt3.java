package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vt3 extends wl3 implements ur3 {
    @Override // defpackage.ur3
    public final Object getValue() {
        Integer numValueOf;
        synchronized (this) {
            Object[] objArr = this.f400u;
            objArr.getClass();
            numValueOf = Integer.valueOf(((Number) objArr[((int) ((this.v + ((long) ((int) ((o() + ((long) this.x)) - this.v)))) - 1)) & (objArr.length - 1)]).intValue());
        }
        return numValueOf;
    }

    public final void w(int i) {
        synchronized (this) {
            Object[] objArr = this.f400u;
            objArr.getClass();
            q(Integer.valueOf(((Number) objArr[((int) ((this.v + ((long) ((int) ((o() + ((long) this.x)) - this.v)))) - 1)) & (objArr.length - 1)]).intValue() + i));
        }
    }
}
