package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class aq3 implements po1 {
    public final r51 n;
    public final fl4 o;
    public final Object p = new Object();
    public boolean q;
    public final fz r;

    public aq3(fz fzVar, r51 r51Var, fl4 fl4Var) {
        this.n = r51Var;
        this.o = fl4Var;
        this.r = fzVar;
    }

    @Override // defpackage.po1
    public final bt2 I() {
        synchronized (this.p) {
            if (this.q) {
                throw new IllegalStateException("closed");
            }
        }
        return null;
    }

    @Override // defpackage.po1
    public final fz a0() {
        fz fzVar;
        synchronized (this.p) {
            try {
                if (this.q) {
                    throw new IllegalStateException("closed");
                }
                fzVar = this.r;
                if (fzVar == null) {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return fzVar;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.p) {
            this.q = true;
            fz fzVar = this.r;
            if (fzVar != null) {
                try {
                    fzVar.close();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // defpackage.po1
    public final r51 getFileSystem() {
        return this.n;
    }

    @Override // defpackage.po1
    public final fl4 getMetadata() {
        return this.o;
    }
}
