package defpackage;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ku implements Cloneable, Serializable {
    public final String n;
    public HashMap o;
    public final String p;
    public String q;
    public Date r;
    public String s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f173u;
    public Date v;

    public ku(String str, String str2) {
        w80.L(str, "Name");
        this.n = str;
        this.o = new HashMap();
        this.p = str2;
    }

    public int[] a() {
        return null;
    }

    public boolean b(Date date) {
        Date date2 = this.r;
        return date2 != null && date2.getTime() <= date.getTime();
    }

    public final void c(String str) {
        if (str != null) {
            this.q = str.toLowerCase(Locale.ROOT);
        } else {
            this.q = null;
        }
    }

    public Object clone() {
        ku kuVar = (ku) super.clone();
        kuVar.o = new HashMap(this.o);
        return kuVar;
    }

    public final String toString() {
        return "[version: " + Integer.toString(this.f173u) + "][name: " + this.n + "][value: " + this.p + "][domain: " + this.q + "][path: " + this.s + "][expiry: " + this.r + "]";
    }
}
