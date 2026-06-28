package defpackage;

import java.util.Iterator;
import java.util.regex.Matcher;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ra2 extends w {
    public final /* synthetic */ int n;
    public final Object o;

    public /* synthetic */ ra2(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    @Override // defpackage.w
    public final int a() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                return ((Matcher) ((qd1) obj).o).groupCount() + 1;
            default:
                lu2 lu2Var = (lu2) obj;
                lu2Var.getClass();
                return lu2Var.o;
        }
    }

    @Override // defpackage.w, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        switch (this.n) {
            case 0:
                if (obj == null ? true : obj instanceof pa2) {
                    return super.contains((pa2) obj);
                }
                return false;
            default:
                return ((lu2) this.o).containsValue(obj);
        }
    }

    public pa2 d(int i) {
        Matcher matcher = (Matcher) ((qd1) this.o).o;
        ms1 ms1VarA0 = ix.a0(matcher.start(i), matcher.end(i));
        if (ms1VarA0.n < 0) {
            return null;
        }
        String strGroup = matcher.group(i);
        strGroup.getClass();
        return new pa2(strGroup, ms1VarA0);
    }

    @Override // defpackage.w, java.util.Collection
    public boolean isEmpty() {
        switch (this.n) {
            case 0:
                return false;
            default:
                return super.isEmpty();
        }
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.n) {
            case 0:
                return new g14(new hw3(new s70(0, new ms1(0, size() - 1, 1)), new v(16, this), 1));
            default:
                j24 j24Var = ((lu2) this.o).n;
                k24[] k24VarArr = new k24[8];
                for (int i = 0; i < 8; i++) {
                    k24VarArr[i] = new l24(2);
                }
                return new su2(j24Var, k24VarArr);
        }
    }
}
