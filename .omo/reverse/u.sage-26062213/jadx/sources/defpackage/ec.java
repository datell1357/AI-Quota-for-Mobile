package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ec implements kp3 {
    public static final qv3 e = new qv3(10);
    public final Class a;
    public final Method b;
    public final Method c;
    public final Method d;

    public ec(Class cls) throws NoSuchMethodException {
        this.a = cls;
        Method declaredMethod = cls.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE);
        declaredMethod.getClass();
        this.b = declaredMethod;
        cls.getMethod("setHostname", String.class);
        this.c = cls.getMethod("getAlpnSelectedProtocol", null);
        this.d = cls.getMethod("setAlpnProtocols", byte[].class);
    }

    @Override // defpackage.kp3
    public final String a(SSLSocket sSLSocket) {
        if (this.a.isInstance(sSLSocket)) {
            try {
                byte[] bArr = (byte[]) this.c.invoke(sSLSocket, null);
                if (bArr != null) {
                    return new String(bArr, k40.a);
                }
            } catch (IllegalAccessException e2) {
                k21.c(e2);
                return null;
            } catch (InvocationTargetException e3) {
                Throwable cause = e3.getCause();
                if (!(cause instanceof NullPointerException) || !nt1.g(((NullPointerException) cause).getMessage(), "ssl == null")) {
                    k21.c(e3);
                    return null;
                }
            }
        }
        return null;
    }

    @Override // defpackage.kp3
    public final boolean b() {
        boolean z = wb.e;
        return wb.e;
    }

    @Override // defpackage.kp3
    public final boolean c(SSLSocket sSLSocket) {
        return this.a.isInstance(sSLSocket);
    }

    @Override // defpackage.kp3
    public final void d(SSLSocket sSLSocket, String str, List list) {
        list.getClass();
        if (this.a.isInstance(sSLSocket)) {
            try {
                this.b.invoke(sSLSocket, Boolean.TRUE);
                Method method = this.d;
                iv2 iv2Var = iv2.a;
                method.invoke(sSLSocket, b21.u(list));
            } catch (IllegalAccessException e2) {
                k21.c(e2);
            } catch (InvocationTargetException e3) {
                k21.c(e3);
            }
        }
    }
}
