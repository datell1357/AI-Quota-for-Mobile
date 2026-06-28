package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cy0 implements Comparable {
    public static final bx3 o = new bx3(28);
    public static final long p = c75.z(4611686018427387903L);
    public static final long q = c75.z(-4611686018427387903L);
    public static final long r = 9223372036854759646L;
    public final long n;

    public static final long a(long j, long j2) {
        long j3 = j2 / 1000000;
        long j4 = c75.j(j, j3);
        if (-4611686018426L > j4 || j4 >= 4611686018427L) {
            return c75.z(j4);
        }
        long j5 = ((j4 * 1000000) + (j2 - (j3 * 1000000))) << 1;
        int i = ey0.a;
        return j5;
    }

    public static final void b(StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String strM0 = zs3.M0(i3, String.valueOf(i2));
            int i4 = -1;
            int length = strM0.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (strM0.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (z || i6 >= 3) {
                sb.append((CharSequence) strM0, 0, ((i4 + 3) / 3) * 3);
            } else {
                sb.append((CharSequence) strM0, 0, i6);
            }
        }
        sb.append(str);
    }

    public static int c(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return nt1.m(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return j < 0 ? -i : i;
    }

    public static final long d(long j) {
        return ((((int) j) & 1) != 1 || f(j)) ? h(j, gy0.MILLISECONDS) : j >> 1;
    }

    public static final int e(long j) {
        if (f(j)) {
            return 0;
        }
        return (int) ((((int) j) & 1) == 1 ? ((j >> 1) % 1000) * 1000000 : (j >> 1) % 1000000000);
    }

    public static final boolean f(long j) {
        return j == p || j == q;
    }

    public static final long g(long j, long j2) {
        int i = ((int) j) & 1;
        if (i != (((int) j2) & 1)) {
            return i == 1 ? a(j >> 1, j2 >> 1) : a(j2 >> 1, j >> 1);
        }
        if (i == 0) {
            long j3 = (j >> 1) + (j2 >> 1);
            if (-4611686018426999999L > j3 || j3 >= 4611686018427000000L) {
                return c75.z(j3 / 1000000);
            }
            long j4 = j3 << 1;
            int i2 = ey0.a;
            return j4;
        }
        long j5 = c75.j(j >> 1, j2 >> 1);
        if (j5 == 9223372036854759646L) {
            k21.f("Summing infinite durations of different signs yields an undefined result.");
            return 0L;
        }
        if (j5 == 4611686018427387903L || j5 == -4611686018427387903L) {
            return c75.z(j5);
        }
        if (-4611686018426L > j5 || j5 >= 4611686018427L) {
            return c75.z(ix.l(j5, -4611686018427387903L, 4611686018427387903L));
        }
        long j6 = (j5 * 1000000) << 1;
        int i3 = ey0.a;
        return j6;
    }

    public static final long h(long j, gy0 gy0Var) {
        if (j == p) {
            return Long.MAX_VALUE;
        }
        if (j == q) {
            return Long.MIN_VALUE;
        }
        return gy0Var.n.convert(j >> 1, ((((int) j) & 1) == 0 ? gy0.NANOSECONDS : gy0.MILLISECONDS).n);
    }

    public static final long i(long j) {
        long j2 = ((-(j >> 1)) << 1) + ((long) (((int) j) & 1));
        int i = ey0.a;
        return j2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return c(this.n, ((cy0) obj).n);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof cy0) {
            return this.n == ((cy0) obj).n;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.n);
    }

    public final String toString() {
        long jI = this.n;
        if (jI == 0) {
            return "0s";
        }
        if (jI == p) {
            return "Infinity";
        }
        if (jI == q) {
            return "-Infinity";
        }
        int i = 0;
        boolean z = jI < 0;
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append('-');
        }
        if (jI < 0) {
            jI = i(jI);
        }
        long jH = h(jI, gy0.DAYS);
        int iH = f(jI) ? 0 : (int) (h(jI, gy0.HOURS) % 24);
        int iH2 = f(jI) ? 0 : (int) (h(jI, gy0.MINUTES) % 60);
        int iH3 = f(jI) ? 0 : (int) (h(jI, gy0.SECONDS) % 60);
        int iE = e(jI);
        boolean z2 = jH != 0;
        boolean z3 = iH != 0;
        boolean z4 = iH2 != 0;
        boolean z5 = (iH3 == 0 && iE == 0) ? false : true;
        if (z2) {
            sb.append(jH);
            sb.append('d');
            i = 1;
        }
        if (z3 || (z2 && (z4 || z5))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iH);
            sb.append('h');
            i = i2;
        }
        if (z4 || (z5 && (z3 || z2))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iH2);
            sb.append('m');
            i = i3;
        }
        if (z5) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (iH3 != 0 || z2 || z3 || z4) {
                b(sb, iH3, iE, 9, "s", false);
            } else if (iE >= 1000000) {
                b(sb, iE / 1000000, iE % 1000000, 6, "ms", false);
            } else if (iE >= 1000) {
                b(sb, iE / 1000, iE % 1000, 3, "us", false);
            } else {
                sb.append(iE);
                sb.append("ns");
            }
            i = i4;
        }
        if (z && i > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }
}
