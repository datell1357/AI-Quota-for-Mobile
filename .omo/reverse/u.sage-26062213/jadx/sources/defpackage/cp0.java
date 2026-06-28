package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.NoRouteToHostException;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cp0 implements sm1 {
    public static final cp0 c = new cp0(3);
    public final int a;
    public final HashSet b;

    public cp0(int i) {
        List listAsList = Arrays.asList(InterruptedIOException.class, UnknownHostException.class, ConnectException.class, NoRouteToHostException.class, SSLException.class);
        this.a = i;
        HashSet hashSet = new HashSet();
        this.b = hashSet;
        hashSet.addAll(listAsList);
    }

    public final boolean a(IOException iOException, int i, ul1 ul1Var) {
        Boolean bool;
        if (i <= this.a) {
            Class<?> cls = iOException.getClass();
            HashSet hashSet = this.b;
            if (!hashSet.contains(cls)) {
                Iterator it = hashSet.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        rl1 rl1VarC = rl1.c(ul1Var);
                        om1 om1Var = (om1) rl1VarC.a("http.request", om1.class);
                        om1 om1Var2 = om1Var instanceof g73 ? ((g73) om1Var).n : om1Var;
                        if (!(om1Var2 instanceof an1) || !((an1) om1Var2).isAborted()) {
                            return ((om1Var instanceof zl1) && (bool = (Boolean) rl1VarC.a("http.request_sent", Boolean.class)) != null && bool.booleanValue()) ? false : true;
                        }
                    } else if (((Class) it.next()).isInstance(iOException)) {
                        break;
                    }
                }
            }
        }
        return false;
    }
}
