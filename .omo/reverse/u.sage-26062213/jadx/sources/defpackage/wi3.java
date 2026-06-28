package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import java.util.Iterator;
import u.sage.receiver.ServiceRestartReceiver;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wi3 extends bv3 implements df1 {
    public final /* synthetic */ BroadcastReceiver.PendingResult A;
    public final /* synthetic */ ServiceRestartReceiver B;
    public final /* synthetic */ Context C;
    public ServiceRestartReceiver r;
    public Context s;
    public Iterator t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public y84 f399u;
    public pt v;
    public int w;
    public int x;
    public boolean y;
    public int z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wi3(BroadcastReceiver.PendingResult pendingResult, ServiceRestartReceiver serviceRestartReceiver, Context context, dh0 dh0Var) {
        super(2, dh0Var);
        this.A = pendingResult;
        this.B = serviceRestartReceiver;
        this.C = context;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((wi3) o((dh0) obj2, (qi0) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        return new wi3(this.A, this.B, this.C, dh0Var);
    }

    /* JADX WARN: Path cross not found for [B:75:0x0138, B:77:0x017b], limit reached: 86 */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005f A[Catch: all -> 0x0026, Exception -> 0x0029, TryCatch #1 {Exception -> 0x0029, blocks: (B:7:0x001e, B:73:0x0130, B:76:0x013a, B:20:0x0059, B:22:0x005f, B:28:0x0076, B:52:0x00ac, B:58:0x00bd, B:65:0x00e0, B:69:0x0104, B:59:0x00c3, B:60:0x00c8, B:61:0x00c9, B:62:0x00cf, B:63:0x00d5, B:64:0x00db, B:31:0x007b, B:32:0x0080, B:33:0x0081, B:34:0x0086, B:35:0x0087, B:38:0x008c, B:39:0x0091, B:40:0x0092, B:43:0x0097, B:44:0x009c, B:45:0x009d, B:48:0x00a2, B:49:0x00a7, B:50:0x00a8, B:79:0x01c6, B:80:0x01cd, B:77:0x017b, B:16:0x0040, B:19:0x004a), top: B:88:0x000c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x012c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x012c -> B:73:0x0130). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wi3.q(java.lang.Object):java.lang.Object");
    }
}
