package defpackage;

import java.util.BitSet;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zx1 extends f0 implements u80 {
    public static final TimeZone a = TimeZone.getTimeZone("UTC");
    public static final BitSet b;
    public static final ConcurrentHashMap c;
    public static final Pattern d;
    public static final Pattern e;
    public static final Pattern f;
    public static final Pattern g;

    static {
        BitSet bitSet = new BitSet();
        bitSet.set(9);
        for (int i = 32; i <= 47; i++) {
            bitSet.set(i);
        }
        for (int i2 = 59; i2 <= 64; i2++) {
            bitSet.set(i2);
        }
        for (int i3 = 91; i3 <= 96; i3++) {
            bitSet.set(i3);
        }
        for (int i4 = 123; i4 <= 126; i4++) {
            bitSet.set(i4);
        }
        b = bitSet;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(12);
        concurrentHashMap.put("jan", 0);
        concurrentHashMap.put("feb", 1);
        concurrentHashMap.put("mar", 2);
        concurrentHashMap.put("apr", 3);
        concurrentHashMap.put("may", 4);
        concurrentHashMap.put("jun", 5);
        concurrentHashMap.put("jul", 6);
        concurrentHashMap.put("aug", 7);
        concurrentHashMap.put("sep", 8);
        concurrentHashMap.put("oct", 9);
        concurrentHashMap.put("nov", 10);
        concurrentHashMap.put("dec", 11);
        c = concurrentHashMap;
        d = Pattern.compile("^([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2})([^0-9].*)?$");
        e = Pattern.compile("^([0-9]{1,2})([^0-9].*)?$");
        f = Pattern.compile("^(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)(.*)?$", 2);
        g = Pattern.compile("^([0-9]{2,4})([^0-9].*)?$");
    }

    @Override // defpackage.ih0
    public final void c(ku kuVar, String str) throws q92 {
        boolean z;
        boolean z2;
        boolean z3;
        BitSet bitSet;
        if (ht4.v(str)) {
            return;
        }
        int length = str.length();
        ky0 ky0Var = new ky0(0, length);
        StringBuilder sb = new StringBuilder();
        boolean z4 = false;
        int i = 0;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int iIntValue = 0;
        while (true) {
            try {
                if (ky0Var.a()) {
                    z = z4;
                    z2 = z5;
                    z3 = z6;
                    break;
                }
                int i6 = ky0Var.d;
                z = z4;
                z2 = z5;
                int i7 = i6;
                while (true) {
                    bitSet = b;
                    if (i6 >= length) {
                        z3 = z6;
                        break;
                    }
                    z3 = z6;
                    if (!bitSet.get(str.charAt(i6))) {
                        break;
                    }
                    i7++;
                    i6++;
                    z6 = z3;
                }
                ky0Var.b(i7);
                sb.setLength(0);
                int i8 = ky0Var.d;
                int i9 = i8;
                while (i8 < length) {
                    char cCharAt = str.charAt(i8);
                    if (bitSet.get(cCharAt)) {
                        break;
                    }
                    i9++;
                    sb.append(cCharAt);
                    i8++;
                }
                ky0Var.b(i9);
                if (sb.length() == 0) {
                    break;
                }
                if (!z) {
                    Matcher matcher = d.matcher(sb);
                    if (matcher.matches()) {
                        i3 = Integer.parseInt(matcher.group(1));
                        i4 = Integer.parseInt(matcher.group(2));
                        i5 = Integer.parseInt(matcher.group(3));
                        z5 = z2;
                        z6 = z3;
                        z4 = true;
                    }
                }
                if (!z2) {
                    Matcher matcher2 = e.matcher(sb);
                    if (matcher2.matches()) {
                        i2 = Integer.parseInt(matcher2.group(1));
                        z4 = z;
                        z6 = z3;
                        z5 = true;
                    }
                }
                if (!z3) {
                    Matcher matcher3 = f.matcher(sb);
                    if (matcher3.matches()) {
                        iIntValue = ((Integer) c.get(matcher3.group(1).toLowerCase(Locale.ROOT))).intValue();
                        z4 = z;
                        z5 = z2;
                        z6 = true;
                    }
                }
                if (!z7) {
                    Matcher matcher4 = g.matcher(sb);
                    if (matcher4.matches()) {
                        i = Integer.parseInt(matcher4.group(1));
                        z4 = z;
                        z5 = z2;
                        z6 = z3;
                        z7 = true;
                    }
                }
                z4 = z;
                z5 = z2;
                z6 = z3;
            } catch (NumberFormatException unused) {
                throw new q92(cm1.a("Invalid 'expires' attribute: ".concat(str)));
            }
        }
        if (!z || !z2 || !z3 || !z7) {
            throw new q92(cm1.a("Invalid 'expires' attribute: ".concat(str)));
        }
        if (i >= 70 && i <= 99) {
            i += 1900;
        }
        if (i >= 0 && i <= 69) {
            i += 2000;
        }
        if (i2 < 1 || i2 > 31 || i < 1601 || i3 > 23 || i4 > 59 || i5 > 59) {
            throw new q92(cm1.a("Invalid 'expires' attribute: ".concat(str)));
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(a);
        calendar.setTimeInMillis(0L);
        calendar.set(13, i5);
        calendar.set(12, i4);
        calendar.set(11, i3);
        calendar.set(5, i2);
        calendar.set(2, iIntValue);
        calendar.set(1, i);
        kuVar.r = calendar.getTime();
    }

    @Override // defpackage.u80
    public final String d() {
        return "expires";
    }
}
