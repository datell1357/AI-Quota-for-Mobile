package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f53 extends np1 {
    public static final Object[] v;
    public static final f53 w;
    public final transient Object[] q;
    public final transient int r;
    public final transient Object[] s;
    public final transient int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final transient int f93u;

    static {
        Object[] objArr = new Object[0];
        v = objArr;
        w = new f53(0, 0, 0, objArr, objArr);
    }

    public f53(int i, int i2, int i3, Object[] objArr, Object[] objArr2) {
        this.q = objArr;
        this.r = i;
        this.s = objArr2;
        this.t = i2;
        this.f93u = i3;
    }

    @Override // defpackage.dp1
    public final int c(Object[] objArr) {
        Object[] objArr2 = this.q;
        int i = this.f93u;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // defpackage.dp1, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.s;
            if (objArr.length != 0) {
                int iS = ix.S(obj.hashCode());
                while (true) {
                    int i = iS & this.t;
                    Object obj2 = objArr[i];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iS = i + 1;
                }
            }
        }
        return false;
    }

    @Override // defpackage.dp1
    public final Object[] d() {
        return this.q;
    }

    @Override // defpackage.dp1
    public final int e() {
        return this.f93u;
    }

    @Override // defpackage.dp1
    public final int f() {
        return 0;
    }

    @Override // defpackage.dp1
    public final boolean g() {
        return false;
    }

    @Override // defpackage.dp1
    public final y64 h() {
        return a().listIterator(0);
    }

    @Override // defpackage.np1, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.r;
    }

    @Override // defpackage.np1
    public final lp1 l() {
        return lp1.i(this.f93u, this.q);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f93u;
    }
}
