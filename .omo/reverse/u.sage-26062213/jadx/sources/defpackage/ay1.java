package defpackage;

import java.util.Date;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ay1 extends f0 implements u80 {
    public static final Pattern a = Pattern.compile("^\\-?[0-9]+$");

    @Override // defpackage.ih0
    public final void c(ku kuVar, String str) {
        Date date;
        if (!ht4.v(str) && a.matcher(str).matches()) {
            try {
                int i = Integer.parseInt(str);
                if (i >= 0) {
                    date = new Date((((long) i) * 1000) + System.currentTimeMillis());
                } else {
                    date = new Date(Long.MIN_VALUE);
                }
                kuVar.r = date;
            } catch (NumberFormatException unused) {
            }
        }
    }

    @Override // defpackage.u80
    public final String d() {
        return "max-age";
    }
}
