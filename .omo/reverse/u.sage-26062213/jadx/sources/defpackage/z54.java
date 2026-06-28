package defpackage;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Stack;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class z54 {
    public static final EnumSet a = EnumSet.noneOf(y54.class);
    public static final EnumSet b;
    public static final EnumSet c;
    public static final EnumSet d;

    static {
        y54 y54Var = y54.n;
        b = EnumSet.of(y54Var);
        y54 y54Var2 = y54.o;
        c = EnumSet.of(y54Var2);
        d = EnumSet.of(y54Var, y54Var2);
    }

    public static em1 a(URI uri) {
        if (uri == null || !uri.isAbsolute()) {
            return null;
        }
        if (uri.getHost() != null) {
            return new em1(uri.getHost(), uri.getPort(), uri.getScheme());
        }
        if (uri.getAuthority() == null) {
            return null;
        }
        String authority = uri.getAuthority();
        int iIndexOf = authority.indexOf(64);
        boolean z = true;
        if (iIndexOf != -1) {
            authority = authority.substring(iIndexOf + 1);
        }
        String scheme = uri.getScheme();
        int iIndexOf2 = authority.indexOf(":");
        if (iIndexOf2 != -1) {
            String strSubstring = authority.substring(0, iIndexOf2);
            try {
                String strSubstring2 = authority.substring(iIndexOf2 + 1);
                if (strSubstring2.length() != 0) {
                    z = false;
                }
                i = z ? -1 : Integer.parseInt(strSubstring2);
                authority = strSubstring;
            } catch (NumberFormatException | IllegalArgumentException unused) {
                return null;
            }
        }
        return new em1(authority, i, scheme);
    }

    public static URI b(URI uri) {
        if (uri.isOpaque() || uri.getAuthority() == null) {
            return uri;
        }
        x54 x54Var = new x54(uri);
        ArrayList arrayListB = x54Var.b();
        Stack stack = new Stack();
        int size = arrayListB.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayListB.get(i);
            i++;
            String str = (String) obj;
            if (!".".equals(str)) {
                if (!"..".equals(str)) {
                    stack.push(str);
                } else if (!stack.isEmpty()) {
                    stack.pop();
                }
            }
        }
        if (stack.size() == 0) {
            stack.add("");
        }
        x54Var.c(stack);
        String str2 = x54Var.a;
        if (str2 != null) {
            x54Var.a = str2.toLowerCase(Locale.ROOT);
        }
        String str3 = x54Var.f;
        if (str3 != null) {
            x54Var.f = str3.toLowerCase(Locale.ROOT);
            x54Var.b = null;
            x54Var.c = null;
        }
        return new URI(x54Var.a());
    }

    public static URI c(URI uri, URI uri2) {
        URI uriResolve;
        String aSCIIString = uri2.toASCIIString();
        if (aSCIIString.startsWith("?")) {
            String aSCIIString2 = uri.toASCIIString();
            int iIndexOf = aSCIIString2.indexOf(63);
            if (iIndexOf > -1) {
                aSCIIString2 = aSCIIString2.substring(0, iIndexOf);
            }
            return URI.create(aSCIIString2.concat(aSCIIString));
        }
        if (aSCIIString.isEmpty()) {
            String aSCIIString3 = uri.resolve(URI.create("#")).toASCIIString();
            uriResolve = URI.create(aSCIIString3.substring(0, aSCIIString3.indexOf(35)));
        } else {
            uriResolve = uri.resolve(uri2);
        }
        try {
            return b(uriResolve);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static URI d(URI uri) {
        String string;
        w80.L(uri, "URI");
        if (uri.isOpaque()) {
            return uri;
        }
        x54 x54Var = new x54(uri);
        if (x54Var.d != null) {
            x54Var.d = null;
            x54Var.b = null;
            x54Var.c = null;
            x54Var.e = null;
        }
        if (x54Var.b().isEmpty()) {
            x54Var.i = Arrays.asList("");
            x54Var.b = null;
            x54Var.h = null;
        }
        if (x54Var.i == null) {
            string = null;
        } else {
            StringBuilder sb = new StringBuilder();
            for (String str : x54Var.i) {
                sb.append('/');
                sb.append(str);
            }
            string = sb.toString();
        }
        if (string == null || string.length() == 0) {
            x54Var.c(a64.d("/"));
        }
        String str2 = x54Var.f;
        if (str2 != null) {
            x54Var.f = str2.toLowerCase(Locale.ROOT);
            x54Var.b = null;
            x54Var.c = null;
        }
        x54Var.m = null;
        x54Var.n = null;
        return new URI(x54Var.a());
    }

    public static URI e(URI uri, em1 em1Var, EnumSet enumSet) {
        String str;
        w80.L(uri, "URI");
        w80.L(enumSet, "URI flags");
        if (uri.isOpaque()) {
            return uri;
        }
        x54 x54Var = new x54(uri);
        if (em1Var != null) {
            x54Var.a = em1Var.q;
            x54Var.f = em1Var.n;
            x54Var.b = null;
            x54Var.c = null;
            int i = em1Var.p;
            x54Var.g = i >= 0 ? i : -1;
            x54Var.b = null;
            x54Var.c = null;
        } else {
            x54Var.a = null;
            x54Var.f = null;
            x54Var.g = -1;
            x54Var.b = null;
            x54Var.c = null;
        }
        if (enumSet.contains(y54.n)) {
            x54Var.m = null;
            x54Var.n = null;
        }
        if (enumSet.contains(y54.o)) {
            ArrayList arrayListB = x54Var.b();
            ArrayList arrayList = new ArrayList(arrayListB);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((String) it.next()).isEmpty() && it.hasNext()) {
                    it.remove();
                }
            }
            if (arrayList.size() != arrayListB.size()) {
                x54Var.c(arrayList);
            }
        }
        List list = x54Var.i;
        if ((list == null || list.isEmpty()) && ((str = x54Var.h) == null || str.isEmpty())) {
            x54Var.i = Arrays.asList("");
            x54Var.b = null;
            x54Var.h = null;
        }
        return new URI(x54Var.a());
    }
}
