package defpackage;

import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class e1 implements im1 {
    protected ij1 headergroup = new ij1();

    @Deprecated
    protected km1 params = null;

    @Override // defpackage.im1
    public void addHeader(String str, String str2) {
        w80.L(str, "Header name");
        ij1 ij1Var = this.headergroup;
        ij1Var.n.add(new qu(str, str2));
    }

    @Override // defpackage.im1
    public boolean containsHeader(String str) {
        ArrayList arrayList = this.headergroup.n;
        for (int i = 0; i < arrayList.size(); i++) {
            if (((gj1) arrayList.get(i)).getName().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.im1
    public gj1[] getAllHeaders() {
        ArrayList arrayList = this.headergroup.n;
        return (gj1[]) arrayList.toArray(new gj1[arrayList.size()]);
    }

    @Override // defpackage.im1
    public gj1 getFirstHeader(String str) {
        ArrayList arrayList = this.headergroup.n;
        for (int i = 0; i < arrayList.size(); i++) {
            gj1 gj1Var = (gj1) arrayList.get(i);
            if (gj1Var.getName().equalsIgnoreCase(str)) {
                return gj1Var;
            }
        }
        return null;
    }

    @Override // defpackage.im1
    public gj1[] getHeaders(String str) {
        ArrayList arrayList = this.headergroup.n;
        ArrayList arrayList2 = null;
        for (int i = 0; i < arrayList.size(); i++) {
            gj1 gj1Var = (gj1) arrayList.get(i);
            if (gj1Var.getName().equalsIgnoreCase(str)) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(gj1Var);
            }
        }
        return arrayList2 != null ? (gj1[]) arrayList2.toArray(new gj1[arrayList2.size()]) : ij1.o;
    }

    @Override // defpackage.im1
    public gj1 getLastHeader(String str) {
        ArrayList arrayList = this.headergroup.n;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            gj1 gj1Var = (gj1) arrayList.get(size);
            if (gj1Var.getName().equalsIgnoreCase(str)) {
                return gj1Var;
            }
        }
        return null;
    }

    @Override // defpackage.im1
    @Deprecated
    public km1 getParams() {
        if (this.params == null) {
            this.params = new xu();
        }
        return this.params;
    }

    @Override // defpackage.im1
    public jj1 headerIterator() {
        return new cv(null, this.headergroup.n);
    }

    public void removeHeader(gj1 gj1Var) {
        ij1 ij1Var = this.headergroup;
        if (gj1Var == null) {
            ij1Var.getClass();
        } else {
            ij1Var.n.remove(gj1Var);
        }
    }

    @Override // defpackage.im1
    public void removeHeaders(String str) {
        if (str == null) {
            return;
        }
        cv cvVar = new cv(null, this.headergroup.n);
        while (cvVar.hasNext()) {
            if (str.equalsIgnoreCase(cvVar.a().getName())) {
                cvVar.remove();
            }
        }
    }

    @Override // defpackage.im1
    public void setHeader(String str, String str2) {
        w80.L(str, "Header name");
        this.headergroup.a(new qu(str, str2));
    }

    @Override // defpackage.im1
    public void setHeaders(gj1[] gj1VarArr) {
        ArrayList arrayList = this.headergroup.n;
        arrayList.clear();
        if (gj1VarArr == null) {
            return;
        }
        Collections.addAll(arrayList, gj1VarArr);
    }

    @Override // defpackage.im1
    @Deprecated
    public void setParams(km1 km1Var) {
        w80.L(km1Var, "HTTP parameters");
        this.params = km1Var;
    }

    @Override // defpackage.im1
    public jj1 headerIterator(String str) {
        return new cv(str, this.headergroup.n);
    }

    public void setHeader(gj1 gj1Var) {
        this.headergroup.a(gj1Var);
    }

    @Override // defpackage.im1
    public void addHeader(gj1 gj1Var) {
        ij1 ij1Var = this.headergroup;
        if (gj1Var == null) {
            ij1Var.getClass();
        } else {
            ij1Var.n.add(gj1Var);
        }
    }
}
