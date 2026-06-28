package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d12 {
    public final tf2 a;
    public final a12 b;
    public final g02 c;
    public final long d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ g02 f;
    public final /* synthetic */ int g;
    public final /* synthetic */ int h;
    public final /* synthetic */ aw i;
    public final /* synthetic */ bw j;
    public final /* synthetic */ int k;
    public final /* synthetic */ int l;
    public final /* synthetic */ long m;
    public final /* synthetic */ n12 n;

    public d12(long j, boolean z, a12 a12Var, g02 g02Var, int i, int i2, aw awVar, bw bwVar, int i3, int i4, long j2, n12 n12Var) {
        this.e = z;
        this.f = g02Var;
        this.g = i;
        this.h = i2;
        this.i = awVar;
        this.j = bwVar;
        this.k = i3;
        this.l = i4;
        this.m = j2;
        this.n = n12Var;
        tf2 tf2Var = is1.a;
        this.a = new tf2();
        this.b = a12Var;
        this.c = g02Var;
        this.d = nf0.b(z ? mf0.h(j) : Integer.MAX_VALUE, z ? Api.BaseClientBuilder.API_PRIORITY_OTHER : mf0.g(j), 5);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final g12 a(int i, long j) {
        List list;
        a12 a12Var = this.b;
        Object objD = a12Var.d(i);
        Object objB = a12Var.b(i);
        tf2 tf2Var = this.a;
        List list2 = (List) tf2Var.b(i);
        if (list2 != null) {
            list = list2;
        } else {
            g02 g02Var = this.c;
            a12 a12Var2 = g02Var.p;
            tf2 tf2Var2 = g02Var.q;
            List listO = (List) tf2Var2.b(i);
            if (listO == null) {
                Object objD2 = a12Var2.d(i);
                listO = g02Var.o.o(g02Var.n.a(i, objD2, a12Var2.b(i)), objD2);
                tf2Var2.h(i, listO);
            }
            int size = listO.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(((ya2) listO.get(i2)).e(j));
            }
            tf2Var.h(i, arrayList);
            list = arrayList;
        }
        return new g12(i, list, this.e, this.i, this.j, this.f.o.getLayoutDirection(), this.k, this.l, i != this.g + (-1) ? this.h : 0, this.m, objD, objB, this.n.o, j);
    }
}
