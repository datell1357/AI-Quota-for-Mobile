package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.net.URI;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class s60 implements nl1, Closeable {
    private final Log log = LogFactory.getLog(getClass());

    public static em1 b(an1 an1Var) throws o60 {
        URI uri = an1Var.getURI();
        if (!uri.isAbsolute()) {
            return null;
        }
        em1 em1VarA = z54.a(uri);
        if (em1VarA != null) {
            return em1VarA;
        }
        throw new o60("URI does not specify a valid host name: " + uri);
    }

    public abstract t60 doExecute(em1 em1Var, om1 om1Var, ul1 ul1Var);

    public <T> T execute(em1 em1Var, om1 om1Var, a83 a83Var, ul1 ul1Var) throws IOException {
        w80.L(a83Var, "Response handler");
        t60 t60VarM19execute = m19execute(em1Var, om1Var, ul1Var);
        try {
            try {
                T t = (T) a83Var.a();
                n44.f0(t60VarM19execute.getEntity());
                return t;
            } catch (o60 e) {
                try {
                    n44.f0(t60VarM19execute.getEntity());
                } catch (Exception e2) {
                    this.log.warn("Error consuming content after an exception.", e2);
                }
                throw e;
            }
        } finally {
            t60VarM19execute.close();
        }
    }

    /* JADX INFO: renamed from: execute, reason: merged with bridge method [inline-methods] */
    public t60 m19execute(em1 em1Var, om1 om1Var, ul1 ul1Var) {
        return doExecute(em1Var, om1Var, ul1Var);
    }

    /* JADX INFO: renamed from: execute, reason: merged with bridge method [inline-methods] */
    public t60 m17execute(an1 an1Var, ul1 ul1Var) {
        w80.L(an1Var, "HTTP request");
        return doExecute(b(an1Var), an1Var, ul1Var);
    }

    @Override // defpackage.nl1
    public t60 execute(an1 an1Var) {
        return m17execute(an1Var, (ul1) null);
    }

    /* JADX INFO: renamed from: execute, reason: merged with bridge method [inline-methods] */
    public t60 m18execute(em1 em1Var, om1 om1Var) {
        return doExecute(em1Var, om1Var, null);
    }

    public <T> T execute(an1 an1Var, a83 a83Var) {
        return (T) execute(an1Var, a83Var, (ul1) null);
    }

    public <T> T execute(an1 an1Var, a83 a83Var, ul1 ul1Var) {
        return (T) execute(b(an1Var), an1Var, a83Var, ul1Var);
    }

    public <T> T execute(em1 em1Var, om1 om1Var, a83 a83Var) {
        return (T) execute(em1Var, om1Var, a83Var, null);
    }
}
