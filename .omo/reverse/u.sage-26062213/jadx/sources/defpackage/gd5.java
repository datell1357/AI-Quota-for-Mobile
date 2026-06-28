package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.regex.Matcher;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gd5 {
    public final HashMap a;
    public final HashMap b;
    public final ArrayList c;

    public gd5(ArrayList arrayList) {
        List list = Collections.EMPTY_LIST;
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            wd5 wd5Var = (wd5) it.next();
            if (TextUtils.isEmpty(wd5Var.zzc())) {
                Log.w("MobStore.FileStorage", "Cannot register backend, name empty");
            } else {
                wd5 wd5Var2 = (wd5) this.a.put(wd5Var.zzc(), wd5Var);
                if (wd5Var2 != null) {
                    String canonicalName = wd5Var2.getClass().getCanonicalName();
                    String canonicalName2 = wd5Var.getClass().getCanonicalName();
                    k21.f(xw1.t(new StringBuilder(String.valueOf(canonicalName).length() + 30 + String.valueOf(canonicalName2).length()), "Cannot override Backend ", canonicalName, " with ", canonicalName2));
                    throw null;
                }
            }
        }
        Iterator it2 = list.iterator();
        if (!it2.hasNext()) {
            this.c.addAll(list);
        } else {
            it2.next().getClass();
            mk0.b();
            throw null;
        }
    }

    public final Object a(Uri uri, fd5 fd5Var) {
        return fd5Var.a(b(uri));
    }

    public final ed5 b(Uri uri) {
        List listK;
        hp1 hp1Var = lp1.o;
        ht4.i(4, "initialCapacity");
        Object[] objArr = new Object[4];
        ht4.i(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        String encodedFragment = uri.getEncodedFragment();
        if (TextUtils.isEmpty(encodedFragment) || !encodedFragment.startsWith("transform=")) {
            listK = z43.r;
        } else {
            listK = lp1.k(new wq3(new lq1((r6) lq1.a("+".charAt(0)).d, true, h40.G, Api.BaseClientBuilder.API_PRIORITY_OTHER), encodedFragment.substring(10)));
        }
        int size = listK.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            String str = (String) listK.get(i);
            Matcher matcher = td5.a.matcher(str);
            if (!matcher.matches()) {
                k21.f("Invalid fragment spec: ".concat(String.valueOf(str)));
                return null;
            }
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int iB = cp1.b(objArrCopyOf.length, i2 + 1);
            if (iB > objArrCopyOf.length) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iB);
            }
            objArrCopyOf[i2] = strGroup;
            i++;
            i2++;
        }
        z43 z43VarI = lp1.i(i2, objArrCopyOf);
        if (z43VarI.q > 0) {
            String str2 = (String) z43VarI.get(0);
            if (this.b.get(str2) != null) {
                mk0.b();
                return null;
            }
            String strValueOf = String.valueOf(uri);
            throw new c70(xw1.t(new StringBuilder(str2.length() + 40 + strValueOf.length()), "Requested transform isn't registered: ", str2, ": ", strValueOf));
        }
        lp1 lp1VarN = lp1.i(0, objArr).n();
        ed5 ed5Var = new ed5();
        String scheme = uri.getScheme();
        wd5 wd5Var = (wd5) this.a.get(scheme);
        if (wd5Var == null) {
            throw new c70(di0.u("Requested backend isn't registered: ", scheme));
        }
        ed5Var.a = wd5Var;
        ed5Var.c = this.c;
        ed5Var.b = lp1VarN;
        if (!lp1VarN.isEmpty()) {
            ArrayList arrayList = new ArrayList(uri.getPathSegments());
            if (!arrayList.isEmpty() && !uri.getPath().endsWith("/")) {
                String str3 = (String) arrayList.get(arrayList.size() - 1);
                ListIterator listIterator = lp1VarN.listIterator(lp1VarN.size());
                while (listIterator.hasPrevious()) {
                    if (listIterator.previous() != null) {
                        mk0.b();
                        return null;
                    }
                }
                arrayList.set(arrayList.size() - 1, str3);
                uri = uri.buildUpon().path(TextUtils.join("/", arrayList)).encodedFragment(null).build();
            }
        }
        ed5Var.d = uri;
        ed5 ed5Var2 = new ed5();
        ed5Var2.a = ed5Var.a;
        ed5Var2.b = ed5Var.b;
        ed5Var2.c = ed5Var.c;
        ed5Var2.d = ed5Var.d;
        return ed5Var2;
    }
}
