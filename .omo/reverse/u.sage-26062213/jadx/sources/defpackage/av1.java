package defpackage;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class av1 implements rp1 {
    public static final /* synthetic */ AtomicIntegerFieldUpdater o = AtomicIntegerFieldUpdater.newUpdater(av1.class, "_isCompleting$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater p = AtomicReferenceFieldUpdater.newUpdater(av1.class, Object.class, "_rootCause$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater q;
    public static final /* synthetic */ long r;
    public static final /* synthetic */ long s;
    private volatile /* synthetic */ Object _exceptionsHolder$volatile;
    private volatile /* synthetic */ int _isCompleting$volatile = 0;
    private volatile /* synthetic */ Object _rootCause$volatile;
    public final om2 n;

    static {
        Unsafe unsafe = sa5.a;
        s = unsafe.objectFieldOffset(av1.class.getDeclaredField("_rootCause$volatile"));
        q = AtomicReferenceFieldUpdater.newUpdater(av1.class, Object.class, "_exceptionsHolder$volatile");
        r = unsafe.objectFieldOffset(av1.class.getDeclaredField("_exceptionsHolder$volatile"));
    }

    public av1(om2 om2Var, Throwable th) {
        this.n = om2Var;
        this._rootCause$volatile = th;
    }

    public final void a(Throwable th) {
        Throwable thE = e();
        if (thE == null) {
            i(th);
            return;
        }
        if (th == thE) {
            return;
        }
        Object objC = c();
        if (objC == null) {
            h(th);
            return;
        }
        if (!(objC instanceof Throwable)) {
            if (objC instanceof ArrayList) {
                ((ArrayList) objC).add(th);
                return;
            } else {
                mk0.k(objC, "State is ");
                return;
            }
        }
        if (th == objC) {
            return;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(objC);
        arrayList.add(th);
        h(arrayList);
    }

    @Override // defpackage.rp1
    public final boolean b() {
        return e() == null;
    }

    public final Object c() {
        q.getClass();
        return sa5.a.getObjectVolatile(this, r);
    }

    @Override // defpackage.rp1
    public final om2 d() {
        return this.n;
    }

    public final Throwable e() {
        p.getClass();
        return (Throwable) sa5.a.getObjectVolatile(this, s);
    }

    public final boolean f() {
        return e() != null;
    }

    public final ArrayList g(Throwable th) {
        ArrayList arrayList;
        Object objC = c();
        if (objC == null) {
            arrayList = new ArrayList(4);
        } else if (objC instanceof Throwable) {
            ArrayList arrayList2 = new ArrayList(4);
            arrayList2.add(objC);
            arrayList = arrayList2;
        } else {
            if (!(objC instanceof ArrayList)) {
                mk0.k(objC, "State is ");
                return null;
            }
            arrayList = (ArrayList) objC;
        }
        Throwable thE = e();
        if (thE != null) {
            arrayList.add(0, thE);
        }
        if (th != null && !th.equals(thE)) {
            arrayList.add(th);
        }
        h(cv1.e);
        return arrayList;
    }

    public final void h(Object obj) {
        q.getClass();
        sa5.a.putObjectVolatile(this, r, obj);
    }

    public final void i(Throwable th) {
        p.getClass();
        sa5.a.putObjectVolatile(this, s, th);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Finishing[cancelling=");
        sb.append(f());
        sb.append(", completing=");
        sb.append(o.get(this) == 1);
        sb.append(", rootCause=");
        sb.append(e());
        sb.append(", exceptions=");
        sb.append(c());
        sb.append(", list=");
        sb.append(this.n);
        sb.append(']');
        return sb.toString();
    }
}
