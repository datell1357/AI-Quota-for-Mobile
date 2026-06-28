package defpackage;

import java.net.InetAddress;
import java.util.Collection;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v63 implements Cloneable {
    public static final v63 D = new v63(false, null, null, false, null, true, true, false, 50, true, null, null, -1, -1, -1, true);
    public final int A;
    public final int B;
    public final boolean C;
    public final boolean n;
    public final em1 o;
    public final InetAddress p;
    public final boolean q;
    public final String r;
    public final boolean s;
    public final boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f370u;
    public final int v;
    public final boolean w;
    public final Collection x;
    public final Collection y;
    public final int z;

    public v63(boolean z, em1 em1Var, InetAddress inetAddress, boolean z2, String str, boolean z3, boolean z4, boolean z5, int i, boolean z6, Collection collection, Collection collection2, int i2, int i3, int i4, boolean z7) {
        this.n = z;
        this.o = em1Var;
        this.p = inetAddress;
        this.q = z2;
        this.r = str;
        this.s = z3;
        this.t = z4;
        this.f370u = z5;
        this.v = i;
        this.w = z6;
        this.x = collection;
        this.y = collection2;
        this.z = i2;
        this.A = i3;
        this.B = i4;
        this.C = z7;
    }

    public final int a() {
        return this.z;
    }

    public final int b() {
        return this.B;
    }

    public final boolean c() {
        return this.q;
    }

    public final Object clone() {
        return (v63) super.clone();
    }

    public final String toString() {
        return "[expectContinueEnabled=" + this.n + ", proxy=" + this.o + ", localAddress=" + this.p + ", cookieSpec=" + this.r + ", redirectsEnabled=" + this.s + ", relativeRedirectsAllowed=" + this.t + ", maxRedirects=" + this.v + ", circularRedirectsAllowed=" + this.f370u + ", authenticationEnabled=" + this.w + ", targetPreferredAuthSchemes=" + this.x + ", proxyPreferredAuthSchemes=" + this.y + ", connectionRequestTimeout=" + this.z + ", connectTimeout=" + this.A + ", socketTimeout=" + this.B + ", contentCompressionEnabled=true, normalizeUri=" + this.C + "]";
    }
}
