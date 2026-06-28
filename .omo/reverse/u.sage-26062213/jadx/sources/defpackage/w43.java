package defpackage;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w43 implements Serializable {
    public final Pattern n;

    public w43(String str, int i) {
        str.getClass();
        Pattern patternCompile = Pattern.compile(str, 66);
        patternCompile.getClass();
        this.n = patternCompile;
    }

    public final qd1 a(int i, String str) {
        str.getClass();
        Matcher matcherRegion = this.n.matcher(str).useAnchoringBounds(false).useTransparentBounds(true).region(i, str.length());
        if (matcherRegion.lookingAt()) {
            return new qd1(matcherRegion, str);
        }
        return null;
    }

    public final qd1 b(String str) {
        str.getClass();
        Matcher matcher = this.n.matcher(str);
        matcher.getClass();
        if (matcher.matches()) {
            return new qd1(matcher, str);
        }
        return null;
    }

    public final boolean c(CharSequence charSequence) {
        charSequence.getClass();
        return this.n.matcher(charSequence).matches();
    }

    public final String d(String str) {
        String strReplaceAll = this.n.matcher(str).replaceAll("");
        strReplaceAll.getClass();
        return strReplaceAll;
    }

    public final String toString() {
        String string = this.n.toString();
        string.getClass();
        return string;
    }

    public w43(String str) {
        str.getClass();
        Pattern patternCompile = Pattern.compile(str);
        patternCompile.getClass();
        this.n = patternCompile;
    }
}
