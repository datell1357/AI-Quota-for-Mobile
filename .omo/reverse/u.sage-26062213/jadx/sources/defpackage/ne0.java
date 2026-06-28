package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ne0 {
    public static final ne0 e;
    public static final ne0 f;
    public final boolean a;
    public final boolean b;
    public final String[] c;
    public final String[] d;

    static {
        d50 d50Var = d50.r;
        d50 d50Var2 = d50.s;
        d50 d50Var3 = d50.t;
        d50 d50Var4 = d50.l;
        d50 d50Var5 = d50.n;
        d50 d50Var6 = d50.m;
        d50 d50Var7 = d50.o;
        d50 d50Var8 = d50.q;
        d50 d50Var9 = d50.p;
        List listF = tv4.F(d50Var, d50Var2, d50Var3, d50Var4, d50Var5, d50Var6, d50Var7, d50Var8, d50Var9);
        List listF2 = tv4.F(d50Var, d50Var2, d50Var3, d50Var4, d50Var5, d50Var6, d50Var7, d50Var8, d50Var9, d50.j, d50.k, d50.h, d50.i, d50.f, d50.g, d50.e);
        me0 me0Var = new me0();
        d50[] d50VarArr = (d50[]) listF.toArray(new d50[0]);
        me0Var.b((d50[]) Arrays.copyOf(d50VarArr, d50VarArr.length));
        sz3 sz3Var = sz3.TLS_1_3;
        sz3 sz3Var2 = sz3.TLS_1_2;
        me0Var.c(sz3Var, sz3Var2);
        me0Var.b = true;
        me0Var.a();
        me0 me0Var2 = new me0();
        d50[] d50VarArr2 = (d50[]) listF2.toArray(new d50[0]);
        me0Var2.b((d50[]) Arrays.copyOf(d50VarArr2, d50VarArr2.length));
        me0Var2.c(sz3Var, sz3Var2);
        me0Var2.b = true;
        e = me0Var2.a();
        me0 me0Var3 = new me0();
        d50[] d50VarArr3 = (d50[]) listF2.toArray(new d50[0]);
        me0Var3.b((d50[]) Arrays.copyOf(d50VarArr3, d50VarArr3.length));
        me0Var3.c(sz3Var, sz3Var2, sz3.TLS_1_1, sz3.TLS_1_0);
        me0Var3.b = true;
        me0Var3.a();
        f = new ne0(false, false, null, null);
    }

    public ne0(boolean z, boolean z2, String[] strArr, String[] strArr2) {
        this.a = z;
        this.b = z2;
        this.c = strArr;
        this.d = strArr2;
    }

    public final void a(SSLSocket sSLSocket, boolean z) {
        String[] enabledProtocols;
        String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        enabledCipherSuites.getClass();
        String[] strArr = this.c;
        if (strArr != null) {
            enabledCipherSuites = fi4.h(strArr, enabledCipherSuites, d50.c);
        }
        String[] strArr2 = this.d;
        if (strArr2 != null) {
            String[] enabledProtocols2 = sSLSocket.getEnabledProtocols();
            enabledProtocols2.getClass();
            enabledProtocols = fi4.h(enabledProtocols2, strArr2, uh2.o);
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        supportedCipherSuites.getClass();
        lh0 lh0Var = d50.c;
        byte[] bArr = fi4.a;
        int length = supportedCipherSuites.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (lh0Var.compare(supportedCipherSuites[i], "TLS_FALLBACK_SCSV") == 0) {
                break;
            } else {
                i++;
            }
        }
        if (z && i != -1) {
            String str = supportedCipherSuites[i];
            str.getClass();
            enabledCipherSuites.getClass();
            enabledCipherSuites = (String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length + 1);
            enabledCipherSuites[enabledCipherSuites.length - 1] = str;
        }
        String[] strArr3 = (String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length);
        boolean z2 = this.a;
        if (!z2) {
            k21.f("no cipher suites for cleartext connections");
            return;
        }
        if (strArr3.length == 0) {
            k21.f("At least one cipher suite is required");
            return;
        }
        String[] strArr4 = (String[]) Arrays.copyOf(strArr3, strArr3.length);
        String[] strArr5 = (String[]) Arrays.copyOf(enabledProtocols, enabledProtocols.length);
        if (!z2) {
            k21.f("no TLS versions for cleartext connections");
            return;
        }
        if (strArr5.length == 0) {
            k21.f("At least one TLS version is required");
            return;
        }
        ne0 ne0Var = new ne0(z2, this.b, strArr4, (String[]) Arrays.copyOf(strArr5, strArr5.length));
        if (ne0Var.c() != null) {
            sSLSocket.setEnabledProtocols(ne0Var.d);
        }
        if (ne0Var.b() != null) {
            sSLSocket.setEnabledCipherSuites(ne0Var.c);
        }
    }

    public final ArrayList b() {
        String[] strArr = this.c;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(d50.b.p(str));
        }
        return arrayList;
    }

    public final ArrayList c() {
        String[] strArr = this.d;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            sz3.o.getClass();
            arrayList.add(pr3.h(str));
        }
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ne0)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        ne0 ne0Var = (ne0) obj;
        boolean z = ne0Var.a;
        boolean z2 = this.a;
        if (z2 != z) {
            return false;
        }
        if (z2) {
            return Arrays.equals(this.c, ne0Var.c) && Arrays.equals(this.d, ne0Var.d) && this.b == ne0Var.b;
        }
        return true;
    }

    public final int hashCode() {
        if (!this.a) {
            return 17;
        }
        String[] strArr = this.c;
        int iHashCode = (527 + (strArr != null ? Arrays.hashCode(strArr) : 0)) * 31;
        String[] strArr2 = this.d;
        return ((iHashCode + (strArr2 != null ? Arrays.hashCode(strArr2) : 0)) * 31) + (!this.b ? 1 : 0);
    }

    public final String toString() {
        if (!this.a) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + Objects.toString(b(), "[all enabled]") + ", tlsVersions=" + Objects.toString(c(), "[all enabled]") + ", supportsTlsExtensions=" + this.b + ')';
    }
}
