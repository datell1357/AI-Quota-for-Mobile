package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uu1 extends CancellationException {
    public final transient bv1 n;

    public uu1(String str, Throwable th, bv1 bv1Var) {
        super(str);
        this.n = bv1Var;
        if (th != null) {
            initCause(th);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof uu1)) {
            return false;
        }
        uu1 uu1Var = (uu1) obj;
        if (!nt1.g(uu1Var.getMessage(), getMessage())) {
            return false;
        }
        Object obj2 = uu1Var.n;
        if (obj2 == null) {
            obj2 = sm2.o;
        }
        Object obj3 = this.n;
        if (obj3 == null) {
            obj3 = sm2.o;
        }
        return nt1.g(obj2, obj3) && nt1.g(uu1Var.getCause(), getCause());
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        String message = getMessage();
        message.getClass();
        int iHashCode = message.hashCode() * 31;
        Object obj = this.n;
        if (obj == null) {
            obj = sm2.o;
        }
        int iHashCode2 = (iHashCode + (obj != null ? obj.hashCode() : 0)) * 31;
        Throwable cause = getCause();
        return iHashCode2 + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("; job=");
        Object obj = this.n;
        if (obj == null) {
            obj = sm2.o;
        }
        sb.append(obj);
        return sb.toString();
    }
}
