package defpackage;

import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ps3 {
    public final cz3 a = dz3.a;
    public boolean b;
    public long c;

    public final long a() {
        if (!this.b) {
            return 0L;
        }
        this.a.getClass();
        return System.nanoTime() - this.c;
    }

    public final String toString() {
        String str;
        long jA = a();
        TimeUnit timeUnit = jA / 86400000000000L > 0 ? TimeUnit.DAYS : jA / 3600000000000L > 0 ? TimeUnit.HOURS : jA / 60000000000L > 0 ? TimeUnit.MINUTES : jA / 1000000000 > 0 ? TimeUnit.SECONDS : jA / 1000000 > 0 ? TimeUnit.MILLISECONDS : jA / 1000 > 0 ? TimeUnit.MICROSECONDS : TimeUnit.NANOSECONDS;
        double dConvert = jA / r2.convert(1L, timeUnit);
        StringBuilder sb = new StringBuilder();
        sb.append(String.format(Locale.ROOT, "%.4g", Double.valueOf(dConvert)));
        sb.append(" ");
        switch (os3.a[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = "h";
                break;
            case 7:
                str = "d";
                break;
            default:
                throw new AssertionError();
        }
        sb.append(str);
        return sb.toString();
    }
}
