package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface im1 {
    void addHeader(gj1 gj1Var);

    void addHeader(String str, String str2);

    boolean containsHeader(String str);

    gj1[] getAllHeaders();

    gj1 getFirstHeader(String str);

    gj1[] getHeaders(String str);

    gj1 getLastHeader(String str);

    km1 getParams();

    g03 getProtocolVersion();

    jj1 headerIterator();

    jj1 headerIterator(String str);

    void removeHeaders(String str);

    void setHeader(String str, String str2);

    void setHeaders(gj1[] gj1VarArr);

    void setParams(km1 km1Var);
}
