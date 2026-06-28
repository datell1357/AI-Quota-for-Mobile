package defpackage;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.os.Bundle;
import u.sage.widget.UsageWidgetProvider;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b94 extends bv3 implements df1 {
    public final /* synthetic */ y84 A;
    public final /* synthetic */ boolean B;
    public final /* synthetic */ Bundle C;
    public final /* synthetic */ AppWidgetManager D;
    public final /* synthetic */ UsageWidgetProvider E;
    public final /* synthetic */ int F;
    public final /* synthetic */ int G;
    public long r;
    public ps s;
    public n1 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public w33 f28u;
    public w33 v;
    public int w;
    public final /* synthetic */ int x;
    public final /* synthetic */ long y;
    public final /* synthetic */ Context z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b94(int i, long j, Context context, y84 y84Var, boolean z, Bundle bundle, AppWidgetManager appWidgetManager, UsageWidgetProvider usageWidgetProvider, int i2, int i3, dh0 dh0Var) {
        super(2, dh0Var);
        this.x = i;
        this.y = j;
        this.z = context;
        this.A = y84Var;
        this.B = z;
        this.C = bundle;
        this.D = appWidgetManager;
        this.E = usageWidgetProvider;
        this.F = i2;
        this.G = i3;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((b94) o((dh0) obj2, (qi0) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        return new b94(this.x, this.y, this.z, this.A, this.B, this.C, this.D, this.E, this.F, this.G, dh0Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x012f, code lost:
    
        if (r3 != r10) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e1 A[Catch: Exception -> 0x0264, TryCatch #0 {Exception -> 0x0264, blocks: (B:10:0x0021, B:51:0x0132, B:54:0x0156, B:55:0x015b, B:58:0x016c, B:60:0x017e, B:63:0x0189, B:64:0x01b8, B:66:0x01be, B:68:0x01c6, B:69:0x01f0, B:70:0x01f3, B:71:0x01f4, B:74:0x024f, B:72:0x0213, B:73:0x0230, B:15:0x0037, B:46:0x010f, B:48:0x0116, B:18:0x004a, B:42:0x00f6, B:21:0x0056, B:36:0x00d9, B:38:0x00e1, B:24:0x006a, B:31:0x00bc, B:33:0x00c2, B:27:0x008f), top: B:79:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010e  */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r21) {
        /*
            Method dump skipped, instruction units count: 625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.b94.q(java.lang.Object):java.lang.Object");
    }
}
