package defpackage;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dv extends bm1 implements he0, z11 {
    public t92 o;
    public final boolean p;

    public dv(xl1 xl1Var, t92 t92Var, boolean z) {
        super(xl1Var);
        w80.L(t92Var, "Connection");
        this.o = t92Var;
        this.p = z;
    }

    @Override // defpackage.z11
    public final void a(InputStream inputStream) {
        try {
            t92 t92Var = this.o;
            if (t92Var != null) {
                if (this.p) {
                    boolean zIsOpen = t92Var.isOpen();
                    try {
                        inputStream.close();
                        this.o.O();
                    } catch (SocketException e) {
                        if (zIsOpen) {
                            throw e;
                        }
                    }
                } else {
                    t92Var.g0();
                }
            }
        } finally {
            d();
        }
    }

    @Override // defpackage.z11
    public final void b() {
        t92 t92Var = this.o;
        if (t92Var != null) {
            t92Var.j();
        }
    }

    @Override // defpackage.z11
    public final void c(InputStream inputStream) {
        try {
            t92 t92Var = this.o;
            if (t92Var != null) {
                if (this.p) {
                    inputStream.close();
                    this.o.O();
                } else {
                    t92Var.g0();
                }
            }
            d();
        } catch (Throwable th) {
            d();
            throw th;
        }
    }

    public final void d() {
        t92 t92Var = this.o;
        if (t92Var != null) {
            try {
                t92Var.r();
            } finally {
                this.o = null;
            }
        }
    }

    @Override // defpackage.xl1
    public final InputStream getContent() {
        return new y11(this.n.getContent(), this);
    }

    @Override // defpackage.bm1, defpackage.xl1
    public final boolean isRepeatable() {
        return false;
    }

    @Override // defpackage.he0
    public final void j() {
        t92 t92Var = this.o;
        if (t92Var != null) {
            try {
                t92Var.j();
            } finally {
                this.o = null;
            }
        }
    }

    @Override // defpackage.bm1, defpackage.xl1
    public final void writeTo(OutputStream outputStream) {
        super.writeTo(outputStream);
        t92 t92Var = this.o;
        if (t92Var == null) {
            return;
        }
        try {
            if (this.p) {
                n44.f0(this.n);
                this.o.O();
            } else {
                t92Var.g0();
            }
            d();
        } catch (Throwable th) {
            d();
            throw th;
        }
    }
}
