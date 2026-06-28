package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jd5 implements Iterator {
    public String n;
    public final String p;
    public final boolean q;
    public int s;
    public final /* synthetic */ c85 t;
    public int o = 2;
    public int r = 0;

    public jd5(sb0 sb0Var, String str, c85 c85Var) {
        this.t = c85Var;
        sb0Var.getClass();
        this.q = sb0Var.n;
        this.s = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.p = str;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int length;
        String str;
        int i;
        int i2 = this.o;
        if (i2 == 4) {
            throw new IllegalStateException();
        }
        int i3 = i2 - 1;
        String string = null;
        if (i2 == 0) {
            throw null;
        }
        if (i3 == 0) {
            return true;
        }
        if (i3 == 2) {
            return false;
        }
        this.o = 4;
        int i4 = this.r;
        while (true) {
            length = this.r;
            if (length == -1) {
                this.o = 3;
                break;
            }
            str = this.p;
            int length2 = str.length();
            rp4.b(length, length2);
            while (true) {
                if (length >= length2) {
                    length = -1;
                    break;
                }
                if (str.charAt(length) == this.t.a) {
                    break;
                }
                length++;
            }
            if (length == -1) {
                length = str.length();
                this.r = -1;
                i = -1;
            } else {
                i = length + 1;
                this.r = i;
            }
            if (i == i4) {
                int i5 = i + 1;
                this.r = i5;
                if (i5 > str.length()) {
                    this.r = -1;
                }
            } else {
                if (i4 < length) {
                    str.charAt(i4);
                }
                if (i4 < length) {
                    str.charAt(length - 1);
                }
                if (!this.q || i4 != length) {
                    break;
                }
                i4 = this.r;
            }
        }
        int i6 = this.s;
        if (i6 == 1) {
            length = str.length();
            this.r = -1;
            if (length > i4) {
                str.charAt(length - 1);
            }
        } else {
            this.s = i6 - 1;
        }
        string = str.subSequence(i4, length).toString();
        this.n = string;
        if (this.o == 3) {
            return false;
        }
        this.o = 1;
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            p61.v();
            return null;
        }
        this.o = 2;
        String str = this.n;
        this.n = null;
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
