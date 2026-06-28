package defpackage;

import java.util.concurrent.atomic.AtomicMarkableReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class j0 extends e1 implements Cloneable, om1 {
    private final AtomicMarkableReference<m20> cancellableRef = new AtomicMarkableReference<>(null, false);

    public void abort() {
        while (!this.cancellableRef.isMarked()) {
            m20 reference = this.cancellableRef.getReference();
            if (this.cancellableRef.compareAndSet(reference, reference, false, true) && reference != null) {
                reference.cancel();
            }
        }
    }

    public Object clone() {
        j0 j0Var = (j0) super.clone();
        j0Var.headergroup = (ij1) gg4.o(this.headergroup);
        j0Var.params = (km1) gg4.o(this.params);
        return j0Var;
    }

    @Deprecated
    public void completed() {
        this.cancellableRef.set(null, false);
    }

    public boolean isAborted() {
        return this.cancellableRef.isMarked();
    }

    public void reset() {
        boolean zIsMarked;
        m20 reference;
        do {
            zIsMarked = this.cancellableRef.isMarked();
            reference = this.cancellableRef.getReference();
            if (reference != null) {
                reference.cancel();
            }
        } while (!this.cancellableRef.compareAndSet(reference, null, zIsMarked, false));
    }

    public void setCancellable(m20 m20Var) {
        if (this.cancellableRef.compareAndSet(this.cancellableRef.getReference(), m20Var, false, false)) {
            return;
        }
        m20Var.cancel();
    }

    @Deprecated
    public void setConnectionRequest(i60 i60Var) {
        setCancellable(new i0(0, i60Var));
    }

    @Deprecated
    public void setReleaseTrigger(he0 he0Var) {
        setCancellable(new i0(1, he0Var));
    }
}
