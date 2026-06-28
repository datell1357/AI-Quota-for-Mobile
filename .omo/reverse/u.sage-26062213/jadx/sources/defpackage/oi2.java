package defpackage;

import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oi2 {
    public static final w43 m = new w43("^[a-zA-Z]+[+\\w\\-.]*:");
    public static final w43 n = new w43("\\{(.+?)\\}");
    public static final w43 o = new w43("http[s]?://");
    public static final w43 p = new w43(".*");
    public static final w43 q = new w43("([^/]*?|)");
    public static final w43 r = new w43("^[^?#]+\\?([^#]*).*");
    public final String a;
    public final ArrayList b;
    public final String c;
    public final nv3 d;
    public final nv3 e;
    public final qz1 f;
    public boolean g;
    public final qz1 h;
    public final qz1 i;
    public final qz1 j;
    public final nv3 k;
    public final boolean l;

    public oi2(String str) {
        this.a = str;
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        boolean z = false;
        z = false;
        final int i = z ? 1 : 0;
        this.d = new nv3(new ne1(this) { // from class: li2
            public final /* synthetic */ oi2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                List list;
                int i2 = i;
                oi2 oi2Var = this.o;
                switch (i2) {
                    case 0:
                        String str2 = oi2Var.c;
                        if (str2 != null) {
                            return new w43(str2, 0);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(oi2.r.c(oi2Var.a));
                    case 2:
                        String str3 = oi2Var.a;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) oi2Var.e.getValue()).booleanValue()) {
                            Uri uri = Uri.parse(str3);
                            uri.getClass();
                            for (String str4 : uri.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = uri.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    k21.l(xw1.r("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) o70.i0(queryParameters);
                                if (str5 == null) {
                                    oi2Var.g = true;
                                    str5 = str4;
                                }
                                w43 w43Var = oi2.n;
                                w43Var.getClass();
                                str5.getClass();
                                Matcher matcher = w43Var.n.matcher(str5);
                                matcher.getClass();
                                ni2 ni2Var = new ni2();
                                int i3 = 0;
                                for (qd1 qd1VarH = is0.h(matcher, 0, str5); qd1VarH != null; qd1VarH = qd1VarH.E()) {
                                    pa2 pa2VarD = ((ra2) qd1VarH.q).d(1);
                                    pa2VarD.getClass();
                                    ni2Var.b.add(pa2VarD.a);
                                    if (qd1VarH.z().n > i3) {
                                        String strQuote = Pattern.quote(str5.substring(i3, qd1VarH.z().n));
                                        strQuote.getClass();
                                        sb.append(strQuote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i3 = qd1VarH.z().o + 1;
                                }
                                if (i3 < str5.length()) {
                                    String strQuote2 = Pattern.quote(str5.substring(i3));
                                    strQuote2.getClass();
                                    sb.append(strQuote2);
                                }
                                sb.append("$");
                                ni2Var.a = oi2.h(sb.toString());
                                linkedHashMap.put(str4, ni2Var);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = oi2Var.a;
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        if (uri2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri3 = Uri.parse(str6);
                        uri3.getClass();
                        String fragment = uri3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        oi2.a(fragment, arrayList2, sb2);
                        return new js2(arrayList2, sb2.toString());
                    case 4:
                        js2 js2Var = (js2) oi2Var.h.getValue();
                        return (js2Var == null || (list = (List) js2Var.n) == null) ? new ArrayList() : list;
                    case 5:
                        js2 js2Var2 = (js2) oi2Var.h.getValue();
                        if (js2Var2 != null) {
                            return (String) js2Var2.o;
                        }
                        return null;
                    case 6:
                        String str7 = (String) oi2Var.j.getValue();
                        if (str7 != null) {
                            return new w43(str7, 0);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        final int i2 = 1;
        this.e = new nv3(new ne1(this) { // from class: li2
            public final /* synthetic */ oi2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                List list;
                int i22 = i2;
                oi2 oi2Var = this.o;
                switch (i22) {
                    case 0:
                        String str2 = oi2Var.c;
                        if (str2 != null) {
                            return new w43(str2, 0);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(oi2.r.c(oi2Var.a));
                    case 2:
                        String str3 = oi2Var.a;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) oi2Var.e.getValue()).booleanValue()) {
                            Uri uri = Uri.parse(str3);
                            uri.getClass();
                            for (String str4 : uri.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = uri.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    k21.l(xw1.r("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) o70.i0(queryParameters);
                                if (str5 == null) {
                                    oi2Var.g = true;
                                    str5 = str4;
                                }
                                w43 w43Var = oi2.n;
                                w43Var.getClass();
                                str5.getClass();
                                Matcher matcher = w43Var.n.matcher(str5);
                                matcher.getClass();
                                ni2 ni2Var = new ni2();
                                int i3 = 0;
                                for (qd1 qd1VarH = is0.h(matcher, 0, str5); qd1VarH != null; qd1VarH = qd1VarH.E()) {
                                    pa2 pa2VarD = ((ra2) qd1VarH.q).d(1);
                                    pa2VarD.getClass();
                                    ni2Var.b.add(pa2VarD.a);
                                    if (qd1VarH.z().n > i3) {
                                        String strQuote = Pattern.quote(str5.substring(i3, qd1VarH.z().n));
                                        strQuote.getClass();
                                        sb.append(strQuote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i3 = qd1VarH.z().o + 1;
                                }
                                if (i3 < str5.length()) {
                                    String strQuote2 = Pattern.quote(str5.substring(i3));
                                    strQuote2.getClass();
                                    sb.append(strQuote2);
                                }
                                sb.append("$");
                                ni2Var.a = oi2.h(sb.toString());
                                linkedHashMap.put(str4, ni2Var);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = oi2Var.a;
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        if (uri2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri3 = Uri.parse(str6);
                        uri3.getClass();
                        String fragment = uri3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        oi2.a(fragment, arrayList2, sb2);
                        return new js2(arrayList2, sb2.toString());
                    case 4:
                        js2 js2Var = (js2) oi2Var.h.getValue();
                        return (js2Var == null || (list = (List) js2Var.n) == null) ? new ArrayList() : list;
                    case 5:
                        js2 js2Var2 = (js2) oi2Var.h.getValue();
                        if (js2Var2 != null) {
                            return (String) js2Var2.o;
                        }
                        return null;
                    case 6:
                        String str7 = (String) oi2Var.j.getValue();
                        if (str7 != null) {
                            return new w43(str7, 0);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        final int i3 = 2;
        ne1 ne1Var = new ne1(this) { // from class: li2
            public final /* synthetic */ oi2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                List list;
                int i22 = i3;
                oi2 oi2Var = this.o;
                switch (i22) {
                    case 0:
                        String str2 = oi2Var.c;
                        if (str2 != null) {
                            return new w43(str2, 0);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(oi2.r.c(oi2Var.a));
                    case 2:
                        String str3 = oi2Var.a;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) oi2Var.e.getValue()).booleanValue()) {
                            Uri uri = Uri.parse(str3);
                            uri.getClass();
                            for (String str4 : uri.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = uri.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    k21.l(xw1.r("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) o70.i0(queryParameters);
                                if (str5 == null) {
                                    oi2Var.g = true;
                                    str5 = str4;
                                }
                                w43 w43Var = oi2.n;
                                w43Var.getClass();
                                str5.getClass();
                                Matcher matcher = w43Var.n.matcher(str5);
                                matcher.getClass();
                                ni2 ni2Var = new ni2();
                                int i32 = 0;
                                for (qd1 qd1VarH = is0.h(matcher, 0, str5); qd1VarH != null; qd1VarH = qd1VarH.E()) {
                                    pa2 pa2VarD = ((ra2) qd1VarH.q).d(1);
                                    pa2VarD.getClass();
                                    ni2Var.b.add(pa2VarD.a);
                                    if (qd1VarH.z().n > i32) {
                                        String strQuote = Pattern.quote(str5.substring(i32, qd1VarH.z().n));
                                        strQuote.getClass();
                                        sb.append(strQuote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = qd1VarH.z().o + 1;
                                }
                                if (i32 < str5.length()) {
                                    String strQuote2 = Pattern.quote(str5.substring(i32));
                                    strQuote2.getClass();
                                    sb.append(strQuote2);
                                }
                                sb.append("$");
                                ni2Var.a = oi2.h(sb.toString());
                                linkedHashMap.put(str4, ni2Var);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = oi2Var.a;
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        if (uri2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri3 = Uri.parse(str6);
                        uri3.getClass();
                        String fragment = uri3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        oi2.a(fragment, arrayList2, sb2);
                        return new js2(arrayList2, sb2.toString());
                    case 4:
                        js2 js2Var = (js2) oi2Var.h.getValue();
                        return (js2Var == null || (list = (List) js2Var.n) == null) ? new ArrayList() : list;
                    case 5:
                        js2 js2Var2 = (js2) oi2Var.h.getValue();
                        if (js2Var2 != null) {
                            return (String) js2Var2.o;
                        }
                        return null;
                    case 6:
                        String str7 = (String) oi2Var.j.getValue();
                        if (str7 != null) {
                            return new w43(str7, 0);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        };
        v12 v12Var = v12.o;
        this.f = dm0.C(v12Var, ne1Var);
        final int i4 = 3;
        this.h = dm0.C(v12Var, new ne1(this) { // from class: li2
            public final /* synthetic */ oi2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                List list;
                int i22 = i4;
                oi2 oi2Var = this.o;
                switch (i22) {
                    case 0:
                        String str2 = oi2Var.c;
                        if (str2 != null) {
                            return new w43(str2, 0);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(oi2.r.c(oi2Var.a));
                    case 2:
                        String str3 = oi2Var.a;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) oi2Var.e.getValue()).booleanValue()) {
                            Uri uri = Uri.parse(str3);
                            uri.getClass();
                            for (String str4 : uri.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = uri.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    k21.l(xw1.r("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) o70.i0(queryParameters);
                                if (str5 == null) {
                                    oi2Var.g = true;
                                    str5 = str4;
                                }
                                w43 w43Var = oi2.n;
                                w43Var.getClass();
                                str5.getClass();
                                Matcher matcher = w43Var.n.matcher(str5);
                                matcher.getClass();
                                ni2 ni2Var = new ni2();
                                int i32 = 0;
                                for (qd1 qd1VarH = is0.h(matcher, 0, str5); qd1VarH != null; qd1VarH = qd1VarH.E()) {
                                    pa2 pa2VarD = ((ra2) qd1VarH.q).d(1);
                                    pa2VarD.getClass();
                                    ni2Var.b.add(pa2VarD.a);
                                    if (qd1VarH.z().n > i32) {
                                        String strQuote = Pattern.quote(str5.substring(i32, qd1VarH.z().n));
                                        strQuote.getClass();
                                        sb.append(strQuote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = qd1VarH.z().o + 1;
                                }
                                if (i32 < str5.length()) {
                                    String strQuote2 = Pattern.quote(str5.substring(i32));
                                    strQuote2.getClass();
                                    sb.append(strQuote2);
                                }
                                sb.append("$");
                                ni2Var.a = oi2.h(sb.toString());
                                linkedHashMap.put(str4, ni2Var);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = oi2Var.a;
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        if (uri2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri3 = Uri.parse(str6);
                        uri3.getClass();
                        String fragment = uri3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        oi2.a(fragment, arrayList2, sb2);
                        return new js2(arrayList2, sb2.toString());
                    case 4:
                        js2 js2Var = (js2) oi2Var.h.getValue();
                        return (js2Var == null || (list = (List) js2Var.n) == null) ? new ArrayList() : list;
                    case 5:
                        js2 js2Var2 = (js2) oi2Var.h.getValue();
                        if (js2Var2 != null) {
                            return (String) js2Var2.o;
                        }
                        return null;
                    case 6:
                        String str7 = (String) oi2Var.j.getValue();
                        if (str7 != null) {
                            return new w43(str7, 0);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        final int i5 = 4;
        this.i = dm0.C(v12Var, new ne1(this) { // from class: li2
            public final /* synthetic */ oi2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                List list;
                int i22 = i5;
                oi2 oi2Var = this.o;
                switch (i22) {
                    case 0:
                        String str2 = oi2Var.c;
                        if (str2 != null) {
                            return new w43(str2, 0);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(oi2.r.c(oi2Var.a));
                    case 2:
                        String str3 = oi2Var.a;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) oi2Var.e.getValue()).booleanValue()) {
                            Uri uri = Uri.parse(str3);
                            uri.getClass();
                            for (String str4 : uri.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = uri.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    k21.l(xw1.r("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) o70.i0(queryParameters);
                                if (str5 == null) {
                                    oi2Var.g = true;
                                    str5 = str4;
                                }
                                w43 w43Var = oi2.n;
                                w43Var.getClass();
                                str5.getClass();
                                Matcher matcher = w43Var.n.matcher(str5);
                                matcher.getClass();
                                ni2 ni2Var = new ni2();
                                int i32 = 0;
                                for (qd1 qd1VarH = is0.h(matcher, 0, str5); qd1VarH != null; qd1VarH = qd1VarH.E()) {
                                    pa2 pa2VarD = ((ra2) qd1VarH.q).d(1);
                                    pa2VarD.getClass();
                                    ni2Var.b.add(pa2VarD.a);
                                    if (qd1VarH.z().n > i32) {
                                        String strQuote = Pattern.quote(str5.substring(i32, qd1VarH.z().n));
                                        strQuote.getClass();
                                        sb.append(strQuote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = qd1VarH.z().o + 1;
                                }
                                if (i32 < str5.length()) {
                                    String strQuote2 = Pattern.quote(str5.substring(i32));
                                    strQuote2.getClass();
                                    sb.append(strQuote2);
                                }
                                sb.append("$");
                                ni2Var.a = oi2.h(sb.toString());
                                linkedHashMap.put(str4, ni2Var);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = oi2Var.a;
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        if (uri2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri3 = Uri.parse(str6);
                        uri3.getClass();
                        String fragment = uri3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        oi2.a(fragment, arrayList2, sb2);
                        return new js2(arrayList2, sb2.toString());
                    case 4:
                        js2 js2Var = (js2) oi2Var.h.getValue();
                        return (js2Var == null || (list = (List) js2Var.n) == null) ? new ArrayList() : list;
                    case 5:
                        js2 js2Var2 = (js2) oi2Var.h.getValue();
                        if (js2Var2 != null) {
                            return (String) js2Var2.o;
                        }
                        return null;
                    case 6:
                        String str7 = (String) oi2Var.j.getValue();
                        if (str7 != null) {
                            return new w43(str7, 0);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        final int i6 = 5;
        this.j = dm0.C(v12Var, new ne1(this) { // from class: li2
            public final /* synthetic */ oi2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                List list;
                int i22 = i6;
                oi2 oi2Var = this.o;
                switch (i22) {
                    case 0:
                        String str2 = oi2Var.c;
                        if (str2 != null) {
                            return new w43(str2, 0);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(oi2.r.c(oi2Var.a));
                    case 2:
                        String str3 = oi2Var.a;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) oi2Var.e.getValue()).booleanValue()) {
                            Uri uri = Uri.parse(str3);
                            uri.getClass();
                            for (String str4 : uri.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = uri.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    k21.l(xw1.r("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) o70.i0(queryParameters);
                                if (str5 == null) {
                                    oi2Var.g = true;
                                    str5 = str4;
                                }
                                w43 w43Var = oi2.n;
                                w43Var.getClass();
                                str5.getClass();
                                Matcher matcher = w43Var.n.matcher(str5);
                                matcher.getClass();
                                ni2 ni2Var = new ni2();
                                int i32 = 0;
                                for (qd1 qd1VarH = is0.h(matcher, 0, str5); qd1VarH != null; qd1VarH = qd1VarH.E()) {
                                    pa2 pa2VarD = ((ra2) qd1VarH.q).d(1);
                                    pa2VarD.getClass();
                                    ni2Var.b.add(pa2VarD.a);
                                    if (qd1VarH.z().n > i32) {
                                        String strQuote = Pattern.quote(str5.substring(i32, qd1VarH.z().n));
                                        strQuote.getClass();
                                        sb.append(strQuote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = qd1VarH.z().o + 1;
                                }
                                if (i32 < str5.length()) {
                                    String strQuote2 = Pattern.quote(str5.substring(i32));
                                    strQuote2.getClass();
                                    sb.append(strQuote2);
                                }
                                sb.append("$");
                                ni2Var.a = oi2.h(sb.toString());
                                linkedHashMap.put(str4, ni2Var);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = oi2Var.a;
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        if (uri2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri3 = Uri.parse(str6);
                        uri3.getClass();
                        String fragment = uri3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        oi2.a(fragment, arrayList2, sb2);
                        return new js2(arrayList2, sb2.toString());
                    case 4:
                        js2 js2Var = (js2) oi2Var.h.getValue();
                        return (js2Var == null || (list = (List) js2Var.n) == null) ? new ArrayList() : list;
                    case 5:
                        js2 js2Var2 = (js2) oi2Var.h.getValue();
                        if (js2Var2 != null) {
                            return (String) js2Var2.o;
                        }
                        return null;
                    case 6:
                        String str7 = (String) oi2Var.j.getValue();
                        if (str7 != null) {
                            return new w43(str7, 0);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        final int i7 = 6;
        this.k = new nv3(new ne1(this) { // from class: li2
            public final /* synthetic */ oi2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                List list;
                int i22 = i7;
                oi2 oi2Var = this.o;
                switch (i22) {
                    case 0:
                        String str2 = oi2Var.c;
                        if (str2 != null) {
                            return new w43(str2, 0);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(oi2.r.c(oi2Var.a));
                    case 2:
                        String str3 = oi2Var.a;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) oi2Var.e.getValue()).booleanValue()) {
                            Uri uri = Uri.parse(str3);
                            uri.getClass();
                            for (String str4 : uri.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = uri.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    k21.l(xw1.r("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) o70.i0(queryParameters);
                                if (str5 == null) {
                                    oi2Var.g = true;
                                    str5 = str4;
                                }
                                w43 w43Var = oi2.n;
                                w43Var.getClass();
                                str5.getClass();
                                Matcher matcher = w43Var.n.matcher(str5);
                                matcher.getClass();
                                ni2 ni2Var = new ni2();
                                int i32 = 0;
                                for (qd1 qd1VarH = is0.h(matcher, 0, str5); qd1VarH != null; qd1VarH = qd1VarH.E()) {
                                    pa2 pa2VarD = ((ra2) qd1VarH.q).d(1);
                                    pa2VarD.getClass();
                                    ni2Var.b.add(pa2VarD.a);
                                    if (qd1VarH.z().n > i32) {
                                        String strQuote = Pattern.quote(str5.substring(i32, qd1VarH.z().n));
                                        strQuote.getClass();
                                        sb.append(strQuote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = qd1VarH.z().o + 1;
                                }
                                if (i32 < str5.length()) {
                                    String strQuote2 = Pattern.quote(str5.substring(i32));
                                    strQuote2.getClass();
                                    sb.append(strQuote2);
                                }
                                sb.append("$");
                                ni2Var.a = oi2.h(sb.toString());
                                linkedHashMap.put(str4, ni2Var);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = oi2Var.a;
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        if (uri2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri3 = Uri.parse(str6);
                        uri3.getClass();
                        String fragment = uri3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        oi2.a(fragment, arrayList2, sb2);
                        return new js2(arrayList2, sb2.toString());
                    case 4:
                        js2 js2Var = (js2) oi2Var.h.getValue();
                        return (js2Var == null || (list = (List) js2Var.n) == null) ? new ArrayList() : list;
                    case 5:
                        js2 js2Var2 = (js2) oi2Var.h.getValue();
                        if (js2Var2 != null) {
                            return (String) js2Var2.o;
                        }
                        return null;
                    case 6:
                        String str7 = (String) oi2Var.j.getValue();
                        if (str7 != null) {
                            return new w43(str7, 0);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        final int i8 = 7;
        new nv3(new ne1(this) { // from class: li2
            public final /* synthetic */ oi2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                List list;
                int i22 = i8;
                oi2 oi2Var = this.o;
                switch (i22) {
                    case 0:
                        String str2 = oi2Var.c;
                        if (str2 != null) {
                            return new w43(str2, 0);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(oi2.r.c(oi2Var.a));
                    case 2:
                        String str3 = oi2Var.a;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) oi2Var.e.getValue()).booleanValue()) {
                            Uri uri = Uri.parse(str3);
                            uri.getClass();
                            for (String str4 : uri.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = uri.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    k21.l(xw1.r("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) o70.i0(queryParameters);
                                if (str5 == null) {
                                    oi2Var.g = true;
                                    str5 = str4;
                                }
                                w43 w43Var = oi2.n;
                                w43Var.getClass();
                                str5.getClass();
                                Matcher matcher = w43Var.n.matcher(str5);
                                matcher.getClass();
                                ni2 ni2Var = new ni2();
                                int i32 = 0;
                                for (qd1 qd1VarH = is0.h(matcher, 0, str5); qd1VarH != null; qd1VarH = qd1VarH.E()) {
                                    pa2 pa2VarD = ((ra2) qd1VarH.q).d(1);
                                    pa2VarD.getClass();
                                    ni2Var.b.add(pa2VarD.a);
                                    if (qd1VarH.z().n > i32) {
                                        String strQuote = Pattern.quote(str5.substring(i32, qd1VarH.z().n));
                                        strQuote.getClass();
                                        sb.append(strQuote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = qd1VarH.z().o + 1;
                                }
                                if (i32 < str5.length()) {
                                    String strQuote2 = Pattern.quote(str5.substring(i32));
                                    strQuote2.getClass();
                                    sb.append(strQuote2);
                                }
                                sb.append("$");
                                ni2Var.a = oi2.h(sb.toString());
                                linkedHashMap.put(str4, ni2Var);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = oi2Var.a;
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        if (uri2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri3 = Uri.parse(str6);
                        uri3.getClass();
                        String fragment = uri3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        oi2.a(fragment, arrayList2, sb2);
                        return new js2(arrayList2, sb2.toString());
                    case 4:
                        js2 js2Var = (js2) oi2Var.h.getValue();
                        return (js2Var == null || (list = (List) js2Var.n) == null) ? new ArrayList() : list;
                    case 5:
                        js2 js2Var2 = (js2) oi2Var.h.getValue();
                        if (js2Var2 != null) {
                            return (String) js2Var2.o;
                        }
                        return null;
                    case 6:
                        String str7 = (String) oi2Var.j.getValue();
                        if (str7 != null) {
                            return new w43(str7, 0);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        StringBuilder sb = new StringBuilder("^");
        if (!m.n.matcher(str).find()) {
            String strPattern = o.n.pattern();
            strPattern.getClass();
            sb.append(strPattern);
        }
        Pattern patternCompile = Pattern.compile("(\\?|#|$)");
        patternCompile.getClass();
        Matcher matcher = patternCompile.matcher(str);
        matcher.getClass();
        qd1 qd1VarH = is0.h(matcher, 0, str);
        if (qd1VarH != null) {
            a(str.substring(0, qd1VarH.z().n), arrayList, sb);
            if (!p.n.matcher(sb).find() && !q.n.matcher(sb).find()) {
                z = true;
            }
            this.l = z;
            sb.append("($|(\\?(.)*)|(#(.)*))");
        }
        this.c = h(sb.toString());
    }

    public static void a(String str, ArrayList arrayList, StringBuilder sb) {
        w43 w43Var = n;
        w43Var.getClass();
        Matcher matcher = w43Var.n.matcher(str);
        matcher.getClass();
        int i = 0;
        for (qd1 qd1VarH = is0.h(matcher, 0, str); qd1VarH != null; qd1VarH = qd1VarH.E()) {
            pa2 pa2VarD = ((ra2) qd1VarH.q).d(1);
            pa2VarD.getClass();
            arrayList.add(pa2VarD.a);
            if (qd1VarH.z().n > i) {
                String strQuote = Pattern.quote(str.substring(i, qd1VarH.z().n));
                strQuote.getClass();
                sb.append(strQuote);
            }
            String strPattern = q.n.pattern();
            strPattern.getClass();
            sb.append(strPattern);
            i = qd1VarH.z().o + 1;
        }
        if (i < str.length()) {
            String strQuote2 = Pattern.quote(str.substring(i));
            strQuote2.getClass();
            sb.append(strQuote2);
        }
    }

    public static void g(Bundle bundle, String str, String str2, wh2 wh2Var) {
        if (wh2Var == null) {
            str.getClass();
            bundle.putString(str, str2);
        } else {
            qj2 qj2Var = wh2Var.a;
            str.getClass();
            qj2Var.e(bundle, str, qj2Var.d(str2));
        }
    }

    public static String h(String str) {
        return (zs3.B0(str, "\\Q", false) && zs3.B0(str, "\\E", false)) ? gt3.w0(str, ".*", "\\E.*\\Q") : zs3.B0(str, "\\.\\*", false) ? gt3.w0(str, "\\.\\*", ".*") : str;
    }

    public final int b(Uri uri) {
        if (uri == null) {
            return 0;
        }
        List<String> pathSegments = uri.getPathSegments();
        Uri uri2 = Uri.parse(this.a);
        uri2.getClass();
        List<String> pathSegments2 = uri2.getPathSegments();
        pathSegments.getClass();
        pathSegments2.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : pathSegments) {
            if (pathSegments2.contains(obj)) {
                linkedHashSet.add(obj);
            }
        }
        return linkedHashSet.size();
    }

    public final ArrayList c() {
        Collection collectionValues = ((Map) this.f.getValue()).values();
        ArrayList arrayList = new ArrayList();
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            o70.d0(((ni2) it.next()).b, arrayList);
        }
        return o70.s0(o70.s0(this.b, arrayList), (List) this.i.getValue());
    }

    public final Bundle d(Uri uri, LinkedHashMap linkedHashMap) {
        qd1 qd1VarB;
        qd1 qd1VarB2;
        String strDecode;
        uri.getClass();
        linkedHashMap.getClass();
        w43 w43Var = (w43) this.d.getValue();
        if (w43Var != null && (qd1VarB = w43Var.b(uri.toString())) != null) {
            Bundle bundleX = qj0.x((js2[]) Arrays.copyOf(new js2[0], 0));
            if (e(qd1VarB, bundleX, linkedHashMap) && (!((Boolean) this.e.getValue()).booleanValue() || f(uri, bundleX, linkedHashMap))) {
                String fragment = uri.getFragment();
                w43 w43Var2 = (w43) this.k.getValue();
                if (w43Var2 != null && (qd1VarB2 = w43Var2.b(String.valueOf(fragment))) != null) {
                    List list = (List) this.i.getValue();
                    ArrayList arrayList = new ArrayList(p70.a0(list, 10));
                    int i = 0;
                    for (Object obj : list) {
                        int i2 = i + 1;
                        if (i < 0) {
                            tv4.S();
                            throw null;
                        }
                        String str = (String) obj;
                        pa2 pa2VarD = ((ra2) qd1VarB2.q).d(i2);
                        if (pa2VarD != null) {
                            strDecode = Uri.decode(pa2VarD.a);
                            strDecode.getClass();
                        } else {
                            strDecode = null;
                        }
                        if (strDecode == null) {
                            strDecode = "";
                        }
                        try {
                            g(bundleX, str, strDecode, (wh2) linkedHashMap.get(str));
                            arrayList.add(t64.a);
                            i = i2;
                        } catch (IllegalArgumentException unused) {
                        }
                    }
                }
                if (se0.B(linkedHashMap, new mi2(0, bundleX)).isEmpty()) {
                    return bundleX;
                }
            }
        }
        return null;
    }

    public final boolean e(qd1 qd1Var, Bundle bundle, Map map) {
        ArrayList arrayList = this.b;
        ArrayList arrayList2 = new ArrayList(p70.a0(arrayList, 10));
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            int i3 = i + 1;
            String strDecode = null;
            if (i < 0) {
                tv4.S();
                throw null;
            }
            String str = (String) obj;
            pa2 pa2VarD = ((ra2) qd1Var.q).d(i3);
            if (pa2VarD != null) {
                strDecode = Uri.decode(pa2VarD.a);
                strDecode.getClass();
            }
            if (strDecode == null) {
                strDecode = "";
            }
            try {
                g(bundle, str, strDecode, (wh2) map.get(str));
                arrayList2.add(t64.a);
                i = i3;
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof oi2)) {
            return false;
        }
        return this.a.equals(((oi2) obj).a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ce  */
    /* JADX WARN: Type inference failed for: r14v1, types: [int] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f(android.net.Uri r20, android.os.Bundle r21, java.util.Map r22) {
        /*
            Method dump skipped, instruction units count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.oi2.f(android.net.Uri, android.os.Bundle, java.util.Map):boolean");
    }

    public final int hashCode() {
        return this.a.hashCode() * 961;
    }
}
