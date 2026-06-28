package defpackage;

import java.lang.ref.SoftReference;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pu extends f0 implements u80 {
    public final String[] a;

    public pu(String[] strArr) {
        this.a = (String[]) strArr.clone();
    }

    @Override // defpackage.ih0
    public final void c(ku kuVar, String str) throws q92 {
        Date date;
        if (str == null) {
            throw new q92(cm1.a("Missing value for 'expires' attribute"));
        }
        String[] strArr = ln0.a;
        String[] strArr2 = this.a;
        if (strArr2 == null) {
            strArr2 = ln0.a;
        }
        Date date2 = ln0.b;
        String strSubstring = (str.length() > 1 && str.startsWith("'") && str.endsWith("'")) ? str.substring(1, str.length() - 1) : str;
        int length = strArr2.length;
        int i = 0;
        while (true) {
            date = null;
            if (i >= length) {
                break;
            }
            String str2 = strArr2[i];
            ThreadLocal threadLocal = kn0.a;
            SoftReference softReference = (SoftReference) threadLocal.get();
            Map map = softReference != null ? (Map) softReference.get() : null;
            if (map == null) {
                map = new HashMap();
                threadLocal.set(new SoftReference(map));
            }
            SimpleDateFormat simpleDateFormat = (SimpleDateFormat) map.get(str2);
            if (simpleDateFormat == null) {
                simpleDateFormat = new SimpleDateFormat(str2, Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
                map.put(str2, simpleDateFormat);
            }
            simpleDateFormat.set2DigitYearStart(date2);
            ParsePosition parsePosition = new ParsePosition(0);
            Date date3 = simpleDateFormat.parse(strSubstring, parsePosition);
            if (parsePosition.getIndex() != 0) {
                date = date3;
                break;
            }
            i++;
        }
        if (date == null) {
            throw new q92(cm1.a("Invalid 'expires' attribute: ".concat(str)));
        }
        kuVar.r = date;
    }

    @Override // defpackage.u80
    public final String d() {
        return "expires";
    }
}
