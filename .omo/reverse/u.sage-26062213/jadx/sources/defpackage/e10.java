package defpackage;

import android.content.Context;
import android.text.format.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e10 {
    public static final e10 a = new e10();

    public static String a(Context context, Long l, long j, String str) {
        String str2;
        context.getClass();
        if (str != null && str.length() != 0) {
            return str;
        }
        if (l == null) {
            return k75.w(context, null, j, null);
        }
        long jLongValue = l.longValue() - j;
        if (jLongValue < 604800000) {
            if (jLongValue < 86400000) {
                return k75.w(context, l, j, str);
            }
            Locale locale = Locale.getDefault();
            String string = context.getString(R.string.usage_resets_at, new SimpleDateFormat(DateFormat.getBestDateTimePattern(locale, "EEEhma"), locale).format(new Date(l.longValue())));
            string.getClass();
            return string;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(l.longValue());
        if (calendar.get(1) != calendar2.get(1)) {
            Locale locale2 = Locale.getDefault();
            str2 = new SimpleDateFormat(DateFormat.getBestDateTimePattern(locale2, "yyyyMMMdhma"), locale2).format(new Date(l.longValue()));
        } else {
            Locale locale3 = Locale.getDefault();
            str2 = new SimpleDateFormat(DateFormat.getBestDateTimePattern(locale3, "MMMdhma"), locale3).format(new Date(l.longValue()));
        }
        String string2 = context.getString(R.string.usage_resets_at, str2);
        string2.getClass();
        return string2;
    }
}
