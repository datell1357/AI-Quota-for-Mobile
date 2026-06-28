package defpackage;

import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sc {
    public final XmlPullParser a;
    public int b = 0;
    public final b7 c;

    public sc(XmlResourceParser xmlResourceParser) {
        this.a = xmlResourceParser;
        b7 b7Var = new b7();
        b7Var.b = new float[64];
        this.c = b7Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.d90 a(android.content.res.TypedArray r5, android.content.res.Resources.Theme r6, java.lang.String r7, int r8) {
        /*
            r4 = this;
            org.xmlpull.v1.XmlPullParser r0 = r4.a
            boolean r7 = defpackage.mt1.J(r0, r7)
            r0 = 0
            r1 = 0
            if (r7 == 0) goto L3e
            android.util.TypedValue r7 = new android.util.TypedValue
            r7.<init>()
            r5.getValue(r8, r7)
            int r2 = r7.type
            r3 = 28
            if (r2 < r3) goto L24
            r3 = 31
            if (r2 > r3) goto L24
            int r6 = r7.data
            d90 r7 = new d90
            r7.<init>(r6, r1, r0)
            goto L43
        L24:
            android.content.res.Resources r7 = r5.getResources()
            int r8 = r5.getResourceId(r8, r1)
            d90 r6 = defpackage.d90.e(r7, r8, r6)     // Catch: java.lang.Exception -> L32
            r7 = r6
            goto L3b
        L32:
            r6 = move-exception
            java.lang.String r7 = "ComplexColorCompat"
            java.lang.String r8 = "Failed to inflate ComplexColor."
            android.util.Log.e(r7, r8, r6)
            r7 = r0
        L3b:
            if (r7 == 0) goto L3e
            goto L43
        L3e:
            d90 r7 = new d90
            r7.<init>(r1, r1, r0)
        L43:
            int r5 = r5.getChangingConfigurations()
            r4.c(r5)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sc.a(android.content.res.TypedArray, android.content.res.Resources$Theme, java.lang.String, int):d90");
    }

    public final float b(TypedArray typedArray, String str, int i, float f) {
        if (mt1.J(this.a, str)) {
            f = typedArray.getFloat(i, f);
        }
        c(typedArray.getChangingConfigurations());
        return f;
    }

    public final void c(int i) {
        this.b = i | this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sc)) {
            return false;
        }
        sc scVar = (sc) obj;
        return nt1.g(this.a, scVar.a) && this.b == scVar.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AndroidVectorParser(xmlParser=" + this.a + ", config=" + this.b + ")";
    }
}
