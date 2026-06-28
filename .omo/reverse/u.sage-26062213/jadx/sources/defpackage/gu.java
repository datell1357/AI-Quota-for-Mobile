package defpackage;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gu implements mj {
    public final Log a = LogFactory.getLog(gu.class);
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final mj1 c = mj1.K;

    public final oj a(em1 em1Var) {
        byte[] bArr = (byte[]) this.b.get(b(em1Var));
        if (bArr == null) {
            return null;
        }
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(bArr));
            oj ojVar = (oj) objectInputStream.readObject();
            objectInputStream.close();
            return ojVar;
        } catch (IOException e) {
            if (!this.a.isWarnEnabled()) {
                return null;
            }
            this.a.warn("Unexpected I/O error while de-serializing auth scheme", e);
            return null;
        } catch (ClassNotFoundException e2) {
            if (!this.a.isWarnEnabled()) {
                return null;
            }
            this.a.warn("Unexpected error while de-serializing auth scheme", e2);
            return null;
        }
    }

    public final em1 b(em1 em1Var) {
        if (em1Var.p <= 0) {
            try {
                this.c.getClass();
                return new em1(em1Var.n, mj1.t(em1Var), em1Var.q);
            } catch (r74 unused) {
            }
        }
        return em1Var;
    }

    public final void c(em1 em1Var, oj ojVar) {
        w80.L(em1Var, "HTTP host");
        if (ojVar == null) {
            return;
        }
        if (!(ojVar instanceof Serializable)) {
            if (this.a.isDebugEnabled()) {
                this.a.debug("Auth scheme " + ojVar.getClass() + " is not serializable");
                return;
            }
            return;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(ojVar);
            objectOutputStream.close();
            this.b.put(b(em1Var), byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            if (this.a.isWarnEnabled()) {
                this.a.warn("Unexpected I/O error while serializing auth scheme", e);
            }
        }
    }

    public final String toString() {
        return this.b.toString();
    }
}
