package defpackage;

import android.util.Log;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s72 extends Writer {
    public final /* synthetic */ int n;
    public final StringBuilder o;
    public final CharSequence p;

    public s72() {
        this.n = 0;
        this.o = new StringBuilder(128);
        this.p = "FragmentManager";
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) {
        switch (this.n) {
            case 1:
                this.o.append(charSequence);
                return this;
            default:
                return super.append(charSequence);
        }
    }

    public void b() {
        StringBuilder sb = this.o;
        if (sb.length() > 0) {
            Log.d((String) this.p, sb.toString());
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        switch (this.n) {
            case 0:
                b();
                break;
            default:
                CharSequence charSequence = this.o;
                if (charSequence instanceof Closeable) {
                    ((Closeable) charSequence).close();
                }
                break;
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() throws IOException {
        switch (this.n) {
            case 0:
                b();
                break;
            default:
                CharSequence charSequence = this.o;
                if (charSequence instanceof Flushable) {
                    ((Flushable) charSequence).flush();
                }
                break;
        }
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        int i3 = this.n;
        StringBuilder sb = this.o;
        switch (i3) {
            case 0:
                for (int i4 = 0; i4 < i2; i4++) {
                    char c = cArr[i + i4];
                    if (c == '\n') {
                        b();
                    } else {
                        sb.append(c);
                    }
                }
                break;
            default:
                us3 us3Var = (us3) this.p;
                us3Var.n = cArr;
                us3Var.o = null;
                sb.append((CharSequence) us3Var, i, i2 + i);
                break;
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Appendable append(CharSequence charSequence) {
        switch (this.n) {
            case 1:
                this.o.append(charSequence);
                return this;
            default:
                return super.append(charSequence);
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i, int i2) {
        switch (this.n) {
            case 1:
                this.o.append(charSequence, i, i2);
                return this;
            default:
                return super.append(charSequence, i, i2);
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Appendable append(CharSequence charSequence, int i, int i2) {
        switch (this.n) {
            case 1:
                this.o.append(charSequence, i, i2);
                return this;
            default:
                return super.append(charSequence, i, i2);
        }
    }

    public s72(StringBuilder sb) {
        this.n = 1;
        this.p = new us3();
        this.o = sb;
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        switch (this.n) {
            case 1:
                this.o.append((char) i);
                break;
            default:
                super.write(i);
                break;
        }
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        switch (this.n) {
            case 1:
                Objects.requireNonNull(str);
                this.o.append((CharSequence) str, i, i2 + i);
                break;
            default:
                super.write(str, i, i2);
                break;
        }
    }
}
